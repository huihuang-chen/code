/*
 * Copyright 2019 The Netty Project
 *
 * The Netty Project licenses this file to you under the Apache License,
 * version 2.0 (the "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at:
 *
 *   https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */
package io.netty.util.internal;

import static io.netty.util.internal.ObjectUtil.checkPositive;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

import io.netty.util.IllegalReferenceCountException;
import io.netty.util.ReferenceCounted;

/**
 * Common logic for {@link ReferenceCounted} implementations
 */
public abstract class ReferenceCountUpdater<T extends ReferenceCounted> {
    /*
     * Implementation notes:
     *
     * For the updated int field:
     *   Even => "real" refcount is (refCnt >>> 1)
     *   Odd  => "real" refcount is 0
     *
     * (x & y) appears to be surprisingly expensive relative to (x == y). Thus this class uses
     * a fast-path in some places for most common low values when checking for live (even) refcounts,
     * for example: if (rawCnt == 2 || rawCnt == 4 || (rawCnt & 1) == 0) { ...
     */

    protected ReferenceCountUpdater() { }

    public static long getUnsafeOffset(Class<? extends ReferenceCounted> clz, String fieldName) {
        try {
            if (PlatformDependent.hasUnsafe()) {
                return PlatformDependent.objectFieldOffset(clz.getDeclaredField(fieldName));
            }
        } catch (Throwable ignore) {
            // fall-back
        }
        return -1;
    }

    protected abstract AtomicIntegerFieldUpdater<T> updater();

    protected abstract long unsafeOffset();

    public final int initialValue() {
        return 2;
    }

    // 获取真实计数，引用是奇数就返回0，说明已经释放了，偶数1就无符号右移1，返回
    private static int realRefCnt(int rawCnt) {
        return rawCnt != 2 && rawCnt != 4 && (rawCnt & 1) != 0 ? 0 : rawCnt >>> 1;
    }

    /**
     * Like {@link #realRefCnt(int)} but throws if refCnt == 0
     */
    private static int toLiveRealRefCnt(int rawCnt, int decrement) {
        if (rawCnt == 2 || rawCnt == 4 || (rawCnt & 1) == 0) {
            return rawCnt >>> 1;
        }
        // odd rawCnt => already deallocated
        throw new IllegalReferenceCountException(0, -decrement);
    }

    // 可以根据偏移量获取引用计数，不是真实的计数
    private int nonVolatileRawCnt(T instance) {
        // TODO: Once we compile against later versions of Java we can replace the Unsafe usage here by varhandles.
        final long offset = unsafeOffset();
        return offset != -1 ? PlatformDependent.getInt(instance, offset) : updater().get(instance);
    }

    // 获取真实计数
    public final int refCnt(T instance) {
        return realRefCnt(updater().get(instance));
    }

    public final boolean isLiveNonVolatile(T instance) {
        final long offset = unsafeOffset();
        final int rawCnt = offset != -1 ? PlatformDependent.getInt(instance, offset) : updater().get(instance);

        // The "real" ref count is > 0 if the rawCnt is even.
        return rawCnt == 2 || rawCnt == 4 || rawCnt == 6 || rawCnt == 8 || (rawCnt & 1) == 0;
    }

    /**
     * An unsafe operation that sets the reference count directly
     * 直接设置真实引用数
     */
    public final void setRefCnt(T instance, int refCnt) {
        // 如果引用大于0就会乘以2，否则就是1，这里可能会是负数，如果溢出了
        updater().set(instance, refCnt > 0 ? refCnt << 1 : 1); // overflow OK here
    }

    /**
     * Resets the reference count to 1
     */
    public final void resetRefCnt(T instance) {
        updater().set(instance, initialValue());
    }

    // 真实计数 +1，即引用计数 +2
    public final T retain(T instance) {
        return retain0(instance, 1, 2);
    }

    // increment为正数的才可以，但是rawIncrement可能是负的，溢出了，后面会处理
    public final T retain(T instance, int increment) {
        // all changes to the raw count are 2x the "real" change - overflow is OK
        int rawIncrement = checkPositive(increment, "increment") << 1;
        return retain0(instance, increment, rawIncrement);
    }

    // rawIncrement == increment << 1
    // 增量 == 真实增量 * 2
    private T retain0(T instance, final int increment, final int rawIncrement) {
        int oldRef = updater().getAndAdd(instance, rawIncrement);
        // 如果是奇数，说明已经释放了
        if (oldRef != 2 && oldRef != 4 && (oldRef & 1) != 0) {
            throw new IllegalReferenceCountException(0, increment);
        }
        // don't pass 0!
        // 经过0说明有溢出了，要处理掉
        if ((oldRef <= 0 && oldRef + rawIncrement >= 0)
                || (oldRef >= 0 && oldRef + rawIncrement < oldRef)) {
            // overflow case
            // 改回来
            updater().getAndAdd(instance, -rawIncrement);
            throw new IllegalReferenceCountException(realRefCnt(oldRef), increment);
        }
        return instance;
    }

    // 减少计数1，返回是否真正释放
    public final boolean release(T instance) {
        // 获取引用计数，如果引用计数rawCnt == 2说明真实计数是1，就可以直接尝试最终释放，否则就真实计数减1
        int rawCnt = nonVolatileRawCnt(instance);
        return rawCnt == 2 ? tryFinalRelease0(instance, 2) || retryRelease0(instance, 1)
                : nonFinalRelease0(instance, 1, rawCnt, toLiveRealRefCnt(rawCnt, 1));
    }

    // 减少计数decrement，返回是否真正释放
    public final boolean release(T instance, int decrement) {
        int rawCnt = nonVolatileRawCnt(instance);
        int realCnt = toLiveRealRefCnt(rawCnt, checkPositive(decrement, "decrement"));
        return decrement == realCnt ? tryFinalRelease0(instance, rawCnt) || retryRelease0(instance, decrement)
                : nonFinalRelease0(instance, decrement, rawCnt, realCnt);
    }

    // 尝试最终释放，如果引用计数是2的话，就直接设为1，释放内存，否则就失败
    private boolean tryFinalRelease0(T instance, int expectRawCnt) {
        return updater().compareAndSet(instance, expectRawCnt, 1); // any odd number will work
    }

    private boolean nonFinalRelease0(T instance, int decrement, int rawCnt, int realCnt) {
        // 更新引用计数
        if (decrement < realCnt
                // all changes to the raw count are 2x the "real" change - overflow is OK
                && updater().compareAndSet(instance, rawCnt, rawCnt - (decrement << 1))) {
            return false;
        }
        return retryRelease0(instance, decrement);
    }

    // 自旋设置引用计数或者尝试释放
    private boolean retryRelease0(T instance, int decrement) {
        for (;;) {
            int rawCnt = updater().get(instance), realCnt = toLiveRealRefCnt(rawCnt, decrement);
            if (decrement == realCnt) { // 真实的计数和要减去的计数一样的话
                if (tryFinalRelease0(instance, rawCnt)) { // 尝试最终释放
                    return true;
                }
            } else if (decrement < realCnt) { // 真实计数大于减去的计数，还不能释放，只是减去decrement
                // all changes to the raw count are 2x the "real" change
                if (updater().compareAndSet(instance, rawCnt, rawCnt - (decrement << 1))) {
                    return false;
                }
            } else {
                throw new IllegalReferenceCountException(realCnt, -decrement);
            }
            // 提示释放CPU，增量吞吐量
            Thread.yield(); // this benefits throughput under high contention
        }
    }
}

cmake_minimum_required(VERSION 3.15)
project(redis_6_2_0)

set(CMAKE_BUILD_TYPE "Debug")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O2")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c99 -pedantic -DREDIS_STATIC=''")

get_filename_component(REDIS_ROOT "${CMAKE_CURRENT_SOURCE_DIR}" ABSOLUTE)

add_subdirectory(deps)

set(SRC_SERVER
        src/crcspeed.c
        src/gopher.c
        src/tls.c
        src/sha256.c
        src/connection.c
        src/acl.c
        src/timeout.c
        src/mt19937-64.c
        src/siphash.c
        src/t_stream.c
        src/lolwut.c
        src/localtime.c
        src/listpack.c
        src/lolwut5.c
        src/adlist.c
        src/quicklist.c
        src/ae.c
        src/anet.c
        src/dict.c
        src/server.c
        src/sds.c
        src/zmalloc.c
        src/lzf_c.c
        src/lzf_d.c
        src/pqsort.c
        src/zipmap.c
        src/sha1.c
        src/ziplist.c
        src/release.c
        src/networking.c
        src/util.c
        src/object.c
        src/db.c
        src/replication.c
        src/rdb.c
        src/t_string.c
        src/t_list.c
        src/t_set.c
        src/t_zset.c
        src/t_hash.c
        src/config.c
        src/aof.c
        src/pubsub.c
        src/multi.c
        src/debug.c
        src/sort.c
        src/intset.c
        src/syncio.c
        src/cluster.c
        src/crc16.c
        src/endianconv.c
        src/slowlog.c
        src/scripting.c
        src/bio.c
        src/rio.c
        src/rand.c
        src/memtest.c
        src/crc64.c
        src/bitops.c
        src/sentinel.c
        src/notify.c
        src/setproctitle.c
        src/blocked.c
        src/hyperloglog.c
        src/latency.c
        src/sparkline.c
        src/redis-check-rdb.c
        src/redis-check-aof.c
        src/geo.c
        src/lazyfree.c
        src/module.c
        src/evict.c
        src/expire.c
        src/geohash.c
        src/geohash_helper.c
        src/childinfo.c
        src/defrag.c
        src/siphash.c
        src/rax.c
        src/adlist.c
        src/lolwut.c
        src/lolwut6.c
        src/lolwut5.c
        src/monotonic.c
        src/tracking.c)

set(SRC_CLIENT src/siphash.c
        src/mt19937-64.c
        src/crcspeed.c
        src/monotonic.c
        src/cli_common.c
        src/dict.c
        src/crc16.c
        src/anet.c
        src/adlist.c
        src/redis-cli.c
        src/zmalloc.c
        src/release.c
        src/ae.c
        src/crc64.c)

set(SRC_TEST
        src/sds.c
        src/dict.c
        src/zmalloc.c
        src/adlist.c
        src/hyperloglog.c
        src/siphash.c
        src/test/sdstest.c
        )

set(EXECUTABLE_OUTPUT_PATH  src)
link_directories(deps/linenoise deps/lua/src deps/hiredis)

add_executable(redis-server  ${SRC_SERVER})
add_executable(redis-cli  ${SRC_CLIENT})
add_executable(redis-example  ${SRC_TEST})

target_link_directories(redis-example
        PRIVATE ${REDIS_ROOT}/deps/linenoise
        PRIVATE ${REDIS_ROOT}/deps/hiredis
        PRIVATE ${REDIS_ROOT}/deps/lua/src
        PRIVATE ${REDIS_ROOT}/src
        )

target_link_libraries(redis-example
        PRIVATE pthread
        PRIVATE m
        PRIVATE dl
        PRIVATE lua
        PRIVATE linenoise
        PRIVATE hiredis
        )

target_include_directories(redis-server
        PRIVATE ${REDIS_ROOT}/deps/linenoise
        PRIVATE ${REDIS_ROOT}/deps/hiredis
        PRIVATE ${REDIS_ROOT}/deps/lua/src
        #PRIVATE ${REDIS_ROOT}/deps/jemalloc
        )

target_include_directories(redis-cli
        PRIVATE ${REDIS_ROOT}/deps/linenoise
        PRIVATE ${REDIS_ROOT}/deps/hiredis
        PRIVATE ${REDIS_ROOT}/deps/lua/src
        #PRIVATE ${REDIS_ROOT}/deps/jemalloc
        )


target_link_libraries(redis-server
        PRIVATE pthread
        PRIVATE m
        PRIVATE dl
        PRIVATE lua
        PRIVATE linenoise
        PRIVATE hiredis)


target_link_libraries(redis-cli
        PRIVATE pthread
        PRIVATE m
        PRIVATE dl
        PRIVATE linenoise
        PRIVATE hiredis)

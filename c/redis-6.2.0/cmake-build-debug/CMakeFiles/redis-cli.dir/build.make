# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /cygdrive/d/user/.CLion/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/d/user/.CLion/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/d/proc/app/redis-6.2.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/redis-cli.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/redis-cli.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/redis-cli.dir/flags.make

CMakeFiles/redis-cli.dir/src/siphash.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/siphash.c.o: ../src/siphash.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/redis-cli.dir/src/siphash.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/siphash.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/siphash.c

CMakeFiles/redis-cli.dir/src/siphash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/siphash.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/siphash.c > CMakeFiles/redis-cli.dir/src/siphash.c.i

CMakeFiles/redis-cli.dir/src/siphash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/siphash.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/siphash.c -o CMakeFiles/redis-cli.dir/src/siphash.c.s

CMakeFiles/redis-cli.dir/src/mt19937-64.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/mt19937-64.c.o: ../src/mt19937-64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/redis-cli.dir/src/mt19937-64.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/mt19937-64.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/mt19937-64.c

CMakeFiles/redis-cli.dir/src/mt19937-64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/mt19937-64.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/mt19937-64.c > CMakeFiles/redis-cli.dir/src/mt19937-64.c.i

CMakeFiles/redis-cli.dir/src/mt19937-64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/mt19937-64.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/mt19937-64.c -o CMakeFiles/redis-cli.dir/src/mt19937-64.c.s

CMakeFiles/redis-cli.dir/src/crcspeed.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/crcspeed.c.o: ../src/crcspeed.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/redis-cli.dir/src/crcspeed.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/crcspeed.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/crcspeed.c

CMakeFiles/redis-cli.dir/src/crcspeed.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/crcspeed.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/crcspeed.c > CMakeFiles/redis-cli.dir/src/crcspeed.c.i

CMakeFiles/redis-cli.dir/src/crcspeed.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/crcspeed.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/crcspeed.c -o CMakeFiles/redis-cli.dir/src/crcspeed.c.s

CMakeFiles/redis-cli.dir/src/monotonic.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/monotonic.c.o: ../src/monotonic.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/redis-cli.dir/src/monotonic.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/monotonic.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/monotonic.c

CMakeFiles/redis-cli.dir/src/monotonic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/monotonic.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/monotonic.c > CMakeFiles/redis-cli.dir/src/monotonic.c.i

CMakeFiles/redis-cli.dir/src/monotonic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/monotonic.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/monotonic.c -o CMakeFiles/redis-cli.dir/src/monotonic.c.s

CMakeFiles/redis-cli.dir/src/cli_common.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/cli_common.c.o: ../src/cli_common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/redis-cli.dir/src/cli_common.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/cli_common.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/cli_common.c

CMakeFiles/redis-cli.dir/src/cli_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/cli_common.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/cli_common.c > CMakeFiles/redis-cli.dir/src/cli_common.c.i

CMakeFiles/redis-cli.dir/src/cli_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/cli_common.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/cli_common.c -o CMakeFiles/redis-cli.dir/src/cli_common.c.s

CMakeFiles/redis-cli.dir/src/dict.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/dict.c.o: ../src/dict.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/redis-cli.dir/src/dict.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/dict.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/dict.c

CMakeFiles/redis-cli.dir/src/dict.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/dict.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/dict.c > CMakeFiles/redis-cli.dir/src/dict.c.i

CMakeFiles/redis-cli.dir/src/dict.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/dict.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/dict.c -o CMakeFiles/redis-cli.dir/src/dict.c.s

CMakeFiles/redis-cli.dir/src/crc16.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/crc16.c.o: ../src/crc16.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/redis-cli.dir/src/crc16.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/crc16.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/crc16.c

CMakeFiles/redis-cli.dir/src/crc16.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/crc16.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/crc16.c > CMakeFiles/redis-cli.dir/src/crc16.c.i

CMakeFiles/redis-cli.dir/src/crc16.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/crc16.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/crc16.c -o CMakeFiles/redis-cli.dir/src/crc16.c.s

CMakeFiles/redis-cli.dir/src/anet.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/anet.c.o: ../src/anet.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/redis-cli.dir/src/anet.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/anet.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/anet.c

CMakeFiles/redis-cli.dir/src/anet.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/anet.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/anet.c > CMakeFiles/redis-cli.dir/src/anet.c.i

CMakeFiles/redis-cli.dir/src/anet.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/anet.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/anet.c -o CMakeFiles/redis-cli.dir/src/anet.c.s

CMakeFiles/redis-cli.dir/src/adlist.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/adlist.c.o: ../src/adlist.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/redis-cli.dir/src/adlist.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/adlist.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/adlist.c

CMakeFiles/redis-cli.dir/src/adlist.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/adlist.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/adlist.c > CMakeFiles/redis-cli.dir/src/adlist.c.i

CMakeFiles/redis-cli.dir/src/adlist.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/adlist.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/adlist.c -o CMakeFiles/redis-cli.dir/src/adlist.c.s

CMakeFiles/redis-cli.dir/src/redis-cli.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/redis-cli.c.o: ../src/redis-cli.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/redis-cli.dir/src/redis-cli.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/redis-cli.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/redis-cli.c

CMakeFiles/redis-cli.dir/src/redis-cli.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/redis-cli.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/redis-cli.c > CMakeFiles/redis-cli.dir/src/redis-cli.c.i

CMakeFiles/redis-cli.dir/src/redis-cli.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/redis-cli.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/redis-cli.c -o CMakeFiles/redis-cli.dir/src/redis-cli.c.s

CMakeFiles/redis-cli.dir/src/zmalloc.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/zmalloc.c.o: ../src/zmalloc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/redis-cli.dir/src/zmalloc.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/zmalloc.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/zmalloc.c

CMakeFiles/redis-cli.dir/src/zmalloc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/zmalloc.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/zmalloc.c > CMakeFiles/redis-cli.dir/src/zmalloc.c.i

CMakeFiles/redis-cli.dir/src/zmalloc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/zmalloc.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/zmalloc.c -o CMakeFiles/redis-cli.dir/src/zmalloc.c.s

CMakeFiles/redis-cli.dir/src/release.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/release.c.o: ../src/release.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/redis-cli.dir/src/release.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/release.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/release.c

CMakeFiles/redis-cli.dir/src/release.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/release.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/release.c > CMakeFiles/redis-cli.dir/src/release.c.i

CMakeFiles/redis-cli.dir/src/release.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/release.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/release.c -o CMakeFiles/redis-cli.dir/src/release.c.s

CMakeFiles/redis-cli.dir/src/ae.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/ae.c.o: ../src/ae.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/redis-cli.dir/src/ae.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/ae.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/ae.c

CMakeFiles/redis-cli.dir/src/ae.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/ae.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/ae.c > CMakeFiles/redis-cli.dir/src/ae.c.i

CMakeFiles/redis-cli.dir/src/ae.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/ae.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/ae.c -o CMakeFiles/redis-cli.dir/src/ae.c.s

CMakeFiles/redis-cli.dir/src/crc64.c.o: CMakeFiles/redis-cli.dir/flags.make
CMakeFiles/redis-cli.dir/src/crc64.c.o: ../src/crc64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/redis-cli.dir/src/crc64.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/redis-cli.dir/src/crc64.c.o   -c /cygdrive/d/proc/app/redis-6.2.0/src/crc64.c

CMakeFiles/redis-cli.dir/src/crc64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/redis-cli.dir/src/crc64.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/proc/app/redis-6.2.0/src/crc64.c > CMakeFiles/redis-cli.dir/src/crc64.c.i

CMakeFiles/redis-cli.dir/src/crc64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/redis-cli.dir/src/crc64.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/proc/app/redis-6.2.0/src/crc64.c -o CMakeFiles/redis-cli.dir/src/crc64.c.s

# Object files for target redis-cli
redis__cli_OBJECTS = \
"CMakeFiles/redis-cli.dir/src/siphash.c.o" \
"CMakeFiles/redis-cli.dir/src/mt19937-64.c.o" \
"CMakeFiles/redis-cli.dir/src/crcspeed.c.o" \
"CMakeFiles/redis-cli.dir/src/monotonic.c.o" \
"CMakeFiles/redis-cli.dir/src/cli_common.c.o" \
"CMakeFiles/redis-cli.dir/src/dict.c.o" \
"CMakeFiles/redis-cli.dir/src/crc16.c.o" \
"CMakeFiles/redis-cli.dir/src/anet.c.o" \
"CMakeFiles/redis-cli.dir/src/adlist.c.o" \
"CMakeFiles/redis-cli.dir/src/redis-cli.c.o" \
"CMakeFiles/redis-cli.dir/src/zmalloc.c.o" \
"CMakeFiles/redis-cli.dir/src/release.c.o" \
"CMakeFiles/redis-cli.dir/src/ae.c.o" \
"CMakeFiles/redis-cli.dir/src/crc64.c.o"

# External object files for target redis-cli
redis__cli_EXTERNAL_OBJECTS =

src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/siphash.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/mt19937-64.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/crcspeed.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/monotonic.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/cli_common.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/dict.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/crc16.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/anet.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/adlist.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/redis-cli.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/zmalloc.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/release.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/ae.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/src/crc64.c.o
src/redis-cli.exe: CMakeFiles/redis-cli.dir/build.make
src/redis-cli.exe: deps/linenoise/liblinenoise.a
src/redis-cli.exe: deps/hiredis/libhiredis.dll.a
src/redis-cli.exe: CMakeFiles/redis-cli.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking C executable src/redis-cli.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/redis-cli.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/redis-cli.dir/build: src/redis-cli.exe

.PHONY : CMakeFiles/redis-cli.dir/build

CMakeFiles/redis-cli.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/redis-cli.dir/cmake_clean.cmake
.PHONY : CMakeFiles/redis-cli.dir/clean

CMakeFiles/redis-cli.dir/depend:
	cd /cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/d/proc/app/redis-6.2.0 /cygdrive/d/proc/app/redis-6.2.0 /cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug /cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug /cygdrive/d/proc/app/redis-6.2.0/cmake-build-debug/CMakeFiles/redis-cli.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/redis-cli.dir/depend

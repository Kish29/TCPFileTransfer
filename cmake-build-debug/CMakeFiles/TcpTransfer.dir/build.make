# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/bytedance/CLionProjects/TcpTransfer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/bytedance/CLionProjects/TcpTransfer/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/TcpTransfer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TcpTransfer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TcpTransfer.dir/flags.make

CMakeFiles/TcpTransfer.dir/main.c.o: CMakeFiles/TcpTransfer.dir/flags.make
CMakeFiles/TcpTransfer.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/bytedance/CLionProjects/TcpTransfer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/TcpTransfer.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TcpTransfer.dir/main.c.o   -c /Users/bytedance/CLionProjects/TcpTransfer/main.c

CMakeFiles/TcpTransfer.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TcpTransfer.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/bytedance/CLionProjects/TcpTransfer/main.c > CMakeFiles/TcpTransfer.dir/main.c.i

CMakeFiles/TcpTransfer.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TcpTransfer.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/bytedance/CLionProjects/TcpTransfer/main.c -o CMakeFiles/TcpTransfer.dir/main.c.s

# Object files for target TcpTransfer
TcpTransfer_OBJECTS = \
"CMakeFiles/TcpTransfer.dir/main.c.o"

# External object files for target TcpTransfer
TcpTransfer_EXTERNAL_OBJECTS =

TcpTransfer: CMakeFiles/TcpTransfer.dir/main.c.o
TcpTransfer: CMakeFiles/TcpTransfer.dir/build.make
TcpTransfer: CMakeFiles/TcpTransfer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/bytedance/CLionProjects/TcpTransfer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable TcpTransfer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TcpTransfer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TcpTransfer.dir/build: TcpTransfer

.PHONY : CMakeFiles/TcpTransfer.dir/build

CMakeFiles/TcpTransfer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TcpTransfer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TcpTransfer.dir/clean

CMakeFiles/TcpTransfer.dir/depend:
	cd /Users/bytedance/CLionProjects/TcpTransfer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/bytedance/CLionProjects/TcpTransfer /Users/bytedance/CLionProjects/TcpTransfer /Users/bytedance/CLionProjects/TcpTransfer/cmake-build-debug /Users/bytedance/CLionProjects/TcpTransfer/cmake-build-debug /Users/bytedance/CLionProjects/TcpTransfer/cmake-build-debug/CMakeFiles/TcpTransfer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TcpTransfer.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mac/yuanxinyu/Cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mac/yuanxinyu/Cmake/out/build/star_test

# Include any dependencies generated for this target.
include Math_Library/CMakeFiles/MathLib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Math_Library/CMakeFiles/MathLib.dir/compiler_depend.make

# Include the progress variables for this target.
include Math_Library/CMakeFiles/MathLib.dir/progress.make

# Include the compile flags for this target's objects.
include Math_Library/CMakeFiles/MathLib.dir/flags.make

Math_Library/CMakeFiles/MathLib.dir/my_math.cpp.o: Math_Library/CMakeFiles/MathLib.dir/flags.make
Math_Library/CMakeFiles/MathLib.dir/my_math.cpp.o: /Users/mac/yuanxinyu/Cmake/Math_Library/my_math.cpp
Math_Library/CMakeFiles/MathLib.dir/my_math.cpp.o: Math_Library/CMakeFiles/MathLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mac/yuanxinyu/Cmake/out/build/star_test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Math_Library/CMakeFiles/MathLib.dir/my_math.cpp.o"
	cd /Users/mac/yuanxinyu/Cmake/out/build/star_test/Math_Library && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Math_Library/CMakeFiles/MathLib.dir/my_math.cpp.o -MF CMakeFiles/MathLib.dir/my_math.cpp.o.d -o CMakeFiles/MathLib.dir/my_math.cpp.o -c /Users/mac/yuanxinyu/Cmake/Math_Library/my_math.cpp

Math_Library/CMakeFiles/MathLib.dir/my_math.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MathLib.dir/my_math.cpp.i"
	cd /Users/mac/yuanxinyu/Cmake/out/build/star_test/Math_Library && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mac/yuanxinyu/Cmake/Math_Library/my_math.cpp > CMakeFiles/MathLib.dir/my_math.cpp.i

Math_Library/CMakeFiles/MathLib.dir/my_math.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MathLib.dir/my_math.cpp.s"
	cd /Users/mac/yuanxinyu/Cmake/out/build/star_test/Math_Library && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mac/yuanxinyu/Cmake/Math_Library/my_math.cpp -o CMakeFiles/MathLib.dir/my_math.cpp.s

# Object files for target MathLib
MathLib_OBJECTS = \
"CMakeFiles/MathLib.dir/my_math.cpp.o"

# External object files for target MathLib
MathLib_EXTERNAL_OBJECTS =

Math_Library/libMathLib.dylib: Math_Library/CMakeFiles/MathLib.dir/my_math.cpp.o
Math_Library/libMathLib.dylib: Math_Library/CMakeFiles/MathLib.dir/build.make
Math_Library/libMathLib.dylib: Math_Library/CMakeFiles/MathLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mac/yuanxinyu/Cmake/out/build/star_test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libMathLib.dylib"
	cd /Users/mac/yuanxinyu/Cmake/out/build/star_test/Math_Library && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MathLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Math_Library/CMakeFiles/MathLib.dir/build: Math_Library/libMathLib.dylib
.PHONY : Math_Library/CMakeFiles/MathLib.dir/build

Math_Library/CMakeFiles/MathLib.dir/clean:
	cd /Users/mac/yuanxinyu/Cmake/out/build/star_test/Math_Library && $(CMAKE_COMMAND) -P CMakeFiles/MathLib.dir/cmake_clean.cmake
.PHONY : Math_Library/CMakeFiles/MathLib.dir/clean

Math_Library/CMakeFiles/MathLib.dir/depend:
	cd /Users/mac/yuanxinyu/Cmake/out/build/star_test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/yuanxinyu/Cmake /Users/mac/yuanxinyu/Cmake/Math_Library /Users/mac/yuanxinyu/Cmake/out/build/star_test /Users/mac/yuanxinyu/Cmake/out/build/star_test/Math_Library /Users/mac/yuanxinyu/Cmake/out/build/star_test/Math_Library/CMakeFiles/MathLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Math_Library/CMakeFiles/MathLib.dir/depend

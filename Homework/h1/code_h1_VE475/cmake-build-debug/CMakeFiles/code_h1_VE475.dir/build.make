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
CMAKE_SOURCE_DIR = /Users/lianna/Desktop/study/VE475/Homework/h1/code_h1_VE475

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lianna/Desktop/study/VE475/Homework/h1/code_h1_VE475/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/code_h1_VE475.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/code_h1_VE475.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/code_h1_VE475.dir/flags.make

CMakeFiles/code_h1_VE475.dir/main.cpp.o: CMakeFiles/code_h1_VE475.dir/flags.make
CMakeFiles/code_h1_VE475.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lianna/Desktop/study/VE475/Homework/h1/code_h1_VE475/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/code_h1_VE475.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/code_h1_VE475.dir/main.cpp.o -c /Users/lianna/Desktop/study/VE475/Homework/h1/code_h1_VE475/main.cpp

CMakeFiles/code_h1_VE475.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/code_h1_VE475.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lianna/Desktop/study/VE475/Homework/h1/code_h1_VE475/main.cpp > CMakeFiles/code_h1_VE475.dir/main.cpp.i

CMakeFiles/code_h1_VE475.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/code_h1_VE475.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lianna/Desktop/study/VE475/Homework/h1/code_h1_VE475/main.cpp -o CMakeFiles/code_h1_VE475.dir/main.cpp.s

# Object files for target code_h1_VE475
code_h1_VE475_OBJECTS = \
"CMakeFiles/code_h1_VE475.dir/main.cpp.o"

# External object files for target code_h1_VE475
code_h1_VE475_EXTERNAL_OBJECTS =

code_h1_VE475: CMakeFiles/code_h1_VE475.dir/main.cpp.o
code_h1_VE475: CMakeFiles/code_h1_VE475.dir/build.make
code_h1_VE475: /usr/local/lib/libgmp.a
code_h1_VE475: CMakeFiles/code_h1_VE475.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lianna/Desktop/study/VE475/Homework/h1/code_h1_VE475/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable code_h1_VE475"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/code_h1_VE475.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/code_h1_VE475.dir/build: code_h1_VE475

.PHONY : CMakeFiles/code_h1_VE475.dir/build

CMakeFiles/code_h1_VE475.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/code_h1_VE475.dir/cmake_clean.cmake
.PHONY : CMakeFiles/code_h1_VE475.dir/clean

CMakeFiles/code_h1_VE475.dir/depend:
	cd /Users/lianna/Desktop/study/VE475/Homework/h1/code_h1_VE475/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lianna/Desktop/study/VE475/Homework/h1/code_h1_VE475 /Users/lianna/Desktop/study/VE475/Homework/h1/code_h1_VE475 /Users/lianna/Desktop/study/VE475/Homework/h1/code_h1_VE475/cmake-build-debug /Users/lianna/Desktop/study/VE475/Homework/h1/code_h1_VE475/cmake-build-debug /Users/lianna/Desktop/study/VE475/Homework/h1/code_h1_VE475/cmake-build-debug/CMakeFiles/code_h1_VE475.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/code_h1_VE475.dir/depend


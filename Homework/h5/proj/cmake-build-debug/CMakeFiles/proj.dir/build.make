# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /home/sjtu/softwares/clion-2021.1.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/sjtu/softwares/clion-2021.1.2/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sjtu/study/VE475/Homework/h5/proj

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sjtu/study/VE475/Homework/h5/proj/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/proj.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/proj.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/proj.dir/flags.make

CMakeFiles/proj.dir/main.cpp.o: CMakeFiles/proj.dir/flags.make
CMakeFiles/proj.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjtu/study/VE475/Homework/h5/proj/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/proj.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/proj.dir/main.cpp.o -c /home/sjtu/study/VE475/Homework/h5/proj/main.cpp

CMakeFiles/proj.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/proj.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjtu/study/VE475/Homework/h5/proj/main.cpp > CMakeFiles/proj.dir/main.cpp.i

CMakeFiles/proj.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/proj.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjtu/study/VE475/Homework/h5/proj/main.cpp -o CMakeFiles/proj.dir/main.cpp.s

# Object files for target proj
proj_OBJECTS = \
"CMakeFiles/proj.dir/main.cpp.o"

# External object files for target proj
proj_EXTERNAL_OBJECTS =

proj: CMakeFiles/proj.dir/main.cpp.o
proj: CMakeFiles/proj.dir/build.make
proj: CMakeFiles/proj.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sjtu/study/VE475/Homework/h5/proj/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable proj"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/proj.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/proj.dir/build: proj

.PHONY : CMakeFiles/proj.dir/build

CMakeFiles/proj.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/proj.dir/cmake_clean.cmake
.PHONY : CMakeFiles/proj.dir/clean

CMakeFiles/proj.dir/depend:
	cd /home/sjtu/study/VE475/Homework/h5/proj/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sjtu/study/VE475/Homework/h5/proj /home/sjtu/study/VE475/Homework/h5/proj /home/sjtu/study/VE475/Homework/h5/proj/cmake-build-debug /home/sjtu/study/VE475/Homework/h5/proj/cmake-build-debug /home/sjtu/study/VE475/Homework/h5/proj/cmake-build-debug/CMakeFiles/proj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/proj.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cipher1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cipher1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cipher1.dir/flags.make

CMakeFiles/cipher1.dir/main.c.obj: CMakeFiles/cipher1.dir/flags.make
CMakeFiles/cipher1.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cipher1.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\cipher1.dir\main.c.obj -c C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1\main.c

CMakeFiles/cipher1.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cipher1.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1\main.c > CMakeFiles\cipher1.dir\main.c.i

CMakeFiles/cipher1.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cipher1.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1\main.c -o CMakeFiles\cipher1.dir\main.c.s

CMakeFiles/cipher1.dir/AES.c.obj: CMakeFiles/cipher1.dir/flags.make
CMakeFiles/cipher1.dir/AES.c.obj: ../AES.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/cipher1.dir/AES.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\cipher1.dir\AES.c.obj -c C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1\AES.c

CMakeFiles/cipher1.dir/AES.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cipher1.dir/AES.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1\AES.c > CMakeFiles\cipher1.dir\AES.c.i

CMakeFiles/cipher1.dir/AES.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cipher1.dir/AES.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1\AES.c -o CMakeFiles\cipher1.dir\AES.c.s

# Object files for target cipher1
cipher1_OBJECTS = \
"CMakeFiles/cipher1.dir/main.c.obj" \
"CMakeFiles/cipher1.dir/AES.c.obj"

# External object files for target cipher1
cipher1_EXTERNAL_OBJECTS =

cipher1.exe: CMakeFiles/cipher1.dir/main.c.obj
cipher1.exe: CMakeFiles/cipher1.dir/AES.c.obj
cipher1.exe: CMakeFiles/cipher1.dir/build.make
cipher1.exe: CMakeFiles/cipher1.dir/linklibs.rsp
cipher1.exe: CMakeFiles/cipher1.dir/objects1.rsp
cipher1.exe: CMakeFiles/cipher1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable cipher1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cipher1.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cipher1.dir/build: cipher1.exe

.PHONY : CMakeFiles/cipher1.dir/build

CMakeFiles/cipher1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\cipher1.dir\cmake_clean.cmake
.PHONY : CMakeFiles/cipher1.dir/clean

CMakeFiles/cipher1.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1 C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1 C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1\cmake-build-debug C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1\cmake-build-debug C:\Users\Lenovo\Shy\Junior_summer\VE475\C2\cipher1\cmake-build-debug\CMakeFiles\cipher1.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cipher1.dir/depend


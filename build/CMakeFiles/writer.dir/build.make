# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eshiple/Documents/NVM/libpmemobj-ex1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eshiple/Documents/NVM/libpmemobj-ex1/build

# Include any dependencies generated for this target.
include CMakeFiles/writer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/writer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/writer.dir/flags.make

CMakeFiles/writer.dir/src/writer.cpp.o: CMakeFiles/writer.dir/flags.make
CMakeFiles/writer.dir/src/writer.cpp.o: ../src/writer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eshiple/Documents/NVM/libpmemobj-ex1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/writer.dir/src/writer.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/writer.dir/src/writer.cpp.o -c /home/eshiple/Documents/NVM/libpmemobj-ex1/src/writer.cpp

CMakeFiles/writer.dir/src/writer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/writer.dir/src/writer.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eshiple/Documents/NVM/libpmemobj-ex1/src/writer.cpp > CMakeFiles/writer.dir/src/writer.cpp.i

CMakeFiles/writer.dir/src/writer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/writer.dir/src/writer.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eshiple/Documents/NVM/libpmemobj-ex1/src/writer.cpp -o CMakeFiles/writer.dir/src/writer.cpp.s

CMakeFiles/writer.dir/src/writer.cpp.o.requires:

.PHONY : CMakeFiles/writer.dir/src/writer.cpp.o.requires

CMakeFiles/writer.dir/src/writer.cpp.o.provides: CMakeFiles/writer.dir/src/writer.cpp.o.requires
	$(MAKE) -f CMakeFiles/writer.dir/build.make CMakeFiles/writer.dir/src/writer.cpp.o.provides.build
.PHONY : CMakeFiles/writer.dir/src/writer.cpp.o.provides

CMakeFiles/writer.dir/src/writer.cpp.o.provides.build: CMakeFiles/writer.dir/src/writer.cpp.o


# Object files for target writer
writer_OBJECTS = \
"CMakeFiles/writer.dir/src/writer.cpp.o"

# External object files for target writer
writer_EXTERNAL_OBJECTS =

writer: CMakeFiles/writer.dir/src/writer.cpp.o
writer: CMakeFiles/writer.dir/build.make
writer: CMakeFiles/writer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eshiple/Documents/NVM/libpmemobj-ex1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable writer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/writer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/writer.dir/build: writer

.PHONY : CMakeFiles/writer.dir/build

CMakeFiles/writer.dir/requires: CMakeFiles/writer.dir/src/writer.cpp.o.requires

.PHONY : CMakeFiles/writer.dir/requires

CMakeFiles/writer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/writer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/writer.dir/clean

CMakeFiles/writer.dir/depend:
	cd /home/eshiple/Documents/NVM/libpmemobj-ex1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eshiple/Documents/NVM/libpmemobj-ex1 /home/eshiple/Documents/NVM/libpmemobj-ex1 /home/eshiple/Documents/NVM/libpmemobj-ex1/build /home/eshiple/Documents/NVM/libpmemobj-ex1/build /home/eshiple/Documents/NVM/libpmemobj-ex1/build/CMakeFiles/writer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/writer.dir/depend


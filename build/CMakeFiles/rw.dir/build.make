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
CMAKE_SOURCE_DIR = /home/eshiple/Documents/NVM/pmemobj

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eshiple/Documents/NVM/pmemobj/build

# Include any dependencies generated for this target.
include CMakeFiles/rw.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rw.dir/flags.make

rw: CMakeFiles/rw.dir/build.make

.PHONY : rw

# Rule to build all files generated by this target.
CMakeFiles/rw.dir/build: rw

.PHONY : CMakeFiles/rw.dir/build

CMakeFiles/rw.dir/requires:

.PHONY : CMakeFiles/rw.dir/requires

CMakeFiles/rw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rw.dir/clean

CMakeFiles/rw.dir/depend:
	cd /home/eshiple/Documents/NVM/pmemobj/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eshiple/Documents/NVM/pmemobj /home/eshiple/Documents/NVM/pmemobj /home/eshiple/Documents/NVM/pmemobj/build /home/eshiple/Documents/NVM/pmemobj/build /home/eshiple/Documents/NVM/pmemobj/build/CMakeFiles/rw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rw.dir/depend


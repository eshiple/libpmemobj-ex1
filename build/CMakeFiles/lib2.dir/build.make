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
include CMakeFiles/lib2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lib2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lib2.dir/flags.make

lib2: CMakeFiles/lib2.dir/build.make

.PHONY : lib2

# Rule to build all files generated by this target.
CMakeFiles/lib2.dir/build: lib2

.PHONY : CMakeFiles/lib2.dir/build

CMakeFiles/lib2.dir/requires:

.PHONY : CMakeFiles/lib2.dir/requires

CMakeFiles/lib2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lib2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lib2.dir/clean

CMakeFiles/lib2.dir/depend:
	cd /home/eshiple/Documents/NVM/pmemobj/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eshiple/Documents/NVM/pmemobj /home/eshiple/Documents/NVM/pmemobj /home/eshiple/Documents/NVM/pmemobj/build /home/eshiple/Documents/NVM/pmemobj/build /home/eshiple/Documents/NVM/pmemobj/build/CMakeFiles/lib2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lib2.dir/depend

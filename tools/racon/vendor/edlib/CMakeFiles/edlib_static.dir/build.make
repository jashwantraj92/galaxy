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
CMAKE_SOURCE_DIR = /home/gulsum/galaxy/tools/racon

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gulsum/galaxy/tools/racon

# Include any dependencies generated for this target.
include vendor/edlib/CMakeFiles/edlib_static.dir/depend.make

# Include the progress variables for this target.
include vendor/edlib/CMakeFiles/edlib_static.dir/progress.make

# Include the compile flags for this target's objects.
include vendor/edlib/CMakeFiles/edlib_static.dir/flags.make

vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o: vendor/edlib/CMakeFiles/edlib_static.dir/flags.make
vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o: vendor/edlib/edlib/src/edlib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gulsum/galaxy/tools/racon/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o"
	cd /home/gulsum/galaxy/tools/racon/vendor/edlib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o -c /home/gulsum/galaxy/tools/racon/vendor/edlib/edlib/src/edlib.cpp

vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.i"
	cd /home/gulsum/galaxy/tools/racon/vendor/edlib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gulsum/galaxy/tools/racon/vendor/edlib/edlib/src/edlib.cpp > CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.i

vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.s"
	cd /home/gulsum/galaxy/tools/racon/vendor/edlib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gulsum/galaxy/tools/racon/vendor/edlib/edlib/src/edlib.cpp -o CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.s

vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o.requires:

.PHONY : vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o.requires

vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o.provides: vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o.requires
	$(MAKE) -f vendor/edlib/CMakeFiles/edlib_static.dir/build.make vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o.provides.build
.PHONY : vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o.provides

vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o.provides.build: vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o


# Object files for target edlib_static
edlib_static_OBJECTS = \
"CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o"

# External object files for target edlib_static
edlib_static_EXTERNAL_OBJECTS =

lib/libedlib_static.a: vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o
lib/libedlib_static.a: vendor/edlib/CMakeFiles/edlib_static.dir/build.make
lib/libedlib_static.a: vendor/edlib/CMakeFiles/edlib_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gulsum/galaxy/tools/racon/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../lib/libedlib_static.a"
	cd /home/gulsum/galaxy/tools/racon/vendor/edlib && $(CMAKE_COMMAND) -P CMakeFiles/edlib_static.dir/cmake_clean_target.cmake
	cd /home/gulsum/galaxy/tools/racon/vendor/edlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/edlib_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vendor/edlib/CMakeFiles/edlib_static.dir/build: lib/libedlib_static.a

.PHONY : vendor/edlib/CMakeFiles/edlib_static.dir/build

vendor/edlib/CMakeFiles/edlib_static.dir/requires: vendor/edlib/CMakeFiles/edlib_static.dir/edlib/src/edlib.cpp.o.requires

.PHONY : vendor/edlib/CMakeFiles/edlib_static.dir/requires

vendor/edlib/CMakeFiles/edlib_static.dir/clean:
	cd /home/gulsum/galaxy/tools/racon/vendor/edlib && $(CMAKE_COMMAND) -P CMakeFiles/edlib_static.dir/cmake_clean.cmake
.PHONY : vendor/edlib/CMakeFiles/edlib_static.dir/clean

vendor/edlib/CMakeFiles/edlib_static.dir/depend:
	cd /home/gulsum/galaxy/tools/racon && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gulsum/galaxy/tools/racon /home/gulsum/galaxy/tools/racon/vendor/edlib /home/gulsum/galaxy/tools/racon /home/gulsum/galaxy/tools/racon/vendor/edlib /home/gulsum/galaxy/tools/racon/vendor/edlib/CMakeFiles/edlib_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vendor/edlib/CMakeFiles/edlib_static.dir/depend


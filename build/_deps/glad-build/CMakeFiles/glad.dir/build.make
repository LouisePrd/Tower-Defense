# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.4/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/louiseperidy/Desktop/Tower-Defense

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/louiseperidy/Desktop/Tower-Defense/build

# Include any dependencies generated for this target.
include _deps/glad-build/CMakeFiles/glad.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/glad-build/CMakeFiles/glad.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/glad-build/CMakeFiles/glad.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/glad-build/CMakeFiles/glad.dir/flags.make

_deps/glad-build/include/glad/glad.h:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/louiseperidy/Desktop/Tower-Defense/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating GLAD"
	cd /Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-src && /Users/louiseperidy/anaconda3/bin/python3.11 -m glad --profile=compatibility --out-path=/Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-build --api=gl=3.3 --generator=c --extensions= --spec=gl

_deps/glad-build/src/glad.c: _deps/glad-build/include/glad/glad.h
	@$(CMAKE_COMMAND) -E touch_nocreate _deps/glad-build/src/glad.c

_deps/glad-build/CMakeFiles/glad.dir/src/glad.c.o: _deps/glad-build/CMakeFiles/glad.dir/flags.make
_deps/glad-build/CMakeFiles/glad.dir/src/glad.c.o: _deps/glad-build/src/glad.c
_deps/glad-build/CMakeFiles/glad.dir/src/glad.c.o: _deps/glad-build/CMakeFiles/glad.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/louiseperidy/Desktop/Tower-Defense/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object _deps/glad-build/CMakeFiles/glad.dir/src/glad.c.o"
	cd /Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-build && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/glad-build/CMakeFiles/glad.dir/src/glad.c.o -MF CMakeFiles/glad.dir/src/glad.c.o.d -o CMakeFiles/glad.dir/src/glad.c.o -c /Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-build/src/glad.c

_deps/glad-build/CMakeFiles/glad.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/glad.dir/src/glad.c.i"
	cd /Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-build && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-build/src/glad.c > CMakeFiles/glad.dir/src/glad.c.i

_deps/glad-build/CMakeFiles/glad.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/glad.dir/src/glad.c.s"
	cd /Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-build && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-build/src/glad.c -o CMakeFiles/glad.dir/src/glad.c.s

# Object files for target glad
glad_OBJECTS = \
"CMakeFiles/glad.dir/src/glad.c.o"

# External object files for target glad
glad_EXTERNAL_OBJECTS =

_deps/glad-build/libglad.a: _deps/glad-build/CMakeFiles/glad.dir/src/glad.c.o
_deps/glad-build/libglad.a: _deps/glad-build/CMakeFiles/glad.dir/build.make
_deps/glad-build/libglad.a: _deps/glad-build/CMakeFiles/glad.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/louiseperidy/Desktop/Tower-Defense/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libglad.a"
	cd /Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-build && $(CMAKE_COMMAND) -P CMakeFiles/glad.dir/cmake_clean_target.cmake
	cd /Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-build && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glad.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/glad-build/CMakeFiles/glad.dir/build: _deps/glad-build/libglad.a
.PHONY : _deps/glad-build/CMakeFiles/glad.dir/build

_deps/glad-build/CMakeFiles/glad.dir/clean:
	cd /Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-build && $(CMAKE_COMMAND) -P CMakeFiles/glad.dir/cmake_clean.cmake
.PHONY : _deps/glad-build/CMakeFiles/glad.dir/clean

_deps/glad-build/CMakeFiles/glad.dir/depend: _deps/glad-build/include/glad/glad.h
_deps/glad-build/CMakeFiles/glad.dir/depend: _deps/glad-build/src/glad.c
	cd /Users/louiseperidy/Desktop/Tower-Defense/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/louiseperidy/Desktop/Tower-Defense /Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-src /Users/louiseperidy/Desktop/Tower-Defense/build /Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-build /Users/louiseperidy/Desktop/Tower-Defense/build/_deps/glad-build/CMakeFiles/glad.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : _deps/glad-build/CMakeFiles/glad.dir/depend

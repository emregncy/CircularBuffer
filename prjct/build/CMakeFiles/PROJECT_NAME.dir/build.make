# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/emre/Desktop/New_prjct/prjct

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/emre/Desktop/New_prjct/prjct/build

# Include any dependencies generated for this target.
include CMakeFiles/PROJECT_NAME.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/PROJECT_NAME.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/PROJECT_NAME.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PROJECT_NAME.dir/flags.make

CMakeFiles/PROJECT_NAME.dir/src/main.cpp.o: CMakeFiles/PROJECT_NAME.dir/flags.make
CMakeFiles/PROJECT_NAME.dir/src/main.cpp.o: /home/emre/Desktop/New_prjct/prjct/src/main.cpp
CMakeFiles/PROJECT_NAME.dir/src/main.cpp.o: CMakeFiles/PROJECT_NAME.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/emre/Desktop/New_prjct/prjct/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PROJECT_NAME.dir/src/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PROJECT_NAME.dir/src/main.cpp.o -MF CMakeFiles/PROJECT_NAME.dir/src/main.cpp.o.d -o CMakeFiles/PROJECT_NAME.dir/src/main.cpp.o -c /home/emre/Desktop/New_prjct/prjct/src/main.cpp

CMakeFiles/PROJECT_NAME.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/PROJECT_NAME.dir/src/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/emre/Desktop/New_prjct/prjct/src/main.cpp > CMakeFiles/PROJECT_NAME.dir/src/main.cpp.i

CMakeFiles/PROJECT_NAME.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/PROJECT_NAME.dir/src/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/emre/Desktop/New_prjct/prjct/src/main.cpp -o CMakeFiles/PROJECT_NAME.dir/src/main.cpp.s

# Object files for target PROJECT_NAME
PROJECT_NAME_OBJECTS = \
"CMakeFiles/PROJECT_NAME.dir/src/main.cpp.o"

# External object files for target PROJECT_NAME
PROJECT_NAME_EXTERNAL_OBJECTS =

PROJECT_NAME: CMakeFiles/PROJECT_NAME.dir/src/main.cpp.o
PROJECT_NAME: CMakeFiles/PROJECT_NAME.dir/build.make
PROJECT_NAME: CMakeFiles/PROJECT_NAME.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/emre/Desktop/New_prjct/prjct/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PROJECT_NAME"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PROJECT_NAME.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PROJECT_NAME.dir/build: PROJECT_NAME
.PHONY : CMakeFiles/PROJECT_NAME.dir/build

CMakeFiles/PROJECT_NAME.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PROJECT_NAME.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PROJECT_NAME.dir/clean

CMakeFiles/PROJECT_NAME.dir/depend:
	cd /home/emre/Desktop/New_prjct/prjct/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/emre/Desktop/New_prjct/prjct /home/emre/Desktop/New_prjct/prjct /home/emre/Desktop/New_prjct/prjct/build /home/emre/Desktop/New_prjct/prjct/build /home/emre/Desktop/New_prjct/prjct/build/CMakeFiles/PROJECT_NAME.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/PROJECT_NAME.dir/depend


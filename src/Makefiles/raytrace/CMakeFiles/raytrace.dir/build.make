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
CMAKE_SOURCE_DIR = /home/jeremy/Desktop/Projects/SrcM/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jeremy/Desktop/Projects/SrcM/src/Makefiles

# Include any dependencies generated for this target.
include raytrace/CMakeFiles/raytrace.dir/depend.make

# Include the progress variables for this target.
include raytrace/CMakeFiles/raytrace.dir/progress.make

# Include the compile flags for this target's objects.
include raytrace/CMakeFiles/raytrace.dir/flags.make

raytrace/CMakeFiles/raytrace.dir/raytrace.o: raytrace/CMakeFiles/raytrace.dir/flags.make
raytrace/CMakeFiles/raytrace.dir/raytrace.o: ../raytrace/raytrace.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremy/Desktop/Projects/SrcM/src/Makefiles/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object raytrace/CMakeFiles/raytrace.dir/raytrace.o"
	cd /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytrace.dir/raytrace.o -c /home/jeremy/Desktop/Projects/SrcM/src/raytrace/raytrace.cpp

raytrace/CMakeFiles/raytrace.dir/raytrace.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytrace.dir/raytrace.i"
	cd /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremy/Desktop/Projects/SrcM/src/raytrace/raytrace.cpp > CMakeFiles/raytrace.dir/raytrace.i

raytrace/CMakeFiles/raytrace.dir/raytrace.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytrace.dir/raytrace.s"
	cd /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremy/Desktop/Projects/SrcM/src/raytrace/raytrace.cpp -o CMakeFiles/raytrace.dir/raytrace.s

raytrace/CMakeFiles/raytrace.dir/raytrace.o.requires:

.PHONY : raytrace/CMakeFiles/raytrace.dir/raytrace.o.requires

raytrace/CMakeFiles/raytrace.dir/raytrace.o.provides: raytrace/CMakeFiles/raytrace.dir/raytrace.o.requires
	$(MAKE) -f raytrace/CMakeFiles/raytrace.dir/build.make raytrace/CMakeFiles/raytrace.dir/raytrace.o.provides.build
.PHONY : raytrace/CMakeFiles/raytrace.dir/raytrace.o.provides

raytrace/CMakeFiles/raytrace.dir/raytrace.o.provides.build: raytrace/CMakeFiles/raytrace.dir/raytrace.o


raytrace/CMakeFiles/raytrace.dir/trace2.o: raytrace/CMakeFiles/raytrace.dir/flags.make
raytrace/CMakeFiles/raytrace.dir/trace2.o: ../raytrace/trace2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremy/Desktop/Projects/SrcM/src/Makefiles/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object raytrace/CMakeFiles/raytrace.dir/trace2.o"
	cd /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytrace.dir/trace2.o -c /home/jeremy/Desktop/Projects/SrcM/src/raytrace/trace2.cpp

raytrace/CMakeFiles/raytrace.dir/trace2.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytrace.dir/trace2.i"
	cd /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremy/Desktop/Projects/SrcM/src/raytrace/trace2.cpp > CMakeFiles/raytrace.dir/trace2.i

raytrace/CMakeFiles/raytrace.dir/trace2.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytrace.dir/trace2.s"
	cd /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremy/Desktop/Projects/SrcM/src/raytrace/trace2.cpp -o CMakeFiles/raytrace.dir/trace2.s

raytrace/CMakeFiles/raytrace.dir/trace2.o.requires:

.PHONY : raytrace/CMakeFiles/raytrace.dir/trace2.o.requires

raytrace/CMakeFiles/raytrace.dir/trace2.o.provides: raytrace/CMakeFiles/raytrace.dir/trace2.o.requires
	$(MAKE) -f raytrace/CMakeFiles/raytrace.dir/build.make raytrace/CMakeFiles/raytrace.dir/trace2.o.provides.build
.PHONY : raytrace/CMakeFiles/raytrace.dir/trace2.o.provides

raytrace/CMakeFiles/raytrace.dir/trace2.o.provides.build: raytrace/CMakeFiles/raytrace.dir/trace2.o


raytrace/CMakeFiles/raytrace.dir/trace3.o: raytrace/CMakeFiles/raytrace.dir/flags.make
raytrace/CMakeFiles/raytrace.dir/trace3.o: ../raytrace/trace3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremy/Desktop/Projects/SrcM/src/Makefiles/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object raytrace/CMakeFiles/raytrace.dir/trace3.o"
	cd /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytrace.dir/trace3.o -c /home/jeremy/Desktop/Projects/SrcM/src/raytrace/trace3.cpp

raytrace/CMakeFiles/raytrace.dir/trace3.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytrace.dir/trace3.i"
	cd /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremy/Desktop/Projects/SrcM/src/raytrace/trace3.cpp > CMakeFiles/raytrace.dir/trace3.i

raytrace/CMakeFiles/raytrace.dir/trace3.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytrace.dir/trace3.s"
	cd /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremy/Desktop/Projects/SrcM/src/raytrace/trace3.cpp -o CMakeFiles/raytrace.dir/trace3.s

raytrace/CMakeFiles/raytrace.dir/trace3.o.requires:

.PHONY : raytrace/CMakeFiles/raytrace.dir/trace3.o.requires

raytrace/CMakeFiles/raytrace.dir/trace3.o.provides: raytrace/CMakeFiles/raytrace.dir/trace3.o.requires
	$(MAKE) -f raytrace/CMakeFiles/raytrace.dir/build.make raytrace/CMakeFiles/raytrace.dir/trace3.o.provides.build
.PHONY : raytrace/CMakeFiles/raytrace.dir/trace3.o.provides

raytrace/CMakeFiles/raytrace.dir/trace3.o.provides.build: raytrace/CMakeFiles/raytrace.dir/trace3.o


# Object files for target raytrace
raytrace_OBJECTS = \
"CMakeFiles/raytrace.dir/raytrace.o" \
"CMakeFiles/raytrace.dir/trace2.o" \
"CMakeFiles/raytrace.dir/trace3.o"

# External object files for target raytrace
raytrace_EXTERNAL_OBJECTS =

../lib/public/linux32/raytrace.a: raytrace/CMakeFiles/raytrace.dir/raytrace.o
../lib/public/linux32/raytrace.a: raytrace/CMakeFiles/raytrace.dir/trace2.o
../lib/public/linux32/raytrace.a: raytrace/CMakeFiles/raytrace.dir/trace3.o
../lib/public/linux32/raytrace.a: raytrace/CMakeFiles/raytrace.dir/build.make
../lib/public/linux32/raytrace.a: raytrace/CMakeFiles/raytrace.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jeremy/Desktop/Projects/SrcM/src/Makefiles/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library ../../lib/public/linux32/raytrace.a"
	cd /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace && $(CMAKE_COMMAND) -P CMakeFiles/raytrace.dir/cmake_clean_target.cmake
	cd /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raytrace.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
raytrace/CMakeFiles/raytrace.dir/build: ../lib/public/linux32/raytrace.a

.PHONY : raytrace/CMakeFiles/raytrace.dir/build

raytrace/CMakeFiles/raytrace.dir/requires: raytrace/CMakeFiles/raytrace.dir/raytrace.o.requires
raytrace/CMakeFiles/raytrace.dir/requires: raytrace/CMakeFiles/raytrace.dir/trace2.o.requires
raytrace/CMakeFiles/raytrace.dir/requires: raytrace/CMakeFiles/raytrace.dir/trace3.o.requires

.PHONY : raytrace/CMakeFiles/raytrace.dir/requires

raytrace/CMakeFiles/raytrace.dir/clean:
	cd /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace && $(CMAKE_COMMAND) -P CMakeFiles/raytrace.dir/cmake_clean.cmake
.PHONY : raytrace/CMakeFiles/raytrace.dir/clean

raytrace/CMakeFiles/raytrace.dir/depend:
	cd /home/jeremy/Desktop/Projects/SrcM/src/Makefiles && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jeremy/Desktop/Projects/SrcM/src /home/jeremy/Desktop/Projects/SrcM/src/raytrace /home/jeremy/Desktop/Projects/SrcM/src/Makefiles /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace /home/jeremy/Desktop/Projects/SrcM/src/Makefiles/raytrace/CMakeFiles/raytrace.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : raytrace/CMakeFiles/raytrace.dir/depend


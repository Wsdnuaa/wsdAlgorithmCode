# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/wsdindemind/Documents/C++/WSDC++/findTemplate

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wsdindemind/Documents/C++/WSDC++/findTemplate/build

# Include any dependencies generated for this target.
include CMakeFiles/wsdCpp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/wsdCpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wsdCpp.dir/flags.make

CMakeFiles/wsdCpp.dir/Sort.cc.o: CMakeFiles/wsdCpp.dir/flags.make
CMakeFiles/wsdCpp.dir/Sort.cc.o: ../Sort.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wsdindemind/Documents/C++/WSDC++/findTemplate/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/wsdCpp.dir/Sort.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wsdCpp.dir/Sort.cc.o -c /home/wsdindemind/Documents/C++/WSDC++/findTemplate/Sort.cc

CMakeFiles/wsdCpp.dir/Sort.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wsdCpp.dir/Sort.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wsdindemind/Documents/C++/WSDC++/findTemplate/Sort.cc > CMakeFiles/wsdCpp.dir/Sort.cc.i

CMakeFiles/wsdCpp.dir/Sort.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wsdCpp.dir/Sort.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wsdindemind/Documents/C++/WSDC++/findTemplate/Sort.cc -o CMakeFiles/wsdCpp.dir/Sort.cc.s

CMakeFiles/wsdCpp.dir/Sort.cc.o.requires:

.PHONY : CMakeFiles/wsdCpp.dir/Sort.cc.o.requires

CMakeFiles/wsdCpp.dir/Sort.cc.o.provides: CMakeFiles/wsdCpp.dir/Sort.cc.o.requires
	$(MAKE) -f CMakeFiles/wsdCpp.dir/build.make CMakeFiles/wsdCpp.dir/Sort.cc.o.provides.build
.PHONY : CMakeFiles/wsdCpp.dir/Sort.cc.o.provides

CMakeFiles/wsdCpp.dir/Sort.cc.o.provides.build: CMakeFiles/wsdCpp.dir/Sort.cc.o


# Object files for target wsdCpp
wsdCpp_OBJECTS = \
"CMakeFiles/wsdCpp.dir/Sort.cc.o"

# External object files for target wsdCpp
wsdCpp_EXTERNAL_OBJECTS =

wsdCpp: CMakeFiles/wsdCpp.dir/Sort.cc.o
wsdCpp: CMakeFiles/wsdCpp.dir/build.make
wsdCpp: CMakeFiles/wsdCpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wsdindemind/Documents/C++/WSDC++/findTemplate/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable wsdCpp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wsdCpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/wsdCpp.dir/build: wsdCpp

.PHONY : CMakeFiles/wsdCpp.dir/build

CMakeFiles/wsdCpp.dir/requires: CMakeFiles/wsdCpp.dir/Sort.cc.o.requires

.PHONY : CMakeFiles/wsdCpp.dir/requires

CMakeFiles/wsdCpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/wsdCpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/wsdCpp.dir/clean

CMakeFiles/wsdCpp.dir/depend:
	cd /home/wsdindemind/Documents/C++/WSDC++/findTemplate/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wsdindemind/Documents/C++/WSDC++/findTemplate /home/wsdindemind/Documents/C++/WSDC++/findTemplate /home/wsdindemind/Documents/C++/WSDC++/findTemplate/build /home/wsdindemind/Documents/C++/WSDC++/findTemplate/build /home/wsdindemind/Documents/C++/WSDC++/findTemplate/build/CMakeFiles/wsdCpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/wsdCpp.dir/depend


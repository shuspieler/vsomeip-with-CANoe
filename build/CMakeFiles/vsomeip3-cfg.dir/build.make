# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/v2x/Shu/vsomeip

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/v2x/Shu/vsomeip/build

# Include any dependencies generated for this target.
include CMakeFiles/vsomeip3-cfg.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/vsomeip3-cfg.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/vsomeip3-cfg.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vsomeip3-cfg.dir/flags.make

CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.o: CMakeFiles/vsomeip3-cfg.dir/flags.make
CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.o: ../implementation/configuration/src/configuration_impl.cpp
CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.o: CMakeFiles/vsomeip3-cfg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/v2x/Shu/vsomeip/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.o -MF CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.o.d -o CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.o -c /home/v2x/Shu/vsomeip/implementation/configuration/src/configuration_impl.cpp

CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/v2x/Shu/vsomeip/implementation/configuration/src/configuration_impl.cpp > CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.i

CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/v2x/Shu/vsomeip/implementation/configuration/src/configuration_impl.cpp -o CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.s

CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.o: CMakeFiles/vsomeip3-cfg.dir/flags.make
CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.o: ../implementation/configuration/src/configuration_plugin_impl.cpp
CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.o: CMakeFiles/vsomeip3-cfg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/v2x/Shu/vsomeip/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.o -MF CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.o.d -o CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.o -c /home/v2x/Shu/vsomeip/implementation/configuration/src/configuration_plugin_impl.cpp

CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/v2x/Shu/vsomeip/implementation/configuration/src/configuration_plugin_impl.cpp > CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.i

CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/v2x/Shu/vsomeip/implementation/configuration/src/configuration_plugin_impl.cpp -o CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.s

# Object files for target vsomeip3-cfg
vsomeip3__cfg_OBJECTS = \
"CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.o" \
"CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.o"

# External object files for target vsomeip3-cfg
vsomeip3__cfg_EXTERNAL_OBJECTS =

libvsomeip3-cfg.so.3.5.5: CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_impl.cpp.o
libvsomeip3-cfg.so.3.5.5: CMakeFiles/vsomeip3-cfg.dir/implementation/configuration/src/configuration_plugin_impl.cpp.o
libvsomeip3-cfg.so.3.5.5: CMakeFiles/vsomeip3-cfg.dir/build.make
libvsomeip3-cfg.so.3.5.5: libvsomeip3.so.3.5.5
libvsomeip3-cfg.so.3.5.5: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.74.0
libvsomeip3-cfg.so.3.5.5: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.74.0
libvsomeip3-cfg.so.3.5.5: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.74.0
libvsomeip3-cfg.so.3.5.5: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.74.0
libvsomeip3-cfg.so.3.5.5: CMakeFiles/vsomeip3-cfg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/v2x/Shu/vsomeip/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libvsomeip3-cfg.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vsomeip3-cfg.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library libvsomeip3-cfg.so.3.5.5 libvsomeip3-cfg.so.3 libvsomeip3-cfg.so

libvsomeip3-cfg.so.3: libvsomeip3-cfg.so.3.5.5
	@$(CMAKE_COMMAND) -E touch_nocreate libvsomeip3-cfg.so.3

libvsomeip3-cfg.so: libvsomeip3-cfg.so.3.5.5
	@$(CMAKE_COMMAND) -E touch_nocreate libvsomeip3-cfg.so

# Rule to build all files generated by this target.
CMakeFiles/vsomeip3-cfg.dir/build: libvsomeip3-cfg.so
.PHONY : CMakeFiles/vsomeip3-cfg.dir/build

CMakeFiles/vsomeip3-cfg.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vsomeip3-cfg.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vsomeip3-cfg.dir/clean

CMakeFiles/vsomeip3-cfg.dir/depend:
	cd /home/v2x/Shu/vsomeip/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/v2x/Shu/vsomeip /home/v2x/Shu/vsomeip /home/v2x/Shu/vsomeip/build /home/v2x/Shu/vsomeip/build /home/v2x/Shu/vsomeip/build/CMakeFiles/vsomeip3-cfg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vsomeip3-cfg.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /snap/clion/164/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/164/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dengwei/Desktop/CppTrie

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dengwei/Desktop/CppTrie/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CppTrie.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/CppTrie.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CppTrie.dir/flags.make

CMakeFiles/CppTrie.dir/main.cpp.o: CMakeFiles/CppTrie.dir/flags.make
CMakeFiles/CppTrie.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dengwei/Desktop/CppTrie/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CppTrie.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CppTrie.dir/main.cpp.o -c /home/dengwei/Desktop/CppTrie/main.cpp

CMakeFiles/CppTrie.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CppTrie.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dengwei/Desktop/CppTrie/main.cpp > CMakeFiles/CppTrie.dir/main.cpp.i

CMakeFiles/CppTrie.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CppTrie.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dengwei/Desktop/CppTrie/main.cpp -o CMakeFiles/CppTrie.dir/main.cpp.s

CMakeFiles/CppTrie.dir/Trie.cpp.o: CMakeFiles/CppTrie.dir/flags.make
CMakeFiles/CppTrie.dir/Trie.cpp.o: ../Trie.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dengwei/Desktop/CppTrie/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CppTrie.dir/Trie.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CppTrie.dir/Trie.cpp.o -c /home/dengwei/Desktop/CppTrie/Trie.cpp

CMakeFiles/CppTrie.dir/Trie.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CppTrie.dir/Trie.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dengwei/Desktop/CppTrie/Trie.cpp > CMakeFiles/CppTrie.dir/Trie.cpp.i

CMakeFiles/CppTrie.dir/Trie.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CppTrie.dir/Trie.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dengwei/Desktop/CppTrie/Trie.cpp -o CMakeFiles/CppTrie.dir/Trie.cpp.s

# Object files for target CppTrie
CppTrie_OBJECTS = \
"CMakeFiles/CppTrie.dir/main.cpp.o" \
"CMakeFiles/CppTrie.dir/Trie.cpp.o"

# External object files for target CppTrie
CppTrie_EXTERNAL_OBJECTS =

CppTrie: CMakeFiles/CppTrie.dir/main.cpp.o
CppTrie: CMakeFiles/CppTrie.dir/Trie.cpp.o
CppTrie: CMakeFiles/CppTrie.dir/build.make
CppTrie: CMakeFiles/CppTrie.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dengwei/Desktop/CppTrie/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable CppTrie"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CppTrie.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CppTrie.dir/build: CppTrie
.PHONY : CMakeFiles/CppTrie.dir/build

CMakeFiles/CppTrie.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CppTrie.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CppTrie.dir/clean

CMakeFiles/CppTrie.dir/depend:
	cd /home/dengwei/Desktop/CppTrie/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dengwei/Desktop/CppTrie /home/dengwei/Desktop/CppTrie /home/dengwei/Desktop/CppTrie/cmake-build-debug /home/dengwei/Desktop/CppTrie/cmake-build-debug /home/dengwei/Desktop/CppTrie/cmake-build-debug/CMakeFiles/CppTrie.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CppTrie.dir/depend


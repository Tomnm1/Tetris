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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tom/CLionProjects/Tetris_PO

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tom/CLionProjects/Tetris_PO/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Tetris_PO.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Tetris_PO.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Tetris_PO.dir/flags.make

CMakeFiles/Tetris_PO.dir/main.cpp.o: CMakeFiles/Tetris_PO.dir/flags.make
CMakeFiles/Tetris_PO.dir/main.cpp.o: /Users/tom/CLionProjects/Tetris_PO/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tom/CLionProjects/Tetris_PO/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Tetris_PO.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tetris_PO.dir/main.cpp.o -c /Users/tom/CLionProjects/Tetris_PO/main.cpp

CMakeFiles/Tetris_PO.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tetris_PO.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tom/CLionProjects/Tetris_PO/main.cpp > CMakeFiles/Tetris_PO.dir/main.cpp.i

CMakeFiles/Tetris_PO.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tetris_PO.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tom/CLionProjects/Tetris_PO/main.cpp -o CMakeFiles/Tetris_PO.dir/main.cpp.s

CMakeFiles/Tetris_PO.dir/board.cpp.o: CMakeFiles/Tetris_PO.dir/flags.make
CMakeFiles/Tetris_PO.dir/board.cpp.o: /Users/tom/CLionProjects/Tetris_PO/board.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tom/CLionProjects/Tetris_PO/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Tetris_PO.dir/board.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tetris_PO.dir/board.cpp.o -c /Users/tom/CLionProjects/Tetris_PO/board.cpp

CMakeFiles/Tetris_PO.dir/board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tetris_PO.dir/board.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tom/CLionProjects/Tetris_PO/board.cpp > CMakeFiles/Tetris_PO.dir/board.cpp.i

CMakeFiles/Tetris_PO.dir/board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tetris_PO.dir/board.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tom/CLionProjects/Tetris_PO/board.cpp -o CMakeFiles/Tetris_PO.dir/board.cpp.s

CMakeFiles/Tetris_PO.dir/menu.cpp.o: CMakeFiles/Tetris_PO.dir/flags.make
CMakeFiles/Tetris_PO.dir/menu.cpp.o: /Users/tom/CLionProjects/Tetris_PO/menu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tom/CLionProjects/Tetris_PO/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Tetris_PO.dir/menu.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tetris_PO.dir/menu.cpp.o -c /Users/tom/CLionProjects/Tetris_PO/menu.cpp

CMakeFiles/Tetris_PO.dir/menu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tetris_PO.dir/menu.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tom/CLionProjects/Tetris_PO/menu.cpp > CMakeFiles/Tetris_PO.dir/menu.cpp.i

CMakeFiles/Tetris_PO.dir/menu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tetris_PO.dir/menu.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tom/CLionProjects/Tetris_PO/menu.cpp -o CMakeFiles/Tetris_PO.dir/menu.cpp.s

CMakeFiles/Tetris_PO.dir/score.cpp.o: CMakeFiles/Tetris_PO.dir/flags.make
CMakeFiles/Tetris_PO.dir/score.cpp.o: /Users/tom/CLionProjects/Tetris_PO/score.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tom/CLionProjects/Tetris_PO/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Tetris_PO.dir/score.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tetris_PO.dir/score.cpp.o -c /Users/tom/CLionProjects/Tetris_PO/score.cpp

CMakeFiles/Tetris_PO.dir/score.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tetris_PO.dir/score.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tom/CLionProjects/Tetris_PO/score.cpp > CMakeFiles/Tetris_PO.dir/score.cpp.i

CMakeFiles/Tetris_PO.dir/score.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tetris_PO.dir/score.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tom/CLionProjects/Tetris_PO/score.cpp -o CMakeFiles/Tetris_PO.dir/score.cpp.s

CMakeFiles/Tetris_PO.dir/point.cpp.o: CMakeFiles/Tetris_PO.dir/flags.make
CMakeFiles/Tetris_PO.dir/point.cpp.o: /Users/tom/CLionProjects/Tetris_PO/point.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tom/CLionProjects/Tetris_PO/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Tetris_PO.dir/point.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tetris_PO.dir/point.cpp.o -c /Users/tom/CLionProjects/Tetris_PO/point.cpp

CMakeFiles/Tetris_PO.dir/point.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tetris_PO.dir/point.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tom/CLionProjects/Tetris_PO/point.cpp > CMakeFiles/Tetris_PO.dir/point.cpp.i

CMakeFiles/Tetris_PO.dir/point.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tetris_PO.dir/point.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tom/CLionProjects/Tetris_PO/point.cpp -o CMakeFiles/Tetris_PO.dir/point.cpp.s

CMakeFiles/Tetris_PO.dir/figure.cpp.o: CMakeFiles/Tetris_PO.dir/flags.make
CMakeFiles/Tetris_PO.dir/figure.cpp.o: /Users/tom/CLionProjects/Tetris_PO/figure.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tom/CLionProjects/Tetris_PO/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Tetris_PO.dir/figure.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tetris_PO.dir/figure.cpp.o -c /Users/tom/CLionProjects/Tetris_PO/figure.cpp

CMakeFiles/Tetris_PO.dir/figure.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tetris_PO.dir/figure.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tom/CLionProjects/Tetris_PO/figure.cpp > CMakeFiles/Tetris_PO.dir/figure.cpp.i

CMakeFiles/Tetris_PO.dir/figure.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tetris_PO.dir/figure.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tom/CLionProjects/Tetris_PO/figure.cpp -o CMakeFiles/Tetris_PO.dir/figure.cpp.s

# Object files for target Tetris_PO
Tetris_PO_OBJECTS = \
"CMakeFiles/Tetris_PO.dir/main.cpp.o" \
"CMakeFiles/Tetris_PO.dir/board.cpp.o" \
"CMakeFiles/Tetris_PO.dir/menu.cpp.o" \
"CMakeFiles/Tetris_PO.dir/score.cpp.o" \
"CMakeFiles/Tetris_PO.dir/point.cpp.o" \
"CMakeFiles/Tetris_PO.dir/figure.cpp.o"

# External object files for target Tetris_PO
Tetris_PO_EXTERNAL_OBJECTS =

Tetris_PO: CMakeFiles/Tetris_PO.dir/main.cpp.o
Tetris_PO: CMakeFiles/Tetris_PO.dir/board.cpp.o
Tetris_PO: CMakeFiles/Tetris_PO.dir/menu.cpp.o
Tetris_PO: CMakeFiles/Tetris_PO.dir/score.cpp.o
Tetris_PO: CMakeFiles/Tetris_PO.dir/point.cpp.o
Tetris_PO: CMakeFiles/Tetris_PO.dir/figure.cpp.o
Tetris_PO: CMakeFiles/Tetris_PO.dir/build.make
Tetris_PO: /opt/homebrew/lib/libsfml-graphics.2.5.1.dylib
Tetris_PO: /opt/homebrew/lib/libsfml-audio.2.5.1.dylib
Tetris_PO: /opt/homebrew/lib/libsfml-network.2.5.1.dylib
Tetris_PO: /opt/homebrew/lib/libsfml-window.2.5.1.dylib
Tetris_PO: /opt/homebrew/lib/libsfml-system.2.5.1.dylib
Tetris_PO: CMakeFiles/Tetris_PO.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/tom/CLionProjects/Tetris_PO/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable Tetris_PO"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Tetris_PO.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Tetris_PO.dir/build: Tetris_PO
.PHONY : CMakeFiles/Tetris_PO.dir/build

CMakeFiles/Tetris_PO.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Tetris_PO.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Tetris_PO.dir/clean

CMakeFiles/Tetris_PO.dir/depend:
	cd /Users/tom/CLionProjects/Tetris_PO/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tom/CLionProjects/Tetris_PO /Users/tom/CLionProjects/Tetris_PO /Users/tom/CLionProjects/Tetris_PO/cmake-build-debug /Users/tom/CLionProjects/Tetris_PO/cmake-build-debug /Users/tom/CLionProjects/Tetris_PO/cmake-build-debug/CMakeFiles/Tetris_PO.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Tetris_PO.dir/depend


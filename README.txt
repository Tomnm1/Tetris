C++ standard: 23
Compilator info: CodeBlocks for unix, Unix Makefiles build with -- -j 6 build options.

Project built and tested on MacOS Ventura 13.1 in CLion Build #CL-223.8214.51.

Require SFML graphic library version 2.5 or 2.5.1 (see CMakeLists.txt for require packages)
- Make sure SFML environment variable is defined well for compiler (if using Windows potentially line include_directories(/usr/local/include) in CMake should be changed since it's Unix-family systems related.)

If using Windows as OS, make sure to check if source directory graphic files are seen good by compiler, eg. "../source/tetris.ogg" may be needed to change to "source/tetris.ogg" since Windows systems dislike ../ in source file (but may not).

Also please check if in build version Source directory is copied to build directory (may be needed to change environment variable from default to specific relative path)

Description of files:
Board - "main" file which is doing GUI etc.
Figure - class representing figure object type (so a shape of a figure used in tetris)
Main - just runnable file which is creating Menu class object type
Menu - first window which allows user to run the game
Point - is keeping current position of a block in board taken from figure
Score - as named, scoring system with combos etc.

db.txt - used to store the best score.
# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Miguel\Desktop\CPPCourse\GameProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Miguel\Desktop\CPPCourse\GameProject\build

# Include any dependencies generated for this target.
include CMakeFiles/GameProject.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/GameProject.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/GameProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GameProject.dir/flags.make

CMakeFiles/GameProject.dir/main.cpp.obj: CMakeFiles/GameProject.dir/flags.make
CMakeFiles/GameProject.dir/main.cpp.obj: CMakeFiles/GameProject.dir/includes_CXX.rsp
CMakeFiles/GameProject.dir/main.cpp.obj: C:/Users/Miguel/Desktop/CPPCourse/GameProject/main.cpp
CMakeFiles/GameProject.dir/main.cpp.obj: CMakeFiles/GameProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Miguel\Desktop\CPPCourse\GameProject\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/GameProject.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GameProject.dir/main.cpp.obj -MF CMakeFiles\GameProject.dir\main.cpp.obj.d -o CMakeFiles\GameProject.dir\main.cpp.obj -c C:\Users\Miguel\Desktop\CPPCourse\GameProject\main.cpp

CMakeFiles/GameProject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GameProject.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Miguel\Desktop\CPPCourse\GameProject\main.cpp > CMakeFiles\GameProject.dir\main.cpp.i

CMakeFiles/GameProject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GameProject.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Miguel\Desktop\CPPCourse\GameProject\main.cpp -o CMakeFiles\GameProject.dir\main.cpp.s

# Object files for target GameProject
GameProject_OBJECTS = \
"CMakeFiles/GameProject.dir/main.cpp.obj"

# External object files for target GameProject
GameProject_EXTERNAL_OBJECTS =

GameProject.exe: CMakeFiles/GameProject.dir/main.cpp.obj
GameProject.exe: CMakeFiles/GameProject.dir/build.make
GameProject.exe: C:/SDL2/lib/libSDL2Main.a
GameProject.exe: C:/SDL2/lib/libSDL2.dll.a
GameProject.exe: libs/lua/liblua.a
GameProject.exe: CMakeFiles/GameProject.dir/linkLibs.rsp
GameProject.exe: CMakeFiles/GameProject.dir/objects1.rsp
GameProject.exe: CMakeFiles/GameProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\Miguel\Desktop\CPPCourse\GameProject\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable GameProject.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\GameProject.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GameProject.dir/build: GameProject.exe
.PHONY : CMakeFiles/GameProject.dir/build

CMakeFiles/GameProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\GameProject.dir\cmake_clean.cmake
.PHONY : CMakeFiles/GameProject.dir/clean

CMakeFiles/GameProject.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Miguel\Desktop\CPPCourse\GameProject C:\Users\Miguel\Desktop\CPPCourse\GameProject C:\Users\Miguel\Desktop\CPPCourse\GameProject\build C:\Users\Miguel\Desktop\CPPCourse\GameProject\build C:\Users\Miguel\Desktop\CPPCourse\GameProject\build\CMakeFiles\GameProject.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/GameProject.dir/depend


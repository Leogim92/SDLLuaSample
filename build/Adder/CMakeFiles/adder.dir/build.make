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
include Adder/CMakeFiles/adder.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Adder/CMakeFiles/adder.dir/compiler_depend.make

# Include the progress variables for this target.
include Adder/CMakeFiles/adder.dir/progress.make

# Include the compile flags for this target's objects.
include Adder/CMakeFiles/adder.dir/flags.make

Adder/CMakeFiles/adder.dir/adder.cpp.obj: Adder/CMakeFiles/adder.dir/flags.make
Adder/CMakeFiles/adder.dir/adder.cpp.obj: C:/Users/Miguel/Desktop/CPPCourse/GameProject/Adder/adder.cpp
Adder/CMakeFiles/adder.dir/adder.cpp.obj: Adder/CMakeFiles/adder.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Miguel\Desktop\CPPCourse\GameProject\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Adder/CMakeFiles/adder.dir/adder.cpp.obj"
	cd /d C:\Users\Miguel\Desktop\CPPCourse\GameProject\build\Adder && C:\PROGRA~1\MINGW-~1\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Adder/CMakeFiles/adder.dir/adder.cpp.obj -MF CMakeFiles\adder.dir\adder.cpp.obj.d -o CMakeFiles\adder.dir\adder.cpp.obj -c C:\Users\Miguel\Desktop\CPPCourse\GameProject\Adder\adder.cpp

Adder/CMakeFiles/adder.dir/adder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/adder.dir/adder.cpp.i"
	cd /d C:\Users\Miguel\Desktop\CPPCourse\GameProject\build\Adder && C:\PROGRA~1\MINGW-~1\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Miguel\Desktop\CPPCourse\GameProject\Adder\adder.cpp > CMakeFiles\adder.dir\adder.cpp.i

Adder/CMakeFiles/adder.dir/adder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/adder.dir/adder.cpp.s"
	cd /d C:\Users\Miguel\Desktop\CPPCourse\GameProject\build\Adder && C:\PROGRA~1\MINGW-~1\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Miguel\Desktop\CPPCourse\GameProject\Adder\adder.cpp -o CMakeFiles\adder.dir\adder.cpp.s

# Object files for target adder
adder_OBJECTS = \
"CMakeFiles/adder.dir/adder.cpp.obj"

# External object files for target adder
adder_EXTERNAL_OBJECTS =

Adder/libadder.a: Adder/CMakeFiles/adder.dir/adder.cpp.obj
Adder/libadder.a: Adder/CMakeFiles/adder.dir/build.make
Adder/libadder.a: Adder/CMakeFiles/adder.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\Miguel\Desktop\CPPCourse\GameProject\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libadder.a"
	cd /d C:\Users\Miguel\Desktop\CPPCourse\GameProject\build\Adder && $(CMAKE_COMMAND) -P CMakeFiles\adder.dir\cmake_clean_target.cmake
	cd /d C:\Users\Miguel\Desktop\CPPCourse\GameProject\build\Adder && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\adder.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Adder/CMakeFiles/adder.dir/build: Adder/libadder.a
.PHONY : Adder/CMakeFiles/adder.dir/build

Adder/CMakeFiles/adder.dir/clean:
	cd /d C:\Users\Miguel\Desktop\CPPCourse\GameProject\build\Adder && $(CMAKE_COMMAND) -P CMakeFiles\adder.dir\cmake_clean.cmake
.PHONY : Adder/CMakeFiles/adder.dir/clean

Adder/CMakeFiles/adder.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Miguel\Desktop\CPPCourse\GameProject C:\Users\Miguel\Desktop\CPPCourse\GameProject\Adder C:\Users\Miguel\Desktop\CPPCourse\GameProject\build C:\Users\Miguel\Desktop\CPPCourse\GameProject\build\Adder C:\Users\Miguel\Desktop\CPPCourse\GameProject\build\Adder\CMakeFiles\adder.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : Adder/CMakeFiles/adder.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

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
CMAKE_SOURCE_DIR = E:\A_Code_github\LeetCode\A_Sample_proj

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\A_Code_github\LeetCode\A_Sample_proj\build

# Include any dependencies generated for this target.
include CMakeFiles/projexe.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/projexe.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/projexe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/projexe.dir/flags.make

CMakeFiles/projexe.dir/src/main.cpp.obj: CMakeFiles/projexe.dir/flags.make
CMakeFiles/projexe.dir/src/main.cpp.obj: CMakeFiles/projexe.dir/includes_CXX.rsp
CMakeFiles/projexe.dir/src/main.cpp.obj: E:/A_Code_github/LeetCode/A_Sample_proj/src/main.cpp
CMakeFiles/projexe.dir/src/main.cpp.obj: CMakeFiles/projexe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\A_Code_github\LeetCode\A_Sample_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/projexe.dir/src/main.cpp.obj"
	E:\mingw\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/projexe.dir/src/main.cpp.obj -MF CMakeFiles\projexe.dir\src\main.cpp.obj.d -o CMakeFiles\projexe.dir\src\main.cpp.obj -c E:\A_Code_github\LeetCode\A_Sample_proj\src\main.cpp

CMakeFiles/projexe.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/projexe.dir/src/main.cpp.i"
	E:\mingw\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\A_Code_github\LeetCode\A_Sample_proj\src\main.cpp > CMakeFiles\projexe.dir\src\main.cpp.i

CMakeFiles/projexe.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/projexe.dir/src/main.cpp.s"
	E:\mingw\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\A_Code_github\LeetCode\A_Sample_proj\src\main.cpp -o CMakeFiles\projexe.dir\src\main.cpp.s

CMakeFiles/projexe.dir/src/swap.cpp.obj: CMakeFiles/projexe.dir/flags.make
CMakeFiles/projexe.dir/src/swap.cpp.obj: CMakeFiles/projexe.dir/includes_CXX.rsp
CMakeFiles/projexe.dir/src/swap.cpp.obj: E:/A_Code_github/LeetCode/A_Sample_proj/src/swap.cpp
CMakeFiles/projexe.dir/src/swap.cpp.obj: CMakeFiles/projexe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\A_Code_github\LeetCode\A_Sample_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/projexe.dir/src/swap.cpp.obj"
	E:\mingw\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/projexe.dir/src/swap.cpp.obj -MF CMakeFiles\projexe.dir\src\swap.cpp.obj.d -o CMakeFiles\projexe.dir\src\swap.cpp.obj -c E:\A_Code_github\LeetCode\A_Sample_proj\src\swap.cpp

CMakeFiles/projexe.dir/src/swap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/projexe.dir/src/swap.cpp.i"
	E:\mingw\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\A_Code_github\LeetCode\A_Sample_proj\src\swap.cpp > CMakeFiles\projexe.dir\src\swap.cpp.i

CMakeFiles/projexe.dir/src/swap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/projexe.dir/src/swap.cpp.s"
	E:\mingw\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\A_Code_github\LeetCode\A_Sample_proj\src\swap.cpp -o CMakeFiles\projexe.dir\src\swap.cpp.s

# Object files for target projexe
projexe_OBJECTS = \
"CMakeFiles/projexe.dir/src/main.cpp.obj" \
"CMakeFiles/projexe.dir/src/swap.cpp.obj"

# External object files for target projexe
projexe_EXTERNAL_OBJECTS =

projexe.exe: CMakeFiles/projexe.dir/src/main.cpp.obj
projexe.exe: CMakeFiles/projexe.dir/src/swap.cpp.obj
projexe.exe: CMakeFiles/projexe.dir/build.make
projexe.exe: CMakeFiles/projexe.dir/linkLibs.rsp
projexe.exe: CMakeFiles/projexe.dir/objects1.rsp
projexe.exe: CMakeFiles/projexe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=E:\A_Code_github\LeetCode\A_Sample_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable projexe.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\projexe.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/projexe.dir/build: projexe.exe
.PHONY : CMakeFiles/projexe.dir/build

CMakeFiles/projexe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\projexe.dir\cmake_clean.cmake
.PHONY : CMakeFiles/projexe.dir/clean

CMakeFiles/projexe.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\A_Code_github\LeetCode\A_Sample_proj E:\A_Code_github\LeetCode\A_Sample_proj E:\A_Code_github\LeetCode\A_Sample_proj\build E:\A_Code_github\LeetCode\A_Sample_proj\build E:\A_Code_github\LeetCode\A_Sample_proj\build\CMakeFiles\projexe.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/projexe.dir/depend


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
CMAKE_SOURCE_DIR = /home/gabriel/Documents/SEMEAR/GEVC/gevc_major/pbl1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gabriel/Documents/SEMEAR/GEVC/gevc_major/pbl1

# Include any dependencies generated for this target.
include CMakeFiles/Executable.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Executable.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Executable.dir/flags.make

CMakeFiles/Executable.dir/code.cpp.o: CMakeFiles/Executable.dir/flags.make
CMakeFiles/Executable.dir/code.cpp.o: code.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabriel/Documents/SEMEAR/GEVC/gevc_major/pbl1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Executable.dir/code.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Executable.dir/code.cpp.o -c /home/gabriel/Documents/SEMEAR/GEVC/gevc_major/pbl1/code.cpp

CMakeFiles/Executable.dir/code.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Executable.dir/code.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabriel/Documents/SEMEAR/GEVC/gevc_major/pbl1/code.cpp > CMakeFiles/Executable.dir/code.cpp.i

CMakeFiles/Executable.dir/code.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Executable.dir/code.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabriel/Documents/SEMEAR/GEVC/gevc_major/pbl1/code.cpp -o CMakeFiles/Executable.dir/code.cpp.s

CMakeFiles/Executable.dir/code.cpp.o.requires:

.PHONY : CMakeFiles/Executable.dir/code.cpp.o.requires

CMakeFiles/Executable.dir/code.cpp.o.provides: CMakeFiles/Executable.dir/code.cpp.o.requires
	$(MAKE) -f CMakeFiles/Executable.dir/build.make CMakeFiles/Executable.dir/code.cpp.o.provides.build
.PHONY : CMakeFiles/Executable.dir/code.cpp.o.provides

CMakeFiles/Executable.dir/code.cpp.o.provides.build: CMakeFiles/Executable.dir/code.cpp.o


# Object files for target Executable
Executable_OBJECTS = \
"CMakeFiles/Executable.dir/code.cpp.o"

# External object files for target Executable
Executable_EXTERNAL_OBJECTS =

Executable: CMakeFiles/Executable.dir/code.cpp.o
Executable: CMakeFiles/Executable.dir/build.make
Executable: /usr/local/lib/libopencv_superres.so.3.4.3
Executable: /usr/local/lib/libopencv_dnn.so.3.4.3
Executable: /usr/local/lib/libopencv_ml.so.3.4.3
Executable: /usr/local/lib/libopencv_shape.so.3.4.3
Executable: /usr/local/lib/libopencv_stitching.so.3.4.3
Executable: /usr/local/lib/libopencv_videostab.so.3.4.3
Executable: /usr/local/lib/libopencv_objdetect.so.3.4.3
Executable: /usr/local/lib/libopencv_video.so.3.4.3
Executable: /usr/local/lib/libopencv_photo.so.3.4.3
Executable: /usr/local/lib/libopencv_calib3d.so.3.4.3
Executable: /usr/local/lib/libopencv_features2d.so.3.4.3
Executable: /usr/local/lib/libopencv_flann.so.3.4.3
Executable: /usr/local/lib/libopencv_highgui.so.3.4.3
Executable: /usr/local/lib/libopencv_videoio.so.3.4.3
Executable: /usr/local/lib/libopencv_imgcodecs.so.3.4.3
Executable: /usr/local/lib/libopencv_imgproc.so.3.4.3
Executable: /usr/local/lib/libopencv_core.so.3.4.3
Executable: CMakeFiles/Executable.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gabriel/Documents/SEMEAR/GEVC/gevc_major/pbl1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Executable"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Executable.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Executable.dir/build: Executable

.PHONY : CMakeFiles/Executable.dir/build

CMakeFiles/Executable.dir/requires: CMakeFiles/Executable.dir/code.cpp.o.requires

.PHONY : CMakeFiles/Executable.dir/requires

CMakeFiles/Executable.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Executable.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Executable.dir/clean

CMakeFiles/Executable.dir/depend:
	cd /home/gabriel/Documents/SEMEAR/GEVC/gevc_major/pbl1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gabriel/Documents/SEMEAR/GEVC/gevc_major/pbl1 /home/gabriel/Documents/SEMEAR/GEVC/gevc_major/pbl1 /home/gabriel/Documents/SEMEAR/GEVC/gevc_major/pbl1 /home/gabriel/Documents/SEMEAR/GEVC/gevc_major/pbl1 /home/gabriel/Documents/SEMEAR/GEVC/gevc_major/pbl1/CMakeFiles/Executable.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Executable.dir/depend


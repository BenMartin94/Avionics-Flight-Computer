# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\dev\apps\clion\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\dev\apps\clion\bin\cmake\win\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CMSIS_LIB.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CMSIS_LIB.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CMSIS_LIB.dir/flags.make

CMakeFiles/CMSIS_LIB.dir/Src/system_stm32f4xx.c.obj: CMakeFiles/CMSIS_LIB.dir/flags.make
CMakeFiles/CMSIS_LIB.dir/Src/system_stm32f4xx.c.obj: ../Src/system_stm32f4xx.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/CMSIS_LIB.dir/Src/system_stm32f4xx.c.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\CMSIS_LIB.dir\Src\system_stm32f4xx.c.obj   -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Src\system_stm32f4xx.c

CMakeFiles/CMSIS_LIB.dir/Src/system_stm32f4xx.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CMSIS_LIB.dir/Src/system_stm32f4xx.c.i"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Src\system_stm32f4xx.c > CMakeFiles\CMSIS_LIB.dir\Src\system_stm32f4xx.c.i

CMakeFiles/CMSIS_LIB.dir/Src/system_stm32f4xx.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CMSIS_LIB.dir/Src/system_stm32f4xx.c.s"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Src\system_stm32f4xx.c -o CMakeFiles\CMSIS_LIB.dir\Src\system_stm32f4xx.c.s

CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_msp.c.obj: CMakeFiles/CMSIS_LIB.dir/flags.make
CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_msp.c.obj: ../Src/stm32f4xx_hal_msp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_msp.c.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\CMSIS_LIB.dir\Src\stm32f4xx_hal_msp.c.obj   -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Src\stm32f4xx_hal_msp.c

CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_msp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_msp.c.i"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Src\stm32f4xx_hal_msp.c > CMakeFiles\CMSIS_LIB.dir\Src\stm32f4xx_hal_msp.c.i

CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_msp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_msp.c.s"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Src\stm32f4xx_hal_msp.c -o CMakeFiles\CMSIS_LIB.dir\Src\stm32f4xx_hal_msp.c.s

CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_timebase_tim.c.obj: CMakeFiles/CMSIS_LIB.dir/flags.make
CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_timebase_tim.c.obj: ../Src/stm32f4xx_hal_timebase_tim.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_timebase_tim.c.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\CMSIS_LIB.dir\Src\stm32f4xx_hal_timebase_tim.c.obj   -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Src\stm32f4xx_hal_timebase_tim.c

CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_timebase_tim.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_timebase_tim.c.i"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Src\stm32f4xx_hal_timebase_tim.c > CMakeFiles\CMSIS_LIB.dir\Src\stm32f4xx_hal_timebase_tim.c.i

CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_timebase_tim.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_timebase_tim.c.s"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Src\stm32f4xx_hal_timebase_tim.c -o CMakeFiles\CMSIS_LIB.dir\Src\stm32f4xx_hal_timebase_tim.c.s

CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_it.c.obj: CMakeFiles/CMSIS_LIB.dir/flags.make
CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_it.c.obj: ../Src/stm32f4xx_it.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_it.c.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\CMSIS_LIB.dir\Src\stm32f4xx_it.c.obj   -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Src\stm32f4xx_it.c

CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_it.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_it.c.i"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Src\stm32f4xx_it.c > CMakeFiles\CMSIS_LIB.dir\Src\stm32f4xx_it.c.i

CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_it.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_it.c.s"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Src\stm32f4xx_it.c -o CMakeFiles\CMSIS_LIB.dir\Src\stm32f4xx_it.c.s

CMakeFiles/CMSIS_LIB.dir/startup/startup_stm32f401xe.s.obj: CMakeFiles/CMSIS_LIB.dir/flags.make
CMakeFiles/CMSIS_LIB.dir/startup/startup_stm32f401xe.s.obj: ../startup/startup_stm32f401xe.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building ASM object CMakeFiles/CMSIS_LIB.dir/startup/startup_stm32f401xe.s.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles\CMSIS_LIB.dir\startup\startup_stm32f401xe.s.obj -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\startup\startup_stm32f401xe.s

# Object files for target CMSIS_LIB
CMSIS_LIB_OBJECTS = \
"CMakeFiles/CMSIS_LIB.dir/Src/system_stm32f4xx.c.obj" \
"CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_msp.c.obj" \
"CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_timebase_tim.c.obj" \
"CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_it.c.obj" \
"CMakeFiles/CMSIS_LIB.dir/startup/startup_stm32f401xe.s.obj"

# External object files for target CMSIS_LIB
CMSIS_LIB_EXTERNAL_OBJECTS =

libCMSIS_LIB.a: CMakeFiles/CMSIS_LIB.dir/Src/system_stm32f4xx.c.obj
libCMSIS_LIB.a: CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_msp.c.obj
libCMSIS_LIB.a: CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_hal_timebase_tim.c.obj
libCMSIS_LIB.a: CMakeFiles/CMSIS_LIB.dir/Src/stm32f4xx_it.c.obj
libCMSIS_LIB.a: CMakeFiles/CMSIS_LIB.dir/startup/startup_stm32f401xe.s.obj
libCMSIS_LIB.a: CMakeFiles/CMSIS_LIB.dir/build.make
libCMSIS_LIB.a: CMakeFiles/CMSIS_LIB.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C static library libCMSIS_LIB.a"
	$(CMAKE_COMMAND) -P CMakeFiles\CMSIS_LIB.dir\cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CMSIS_LIB.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CMSIS_LIB.dir/build: libCMSIS_LIB.a

.PHONY : CMakeFiles/CMSIS_LIB.dir/build

CMakeFiles/CMSIS_LIB.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CMSIS_LIB.dir\cmake_clean.cmake
.PHONY : CMakeFiles/CMSIS_LIB.dir/clean

CMakeFiles/CMSIS_LIB.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles\CMSIS_LIB.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CMSIS_LIB.dir/depend

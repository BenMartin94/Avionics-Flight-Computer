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
include CMakeFiles/RTOS_LIB.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RTOS_LIB.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RTOS_LIB.dir/flags.make

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c.obj: CMakeFiles/RTOS_LIB.dir/flags.make
CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c.obj: ../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS\cmsis_os.c.obj   -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS\cmsis_os.c

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c.i"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS\cmsis_os.c > CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS\cmsis_os.c.i

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c.s"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS\cmsis_os.c -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS\cmsis_os.c.s

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c.obj: CMakeFiles/RTOS_LIB.dir/flags.make
CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c.obj: ../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F\port.c.obj   -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F\port.c

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c.i"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F\port.c > CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F\port.c.i

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c.s"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F\port.c -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F\port.c.s

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c.obj: CMakeFiles/RTOS_LIB.dir/flags.make
CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c.obj: ../Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\portable\MemMang\heap_4.c.obj   -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\portable\MemMang\heap_4.c

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c.i"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\portable\MemMang\heap_4.c > CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\portable\MemMang\heap_4.c.i

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c.s"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\portable\MemMang\heap_4.c -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\portable\MemMang\heap_4.c.s

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/croutine.c.obj: CMakeFiles/RTOS_LIB.dir/flags.make
CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/croutine.c.obj: ../Middlewares/Third_Party/FreeRTOS/Source/croutine.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/croutine.c.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\croutine.c.obj   -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\croutine.c

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/croutine.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/croutine.c.i"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\croutine.c > CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\croutine.c.i

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/croutine.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/croutine.c.s"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\croutine.c -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\croutine.c.s

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c.obj: CMakeFiles/RTOS_LIB.dir/flags.make
CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c.obj: ../Middlewares/Third_Party/FreeRTOS/Source/event_groups.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\event_groups.c.obj   -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\event_groups.c

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c.i"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\event_groups.c > CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\event_groups.c.i

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c.s"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\event_groups.c -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\event_groups.c.s

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/list.c.obj: CMakeFiles/RTOS_LIB.dir/flags.make
CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/list.c.obj: ../Middlewares/Third_Party/FreeRTOS/Source/list.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/list.c.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\list.c.obj   -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\list.c

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/list.c.i"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\list.c > CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\list.c.i

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/list.c.s"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\list.c -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\list.c.s

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/queue.c.obj: CMakeFiles/RTOS_LIB.dir/flags.make
CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/queue.c.obj: ../Middlewares/Third_Party/FreeRTOS/Source/queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/queue.c.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\queue.c.obj   -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\queue.c

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/queue.c.i"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\queue.c > CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\queue.c.i

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/queue.c.s"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\queue.c -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\queue.c.s

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/tasks.c.obj: CMakeFiles/RTOS_LIB.dir/flags.make
CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/tasks.c.obj: ../Middlewares/Third_Party/FreeRTOS/Source/tasks.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/tasks.c.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\tasks.c.obj   -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\tasks.c

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/tasks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/tasks.c.i"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\tasks.c > CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\tasks.c.i

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/tasks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/tasks.c.s"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\tasks.c -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\tasks.c.s

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/timers.c.obj: CMakeFiles/RTOS_LIB.dir/flags.make
CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/timers.c.obj: ../Middlewares/Third_Party/FreeRTOS/Source/timers.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/timers.c.obj"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\timers.c.obj   -c C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\timers.c

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/timers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/timers.c.i"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\timers.c > CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\timers.c.i

CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/timers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/timers.c.s"
	C:\dev\apps\ARM\tools\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\Middlewares\Third_Party\FreeRTOS\Source\timers.c -o CMakeFiles\RTOS_LIB.dir\Middlewares\Third_Party\FreeRTOS\Source\timers.c.s

# Object files for target RTOS_LIB
RTOS_LIB_OBJECTS = \
"CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c.obj" \
"CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c.obj" \
"CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c.obj" \
"CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/croutine.c.obj" \
"CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c.obj" \
"CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/list.c.obj" \
"CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/queue.c.obj" \
"CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/tasks.c.obj" \
"CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/timers.c.obj"

# External object files for target RTOS_LIB
RTOS_LIB_EXTERNAL_OBJECTS =

libRTOS_LIB.a: CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c.obj
libRTOS_LIB.a: CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c.obj
libRTOS_LIB.a: CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c.obj
libRTOS_LIB.a: CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/croutine.c.obj
libRTOS_LIB.a: CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c.obj
libRTOS_LIB.a: CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/list.c.obj
libRTOS_LIB.a: CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/queue.c.obj
libRTOS_LIB.a: CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/tasks.c.obj
libRTOS_LIB.a: CMakeFiles/RTOS_LIB.dir/Middlewares/Third_Party/FreeRTOS/Source/timers.c.obj
libRTOS_LIB.a: CMakeFiles/RTOS_LIB.dir/build.make
libRTOS_LIB.a: CMakeFiles/RTOS_LIB.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C static library libRTOS_LIB.a"
	$(CMAKE_COMMAND) -P CMakeFiles\RTOS_LIB.dir\cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\RTOS_LIB.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RTOS_LIB.dir/build: libRTOS_LIB.a

.PHONY : CMakeFiles/RTOS_LIB.dir/build

CMakeFiles/RTOS_LIB.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\RTOS_LIB.dir\cmake_clean.cmake
.PHONY : CMakeFiles/RTOS_LIB.dir/clean

CMakeFiles/RTOS_LIB.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug C:\dev\projects\Avionics-Flight-Computer\AvionicsSoftware-AtollicProject\cmake-build-debug\CMakeFiles\RTOS_LIB.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RTOS_LIB.dir/depend


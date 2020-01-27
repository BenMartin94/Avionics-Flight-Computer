@ECHO OFF
rd /s /q "build" > nul 2>&1
rd /s /q "bin" > nul 2>&1
mkdir build
cd build
C:\dev\apps\clion\bin\cmake\win\bin\cmake .. -G "CodeBlocks - MinGW Makefiles"
C:\MinGW\bin\mingw32-make -j8
cd ..
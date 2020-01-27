rm -r -fo build 2>&1 | out-null
rm -r -fo bin 2>&1 | out-null
mkdir build
cd build
C:\dev\apps\clion\bin\cmake\win\bin\cmake .. -G "CodeBlocks - MinGW Makefiles"
C:\MinGW\bin\mingw32-make -j8
cd ..
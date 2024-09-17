#!/bin/zsh
rm -rf build
mkdir build
cd build
cmake .. && cmake --build .
echo "Build successful!"
echo "----------- Now run the demo -----------"
./demo

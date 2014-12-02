#!/bin/sh

if [ ! -d build ] ; then
    mkdir build
    cd build
    cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr -D OPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules ..
    make -j 24
    cpack ..
else
    echo "Build seems done. Clean up and try again."
fi


#!/bin/bash -e

cd test

cmake -GNinja -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING:BOOL=ON .

cmake --build . --config Release

ctest -VV --build-config Release

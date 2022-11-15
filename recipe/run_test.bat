setlocal EnableDelayedExpansion

cd test

cmake -GNinja -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING:BOOL=ON .
if errorlevel 1 exit 1

cmake --build . --config Release
if errorlevel 1 exit 1

ctest -VV --build-config Release
if errorlevel 1 exit 1

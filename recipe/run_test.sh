#!/bin/bash -e

if [[ "${target_platform}" == osx-* ]]; then
    # See https://conda-forge.org/docs/maintainer/knowledge_base.html#newer-c-features-with-old-sdk
    CXXFLAGS="${CXXFLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"
fi

cd test

cmake -GNinja -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING:BOOL=ON .

cmake --build . --config Release

ctest -VV --build-config Release

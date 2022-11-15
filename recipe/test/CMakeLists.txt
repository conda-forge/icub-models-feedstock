cmake_minimum_required(VERSION 3.12)

project(icub_models_main)

find_package(icub-models REQUIRED)

add_executable(icub_models_main icub_models_main.cpp)

target_link_libraries(icub_models_main PRIVATE icub-models::icub-models)
target_compile_features(icub_models_main PRIVATE cxx_std_17)

include(CTest)
enable_testing()

add_test(NAME icub_models_main COMMAND icub_models_main)

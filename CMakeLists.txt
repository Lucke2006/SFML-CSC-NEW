cmake_minimum_required(VERSION 3.27)
project(CMakeSFMLProject LANGUAGES CXX)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

##############################

set(ASSETS_DIR "${CMAKE_SOURCE_DIR}/assets")
set(ASSETS_BUILD_DIR "${CMAKE_BINARY_DIR}/bin/")
file(COPY ${ASSETS_DIR} DESTINATION ${ASSETS_BUILD_DIR})

###############################

include(FetchContent)
FetchContent_Declare(SFML
    GIT_REPOSITORY https://github.com/SFML/SFML.git
    GIT_TAG 3.0.0
    GIT_SHALLOW ON
    EXCLUDE_FROM_ALL
    SYSTEM)
FetchContent_MakeAvailable(SFML)

add_executable(main src/main.cpp)
target_link_libraries(main PRIVATE SFML::Graphics)

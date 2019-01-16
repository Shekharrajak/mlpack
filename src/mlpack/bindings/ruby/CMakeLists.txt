cmake_minimum_required(VERSION 2.8)
project(ruby_wrapper)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

set(CMAKE_PREFIX_PATH ${mlpack_DIR} ${CMAKE_PREFIX_PATH})

set(CMAKE_BUILD_TYPE ${MLPACK_BUILD_TYPE})
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -no-pie")
message("mlpack directory: ${mlpack_DIR}")
include_directories(${MLPACK_INCLUDE_DIRS})

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake/")
find_package(Ruby REQUIRED)

add_subdirectory(ext/mlpack)

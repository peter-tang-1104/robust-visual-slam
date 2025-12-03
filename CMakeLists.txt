cmake_minimum_required(VERSION 3.10)
project(RobustVisualSLAM)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find packages
find_package(OpenCV REQUIRED)
find_package(Eigen3 REQUIRED)
find_package(PCL REQUIRED)
find_package(CUDA QUIET)

# Include directories
include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    ${OpenCV_INCLUDE_DIRS}
    ${EIGEN3_INCLUDE_DIR}
    ${PCL_INCLUDE_DIRS}
)

# Source files (to be added)
# add_subdirectory(src)

# Link libraries
# target_link_libraries(${PROJECT_NAME}
#     ${OpenCV_LIBS}
#     ${PCL_LIBRARIES}
# )

message(STATUS "Robust Visual SLAM Project Configuration")
message(STATUS "OpenCV version: ${OpenCV_VERSION}")
message(STATUS "Eigen3 version: ${EIGEN3_VERSION_STRING}")
message(STATUS "PCL version: ${PCL_VERSION}")


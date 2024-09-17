cmake_minimum_required(VERSION 3.10)

project(cmake-02 VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(Math_Library)

add_executable(demo main.cpp)

target_link_libraries(demo PUBLIC MathLib)  # 链接MathLib库
target_include_directories(demo PUBLIC      # 包含头文件搜索路径
    "${PROJECT_BINARY_DIR}"
    "${PROJECT_SOURCE_DIR}/Math_Library"    # PROJECT_SOURCE_DIR 是项目根目录(总CMakeLists.txt所在目录)
)
message(STATUS "头文件搜索路径：${PROJECT_BINARY_DIR} ${PROJECT_SOURCE_DIR}/Math_Library")       
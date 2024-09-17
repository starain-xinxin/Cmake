cmake_minimum_required(VERSION 3.10)

project(cmake-02 VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 定义变量
option(USE_MYMATH "Use custom Math library" True)
if (USE_MYMATH)                     # 判断是否使用自定义的Math库
    message(STATUS "使用自定义Math库")
    add_subdirectory(Math_Library)    # 包含Math_Library目录
    list(APPEND EXTRA_LIBS MathLib)     # 添加MathLib库
else()
    message(STATUS "使用系统Math库")
endif()

# 包含编译配置头文件路径
list(APPEND EXTRA_INCLUDES "${PROJECT_BINARY_DIR}") 

# 构建模版文件
configure_file(pj_config.h.in pj_config.h)

add_executable(demo main.cpp)

target_link_libraries(demo ${EXTRA_LIBS})  # 链接库
target_include_directories(demo PUBLIC ${EXTRA_INCLUDES})   # 包含头文件搜索路径
message(STATUS "链接库：${EXTRA_LIBS}")
message(STATUS "头文件搜索路径：${EXTRA_INCLUDES}")       
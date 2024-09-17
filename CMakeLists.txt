cmake_minimum_required(VERSION 3.15)    # 设置cmake最低版本为3.15，支持生成器表达式

project(cmake-02 VERSION 0.1.0)

# 使用虚拟库来控制编译选项
add_library(compiler_options INTERFACE)
target_compile_features(compiler_options INTERFACE cxx_std_14)      # 设置编译选项为c++14

# 使用生成器表达式来设置编译选项
# 添加变量来确定使用的是什么编译器
set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")
# 向虚拟库添加编译选项
target_compile_options(compiler_options INTERFACE 
    "$<${gcc_like_cxx}:-Wall;-Wextra;-Wshadow;-Wformat=2;-Wunused>"
    "$<${msvc_cxx}: /W3>"
)

# 编译选择是否需要自定义的Math库
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

target_link_libraries(demo ${EXTRA_LIBS} compiler_options)  # 链接库
target_include_directories(demo PUBLIC ${EXTRA_INCLUDES})   # 包含头文件搜索路径
message(STATUS "链接库：${EXTRA_LIBS}")
message(STATUS "头文件搜索路径：${EXTRA_INCLUDES}")    
# 添加一个名为Math_Library的库
add_library(MathLib SHARED my_math.cpp my_math.h)    # 这个my_math.h可以写也可以不写
message(STATUS "PROJECT_SOURCE_DIR--项目源文件夹: ${PROJECT_SOURCE_DIR}")     # 这里表明PROJECT_SOURCE_DIR变量的值不受当前目录影响

# 将库文件的头文件引用交给库的 CMakeLists.txt 管理
target_include_directories(MathLib PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")    # 这里表明MathLib的头文件路径为当前目录
# PUBLIC 本目标构建需要，依赖这个目标的其他目标也需要
# INTERFACE 本目标构建不需要，依赖这个目标的其他目标也不需要
# PRIVATE 本目标构建需要，依赖这个目标的其他目标也不需要

# 链接虚拟库用于得到编译选项
target_link_libraries(MathLib PUBLIC compiler_options)    # 这里表明MathLib依赖的虚拟库为MathLib::MathLib
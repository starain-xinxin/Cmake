# 添加一个名为Math_Library的库
add_library(MathLib SHARED my_math.cpp my_math.h)    # 这个my_math.h可以写也可以不写
message(STATUS "PROJECT_SOURCE_DIR--项目源文件夹: ${PROJECT_SOURCE_DIR}")     # 这里表明PROJECT_SOURCE_DIR变量的值不受当前目录影响
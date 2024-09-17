#include <iostream>
#include "pj_config.h"

// 修改为条件编译
#ifdef USE_MYMATH
#include "my_math.h"
#endif

int main(){
    int a = 100;        // 这个用于测试警告

    #ifdef USE_MYMATH
    std::cout << "Hello world from cmake-02 main.cpp" << std::endl;
    std::cout << "使用 MathLib 库计算..." << std::endl;
    std::cout << "2 + 3 = " << my_math::add(2, 3) << std::endl;
    std::cout << "4 - 2 = " << my_math::sub(4, 2) << std::endl;
    std::cout << "6 * 7 = " << my_math::multiply(6, 7) << std::endl;
    std::cout << "8 / 4 = " << my_math::divide(8, 4) << std::endl;
    #else 
    std::cout << "Hello world from cmake-02 main.cpp" << std::endl;
    std::cout << "不使用 MathLib 库计算..." << std::endl;
    std::cout << "2 + 3 = " << 2 + 3 << std::endl;
    std::cout << "4 - 2 = " << 4 - 2 << std::endl;
    std::cout << "6 * 7 = " << 6 * 7 << std::endl;
    std::cout << "8 / 4 = " << 8 / 4 << std::endl;
    #endif

    return 0;
}
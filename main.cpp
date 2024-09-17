#include <iostream>
#include "my_math.h"

int main() {
    std::cout << "Hello world from cmake-02 main.cpp" << std::endl;
    std::cout << "2 + 3 = " << my_math::add(2, 3) << std::endl;
    std::cout << "4 - 2 = " << my_math::sub(4, 2) << std::endl;
    std::cout << "6 * 7 = " << my_math::multiply(6, 7) << std::endl;
    std::cout << "8 / 4 = " << my_math::divide(8, 4) << std::endl;
    return 0;
}
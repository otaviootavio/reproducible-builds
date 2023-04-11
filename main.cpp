#include <iostream>
#include "hello_world.hpp"
int main(int argc, char** argv)
{
    HelloWorld hello;
    hello.PrintMessage("Hello World!");
    //A linha abaixo adiciona algo não deterministico
    std::cout << "At time: " << __TIME__ << std::endl;
    return 0;
}
#include <iostream>

extern "C" {
  void hello() {
    std::cout << "Hello from vicuna!" << std::endl;
  }
}

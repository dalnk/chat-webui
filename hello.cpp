#include <iostream>

extern "C" {
  void hello() {
    std::cout << "Hello from vicuna!" << std::endl;
  }

  void importONNX() {
    std::cout << "Importing model" << std::endl;
  }
}

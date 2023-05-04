#include <iostream>

extern "C" {
  void hello() {
    std::cout << "Hello from llama!" << std::endl;
  }
}

#include <iostream>

extern "C" {
  void hello() {
    std::cout << "Hello from vicuna!" << std::endl;
  }

  void importONNX() {
    // import model
    std::cout << "Importing ggml model" << std::endl;
    std::cout << "Importing ggml model" << std::endl;
    std::cout << "Importing ggml model" << std::endl;
  }
}

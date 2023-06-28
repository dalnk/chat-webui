# chat-ui
focusing on the Alpaca/Vicuna/Koala/Dolly model but hopefully expanding to other models soon. Thank you to @geohot for making tinygrad and pytorch for ONNX conversions. Need to use quantized files like q4-ggml-vicuna.bin qmml optimizations might be important for finetuning on device too. not sure if lit-parrot can be run on device but it would be neat to have that for edge fine tuning

Alpaca now runs on android! Vicuna and StableLM work now as well. MLC-llm there's an android complied version out for snapdragon with latest OpenCL for now, need to figure out how to plug it all together for pixel Tensor chips

OpenLLM on pip is probably a good backend for this on a server and the android version works now on snapdragon chips. need to test more with tensor chips there might be something we can do about the OpenCL versions

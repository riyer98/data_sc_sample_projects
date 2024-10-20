#include<iostream>
#include<__clang_cuda_runtime_wrapper.h>
#include<cuda_runtime.h>


__global__ void kernel() {
    printf("Hello from the GPU!\n");
}

int main() {
    kernel<<<1, 1>>>();
    cudaDeviceSynchronize();
    return 0;
}


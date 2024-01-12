# 32-Bit RISC-V processor with I,M and F extensions. 

This is a 5 stage pipelined RISC-V processor that supports the entire Integer instruction set along with some floating point instructions, most specifically the computational and load/store instructions.

The FPU(floating point unit) is designed based on the IEEE-754 Single Precision format.

Current work is designing the M standard extension and integrating it to our current design. This is done to target application specific algorithms and benchmarks that extensively use integer multiplication and divide computations albeit some advanced benchmark algorithms use floating point units for optimum performance.

The specific algorithms we will be targeting will be the AES standard encrypton and fibonacci primitive benchmark. If time permits, we will include the benchmarks from the [riscv-tests](https://github.com/riscv-software-src/riscv-tests) repository. 

The target device could be an FPGA or an emulator. It is relatively easier to evaluate performance on an FPGA on hardware terms, so that would be the top priority.


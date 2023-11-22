# sail-riscv-dev-env

A simple sail-riscv development environment for my personal use, 
including my personal fork of `sail-riscv`, the RVV Automatic Test Generator `rvv-atg`,
and several versions of RVV ISA test suites.

To compile tests, run tests using Sail C emulator, and generate a report:
```
> make
```

Note: 
1. Change `PROJ_ROOT` in Makefile and `log_dir` in `run_test.py` before any making operation
3. Specify the expected `SEW` and `LMUL` before `make` if using tests in `rvv_test_series`
4. Carefully modify `ASM_DIR` if using tests other than `rvv_test_series`

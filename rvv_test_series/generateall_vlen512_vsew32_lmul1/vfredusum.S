#----------------------------------------------------------------------------- 
    # vfredusum.S
    #-----------------------------------------------------------------------------
    #
    # Test vfredusum instructions.
    #

    #include "model_test.h"
    #include "arch_test.h"
    #include "riscv_test.h"
    #include "test_macros_vector.h"

RVTEST_ISA("RV64RV64IMAFDCVZicsr")
    
    .section .text.init
    .globl rvtest_entry_point
    rvtest_entry_point:
    
    #ifdef TEST_CASE_1
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vfredusum)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_FPRED_VV_OP( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_FP( testnum, v24, flags, result, val1, val2,    \
            flw f0, 0(a0); \
            flw f1, 4(a0); \
            vfmv.s.f v8, f0; \
            vfmv.s.f v16, f1; \
            flw f2, 8(a0); \
            inst v24, v8, v16, v0.t; \
        )
#define TEST_FPRED_VF_OP( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_FP( testnum, v24, flags, result, val1, val2,    \
            flw f0, 0(a0); \
            flw f1, 4(a0); \
            vfmv.s.f v8, f0; \
            flw f2, 8(a0);  \
            inst v24, v8, f1, v0.t; \
        )
#define TEST_FPRED_VV_OP_11( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v1, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v1, v0.t; \
            )
#define TEST_FPRED_VV_OP_12( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v2, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v2, v0.t; \
            )
#define TEST_FPRED_VV_OP_13( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v3, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v3, v0.t; \
            )
#define TEST_FPRED_VV_OP_14( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v4, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v4, v0.t; \
            )
#define TEST_FPRED_VV_OP_15( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v5, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v5, v0.t; \
            )
#define TEST_FPRED_VV_OP_16( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v6, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v6, v0.t; \
            )
#define TEST_FPRED_VV_OP_17( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v7, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v7, v0.t; \
            )
#define TEST_FPRED_VV_OP_18( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v24, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_19( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v9, f1; \
                flw f2, 8(a0); \
                inst v24, v16, v9, v0.t; \
            )
#define TEST_FPRED_VV_OP_110( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v10, f1; \
                flw f2, 8(a0); \
                inst v24, v16, v10, v0.t; \
            )
#define TEST_FPRED_VV_OP_111( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v11, f1; \
                flw f2, 8(a0); \
                inst v24, v16, v11, v0.t; \
            )
#define TEST_FPRED_VV_OP_112( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v12, f1; \
                flw f2, 8(a0); \
                inst v24, v16, v12, v0.t; \
            )
#define TEST_FPRED_VV_OP_113( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v13, f1; \
                flw f2, 8(a0); \
                inst v24, v16, v13, v0.t; \
            )
#define TEST_FPRED_VV_OP_114( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v14, f1; \
                flw f2, 8(a0); \
                inst v24, v16, v14, v0.t; \
            )
#define TEST_FPRED_VV_OP_115( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v15, f1; \
                flw f2, 8(a0); \
                inst v24, v16, v15, v0.t; \
            )
#define TEST_FPRED_VV_OP_116( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                flw f2, 8(a0); \
                inst v8, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_117( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v17, f1; \
                flw f2, 8(a0); \
                inst v8, v24, v17, v0.t; \
            )
#define TEST_FPRED_VV_OP_118( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v18, f1; \
                flw f2, 8(a0); \
                inst v8, v24, v18, v0.t; \
            )
#define TEST_FPRED_VV_OP_119( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v19, f1; \
                flw f2, 8(a0); \
                inst v8, v24, v19, v0.t; \
            )
#define TEST_FPRED_VV_OP_120( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v20, f1; \
                flw f2, 8(a0); \
                inst v8, v24, v20, v0.t; \
            )
#define TEST_FPRED_VV_OP_121( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v21, f1; \
                flw f2, 8(a0); \
                inst v8, v24, v21, v0.t; \
            )
#define TEST_FPRED_VV_OP_122( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v22, f1; \
                flw f2, 8(a0); \
                inst v8, v24, v22, v0.t; \
            )
#define TEST_FPRED_VV_OP_123( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v23, f1; \
                flw f2, 8(a0); \
                inst v8, v24, v23, v0.t; \
            )
#define TEST_FPRED_VV_OP_124( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_125( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v25, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v25, v0.t; \
            )
#define TEST_FPRED_VV_OP_126( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v26, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v26, v0.t; \
            )
#define TEST_FPRED_VV_OP_127( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v27, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v27, v0.t; \
            )
#define TEST_FPRED_VV_OP_128( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v28, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v28, v0.t; \
            )
#define TEST_FPRED_VV_OP_129( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v29, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v29, v0.t; \
            )
#define TEST_FPRED_VV_OP_130( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v30, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v30, v0.t; \
            )
#define TEST_FPRED_VV_OP_131( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v31, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v31, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd1( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v1, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v1, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd2( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v2, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v2, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd3( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v3, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v3, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd4( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v4, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v4, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd5( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v5, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v5, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd6( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v6, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v6, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd7( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v7, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v7, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd8( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                flw f2, 8(a0); \
                inst v8, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd9( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v9, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                flw f2, 8(a0); \
                inst v9, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd10( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v10, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                flw f2, 8(a0); \
                inst v10, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd11( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v11, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                flw f2, 8(a0); \
                inst v11, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd12( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v12, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                flw f2, 8(a0); \
                inst v12, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd13( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v13, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                flw f2, 8(a0); \
                inst v13, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd14( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v14, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                flw f2, 8(a0); \
                inst v14, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd15( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v15, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                flw f2, 8(a0); \
                inst v15, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd16( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                flw f2, 8(a0); \
                inst v16, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd17( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v17, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                flw f2, 8(a0); \
                inst v17, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd18( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v18, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                flw f2, 8(a0); \
                inst v18, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd19( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v19, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                flw f2, 8(a0); \
                inst v19, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd20( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v20, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                flw f2, 8(a0); \
                inst v20, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd21( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v21, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                flw f2, 8(a0); \
                inst v21, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd22( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v22, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                flw f2, 8(a0); \
                inst v22, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd23( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v23, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                flw f2, 8(a0); \
                inst v23, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd24( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v24, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd25( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v25, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v25, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd26( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v26, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v26, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd27( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v27, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v27, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd28( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v28, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v28, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd29( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v29, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v29, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd30( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v30, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v30, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd31( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v31, flags, result, val1, val2, \
                flw f0, 0(a0); \
                flw f1, 4(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                flw f2, 8(a0); \
                inst v31, v16, v8, v0.t; \
            )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_FPRED_VV_OP( 1,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d5173d3b,        0x7F800000,        0xd5173d3b );
TEST_FPRED_VV_OP( 2,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c954c88,        0x00000000,        0x1c954c88 );
TEST_FPRED_VV_OP( 3,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae8f2f8a,        0xBF800000,        0xae8f2f8a );
TEST_FPRED_VV_OP( 4,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e18cd6d3,        0xBF800000,        0xe18cd6d3 );
TEST_FPRED_VV_OP( 5,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7128ead,        0xBF800000,        0xe7128ead );
TEST_FPRED_VV_OP( 6,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000430c45f2,        0xBF800000,        0x430c45f2 );
TEST_FPRED_VV_OP( 7,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fece821,        0xBF800000,        0x1fece821 );
TEST_FPRED_VV_OP( 8,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dbe8db2f,        0xBF800000,        0xdbe8db2f );
TEST_FPRED_VV_OP( 9,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009deac411,        0xBF800000,        0x9deac411 );
TEST_FPRED_VV_OP( 10,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d578536b,        0xBF800000,        0xd578536b );
TEST_FPRED_VV_OP( 11,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a2112c5,        0xBF800000,        0x5a2112c5 );
TEST_FPRED_VV_OP( 12,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033755502,        0xBF800000,        0x33755502 );
TEST_FPRED_VV_OP( 13,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041f512c8,        0xBF800000,        0x41f512c8 );
TEST_FPRED_VV_OP( 14,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b07c90e,        0xBF800000,        0x5b07c90e );
TEST_FPRED_VV_OP( 15,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030e95eba,        0xBF800000,        0x30e95eba );
TEST_FPRED_VV_OP( 16,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dc43d0d7,        0xBF800000,        0xdc43d0d7 );
TEST_FPRED_VV_OP( 17,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ce250988,        0xBF800000,        0xce250988 );
TEST_FPRED_VV_OP( 18,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000546ef0b9,        0xBF800000,        0x546ef0b9 );
TEST_FPRED_VV_OP( 19,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c69a228,        0x3F800000,        0x7c69a228 );
TEST_FPRED_VV_OP( 20,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000540da0bc,        0x3F800000,        0x540da0bc );
TEST_FPRED_VV_OP( 21,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b917bde6,        0x3F800000,        0xb917bde6 );
TEST_FPRED_VV_OP( 22,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002b14a548,        0x3F800000,        0x2b14a548 );
TEST_FPRED_VV_OP( 23,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005c51c72f,        0x3F800000,        0x5c51c72f );
TEST_FPRED_VV_OP( 24,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e66cd16e,        0x3F800000,        0xe66cd16e );
TEST_FPRED_VV_OP( 25,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f8e67fb0,        0x3F800000,        0xf8e67fb0 );
TEST_FPRED_VV_OP( 26,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000045b5c5f1,        0x3F800000,        0x45b5c5f1 );
TEST_FPRED_VV_OP( 27,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006bd9ba9a,        0x3F800000,        0x6bd9ba9a );
TEST_FPRED_VV_OP( 28,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c1e8667,        0x3F800000,        0x9c1e8667 );
TEST_FPRED_VV_OP( 29,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a2c7d45,        0x3F800000,        0x8a2c7d45 );
TEST_FPRED_VV_OP( 30,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000af61ac13,        0x3F800000,        0xaf61ac13 );
TEST_FPRED_VV_OP( 31,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc06f22d,        0x3F800000,        0xcc06f22d );
TEST_FPRED_VV_OP( 32,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ac84f04,        0x3F800000,        0x6ac84f04 );
TEST_FPRED_VV_OP( 33,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000581f3afc,        0x3F800000,        0x581f3afc );
TEST_FPRED_VV_OP( 34,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006122b26e,        0x3F800000,        0x6122b26e );
TEST_FPRED_VV_OP( 35,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff4914a8,        0xFF7FFFFF,        0xff4914a8 );
TEST_FPRED_VV_OP( 36,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0a80a4a,        0xFF7FFFFF,        0xf0a80a4a );
TEST_FPRED_VV_OP( 37,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044577dfa,        0xFF7FFFFF,        0x44577dfa );
TEST_FPRED_VV_OP( 38,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e31172b1,        0xFF7FFFFF,        0xe31172b1 );
TEST_FPRED_VV_OP( 39,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030b00f6c,        0xFF7FFFFF,        0x30b00f6c );
TEST_FPRED_VV_OP( 40,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009cd4367e,        0xFF7FFFFF,        0x9cd4367e );
TEST_FPRED_VV_OP( 41,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053266571,        0xFF7FFFFF,        0x53266571 );
TEST_FPRED_VV_OP( 42,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039a2b9a9,        0xFF7FFFFF,        0x39a2b9a9 );
TEST_FPRED_VV_OP( 43,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f628feb7,        0xFF7FFFFF,        0xf628feb7 );
TEST_FPRED_VV_OP( 44,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000519a8397,        0xFF7FFFFF,        0x519a8397 );
TEST_FPRED_VV_OP( 45,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d949e747,        0xFF7FFFFF,        0xd949e747 );
TEST_FPRED_VV_OP( 46,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fe0b7d68,        0xFF7FFFFF,        0xfe0b7d68 );
TEST_FPRED_VV_OP( 47,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2ec6f9d,        0xFF7FFFFF,        0xd2ec6f9d );
TEST_FPRED_VV_OP( 48,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b9f0a06,        0xFF7FFFFF,        0x7b9f0a06 );
TEST_FPRED_VV_OP( 49,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e25828a9,        0xFF7FFFFF,        0xe25828a9 );
TEST_FPRED_VV_OP( 50,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ff72e08,        0xFF7FFFFF,        0x6ff72e08 );
TEST_FPRED_VV_OP( 51,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae72d34d,        0x7F7FFFFF,        0xae72d34d );
TEST_FPRED_VV_OP( 52,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f61fde3e,        0x7F7FFFFF,        0xf61fde3e );
TEST_FPRED_VV_OP( 53,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001cb57d88,        0x7F7FFFFF,        0x1cb57d88 );
TEST_FPRED_VV_OP( 54,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bb5e465,        0x7F7FFFFF,        0x3bb5e465 );
TEST_FPRED_VV_OP( 55,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089b4574b,        0x7F7FFFFF,        0x89b4574b );
TEST_FPRED_VV_OP( 56,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae23f858,        0x7F7FFFFF,        0xae23f858 );
TEST_FPRED_VV_OP( 57,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032b4b342,        0x7F7FFFFF,        0x32b4b342 );
TEST_FPRED_VV_OP( 58,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c5034c7,        0x7F7FFFFF,        0x9c5034c7 );
TEST_FPRED_VV_OP( 59,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006129cabb,        0x7F7FFFFF,        0x6129cabb );
TEST_FPRED_VV_OP( 60,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009af4bc9a,        0x7F7FFFFF,        0x9af4bc9a );
TEST_FPRED_VV_OP( 61,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c729acef,        0x7F7FFFFF,        0xc729acef );
TEST_FPRED_VV_OP( 62,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007d485219,        0x7F7FFFFF,        0x7d485219 );
TEST_FPRED_VV_OP( 63,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a3b445a,        0x7F7FFFFF,        0x4a3b445a );
TEST_FPRED_VV_OP( 64,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000276f4a82,        0x7F7FFFFF,        0x276f4a82 );
TEST_FPRED_VV_OP( 65,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd7bf9fc,        0x7F7FFFFF,        0xdd7bf9fc );
TEST_FPRED_VV_OP( 66,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006797c5aa,        0x7F7FFFFF,        0x6797c5aa );
TEST_FPRED_VV_OP( 67,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c739bc0,        0x80855555,        0x9c739bc0 );
TEST_FPRED_VV_OP( 68,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000037e6587a,        0x80855555,        0x37e6587a );
TEST_FPRED_VV_OP( 69,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000292fa2d6,        0x80855555,        0x292fa2d6 );
TEST_FPRED_VV_OP( 70,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057b6f48d,        0x80855555,        0x57b6f48d );
TEST_FPRED_VV_OP( 71,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a87ebd39,        0x80855555,        0xa87ebd39 );
TEST_FPRED_VV_OP( 72,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000da3b9803,        0x80855555,        0xda3b9803 );
TEST_FPRED_VV_OP( 73,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf98db80,        0x80855555,        0xcf98db80 );
TEST_FPRED_VV_OP( 74,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a1993841,        0x80855555,        0xa1993841 );
TEST_FPRED_VV_OP( 75,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000214c72b3,        0x80855555,        0x214c72b3 );
TEST_FPRED_VV_OP( 76,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a289aa8,        0x80855555,        0x4a289aa8 );
TEST_FPRED_VV_OP( 77,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d7777d1,        0x80855555,        0x3d7777d1 );
TEST_FPRED_VV_OP( 78,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000579e0114,        0x80855555,        0x579e0114 );
TEST_FPRED_VV_OP( 79,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013d30cfc,        0x80855555,        0x13d30cfc );
TEST_FPRED_VV_OP( 80,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a19a62b,        0x80855555,        0x8a19a62b );
TEST_FPRED_VV_OP( 81,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007041e7d,        0x80855555,        0x07041e7d );
TEST_FPRED_VV_OP( 82,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b192289,        0x80855555,        0x3b192289 );
TEST_FPRED_VV_OP( 83,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8f72c52,        0x00800001,        0xb8f72c52 );
TEST_FPRED_VV_OP( 84,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a7c4f91,        0x00800001,        0x3a7c4f91 );
TEST_FPRED_VV_OP( 85,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002eadf0ac,        0x00800001,        0x2eadf0ac );
TEST_FPRED_VV_OP( 86,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dbfec094,        0x00800001,        0xdbfec094 );
TEST_FPRED_VV_OP( 87,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c1ae516,        0x00800001,        0x8c1ae516 );
TEST_FPRED_VV_OP( 88,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb97f344,        0x00800001,        0xbb97f344 );
TEST_FPRED_VV_OP( 89,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d614a74,        0x00800001,        0x2d614a74 );
TEST_FPRED_VV_OP( 90,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dbb7bc69,        0x00800001,        0xdbb7bc69 );
TEST_FPRED_VV_OP( 91,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075160c80,        0x00800001,        0x75160c80 );
TEST_FPRED_VV_OP( 92,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026513b2,        0x00800001,        0x026513b2 );
TEST_FPRED_VV_OP( 93,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3301eb1,        0x00800001,        0xb3301eb1 );
TEST_FPRED_VV_OP( 94,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000513b24cd,        0x00800001,        0x513b24cd );
TEST_FPRED_VV_OP( 95,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2d18754,        0x00800001,        0xd2d18754 );
TEST_FPRED_VV_OP( 96,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fccea6a,        0x00800001,        0x0fccea6a );
TEST_FPRED_VV_OP( 97,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4e15b15,        0x00800001,        0xb4e15b15 );
TEST_FPRED_VV_OP( 98,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b546b05b,        0x00800001,        0xb546b05b );
TEST_FPRED_VV_OP( 99,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f952852,        0x80800000,        0x0f952852 );
TEST_FPRED_VV_OP( 100,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007dbe9d89,        0x80800000,        0x7dbe9d89 );
TEST_FPRED_VV_OP( 101,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f8791ac8,        0x80800000,        0xf8791ac8 );
TEST_FPRED_VV_OP( 102,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d924a386,        0x80800000,        0xd924a386 );
TEST_FPRED_VV_OP( 103,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df5f99f4,        0x80800000,        0xdf5f99f4 );
TEST_FPRED_VV_OP( 104,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006618d504,        0x80800000,        0x6618d504 );
TEST_FPRED_VV_OP( 105,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008849a498,        0x80800000,        0x8849a498 );
TEST_FPRED_VV_OP( 106,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f2961261,        0x80800000,        0xf2961261 );
TEST_FPRED_VV_OP( 107,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e303d466,        0x80800000,        0xe303d466 );
TEST_FPRED_VV_OP( 108,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d9d90f64,        0x80800000,        0xd9d90f64 );
TEST_FPRED_VV_OP( 109,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009ceb7bc1,        0x80800000,        0x9ceb7bc1 );
TEST_FPRED_VV_OP( 110,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b60686,        0x80800000,        0x07b60686 );
TEST_FPRED_VV_OP( 111,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092dc0a8a,        0x80800000,        0x92dc0a8a );
TEST_FPRED_VV_OP( 112,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000093997373,        0x80800000,        0x93997373 );
TEST_FPRED_VV_OP( 113,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e19d8f2e,        0x80800000,        0xe19d8f2e );
TEST_FPRED_VV_OP( 114,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd4ad4c7,        0x80800000,        0xdd4ad4c7 );
TEST_FPRED_VV_OP( 115,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3419eb,        0x00800000,        0x0b3419eb );
TEST_FPRED_VV_OP( 116,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000046365e84,        0x00800000,        0x46365e84 );
TEST_FPRED_VV_OP( 117,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092db17e9,        0x00800000,        0x92db17e9 );
TEST_FPRED_VV_OP( 118,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065cdd905,        0x00800000,        0x65cdd905 );
TEST_FPRED_VV_OP( 119,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd60629d,        0x00800000,        0xdd60629d );
TEST_FPRED_VV_OP( 120,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016478c58,        0x00800000,        0x16478c58 );
TEST_FPRED_VV_OP( 121,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d11c290e,        0x00800000,        0xd11c290e );
TEST_FPRED_VV_OP( 122,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d899e08,        0x00800000,        0x0d899e08 );
TEST_FPRED_VV_OP( 123,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9770a1f,        0x00800000,        0xc9770a1f );
TEST_FPRED_VV_OP( 124,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac39d155,        0x00800000,        0xac39d155 );
TEST_FPRED_VV_OP( 125,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7a7733,        0x00800000,        0x0f7a7733 );
TEST_FPRED_VV_OP( 126,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a946bce1,        0x00800000,        0xa946bce1 );
TEST_FPRED_VV_OP( 127,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004e00d0f3,        0x00800000,        0x4e00d0f3 );
TEST_FPRED_VV_OP( 128,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003aa41dc4,        0x00800000,        0x3aa41dc4 );
TEST_FPRED_VV_OP( 129,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9f9511,        0x00800000,        0x0a9f9511 );
TEST_FPRED_VV_OP( 130,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005398487b,        0x00800000,        0x5398487b );
TEST_FPRED_VV_OP( 131,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3782028,        0x807FFFFF,        0xf3782028 );
TEST_FPRED_VV_OP( 132,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069b76600,        0x807FFFFF,        0x69b76600 );
TEST_FPRED_VV_OP( 133,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ca3efb3,        0x807FFFFF,        0x8ca3efb3 );
TEST_FPRED_VV_OP( 134,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cb7da0de,        0x807FFFFF,        0xcb7da0de );
TEST_FPRED_VV_OP( 135,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000552d23d2,        0x807FFFFF,        0x552d23d2 );
TEST_FPRED_VV_OP( 136,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003436f14c,        0x807FFFFF,        0x3436f14c );
TEST_FPRED_VV_OP( 137,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f5f3f35,        0x807FFFFF,        0x6f5f3f35 );
TEST_FPRED_VV_OP( 138,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053b5a207,        0x807FFFFF,        0x53b5a207 );
TEST_FPRED_VV_OP( 139,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d20dfb9f,        0x807FFFFF,        0xd20dfb9f );
TEST_FPRED_VV_OP( 140,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008723b674,        0x807FFFFF,        0x8723b674 );
TEST_FPRED_VV_OP( 141,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f348d99,        0x807FFFFF,        0x0f348d99 );
TEST_FPRED_VV_OP( 142,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003886ab90,        0x807FFFFF,        0x3886ab90 );
TEST_FPRED_VV_OP( 143,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000334f85a,        0x807FFFFF,        0x0334f85a );
TEST_FPRED_VV_OP( 144,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea1670df,        0x807FFFFF,        0xea1670df );
TEST_FPRED_VV_OP( 145,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d13744b3,        0x807FFFFF,        0xd13744b3 );
TEST_FPRED_VV_OP( 146,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000883fe017,        0x807FFFFF,        0x883fe017 );
TEST_FPRED_VV_OP( 147,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001daf3b01,        0x007FFFFF,        0x1daf3b01 );
TEST_FPRED_VV_OP( 148,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9c63a58,        0x007FFFFF,        0xa9c63a58 );
TEST_FPRED_VV_OP( 149,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec747b1c,        0x007FFFFF,        0xec747b1c );
TEST_FPRED_VV_OP( 150,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c6eccf7,        0x007FFFFF,        0x0c6eccf7 );
TEST_FPRED_VV_OP( 151,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004cad30bc,        0x007FFFFF,        0x4cad30bc );
TEST_FPRED_VV_OP( 152,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000477b3771,        0x007FFFFF,        0x477b3771 );
TEST_FPRED_VV_OP( 153,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aeef6b3d,        0x007FFFFF,        0xaeef6b3d );
TEST_FPRED_VV_OP( 154,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001555f68c,        0x007FFFFF,        0x1555f68c );
TEST_FPRED_VV_OP( 155,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7e378a2,        0x007FFFFF,        0xb7e378a2 );
TEST_FPRED_VV_OP( 156,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b602bd3e,        0x007FFFFF,        0xb602bd3e );
TEST_FPRED_VV_OP( 157,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000af130fb6,        0x007FFFFF,        0xaf130fb6 );
TEST_FPRED_VV_OP( 158,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031a4314a,        0x007FFFFF,        0x31a4314a );
TEST_FPRED_VV_OP( 159,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c723b3d7,        0x007FFFFF,        0xc723b3d7 );
TEST_FPRED_VV_OP( 160,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007015aa42,        0x007FFFFF,        0x7015aa42 );
TEST_FPRED_VV_OP( 161,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000928aa3e,        0x007FFFFF,        0x0928aa3e );
TEST_FPRED_VV_OP( 162,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022ef3704,        0x007FFFFF,        0x22ef3704 );
TEST_FPRED_VV_OP( 163,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f352256b,        0x807FFFFE,        0xf352256b );
TEST_FPRED_VV_OP( 164,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004da52bc4,        0x807FFFFE,        0x4da52bc4 );
TEST_FPRED_VV_OP( 165,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000546d8880,        0x807FFFFE,        0x546d8880 );
TEST_FPRED_VV_OP( 166,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78ee9c7,        0x807FFFFE,        0xf78ee9c7 );
TEST_FPRED_VV_OP( 167,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c95bd691,        0x807FFFFE,        0xc95bd691 );
TEST_FPRED_VV_OP( 168,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005239bc94,        0x807FFFFE,        0x5239bc94 );
TEST_FPRED_VV_OP( 169,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b48c2fbf,        0x807FFFFE,        0xb48c2fbf );
TEST_FPRED_VV_OP( 170,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067e301b5,        0x807FFFFE,        0x67e301b5 );
TEST_FPRED_VV_OP( 171,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000240451c9,        0x807FFFFE,        0x240451c9 );
TEST_FPRED_VV_OP( 172,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027c6864f,        0x807FFFFE,        0x27c6864f );
TEST_FPRED_VV_OP( 173,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026c6f274,        0x807FFFFE,        0x26c6f274 );
TEST_FPRED_VV_OP( 174,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000025f55d4e,        0x807FFFFE,        0x25f55d4e );
TEST_FPRED_VV_OP( 175,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d2eb86f,        0x807FFFFE,        0x5d2eb86f );
TEST_FPRED_VV_OP( 176,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000828a97e7,        0x807FFFFE,        0x828a97e7 );
TEST_FPRED_VV_OP( 177,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067e912e1,        0x807FFFFE,        0x67e912e1 );
TEST_FPRED_VV_OP( 178,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d4617ee,        0x807FFFFE,        0x3d4617ee );
TEST_FPRED_VV_OP( 179,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009322d7d,        0x00000002,        0x09322d7d );
TEST_FPRED_VV_OP( 180,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001eca00ff,        0x00000002,        0x1eca00ff );
TEST_FPRED_VV_OP( 181,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002ecc47d2,        0x00000002,        0x2ecc47d2 );
TEST_FPRED_VV_OP( 182,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3bb23d6,        0x00000002,        0xf3bb23d6 );
TEST_FPRED_VV_OP( 183,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab05bda1,        0x00000002,        0xab05bda1 );
TEST_FPRED_VV_OP( 184,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bebbadd8,        0x00000002,        0xbebbadd8 );
TEST_FPRED_VV_OP( 185,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000076ca2ed2,        0x00000002,        0x76ca2ed2 );
TEST_FPRED_VV_OP( 186,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002b20cd36,        0x00000002,        0x2b20cd36 );
TEST_FPRED_VV_OP( 187,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000524f229d,        0x00000002,        0x524f229d );
TEST_FPRED_VV_OP( 188,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005254e959,        0x00000002,        0x5254e959 );
TEST_FPRED_VV_OP( 189,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002aef92ad,        0x00000002,        0x2aef92ad );
TEST_FPRED_VV_OP( 190,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031229858,        0x00000002,        0x31229858 );
TEST_FPRED_VV_OP( 191,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b06bc8f6,        0x00000002,        0xb06bc8f6 );
TEST_FPRED_VV_OP( 192,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005dcce032,        0x00000002,        0x5dcce032 );
TEST_FPRED_VV_OP( 193,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000310e5031,        0x00000002,        0x310e5031 );
TEST_FPRED_VV_OP( 194,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f2069096,        0x00000002,        0xf2069096 );
TEST_FPRED_VV_OP( 195,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072a3060,        0x80000001,        0x072a3060 );
TEST_FPRED_VV_OP( 196,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c33042c,        0x80000001,        0x9c33042c );
TEST_FPRED_VV_OP( 197,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006dd7d38,        0x80000001,        0x06dd7d38 );
TEST_FPRED_VV_OP( 198,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4b100b8,        0x80000001,        0xe4b100b8 );
TEST_FPRED_VV_OP( 199,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004c5e517,        0x80000001,        0x04c5e517 );
TEST_FPRED_VV_OP( 200,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b50cc02,        0x80000001,        0x3b50cc02 );
TEST_FPRED_VV_OP( 201,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f0086f2,        0x80000001,        0x6f0086f2 );
TEST_FPRED_VV_OP( 202,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c583b3da,        0x80000001,        0xc583b3da );
TEST_FPRED_VV_OP( 203,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae6ff135,        0x80000001,        0xae6ff135 );
TEST_FPRED_VV_OP( 204,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007815f9b0,        0x80000001,        0x7815f9b0 );
TEST_FPRED_VV_OP( 205,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005cc84607,        0x80000001,        0x5cc84607 );
TEST_FPRED_VV_OP( 206,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000754bced3,        0x80000001,        0x754bced3 );
TEST_FPRED_VV_OP( 207,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aec59a2a,        0x80000001,        0xaec59a2a );
TEST_FPRED_VV_OP( 208,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008542dc85,        0x80000001,        0x8542dc85 );
TEST_FPRED_VV_OP( 209,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003af43c9d,        0x80000001,        0x3af43c9d );
TEST_FPRED_VV_OP( 210,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae8c12b8,        0x80000001,        0xae8c12b8 );
TEST_FPRED_VV_OP( 211,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067be397d,        0x00000001,        0x67be397d );
TEST_FPRED_VV_OP( 212,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008758cfc4,        0x00000001,        0x8758cfc4 );
TEST_FPRED_VV_OP( 213,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001de4f6af,        0x00000001,        0x1de4f6af );
TEST_FPRED_VV_OP( 214,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a455288,        0x00000001,        0x1a455288 );
TEST_FPRED_VV_OP( 215,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088db7d8c,        0x00000001,        0x88db7d8c );
TEST_FPRED_VV_OP( 216,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f937aafa,        0x00000001,        0xf937aafa );
TEST_FPRED_VV_OP( 217,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ca3650e2,        0x00000001,        0xca3650e2 );
TEST_FPRED_VV_OP( 218,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c7044eb3,        0x00000001,        0xc7044eb3 );
TEST_FPRED_VV_OP( 219,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058933db0,        0x00000001,        0x58933db0 );
TEST_FPRED_VV_OP( 220,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000545acbb,        0x00000001,        0x0545acbb );
TEST_FPRED_VV_OP( 221,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b379a614,        0x00000001,        0xb379a614 );
TEST_FPRED_VV_OP( 222,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b3eb4cc,        0x00000001,        0x9b3eb4cc );
TEST_FPRED_VV_OP( 223,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e9519192,        0x00000001,        0xe9519192 );
TEST_FPRED_VV_OP( 224,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002eb0d339,        0x00000001,        0x2eb0d339 );
TEST_FPRED_VV_OP( 225,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f575e7bb,        0x00000001,        0xf575e7bb );
TEST_FPRED_VV_OP( 226,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ee907664,        0x00000001,        0xee907664 );
TEST_FPRED_VV_OP( 227,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053960a4c,        0x80000000,        0x53960a4c );
TEST_FPRED_VV_OP( 228,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000087973a27,        0x80000000,        0x87973a27 );
TEST_FPRED_VV_OP( 229,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a925b817,        0x80000000,        0xa925b817 );
TEST_FPRED_VV_OP( 230,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c1a1e45,        0x80000000,        0x1c1a1e45 );
TEST_FPRED_VV_OP( 231,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020dcdbeb,        0x80000000,        0x20dcdbeb );
TEST_FPRED_VV_OP( 232,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d3e0667,        0x80000000,        0x2d3e0667 );
TEST_FPRED_VV_OP( 233,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053d05d72,        0x80000000,        0x53d05d72 );
TEST_FPRED_VV_OP( 234,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b822ad39,        0x80000000,        0xb822ad39 );
TEST_FPRED_VV_OP( 235,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004ffe6390,        0x80000000,        0x4ffe6390 );
TEST_FPRED_VV_OP( 236,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009ef29035,        0x80000000,        0x9ef29035 );
TEST_FPRED_VV_OP( 237,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0450fa2,        0x80000000,        0xd0450fa2 );
TEST_FPRED_VV_OP( 238,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d89744e,        0x80000000,        0x0d89744e );
TEST_FPRED_VV_OP( 239,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000346489f5,        0x80000000,        0x346489f5 );
TEST_FPRED_VV_OP( 240,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d48dd733,        0x80000000,        0xd48dd733 );
TEST_FPRED_VV_OP( 241,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d857c31,        0x80000000,        0x5d857c31 );
TEST_FPRED_VV_OP( 242,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b185404,        0x80000000,        0x9b185404 );
TEST_FPRED_VV_OP( 243,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041059de4,        0x00000000,        0x41059de4 );
TEST_FPRED_VV_OP( 244,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012d11883,        0x00000000,        0x12d11883 );
TEST_FPRED_VV_OP( 245,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a647e794,        0x00000000,        0xa647e794 );
TEST_FPRED_VV_OP( 246,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d5710481,        0x00000000,        0xd5710481 );
TEST_FPRED_VV_OP( 247,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cca75bc9,        0x00000000,        0xcca75bc9 );
TEST_FPRED_VV_OP( 248,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028ea8990,        0x00000000,        0x28ea8990 );
TEST_FPRED_VV_OP( 249,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004914fd85,        0x00000000,        0x4914fd85 );
TEST_FPRED_VV_OP( 250,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009edd447a,        0x00000000,        0x9edd447a );
TEST_FPRED_VV_OP( 251,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a012a8e,        0x00000000,        0x1a012a8e );
TEST_FPRED_VV_OP( 252,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000697d2a85,        0x00000000,        0x697d2a85 );
TEST_FPRED_VV_OP( 253,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3deb9d,        0x00000000,        0x0e3deb9d );
TEST_FPRED_VV_OP( 254,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009da1bcd6,        0x00000000,        0x9da1bcd6 );
TEST_FPRED_VV_OP( 255,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005254ddf9,        0x00000000,        0x5254ddf9 );
TEST_FPRED_VV_OP( 256,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c3eab36,        0x00000000,        0x0c3eab36 );
TEST_FPRED_VV_OP( 257,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016b77bce,        0x00000000,        0x16b77bce );
TEST_FPRED_VV_OP( 258,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085a8a33c,        0x16b77bce,        0x85a8a33c );
TEST_FPRED_VV_OP( 259,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be82002a,        0x85a8a33c,        0xbe82002a );
TEST_FPRED_VV_OP( 260,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b4eed81,        0xbe82002a,        0x6b4eed81 );
TEST_FPRED_VV_OP( 261,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcf2b7b2,        0x6b4eed81,        0xfcf2b7b2 );
TEST_FPRED_VV_OP( 262,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b1a3f397,        0xfcf2b7b2,        0xb1a3f397 );
TEST_FPRED_VV_OP( 263,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081815039,        0xb1a3f397,        0x81815039 );
TEST_FPRED_VV_OP( 264,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007df4c24f,        0x81815039,        0x7df4c24f );
TEST_FPRED_VV_OP( 265,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000827c929,        0x7df4c24f,        0x0827c929 );
TEST_FPRED_VV_OP( 266,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e1f1c6ec,        0x0827c929,        0xe1f1c6ec );
TEST_FPRED_VV_OP( 267,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b111081,        0xe1f1c6ec,        0x9b111081 );
TEST_FPRED_VV_OP( 268,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c53c5a,        0x9b111081,        0x08c53c5a );
TEST_FPRED_VV_OP( 269,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016e35174,        0x08c53c5a,        0x16e35174 );
TEST_FPRED_VV_OP( 270,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020553b83,        0x16e35174,        0x20553b83 );
TEST_FPRED_VV_OP( 271,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f4ed3db2,        0x20553b83,        0xf4ed3db2 );
TEST_FPRED_VV_OP( 272,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005879b2ca,        0xf4ed3db2,        0x5879b2ca );
TEST_FPRED_VV_OP( 273,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f80d83b9,        0x5879b2ca,        0xf80d83b9 );
TEST_FPRED_VV_OP( 274,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b48384f,        0xf80d83b9,        0x7b48384f );
TEST_FPRED_VV_OP( 275,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089a6c1a0,        0x7b48384f,        0x89a6c1a0 );
TEST_FPRED_VV_OP( 276,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031fe5439,        0x89a6c1a0,        0x31fe5439 );
TEST_FPRED_VV_OP( 277,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ee2f5aa,        0x31fe5439,        0x6ee2f5aa );
TEST_FPRED_VV_OP( 278,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000330f5715,        0x6ee2f5aa,        0x330f5715 );
TEST_FPRED_VV_OP( 279,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f46020f,        0x330f5715,        0x9f46020f );
TEST_FPRED_VV_OP( 280,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b697e1c3,        0x9f46020f,        0xb697e1c3 );
TEST_FPRED_VV_OP( 281,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f518acf6,        0xb697e1c3,        0xf518acf6 );
TEST_FPRED_VV_OP( 282,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003958ea56,        0xf518acf6,        0x3958ea56 );
TEST_FPRED_VV_OP( 283,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056a29c95,        0x3958ea56,        0x56a29c95 );
TEST_FPRED_VV_OP( 284,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ef286e01,        0x56a29c95,        0xef286e01 );
TEST_FPRED_VV_OP( 285,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f6cad350,        0xef286e01,        0xf6cad350 );
TEST_FPRED_VV_OP( 286,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e95400f6,        0xf6cad350,        0xe95400f6 );
TEST_FPRED_VV_OP( 287,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b2ac811,        0xe95400f6,        0x0b2ac811 );
TEST_FPRED_VV_OP( 288,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ced78db,        0x0b2ac811,        0x3ced78db );
TEST_FPRED_VV_OP( 289,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075809524,        0x3ced78db,        0x75809524 );
TEST_FPRED_VV_OP( 290,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c5e59fb2,        0x75809524,        0xc5e59fb2 );
TEST_FPRED_VV_OP( 291,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd81fa0a,        0xc5e59fb2,        0xdd81fa0a );
TEST_FPRED_VV_OP( 292,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec9fb18d,        0xdd81fa0a,        0xec9fb18d );
TEST_FPRED_VV_OP( 293,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030e1830a,        0xec9fb18d,        0x30e1830a );
TEST_FPRED_VV_OP( 294,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021d2bbb0,        0x30e1830a,        0x21d2bbb0 );
TEST_FPRED_VV_OP( 295,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000731a1760,        0x21d2bbb0,        0x731a1760 );
TEST_FPRED_VV_OP( 296,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019167ebd,        0x731a1760,        0x19167ebd );
TEST_FPRED_VV_OP( 297,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007e537a04,        0x19167ebd,        0x7e537a04 );
TEST_FPRED_VV_OP( 298,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf9dc475,        0x7e537a04,        0xcf9dc475 );
TEST_FPRED_VV_OP( 299,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017f847a1,        0xcf9dc475,        0x17f847a1 );
TEST_FPRED_VV_OP( 300,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005f4e2f05,        0x17f847a1,        0x5f4e2f05 );
TEST_FPRED_VV_OP( 301,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011065906,        0x5f4e2f05,        0x11065906 );
TEST_FPRED_VV_OP( 302,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9663dbb,        0x11065906,        0xa9663dbb );
TEST_FPRED_VV_OP( 303,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b6d5707b,        0xa9663dbb,        0xb6d5707b );
TEST_FPRED_VV_OP( 304,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ef201e7b,        0xb6d5707b,        0xef201e7b );
TEST_FPRED_VV_OP( 305,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4a84974,        0xef201e7b,        0xb4a84974 );
TEST_FPRED_VV_OP( 306,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9feb8d1,        0xb4a84974,        0xc9feb8d1 );
TEST_FPRED_VV_OP( 307,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba38c7b1,        0xc9feb8d1,        0xba38c7b1 );
TEST_FPRED_VV_OP( 308,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001877b042,        0xba38c7b1,        0x1877b042 );
TEST_FPRED_VV_OP( 309,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091778cbb,        0x1877b042,        0x91778cbb );
TEST_FPRED_VV_OP( 310,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e715ec9,        0x91778cbb,        0x2e715ec9 );
TEST_FPRED_VV_OP( 311,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ebc88fd7,        0x2e715ec9,        0xebc88fd7 );
TEST_FPRED_VV_OP( 312,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006947de05,        0xebc88fd7,        0x6947de05 );
TEST_FPRED_VV_OP( 313,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aec12b86,        0x6947de05,        0xaec12b86 );
TEST_FPRED_VV_OP( 314,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006164c29e,        0xaec12b86,        0x6164c29e );
TEST_FPRED_VV_OP( 315,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba68fa1d,        0x6164c29e,        0xba68fa1d );
TEST_FPRED_VV_OP( 316,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017a54142,        0xba68fa1d,        0x17a54142 );
TEST_FPRED_VV_OP( 317,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb7b049e,        0x17a54142,        0xbb7b049e );
TEST_FPRED_VV_OP( 318,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008fab1e5,        0xbb7b049e,        0x08fab1e5 );
TEST_FPRED_VV_OP( 319,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001af6bb18,        0x08fab1e5,        0x1af6bb18 );
TEST_FPRED_VV_OP( 320,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074348a1d,        0x1af6bb18,        0x74348a1d );
TEST_FPRED_VV_OP( 321,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41f5f9b,        0x74348a1d,        0xf41f5f9b );
TEST_FPRED_VV_OP( 322,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000604f267a,        0xf41f5f9b,        0x604f267a );
TEST_FPRED_VV_OP( 323,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008543a485,        0x604f267a,        0x8543a485 );
TEST_FPRED_VV_OP( 324,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017fca002,        0x8543a485,        0x17fca002 );
TEST_FPRED_VV_OP( 325,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003777625d,        0x17fca002,        0x3777625d );
TEST_FPRED_VV_OP( 326,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ca42df1f,        0x3777625d,        0xca42df1f );
TEST_FPRED_VV_OP( 327,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e9591298,        0xca42df1f,        0xe9591298 );
TEST_FPRED_VV_OP( 328,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000655428d1,        0xe9591298,        0x655428d1 );
TEST_FPRED_VV_OP( 329,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000678995cf,        0x655428d1,        0x678995cf );
TEST_FPRED_VV_OP( 330,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ea84660,        0x678995cf,        0x7ea84660 );
TEST_FPRED_VV_OP( 331,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000049f1faf,        0x7ea84660,        0x049f1faf );
TEST_FPRED_VV_OP( 332,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009a6ccdab,        0x049f1faf,        0x9a6ccdab );
TEST_FPRED_VV_OP( 333,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f75264e4,        0x9a6ccdab,        0xf75264e4 );
TEST_FPRED_VV_OP( 334,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b832e4f,        0xf75264e4,        0x5b832e4f );
TEST_FPRED_VV_OP( 335,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000047e6b3b,        0x5b832e4f,        0x047e6b3b );
TEST_FPRED_VV_OP( 336,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c18c4e25,        0x047e6b3b,        0xc18c4e25 );
TEST_FPRED_VV_OP( 337,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006676bf0e,        0xc18c4e25,        0x6676bf0e );
TEST_FPRED_VV_OP( 338,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000086738089,        0x6676bf0e,        0x86738089 );
TEST_FPRED_VV_OP( 339,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001ee4a5ed,        0x86738089,        0x1ee4a5ed );
TEST_FPRED_VV_OP( 340,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b9545c29,        0x1ee4a5ed,        0xb9545c29 );
TEST_FPRED_VV_OP( 341,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002c7cb95f,        0xb9545c29,        0x2c7cb95f );
TEST_FPRED_VV_OP( 342,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ab6881d,        0x2c7cb95f,        0x8ab6881d );
TEST_FPRED_VV_OP( 343,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032dc44c0,        0x8ab6881d,        0x32dc44c0 );
TEST_FPRED_VV_OP( 344,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007915e449,        0x32dc44c0,        0x7915e449 );
TEST_FPRED_VV_OP( 345,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b68216c7,        0x7915e449,        0xb68216c7 );
TEST_FPRED_VV_OP( 346,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053c4ffc4,        0xb68216c7,        0x53c4ffc4 );
TEST_FPRED_VV_OP( 347,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c01a2b07,        0x53c4ffc4,        0xc01a2b07 );
TEST_FPRED_VV_OP( 348,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006d56c00d,        0xc01a2b07,        0x6d56c00d );
TEST_FPRED_VV_OP( 349,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000231896cb,        0x6d56c00d,        0x231896cb );
TEST_FPRED_VV_OP( 350,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a6c685c,        0x231896cb,        0x3a6c685c );
TEST_FPRED_VV_OP( 351,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e57e27bd,        0x3a6c685c,        0xe57e27bd );
TEST_FPRED_VV_OP( 352,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003e6f7cbe,        0xe57e27bd,        0x3e6f7cbe );
TEST_FPRED_VV_OP( 353,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e74e2da,        0x3e6f7cbe,        0x8e74e2da );
TEST_FPRED_VV_OP( 354,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcea6243,        0x8e74e2da,        0xfcea6243 );
TEST_FPRED_VV_OP( 355,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080eedc35,        0xfcea6243,        0x80eedc35 );
TEST_FPRED_VV_OP( 356,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048d92fb,        0x80eedc35,        0x048d92fb );
TEST_FPRED_VV_OP( 357,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e8e803f4,        0x048d92fb,        0xe8e803f4 );
TEST_FPRED_VV_OP( 358,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012c54b7b,        0xe8e803f4,        0x12c54b7b );
TEST_FPRED_VV_OP( 359,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d633cae,        0x12c54b7b,        0x2d633cae );
TEST_FPRED_VV_OP( 360,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be8c5af3,        0x2d633cae,        0xbe8c5af3 );
TEST_FPRED_VV_OP( 361,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000379def6c,        0xbe8c5af3,        0x379def6c );
TEST_FPRED_VV_OP( 362,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e298ae9a,        0x379def6c,        0xe298ae9a );
TEST_FPRED_VV_OP( 363,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000626b7cc5,        0xe298ae9a,        0x626b7cc5 );
TEST_FPRED_VV_OP( 364,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f61b3a5,        0x626b7cc5,        0x8f61b3a5 );
TEST_FPRED_VV_OP( 365,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4219193,        0x8f61b3a5,        0xe4219193 );
TEST_FPRED_VV_OP( 366,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b8cfcd,        0xe4219193,        0x01b8cfcd );
TEST_FPRED_VV_OP( 367,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bfcdf8,        0x01b8cfcd,        0x04bfcdf8 );
TEST_FPRED_VV_OP( 368,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d6cbbf81,        0x04bfcdf8,        0xd6cbbf81 );
TEST_FPRED_VV_OP( 369,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bd075af,        0xd6cbbf81,        0x4bd075af );
TEST_FPRED_VV_OP( 370,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e291d09b,        0x4bd075af,        0xe291d09b );
TEST_FPRED_VV_OP( 371,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0503b64,        0xe291d09b,        0xf0503b64 );
TEST_FPRED_VV_OP( 372,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021124d60,        0xf0503b64,        0x21124d60 );
TEST_FPRED_VV_OP( 373,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017d5856b,        0x21124d60,        0x17d5856b );
TEST_FPRED_VV_OP( 374,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007989bf32,        0x17d5856b,        0x7989bf32 );
TEST_FPRED_VV_OP( 375,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b84a91f,        0x7989bf32,        0x6b84a91f );
TEST_FPRED_VV_OP( 376,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003019a087,        0x6b84a91f,        0x3019a087 );
TEST_FPRED_VV_OP( 377,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c79214,        0x3019a087,        0x01c79214 );
TEST_FPRED_VV_OP( 378,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea939be7,        0x01c79214,        0xea939be7 );
TEST_FPRED_VV_OP( 379,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c375122d,        0xea939be7,        0xc375122d );
TEST_FPRED_VV_OP( 380,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000116ec3d2,        0xc375122d,        0x116ec3d2 );
TEST_FPRED_VV_OP( 381,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d7eeffe,        0x116ec3d2,        0x2d7eeffe );
TEST_FPRED_VV_OP( 382,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e013be07,        0x2d7eeffe,        0xe013be07 );
TEST_FPRED_VV_OP( 383,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b45484fc,        0xe013be07,        0xb45484fc );
TEST_FPRED_VV_OP( 384,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002dcda7f1,        0xb45484fc,        0x2dcda7f1 );
TEST_FPRED_VV_OP( 385,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e2151fa,        0x2dcda7f1,        0x2e2151fa );
TEST_FPRED_VV_OP( 386,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500c5f17,        0x2e2151fa,        0x500c5f17 );
TEST_FPRED_VV_OP( 387,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000984b6942,        0x500c5f17,        0x984b6942 );
TEST_FPRED_VV_OP( 388,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009960c98a,        0x984b6942,        0x9960c98a );
TEST_FPRED_VV_OP( 389,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0c7c26a,        0x9960c98a,        0xc0c7c26a );
TEST_FPRED_VV_OP( 390,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c714bae1,        0xc0c7c26a,        0xc714bae1 );
TEST_FPRED_VV_OP( 391,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c086243,        0xc714bae1,        0x7c086243 );
TEST_FPRED_VV_OP( 392,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009a4397f5,        0x7c086243,        0x9a4397f5 );
TEST_FPRED_VV_OP( 393,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b02b37fb,        0x9a4397f5,        0xb02b37fb );
TEST_FPRED_VV_OP( 394,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec0ac4f0,        0xb02b37fb,        0xec0ac4f0 );
TEST_FPRED_VV_OP( 395,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000abb5045d,        0xec0ac4f0,        0xabb5045d );
TEST_FPRED_VV_OP( 396,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004de1938f,        0xabb5045d,        0x4de1938f );
TEST_FPRED_VV_OP( 397,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004ef87036,        0x4de1938f,        0x4ef87036 );
TEST_FPRED_VV_OP( 398,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000477553ed,        0x4ef87036,        0x477553ed );
TEST_FPRED_VV_OP( 399,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df884a52,        0x477553ed,        0xdf884a52 );
TEST_FPRED_VV_OP( 400,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e364a2c3,        0xdf884a52,        0xe364a2c3 );
TEST_FPRED_VV_OP( 401,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005e3d04d3,        0xe364a2c3,        0x5e3d04d3 );
TEST_FPRED_VV_OP( 402,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a37172c6,        0x5e3d04d3,        0xa37172c6 );
TEST_FPRED_VV_OP( 403,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039c33e1d,        0xa37172c6,        0x39c33e1d );
TEST_FPRED_VV_OP( 404,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005fa55642,        0x39c33e1d,        0x5fa55642 );
TEST_FPRED_VV_OP( 405,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c6588c96,        0x5fa55642,        0xc6588c96 );
TEST_FPRED_VV_OP( 406,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057aa9ec7,        0xc6588c96,        0x57aa9ec7 );
TEST_FPRED_VV_OP( 407,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052a373c8,        0x57aa9ec7,        0x52a373c8 );
TEST_FPRED_VV_OP( 408,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000868a5027,        0x52a373c8,        0x868a5027 );
TEST_FPRED_VV_OP( 409,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000afc3fa5e,        0x868a5027,        0xafc3fa5e );
TEST_FPRED_VV_OP( 410,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000804beeba,        0xafc3fa5e,        0x804beeba );
TEST_FPRED_VV_OP( 411,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf812338,        0x804beeba,        0xbf812338 );
TEST_FPRED_VV_OP( 412,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053cf2324,        0xbf812338,        0x53cf2324 );
TEST_FPRED_VV_OP( 413,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c2a2099,        0x53cf2324,        0x1c2a2099 );
TEST_FPRED_VV_OP( 414,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077275ab3,        0x1c2a2099,        0x77275ab3 );
TEST_FPRED_VV_OP( 415,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f53143f,        0x77275ab3,        0x8f53143f );
TEST_FPRED_VV_OP( 416,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007868d163,        0x8f53143f,        0x7868d163 );
TEST_FPRED_VV_OP( 417,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003362ef56,        0x7868d163,        0x3362ef56 );
TEST_FPRED_VV_OP( 418,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f5c4c30d,        0x3362ef56,        0xf5c4c30d );
TEST_FPRED_VV_OP( 419,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003413c9a6,        0xf5c4c30d,        0x3413c9a6 );
TEST_FPRED_VV_OP( 420,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bae49486,        0x3413c9a6,        0xbae49486 );
TEST_FPRED_VV_OP( 421,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004d195ecf,        0xbae49486,        0x4d195ecf );
TEST_FPRED_VV_OP( 422,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055085e69,        0x4d195ecf,        0x55085e69 );
TEST_FPRED_VV_OP( 423,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000497af66c,        0x55085e69,        0x497af66c );
TEST_FPRED_VV_OP( 424,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000776d41f0,        0x497af66c,        0x776d41f0 );
TEST_FPRED_VV_OP( 425,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b06fcef,        0x776d41f0,        0x6b06fcef );
TEST_FPRED_VV_OP( 426,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec9c3cae,        0x6b06fcef,        0xec9c3cae );
TEST_FPRED_VV_OP( 427,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbcdcd90,        0xec9c3cae,        0xbbcdcd90 );
TEST_FPRED_VV_OP( 428,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a78b9e5d,        0xbbcdcd90,        0xa78b9e5d );
TEST_FPRED_VV_OP( 429,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b517d569,        0xa78b9e5d,        0xb517d569 );
TEST_FPRED_VV_OP( 430,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058ecb82f,        0xb517d569,        0x58ecb82f );
TEST_FPRED_VV_OP( 431,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000897683b0,        0x58ecb82f,        0x897683b0 );
TEST_FPRED_VV_OP( 432,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017fed42,        0x897683b0,        0x017fed42 );
TEST_FPRED_VV_OP( 433,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ac46a81,        0x017fed42,        0x7ac46a81 );
TEST_FPRED_VV_OP( 434,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b3424e3,        0x7ac46a81,        0x6b3424e3 );
TEST_FPRED_VV_OP( 435,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78c7be0,        0x6b3424e3,        0xf78c7be0 );
TEST_FPRED_VV_OP( 436,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000225c9001,        0xf78c7be0,        0x225c9001 );
TEST_FPRED_VV_OP( 437,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000716f74e5,        0x225c9001,        0x716f74e5 );
TEST_FPRED_VV_OP( 438,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ea07308,        0x716f74e5,        0x5ea07308 );
TEST_FPRED_VV_OP( 439,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009cb1f841,        0x5ea07308,        0x9cb1f841 );
TEST_FPRED_VV_OP( 440,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069773182,        0x9cb1f841,        0x69773182 );
TEST_FPRED_VV_OP( 441,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba7c2bc1,        0x69773182,        0xba7c2bc1 );
TEST_FPRED_VV_OP( 442,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003615b6cd,        0xba7c2bc1,        0x3615b6cd );
TEST_FPRED_VV_OP( 443,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7cbdb1c,        0x3615b6cd,        0xb7cbdb1c );
TEST_FPRED_VV_OP( 444,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057503bd7,        0xb7cbdb1c,        0x57503bd7 );
TEST_FPRED_VV_OP( 445,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d9043f,        0x57503bd7,        0x08d9043f );
TEST_FPRED_VV_OP( 446,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de4c459d,        0x08d9043f,        0xde4c459d );
TEST_FPRED_VV_OP( 447,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a26c712,        0xde4c459d,        0x7a26c712 );
TEST_FPRED_VV_OP( 448,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000563028c3,        0x7a26c712,        0x563028c3 );
TEST_FPRED_VV_OP( 449,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000795e33bf,        0x563028c3,        0x795e33bf );
TEST_FPRED_VV_OP( 450,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f2d19a38,        0x795e33bf,        0xf2d19a38 );
TEST_FPRED_VV_OP( 451,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f20bed88,        0xf2d19a38,        0xf20bed88 );
TEST_FPRED_VV_OP( 452,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007e91e990,        0xf20bed88,        0x7e91e990 );
TEST_FPRED_VV_OP( 453,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028403d8f,        0x7e91e990,        0x28403d8f );
TEST_FPRED_VV_OP( 454,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e451d935,        0x28403d8f,        0xe451d935 );
TEST_FPRED_VV_OP( 455,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006cbd6936,        0xe451d935,        0x6cbd6936 );
TEST_FPRED_VV_OP( 456,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bb4197f,        0x6cbd6936,        0x4bb4197f );
TEST_FPRED_VV_OP( 457,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b2301f0d,        0x4bb4197f,        0xb2301f0d );
TEST_FPRED_VV_OP( 458,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0fe2faf,        0xb2301f0d,        0xc0fe2faf );
TEST_FPRED_VV_OP( 459,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016598049,        0xc0fe2faf,        0x16598049 );
TEST_FPRED_VV_OP( 460,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008b074d85,        0x16598049,        0x8b074d85 );
TEST_FPRED_VV_OP( 461,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3044c5f,        0x8b074d85,        0xb3044c5f );
TEST_FPRED_VV_OP( 462,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052e624b8,        0xb3044c5f,        0x52e624b8 );
TEST_FPRED_VV_OP( 463,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4b5a3ae,        0x52e624b8,        0xe4b5a3ae );
TEST_FPRED_VV_OP( 464,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000223b3100,        0xe4b5a3ae,        0x223b3100 );
TEST_FPRED_VV_OP( 465,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000060e69e76,        0x223b3100,        0x60e69e76 );
TEST_FPRED_VV_OP( 466,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b1ae2f0,        0x60e69e76,        0x7b1ae2f0 );
TEST_FPRED_VV_OP( 467,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008837caa2,        0x7b1ae2f0,        0x8837caa2 );
TEST_FPRED_VV_OP( 468,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64768d4,        0x8837caa2,        0xa64768d4 );
TEST_FPRED_VV_OP( 469,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3cafbaa,        0xa64768d4,        0xe3cafbaa );
TEST_FPRED_VV_OP( 470,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000409e0a27,        0xe3cafbaa,        0x409e0a27 );
TEST_FPRED_VV_OP( 471,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008bca7953,        0x409e0a27,        0x8bca7953 );
TEST_FPRED_VV_OP( 472,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000054110db1,        0x8bca7953,        0x54110db1 );
TEST_FPRED_VV_OP( 473,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd376b5e,        0x54110db1,        0xdd376b5e );
TEST_FPRED_VV_OP( 474,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082997f29,        0xdd376b5e,        0x82997f29 );
TEST_FPRED_VV_OP( 475,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000355719f2,        0x82997f29,        0x355719f2 );
TEST_FPRED_VV_OP( 476,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000409cf5f2,        0x355719f2,        0x409cf5f2 );
TEST_FPRED_VV_OP( 477,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0f04044,        0x409cf5f2,        0xd0f04044 );
TEST_FPRED_VV_OP( 478,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b1f11cd7,        0xd0f04044,        0xb1f11cd7 );
TEST_FPRED_VV_OP( 479,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de5e4fa6,        0xb1f11cd7,        0xde5e4fa6 );
TEST_FPRED_VV_OP( 480,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d82dd4fd,        0xde5e4fa6,        0xd82dd4fd );
TEST_FPRED_VV_OP( 481,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e58d530d,        0xd82dd4fd,        0xe58d530d );
TEST_FPRED_VV_OP( 482,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004949dc26,        0xe58d530d,        0x4949dc26 );
TEST_FPRED_VV_OP( 483,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e5f9ede,        0x4949dc26,        0x8e5f9ede );
TEST_FPRED_VV_OP( 484,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e4a63c9,        0x8e5f9ede,        0x8e4a63c9 );
TEST_FPRED_VV_OP( 485,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003e0b7f6a,        0x8e4a63c9,        0x3e0b7f6a );
TEST_FPRED_VV_OP( 486,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000721e2d49,        0x3e0b7f6a,        0x721e2d49 );
TEST_FPRED_VV_OP( 487,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b9420e82,        0x721e2d49,        0xb9420e82 );
TEST_FPRED_VV_OP( 488,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f300bb4,        0xb9420e82,        0x9f300bb4 );
TEST_FPRED_VV_OP( 489,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000daf09bbc,        0x9f300bb4,        0xdaf09bbc );
TEST_FPRED_VV_OP( 490,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033939602,        0xdaf09bbc,        0x33939602 );
TEST_FPRED_VV_OP( 491,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022d815c2,        0x33939602,        0x22d815c2 );
TEST_FPRED_VV_OP( 492,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd6461b8,        0x22d815c2,        0xdd6461b8 );
TEST_FPRED_VV_OP( 493,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a0c1de71,        0xdd6461b8,        0xa0c1de71 );
TEST_FPRED_VV_OP( 494,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008412c769,        0xa0c1de71,        0x8412c769 );
TEST_FPRED_VV_OP( 495,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e03a03d1,        0x8412c769,        0xe03a03d1 );
TEST_FPRED_VV_OP( 496,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001d7e0df1,        0xe03a03d1,        0x1d7e0df1 );
TEST_FPRED_VV_OP( 497,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa1ba77a,        0x1d7e0df1,        0xaa1ba77a );
TEST_FPRED_VV_OP( 498,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fd16c33,        0xaa1ba77a,        0x1fd16c33 );
TEST_FPRED_VV_OP( 499,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e6b2620f,        0x1fd16c33,        0xe6b2620f );
TEST_FPRED_VV_OP( 500,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d80b4e8d,        0xe6b2620f,        0xd80b4e8d );
TEST_FPRED_VV_OP( 501,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c57dfcc,        0xd80b4e8d,        0x8c57dfcc );
TEST_FPRED_VV_OP( 502,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072d00ff0,        0x8c57dfcc,        0x72d00ff0 );
TEST_FPRED_VV_OP( 503,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d71f3bd,        0x72d00ff0,        0x8d71f3bd );
TEST_FPRED_VV_OP( 504,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000090df5366,        0x8d71f3bd,        0x90df5366 );
TEST_FPRED_VV_OP( 505,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065e2e213,        0x90df5366,        0x65e2e213 );
TEST_FPRED_VV_OP( 506,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d4af903f,        0x65e2e213,        0xd4af903f );
TEST_FPRED_VV_OP( 507,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b402769,        0xd4af903f,        0x0b402769 );
TEST_FPRED_VV_OP( 508,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e520a1a5,        0x0b402769,        0xe520a1a5 );
TEST_FPRED_VV_OP( 509,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002fd98a32,        0xe520a1a5,        0x2fd98a32 );
TEST_FPRED_VV_OP( 510,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d31c277,        0x2fd98a32,        0x8d31c277 );
TEST_FPRED_VV_OP( 511,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000431be53f,        0x8d31c277,        0x431be53f );
TEST_FPRED_VV_OP( 512,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000163af993,        0x431be53f,        0x163af993 );
TEST_FPRED_VV_OP( 513,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x163af993,        0x00000000 );
TEST_FPRED_VV_OP( 514,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x62d5fe2f,        0xBF800000 );
TEST_FPRED_VV_OP( 515,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0xbbbfcaf3,        0x3F800000 );
TEST_FPRED_VV_OP( 516,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x8ad27026,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 517,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x599ec422,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 518,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0xd0e57884,        0x80855555 );
TEST_FPRED_VV_OP( 519,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x315858ad,        0x00800001 );
TEST_FPRED_VV_OP( 520,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xbb79a22b,        0x80800000 );
TEST_FPRED_VV_OP( 521,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x80c7fec6,        0x00800000 );
TEST_FPRED_VV_OP( 522,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0xb8a4eaba,        0x807FFFFF );
TEST_FPRED_VV_OP( 523,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x893e4f51,        0x007FFFFF );
TEST_FPRED_VV_OP( 524,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0xa204c639,        0x807FFFFE );
TEST_FPRED_VV_OP( 525,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x092d4ba0,        0x00000002 );
TEST_FPRED_VV_OP( 526,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x8787ab14,        0x80000001 );
TEST_FPRED_VV_OP( 527,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x61ce2443,        0x00000001 );
TEST_FPRED_VV_OP( 528,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x8ac8c0d1,        0x80000000 );
TEST_FPRED_VV_OP( 529,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x2a519200,        0x00000000 );
TEST_FPRED_VV_OP( 530,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x156dd6bc,        0xBF800000 );
TEST_FPRED_VV_OP( 531,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x35ceb876,        0x3F800000 );
TEST_FPRED_VV_OP( 532,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x766125a9,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 533,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x05269d43,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 534,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x1591c3bb,        0x80855555 );
TEST_FPRED_VV_OP( 535,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x7f19aaaa,        0x00800001 );
TEST_FPRED_VV_OP( 536,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xb68e62d5,        0x80800000 );
TEST_FPRED_VV_OP( 537,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x98c5df64,        0x00800000 );
TEST_FPRED_VV_OP( 538,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x58a4f5f8,        0x807FFFFF );
TEST_FPRED_VV_OP( 539,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x1b5d4991,        0x007FFFFF );
TEST_FPRED_VV_OP( 540,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x02046b89,        0x807FFFFE );
TEST_FPRED_VV_OP( 541,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0xf4223dde,        0x00000002 );
TEST_FPRED_VV_OP( 542,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xcf05164e,        0x80000001 );
TEST_FPRED_VV_OP( 543,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0xaa67f476,        0x00000001 );
TEST_FPRED_VV_OP( 544,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x5e100e5a,        0x80000000 );
TEST_FPRED_VV_OP( 545,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x8f51944a,        0x00000000 );
TEST_FPRED_VV_OP( 546,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x01d283cd,        0xBF800000 );
TEST_FPRED_VV_OP( 547,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x19ea57fc,        0x3F800000 );
TEST_FPRED_VV_OP( 548,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0xe246d9c3,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 549,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xb3ede2cf,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 550,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x661a98bb,        0x80855555 );
TEST_FPRED_VV_OP( 551,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0xd2e52100,        0x00800001 );
TEST_FPRED_VV_OP( 552,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xb54c779c,        0x80800000 );
TEST_FPRED_VV_OP( 553,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x8b890ead,        0x00800000 );
TEST_FPRED_VV_OP( 554,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x6f6d8ebb,        0x807FFFFF );
TEST_FPRED_VV_OP( 555,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x701a72e3,        0x007FFFFF );
TEST_FPRED_VV_OP( 556,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x18854a53,        0x807FFFFE );
TEST_FPRED_VV_OP( 557,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0xd8b646c3,        0x00000002 );
TEST_FPRED_VV_OP( 558,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x7a859a9b,        0x80000001 );
TEST_FPRED_VV_OP( 559,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x99fb1285,        0x00000001 );
TEST_FPRED_VV_OP( 560,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x6a49fdb6,        0x80000000 );
TEST_FPRED_VV_OP( 561,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xe54c4797,        0x00000000 );
TEST_FPRED_VV_OP( 562,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0xa13e91a2,        0xBF800000 );
TEST_FPRED_VV_OP( 563,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x56a16ea4,        0x3F800000 );
TEST_FPRED_VV_OP( 564,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x8dc0e4ff,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 565,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x267eb8c3,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 566,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0xbcdd3109,        0x80855555 );
TEST_FPRED_VV_OP( 567,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0xd18cf677,        0x00800001 );
TEST_FPRED_VV_OP( 568,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xc592af51,        0x80800000 );
TEST_FPRED_VV_OP( 569,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x639952be,        0x00800000 );
TEST_FPRED_VV_OP( 570,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x5ecc40d7,        0x807FFFFF );
TEST_FPRED_VV_OP( 571,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x08e1872a,        0x007FFFFF );
TEST_FPRED_VV_OP( 572,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x699b0430,        0x807FFFFE );
TEST_FPRED_VV_OP( 573,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x515deb63,        0x00000002 );
TEST_FPRED_VV_OP( 574,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x55107f38,        0x80000001 );
TEST_FPRED_VV_OP( 575,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x5ed38442,        0x00000001 );
TEST_FPRED_VV_OP( 576,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x9444a8cf,        0x80000000 );
TEST_FPRED_VV_OP( 577,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x3b6f020e,        0x00000000 );
TEST_FPRED_VV_OP( 578,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x3d7a2c1a,        0xBF800000 );
TEST_FPRED_VV_OP( 579,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0xe12d2042,        0x3F800000 );
TEST_FPRED_VV_OP( 580,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0xddc02bcf,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 581,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xd793ec85,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 582,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x89179c2a,        0x80855555 );
TEST_FPRED_VV_OP( 583,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x7b5bb683,        0x00800001 );
TEST_FPRED_VV_OP( 584,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xf3060550,        0x80800000 );
TEST_FPRED_VV_OP( 585,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0xeb6622a3,        0x00800000 );
TEST_FPRED_VV_OP( 586,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x370df4fd,        0x807FFFFF );
TEST_FPRED_VV_OP( 587,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xe7026d7d,        0x007FFFFF );
TEST_FPRED_VV_OP( 588,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0xa7ef2bad,        0x807FFFFE );
TEST_FPRED_VV_OP( 589,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x5d994fff,        0x00000002 );
TEST_FPRED_VV_OP( 590,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x6ab30fe4,        0x80000001 );
TEST_FPRED_VV_OP( 591,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x72d35639,        0x00000001 );
TEST_FPRED_VV_OP( 592,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x27c70109,        0x80000000 );
TEST_FPRED_VV_OP( 593,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xf283b49c,        0x00000000 );
TEST_FPRED_VV_OP( 594,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x3c70fd0b,        0xBF800000 );
TEST_FPRED_VV_OP( 595,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x1f46077b,        0x3F800000 );
TEST_FPRED_VV_OP( 596,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0xc626d7b5,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 597,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xd8664806,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 598,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0xa37e6d45,        0x80855555 );
TEST_FPRED_VV_OP( 599,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x69155a81,        0x00800001 );
TEST_FPRED_VV_OP( 600,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xe78f6b83,        0x80800000 );
TEST_FPRED_VV_OP( 601,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x9aba564b,        0x00800000 );
TEST_FPRED_VV_OP( 602,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x3616aeda,        0x807FFFFF );
TEST_FPRED_VV_OP( 603,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xb6b43b38,        0x007FFFFF );
TEST_FPRED_VV_OP( 604,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x48363fc9,        0x807FFFFE );
TEST_FPRED_VV_OP( 605,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x18fd8be4,        0x00000002 );
TEST_FPRED_VV_OP( 606,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x4f1f58ba,        0x80000001 );
TEST_FPRED_VV_OP( 607,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x19e51db5,        0x00000001 );
TEST_FPRED_VV_OP( 608,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0xe0c53c63,        0x80000000 );
TEST_FPRED_VV_OP( 609,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x192352ad,        0x00000000 );
TEST_FPRED_VV_OP( 610,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x5639134a,        0xBF800000 );
TEST_FPRED_VV_OP( 611,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x3b3c24ec,        0x3F800000 );
TEST_FPRED_VV_OP( 612,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x8376196a,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 613,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x24fcba35,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 614,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x2cd12f68,        0x80855555 );
TEST_FPRED_VV_OP( 615,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x5b91a296,        0x00800001 );
TEST_FPRED_VV_OP( 616,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0x0a9edbe9,        0x80800000 );
TEST_FPRED_VV_OP( 617,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0xbc4fb8ab,        0x00800000 );
TEST_FPRED_VV_OP( 618,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x68714601,        0x807FFFFF );
TEST_FPRED_VV_OP( 619,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xf6077257,        0x007FFFFF );
TEST_FPRED_VV_OP( 620,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x6baa10f2,        0x807FFFFE );
TEST_FPRED_VV_OP( 621,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x210eee6d,        0x00000002 );
TEST_FPRED_VV_OP( 622,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x9d9d1deb,        0x80000001 );
TEST_FPRED_VV_OP( 623,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x52a2c944,        0x00000001 );
TEST_FPRED_VV_OP( 624,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x69da5807,        0x80000000 );
TEST_FPRED_VV_OP( 625,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x5643827a,        0x00000000 );
TEST_FPRED_VV_OP( 626,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x548fa17d,        0xBF800000 );
TEST_FPRED_VV_OP( 627,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x0125e3bc,        0x3F800000 );
TEST_FPRED_VV_OP( 628,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x34294c82,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 629,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xd612accc,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 630,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x7c624102,        0x80855555 );
TEST_FPRED_VV_OP( 631,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x81457ac4,        0x00800001 );
TEST_FPRED_VV_OP( 632,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0x169e8d7e,        0x80800000 );
TEST_FPRED_VV_OP( 633,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x82d5d8cc,        0x00800000 );
TEST_FPRED_VV_OP( 634,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x2afa1e78,        0x807FFFFF );
TEST_FPRED_VV_OP( 635,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xdb9ca373,        0x007FFFFF );
TEST_FPRED_VV_OP( 636,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x8a002b93,        0x807FFFFE );
TEST_FPRED_VV_OP( 637,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0xb686377f,        0x00000002 );
TEST_FPRED_VV_OP( 638,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xc0570d1e,        0x80000001 );
TEST_FPRED_VV_OP( 639,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x6682aa99,        0x00000001 );
TEST_FPRED_VV_OP( 640,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0xd3ab2b5b,        0x80000000 );
TEST_FPRED_VV_OP( 641,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x32ce890a,        0x00000000 );
TEST_FPRED_VV_OP( 642,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x50408aba,        0xBF800000 );
TEST_FPRED_VV_OP( 643,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0xb4ea3655,        0x3F800000 );
TEST_FPRED_VV_OP( 644,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x57385489,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 645,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xeef03e8d,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 646,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0xde17d645,        0x80855555 );
TEST_FPRED_VV_OP( 647,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x0e7f9a32,        0x00800001 );
TEST_FPRED_VV_OP( 648,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xeeca2f3b,        0x80800000 );
TEST_FPRED_VV_OP( 649,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0xf14f95f4,        0x00800000 );
TEST_FPRED_VV_OP( 650,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x63b7a76e,        0x807FFFFF );
TEST_FPRED_VV_OP( 651,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xbcc9ab43,        0x007FFFFF );
TEST_FPRED_VV_OP( 652,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0xdfeeae1d,        0x807FFFFE );
TEST_FPRED_VV_OP( 653,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x65eed45a,        0x00000002 );
TEST_FPRED_VV_OP( 654,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xc8e4911e,        0x80000001 );
TEST_FPRED_VV_OP( 655,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x61bee6e3,        0x00000001 );
TEST_FPRED_VV_OP( 656,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x5a888b0b,        0x80000000 );
TEST_FPRED_VV_OP( 657,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xe8b9b2cd,        0x00000000 );
TEST_FPRED_VV_OP( 658,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x1bc3cb1f,        0xBF800000 );
TEST_FPRED_VV_OP( 659,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x6c9a9490,        0x3F800000 );
TEST_FPRED_VV_OP( 660,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x94518e9b,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 661,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x89b67375,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 662,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0xd4bea2c1,        0x80855555 );
TEST_FPRED_VV_OP( 663,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0xd7ac95f6,        0x00800001 );
TEST_FPRED_VV_OP( 664,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xb4fe5b7c,        0x80800000 );
TEST_FPRED_VV_OP( 665,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x59dac688,        0x00800000 );
TEST_FPRED_VV_OP( 666,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0xd864b555,        0x807FFFFF );
TEST_FPRED_VV_OP( 667,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xf0a45c48,        0x007FFFFF );
TEST_FPRED_VV_OP( 668,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x8debdd64,        0x807FFFFE );
TEST_FPRED_VV_OP( 669,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x78f0b6be,        0x00000002 );
TEST_FPRED_VV_OP( 670,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xea5bd793,        0x80000001 );
TEST_FPRED_VV_OP( 671,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x837bb1b9,        0x00000001 );
TEST_FPRED_VV_OP( 672,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0xb8879ad6,        0x80000000 );
TEST_FPRED_VV_OP( 673,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xa62bf1a5,        0x00000000 );
TEST_FPRED_VV_OP( 674,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x27457e6e,        0xBF800000 );
TEST_FPRED_VV_OP( 675,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0xc42dea11,        0x3F800000 );
TEST_FPRED_VV_OP( 676,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0xbc0e79b9,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 677,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x72ae0ac9,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 678,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0xe29df404,        0x80855555 );
TEST_FPRED_VV_OP( 679,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0xb117f9b7,        0x00800001 );
TEST_FPRED_VV_OP( 680,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xf0abe8ea,        0x80800000 );
TEST_FPRED_VV_OP( 681,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x5b82f781,        0x00800000 );
TEST_FPRED_VV_OP( 682,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x3aba4a26,        0x807FFFFF );
TEST_FPRED_VV_OP( 683,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xefea5e67,        0x007FFFFF );
TEST_FPRED_VV_OP( 684,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x688be24b,        0x807FFFFE );
TEST_FPRED_VV_OP( 685,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x21ad1582,        0x00000002 );
TEST_FPRED_VV_OP( 686,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xa294f0b8,        0x80000001 );
TEST_FPRED_VV_OP( 687,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0xa6440f97,        0x00000001 );
TEST_FPRED_VV_OP( 688,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x5ea2d0b9,        0x80000000 );
TEST_FPRED_VV_OP( 689,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xbdc0571c,        0x00000000 );
TEST_FPRED_VV_OP( 690,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x2442a91b,        0xBF800000 );
TEST_FPRED_VV_OP( 691,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x0c377326,        0x3F800000 );
TEST_FPRED_VV_OP( 692,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x533c8dfe,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 693,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xe21ef6aa,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 694,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x919fa67d,        0x80855555 );
TEST_FPRED_VV_OP( 695,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x873f1671,        0x00800001 );
TEST_FPRED_VV_OP( 696,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0x2a9f2e23,        0x80800000 );
TEST_FPRED_VV_OP( 697,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0xbe22927b,        0x00800000 );
TEST_FPRED_VV_OP( 698,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0xa992efc3,        0x807FFFFF );
TEST_FPRED_VV_OP( 699,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x75ce1220,        0x007FFFFF );
TEST_FPRED_VV_OP( 700,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x4447a68d,        0x807FFFFE );
TEST_FPRED_VV_OP( 701,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x3f78b414,        0x00000002 );
TEST_FPRED_VV_OP( 702,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xbd72133e,        0x80000001 );
TEST_FPRED_VV_OP( 703,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x0cee6997,        0x00000001 );
TEST_FPRED_VV_OP( 704,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x1a1b49f6,        0x80000000 );
TEST_FPRED_VV_OP( 705,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x74cefef0,        0x00000000 );
TEST_FPRED_VV_OP( 706,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0xdb8a3bd9,        0xBF800000 );
TEST_FPRED_VV_OP( 707,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x4b329421,        0x3F800000 );
TEST_FPRED_VV_OP( 708,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x3a31ab60,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 709,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xe953c01f,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 710,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x0f147ddf,        0x80855555 );
TEST_FPRED_VV_OP( 711,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0xcf457330,        0x00800001 );
TEST_FPRED_VV_OP( 712,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0x19f95636,        0x80800000 );
TEST_FPRED_VV_OP( 713,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x30610d6c,        0x00800000 );
TEST_FPRED_VV_OP( 714,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x7cfe6ad7,        0x807FFFFF );
TEST_FPRED_VV_OP( 715,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x51a59b6f,        0x007FFFFF );
TEST_FPRED_VV_OP( 716,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0xbe384770,        0x807FFFFE );
TEST_FPRED_VV_OP( 717,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x336dc41b,        0x00000002 );
TEST_FPRED_VV_OP( 718,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xa87f271a,        0x80000001 );
TEST_FPRED_VV_OP( 719,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x6c9121e1,        0x00000001 );
TEST_FPRED_VV_OP( 720,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0xa73c95c4,        0x80000000 );
TEST_FPRED_VV_OP( 721,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xcaf0a32c,        0x00000000 );
TEST_FPRED_VV_OP( 722,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x46f5a171,        0xBF800000 );
TEST_FPRED_VV_OP( 723,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x251c1e00,        0x3F800000 );
TEST_FPRED_VV_OP( 724,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0xac7c3863,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 725,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x8f02a18c,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 726,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x91fd21c8,        0x80855555 );
TEST_FPRED_VV_OP( 727,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x4453aa24,        0x00800001 );
TEST_FPRED_VV_OP( 728,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0x8cc4c438,        0x80800000 );
TEST_FPRED_VV_OP( 729,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0xbcafd1ca,        0x00800000 );
TEST_FPRED_VV_OP( 730,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x767634b8,        0x807FFFFF );
TEST_FPRED_VV_OP( 731,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x177434a8,        0x007FFFFF );
TEST_FPRED_VV_OP( 732,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x4602bb95,        0x807FFFFE );
TEST_FPRED_VV_OP( 733,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0xbb2a44f6,        0x00000002 );
TEST_FPRED_VV_OP( 734,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xe1cd9683,        0x80000001 );
TEST_FPRED_VV_OP( 735,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0xc649858c,        0x00000001 );
TEST_FPRED_VV_OP( 736,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x834794d4,        0x80000000 );
TEST_FPRED_VV_OP( 737,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xe226001f,        0x00000000 );
TEST_FPRED_VV_OP( 738,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x3bbf119a,        0xBF800000 );
TEST_FPRED_VV_OP( 739,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x0aeac265,        0x3F800000 );
TEST_FPRED_VV_OP( 740,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x41649ded,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 741,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x54d909fd,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 742,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x82c44d2b,        0x80855555 );
TEST_FPRED_VV_OP( 743,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x85371e54,        0x00800001 );
TEST_FPRED_VV_OP( 744,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0x91074282,        0x80800000 );
TEST_FPRED_VV_OP( 745,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x61ae58b5,        0x00800000 );
TEST_FPRED_VV_OP( 746,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0xc611ba41,        0x807FFFFF );
TEST_FPRED_VV_OP( 747,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xd0fb779f,        0x007FFFFF );
TEST_FPRED_VV_OP( 748,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x999f8b26,        0x807FFFFE );
TEST_FPRED_VV_OP( 749,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0xa113808e,        0x00000002 );
TEST_FPRED_VV_OP( 750,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x675a54fd,        0x80000001 );
TEST_FPRED_VV_OP( 751,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x8864b1ab,        0x00000001 );
TEST_FPRED_VV_OP( 752,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0xcd9e4966,        0x80000000 );
TEST_FPRED_VV_OP( 753,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xecdb94a3,        0x00000000 );
TEST_FPRED_VV_OP( 754,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x50fb73b8,        0xBF800000 );
TEST_FPRED_VV_OP( 755,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x1566303a,        0x3F800000 );
TEST_FPRED_VV_OP( 756,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0xf77c3228,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 757,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xde7da192,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 758,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x1a2510c7,        0x80855555 );
TEST_FPRED_VV_OP( 759,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x8c4f914e,        0x00800001 );
TEST_FPRED_VV_OP( 760,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xae52acb6,        0x80800000 );
TEST_FPRED_VV_OP( 761,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x269ca43a,        0x00800000 );
TEST_FPRED_VV_OP( 762,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x112bfa6f,        0x807FFFFF );
TEST_FPRED_VV_OP( 763,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xe6388e69,        0x007FFFFF );
TEST_FPRED_VV_OP( 764,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x9f9c2d14,        0x807FFFFE );
TEST_FPRED_VV_OP( 765,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x85d763a6,        0x00000002 );
TEST_FPRED_VV_OP( 766,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xac497736,        0x80000001 );
TEST_FPRED_VV_OP( 767,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x8a462146,        0x00000001 );
TEST_FPRED_VV_OP( 768,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0xd2300ca6,        0x80000000 );
TEST_FPRED_VV_OP( 769,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062d5fe2f,        0xab04b597,        0x62d5fe2f );
TEST_FPRED_VV_OP( 770,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbfcaf3,        0xd5173d3b,        0xbbbfcaf3 );
TEST_FPRED_VV_OP( 771,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ad27026,        0x1c954c88,        0x8ad27026 );
TEST_FPRED_VV_OP( 772,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000599ec422,        0xae8f2f8a,        0x599ec422 );
TEST_FPRED_VV_OP( 773,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0e57884,        0xe18cd6d3,        0xd0e57884 );
TEST_FPRED_VV_OP( 774,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000315858ad,        0xe7128ead,        0x315858ad );
TEST_FPRED_VV_OP( 775,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb79a22b,        0x430c45f2,        0xbb79a22b );
TEST_FPRED_VV_OP( 776,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080c7fec6,        0x1fece821,        0x80c7fec6 );
TEST_FPRED_VV_OP( 777,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8a4eaba,        0xdbe8db2f,        0xb8a4eaba );
TEST_FPRED_VV_OP( 778,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000893e4f51,        0x9deac411,        0x893e4f51 );
TEST_FPRED_VV_OP( 779,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a204c639,        0xd578536b,        0xa204c639 );
TEST_FPRED_VV_OP( 780,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092d4ba0,        0x5a2112c5,        0x092d4ba0 );
TEST_FPRED_VV_OP( 781,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008787ab14,        0x33755502,        0x8787ab14 );
TEST_FPRED_VV_OP( 782,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061ce2443,        0x41f512c8,        0x61ce2443 );
TEST_FPRED_VV_OP( 783,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ac8c0d1,        0x5b07c90e,        0x8ac8c0d1 );
TEST_FPRED_VV_OP( 784,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a519200,        0x30e95eba,        0x2a519200 );
TEST_FPRED_VV_OP( 785,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000156dd6bc,        0xdc43d0d7,        0x156dd6bc );
TEST_FPRED_VV_OP( 786,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000035ceb876,        0xce250988,        0x35ceb876 );
TEST_FPRED_VV_OP( 787,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000766125a9,        0x546ef0b9,        0x766125a9 );
TEST_FPRED_VV_OP( 788,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005269d43,        0x7c69a228,        0x05269d43 );
TEST_FPRED_VV_OP( 789,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001591c3bb,        0x540da0bc,        0x1591c3bb );
TEST_FPRED_VV_OP( 790,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f19aaaa,        0xb917bde6,        0x7f19aaaa );
TEST_FPRED_VV_OP( 791,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b68e62d5,        0x2b14a548,        0xb68e62d5 );
TEST_FPRED_VV_OP( 792,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000098c5df64,        0x5c51c72f,        0x98c5df64 );
TEST_FPRED_VV_OP( 793,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058a4f5f8,        0xe66cd16e,        0x58a4f5f8 );
TEST_FPRED_VV_OP( 794,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b5d4991,        0xf8e67fb0,        0x1b5d4991 );
TEST_FPRED_VV_OP( 795,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002046b89,        0x45b5c5f1,        0x02046b89 );
TEST_FPRED_VV_OP( 796,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f4223dde,        0x6bd9ba9a,        0xf4223dde );
TEST_FPRED_VV_OP( 797,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf05164e,        0x9c1e8667,        0xcf05164e );
TEST_FPRED_VV_OP( 798,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa67f476,        0x8a2c7d45,        0xaa67f476 );
TEST_FPRED_VV_OP( 799,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005e100e5a,        0xaf61ac13,        0x5e100e5a );
TEST_FPRED_VV_OP( 800,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f51944a,        0xcc06f22d,        0x8f51944a );
TEST_FPRED_VV_OP( 801,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001d283cd,        0x6ac84f04,        0x01d283cd );
TEST_FPRED_VV_OP( 802,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019ea57fc,        0x581f3afc,        0x19ea57fc );
TEST_FPRED_VV_OP( 803,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e246d9c3,        0x6122b26e,        0xe246d9c3 );
TEST_FPRED_VV_OP( 804,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3ede2cf,        0xff4914a8,        0xb3ede2cf );
TEST_FPRED_VV_OP( 805,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000661a98bb,        0xf0a80a4a,        0x661a98bb );
TEST_FPRED_VV_OP( 806,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2e52100,        0x44577dfa,        0xd2e52100 );
TEST_FPRED_VV_OP( 807,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b54c779c,        0xe31172b1,        0xb54c779c );
TEST_FPRED_VV_OP( 808,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008b890ead,        0x30b00f6c,        0x8b890ead );
TEST_FPRED_VV_OP( 809,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f6d8ebb,        0x9cd4367e,        0x6f6d8ebb );
TEST_FPRED_VV_OP( 810,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000701a72e3,        0x53266571,        0x701a72e3 );
TEST_FPRED_VV_OP( 811,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018854a53,        0x39a2b9a9,        0x18854a53 );
TEST_FPRED_VV_OP( 812,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d8b646c3,        0xf628feb7,        0xd8b646c3 );
TEST_FPRED_VV_OP( 813,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a859a9b,        0x519a8397,        0x7a859a9b );
TEST_FPRED_VV_OP( 814,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099fb1285,        0xd949e747,        0x99fb1285 );
TEST_FPRED_VV_OP( 815,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006a49fdb6,        0xfe0b7d68,        0x6a49fdb6 );
TEST_FPRED_VV_OP( 816,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e54c4797,        0xd2ec6f9d,        0xe54c4797 );
TEST_FPRED_VV_OP( 817,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a13e91a2,        0x7b9f0a06,        0xa13e91a2 );
TEST_FPRED_VV_OP( 818,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056a16ea4,        0xe25828a9,        0x56a16ea4 );
TEST_FPRED_VV_OP( 819,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008dc0e4ff,        0x6ff72e08,        0x8dc0e4ff );
TEST_FPRED_VV_OP( 820,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000267eb8c3,        0xae72d34d,        0x267eb8c3 );
TEST_FPRED_VV_OP( 821,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcdd3109,        0xf61fde3e,        0xbcdd3109 );
TEST_FPRED_VV_OP( 822,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d18cf677,        0x1cb57d88,        0xd18cf677 );
TEST_FPRED_VV_OP( 823,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c592af51,        0x3bb5e465,        0xc592af51 );
TEST_FPRED_VV_OP( 824,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000639952be,        0x89b4574b,        0x639952be );
TEST_FPRED_VV_OP( 825,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ecc40d7,        0xae23f858,        0x5ecc40d7 );
TEST_FPRED_VV_OP( 826,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e1872a,        0x32b4b342,        0x08e1872a );
TEST_FPRED_VV_OP( 827,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000699b0430,        0x9c5034c7,        0x699b0430 );
TEST_FPRED_VV_OP( 828,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000515deb63,        0x6129cabb,        0x515deb63 );
TEST_FPRED_VV_OP( 829,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055107f38,        0x9af4bc9a,        0x55107f38 );
TEST_FPRED_VV_OP( 830,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ed38442,        0xc729acef,        0x5ed38442 );
TEST_FPRED_VV_OP( 831,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009444a8cf,        0x7d485219,        0x9444a8cf );
TEST_FPRED_VV_OP( 832,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b6f020e,        0x4a3b445a,        0x3b6f020e );
TEST_FPRED_VV_OP( 833,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d7a2c1a,        0x276f4a82,        0x3d7a2c1a );
TEST_FPRED_VV_OP( 834,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e12d2042,        0xdd7bf9fc,        0xe12d2042 );
TEST_FPRED_VV_OP( 835,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ddc02bcf,        0x6797c5aa,        0xddc02bcf );
TEST_FPRED_VV_OP( 836,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d793ec85,        0x9c739bc0,        0xd793ec85 );
TEST_FPRED_VV_OP( 837,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089179c2a,        0x37e6587a,        0x89179c2a );
TEST_FPRED_VV_OP( 838,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b5bb683,        0x292fa2d6,        0x7b5bb683 );
TEST_FPRED_VV_OP( 839,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3060550,        0x57b6f48d,        0xf3060550 );
TEST_FPRED_VV_OP( 840,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eb6622a3,        0xa87ebd39,        0xeb6622a3 );
TEST_FPRED_VV_OP( 841,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000370df4fd,        0xda3b9803,        0x370df4fd );
TEST_FPRED_VV_OP( 842,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7026d7d,        0xcf98db80,        0xe7026d7d );
TEST_FPRED_VV_OP( 843,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a7ef2bad,        0xa1993841,        0xa7ef2bad );
TEST_FPRED_VV_OP( 844,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d994fff,        0x214c72b3,        0x5d994fff );
TEST_FPRED_VV_OP( 845,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ab30fe4,        0x4a289aa8,        0x6ab30fe4 );
TEST_FPRED_VV_OP( 846,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072d35639,        0x3d7777d1,        0x72d35639 );
TEST_FPRED_VV_OP( 847,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027c70109,        0x579e0114,        0x27c70109 );
TEST_FPRED_VV_OP( 848,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f283b49c,        0x13d30cfc,        0xf283b49c );
TEST_FPRED_VV_OP( 849,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003c70fd0b,        0x8a19a62b,        0x3c70fd0b );
TEST_FPRED_VV_OP( 850,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001f46077b,        0x07041e7d,        0x1f46077b );
TEST_FPRED_VV_OP( 851,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c626d7b5,        0x3b192289,        0xc626d7b5 );
TEST_FPRED_VV_OP( 852,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d8664806,        0xb8f72c52,        0xd8664806 );
TEST_FPRED_VV_OP( 853,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a37e6d45,        0x3a7c4f91,        0xa37e6d45 );
TEST_FPRED_VV_OP( 854,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069155a81,        0x2eadf0ac,        0x69155a81 );
TEST_FPRED_VV_OP( 855,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e78f6b83,        0xdbfec094,        0xe78f6b83 );
TEST_FPRED_VV_OP( 856,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009aba564b,        0x8c1ae516,        0x9aba564b );
TEST_FPRED_VV_OP( 857,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003616aeda,        0xbb97f344,        0x3616aeda );
TEST_FPRED_VV_OP( 858,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b6b43b38,        0x2d614a74,        0xb6b43b38 );
TEST_FPRED_VV_OP( 859,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048363fc9,        0xdbb7bc69,        0x48363fc9 );
TEST_FPRED_VV_OP( 860,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018fd8be4,        0x75160c80,        0x18fd8be4 );
TEST_FPRED_VV_OP( 861,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004f1f58ba,        0x026513b2,        0x4f1f58ba );
TEST_FPRED_VV_OP( 862,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019e51db5,        0xb3301eb1,        0x19e51db5 );
TEST_FPRED_VV_OP( 863,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e0c53c63,        0x513b24cd,        0xe0c53c63 );
TEST_FPRED_VV_OP( 864,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000192352ad,        0xd2d18754,        0x192352ad );
TEST_FPRED_VV_OP( 865,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005639134a,        0x0fccea6a,        0x5639134a );
TEST_FPRED_VV_OP( 866,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b3c24ec,        0xb4e15b15,        0x3b3c24ec );
TEST_FPRED_VV_OP( 867,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008376196a,        0xb546b05b,        0x8376196a );
TEST_FPRED_VV_OP( 868,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000024fcba35,        0x0f952852,        0x24fcba35 );
TEST_FPRED_VV_OP( 869,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002cd12f68,        0x7dbe9d89,        0x2cd12f68 );
TEST_FPRED_VV_OP( 870,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b91a296,        0xf8791ac8,        0x5b91a296 );
TEST_FPRED_VV_OP( 871,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9edbe9,        0xd924a386,        0x0a9edbe9 );
TEST_FPRED_VV_OP( 872,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bc4fb8ab,        0xdf5f99f4,        0xbc4fb8ab );
TEST_FPRED_VV_OP( 873,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000068714601,        0x6618d504,        0x68714601 );
TEST_FPRED_VV_OP( 874,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f6077257,        0x8849a498,        0xf6077257 );
TEST_FPRED_VV_OP( 875,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006baa10f2,        0xf2961261,        0x6baa10f2 );
TEST_FPRED_VV_OP( 876,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000210eee6d,        0xe303d466,        0x210eee6d );
TEST_FPRED_VV_OP( 877,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009d9d1deb,        0xd9d90f64,        0x9d9d1deb );
TEST_FPRED_VV_OP( 878,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052a2c944,        0x9ceb7bc1,        0x52a2c944 );
TEST_FPRED_VV_OP( 879,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069da5807,        0x07b60686,        0x69da5807 );
TEST_FPRED_VV_OP( 880,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005643827a,        0x92dc0a8a,        0x5643827a );
TEST_FPRED_VV_OP( 881,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000548fa17d,        0x93997373,        0x548fa17d );
TEST_FPRED_VV_OP( 882,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000125e3bc,        0xe19d8f2e,        0x0125e3bc );
TEST_FPRED_VV_OP( 883,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000034294c82,        0xdd4ad4c7,        0x34294c82 );
TEST_FPRED_VV_OP( 884,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d612accc,        0x0b3419eb,        0xd612accc );
TEST_FPRED_VV_OP( 885,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c624102,        0x46365e84,        0x7c624102 );
TEST_FPRED_VV_OP( 886,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081457ac4,        0x92db17e9,        0x81457ac4 );
TEST_FPRED_VV_OP( 887,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000169e8d7e,        0x65cdd905,        0x169e8d7e );
TEST_FPRED_VV_OP( 888,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082d5d8cc,        0xdd60629d,        0x82d5d8cc );
TEST_FPRED_VV_OP( 889,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002afa1e78,        0x16478c58,        0x2afa1e78 );
TEST_FPRED_VV_OP( 890,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db9ca373,        0xd11c290e,        0xdb9ca373 );
TEST_FPRED_VV_OP( 891,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a002b93,        0x0d899e08,        0x8a002b93 );
TEST_FPRED_VV_OP( 892,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b686377f,        0xc9770a1f,        0xb686377f );
TEST_FPRED_VV_OP( 893,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0570d1e,        0xac39d155,        0xc0570d1e );
TEST_FPRED_VV_OP( 894,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006682aa99,        0x0f7a7733,        0x6682aa99 );
TEST_FPRED_VV_OP( 895,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d3ab2b5b,        0xa946bce1,        0xd3ab2b5b );
TEST_FPRED_VV_OP( 896,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032ce890a,        0x4e00d0f3,        0x32ce890a );
TEST_FPRED_VV_OP( 897,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050408aba,        0x3aa41dc4,        0x50408aba );
TEST_FPRED_VV_OP( 898,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4ea3655,        0x0a9f9511,        0xb4ea3655 );
TEST_FPRED_VV_OP( 899,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057385489,        0x5398487b,        0x57385489 );
TEST_FPRED_VV_OP( 900,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eef03e8d,        0xf3782028,        0xeef03e8d );
TEST_FPRED_VV_OP( 901,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de17d645,        0x69b76600,        0xde17d645 );
TEST_FPRED_VV_OP( 902,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7f9a32,        0x8ca3efb3,        0x0e7f9a32 );
TEST_FPRED_VV_OP( 903,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeca2f3b,        0xcb7da0de,        0xeeca2f3b );
TEST_FPRED_VV_OP( 904,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f14f95f4,        0x552d23d2,        0xf14f95f4 );
TEST_FPRED_VV_OP( 905,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000063b7a76e,        0x3436f14c,        0x63b7a76e );
TEST_FPRED_VV_OP( 906,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcc9ab43,        0x6f5f3f35,        0xbcc9ab43 );
TEST_FPRED_VV_OP( 907,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dfeeae1d,        0x53b5a207,        0xdfeeae1d );
TEST_FPRED_VV_OP( 908,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065eed45a,        0xd20dfb9f,        0x65eed45a );
TEST_FPRED_VV_OP( 909,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c8e4911e,        0x8723b674,        0xc8e4911e );
TEST_FPRED_VV_OP( 910,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061bee6e3,        0x0f348d99,        0x61bee6e3 );
TEST_FPRED_VV_OP( 911,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a888b0b,        0x3886ab90,        0x5a888b0b );
TEST_FPRED_VV_OP( 912,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e8b9b2cd,        0x0334f85a,        0xe8b9b2cd );
TEST_FPRED_VV_OP( 913,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001bc3cb1f,        0xea1670df,        0x1bc3cb1f );
TEST_FPRED_VV_OP( 914,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c9a9490,        0xd13744b3,        0x6c9a9490 );
TEST_FPRED_VV_OP( 915,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000094518e9b,        0x883fe017,        0x94518e9b );
TEST_FPRED_VV_OP( 916,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089b67375,        0x1daf3b01,        0x89b67375 );
TEST_FPRED_VV_OP( 917,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d4bea2c1,        0xa9c63a58,        0xd4bea2c1 );
TEST_FPRED_VV_OP( 918,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d7ac95f6,        0xec747b1c,        0xd7ac95f6 );
TEST_FPRED_VV_OP( 919,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4fe5b7c,        0x0c6eccf7,        0xb4fe5b7c );
TEST_FPRED_VV_OP( 920,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000059dac688,        0x4cad30bc,        0x59dac688 );
TEST_FPRED_VV_OP( 921,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d864b555,        0x477b3771,        0xd864b555 );
TEST_FPRED_VV_OP( 922,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0a45c48,        0xaeef6b3d,        0xf0a45c48 );
TEST_FPRED_VV_OP( 923,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008debdd64,        0x1555f68c,        0x8debdd64 );
TEST_FPRED_VV_OP( 924,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000078f0b6be,        0xb7e378a2,        0x78f0b6be );
TEST_FPRED_VV_OP( 925,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea5bd793,        0xb602bd3e,        0xea5bd793 );
TEST_FPRED_VV_OP( 926,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000837bb1b9,        0xaf130fb6,        0x837bb1b9 );
TEST_FPRED_VV_OP( 927,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8879ad6,        0x31a4314a,        0xb8879ad6 );
TEST_FPRED_VV_OP( 928,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a62bf1a5,        0xc723b3d7,        0xa62bf1a5 );
TEST_FPRED_VV_OP( 929,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027457e6e,        0x7015aa42,        0x27457e6e );
TEST_FPRED_VV_OP( 930,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c42dea11,        0x0928aa3e,        0xc42dea11 );
TEST_FPRED_VV_OP( 931,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bc0e79b9,        0x22ef3704,        0xbc0e79b9 );
TEST_FPRED_VV_OP( 932,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072ae0ac9,        0xf352256b,        0x72ae0ac9 );
TEST_FPRED_VV_OP( 933,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e29df404,        0x4da52bc4,        0xe29df404 );
TEST_FPRED_VV_OP( 934,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b117f9b7,        0x546d8880,        0xb117f9b7 );
TEST_FPRED_VV_OP( 935,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0abe8ea,        0xf78ee9c7,        0xf0abe8ea );
TEST_FPRED_VV_OP( 936,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b82f781,        0xc95bd691,        0x5b82f781 );
TEST_FPRED_VV_OP( 937,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003aba4a26,        0x5239bc94,        0x3aba4a26 );
TEST_FPRED_VV_OP( 938,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000efea5e67,        0xb48c2fbf,        0xefea5e67 );
TEST_FPRED_VV_OP( 939,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000688be24b,        0x67e301b5,        0x688be24b );
TEST_FPRED_VV_OP( 940,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021ad1582,        0x240451c9,        0x21ad1582 );
TEST_FPRED_VV_OP( 941,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a294f0b8,        0x27c6864f,        0xa294f0b8 );
TEST_FPRED_VV_OP( 942,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a6440f97,        0x26c6f274,        0xa6440f97 );
TEST_FPRED_VV_OP( 943,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ea2d0b9,        0x25f55d4e,        0x5ea2d0b9 );
TEST_FPRED_VV_OP( 944,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bdc0571c,        0x5d2eb86f,        0xbdc0571c );
TEST_FPRED_VV_OP( 945,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002442a91b,        0x828a97e7,        0x2442a91b );
TEST_FPRED_VV_OP( 946,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c377326,        0x67e912e1,        0x0c377326 );
TEST_FPRED_VV_OP( 947,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000533c8dfe,        0x3d4617ee,        0x533c8dfe );
TEST_FPRED_VV_OP( 948,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e21ef6aa,        0x09322d7d,        0xe21ef6aa );
TEST_FPRED_VV_OP( 949,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000919fa67d,        0x1eca00ff,        0x919fa67d );
TEST_FPRED_VV_OP( 950,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000873f1671,        0x2ecc47d2,        0x873f1671 );
TEST_FPRED_VV_OP( 951,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a9f2e23,        0xf3bb23d6,        0x2a9f2e23 );
TEST_FPRED_VV_OP( 952,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be22927b,        0xab05bda1,        0xbe22927b );
TEST_FPRED_VV_OP( 953,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a992efc3,        0xbebbadd8,        0xa992efc3 );
TEST_FPRED_VV_OP( 954,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075ce1220,        0x76ca2ed2,        0x75ce1220 );
TEST_FPRED_VV_OP( 955,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004447a68d,        0x2b20cd36,        0x4447a68d );
TEST_FPRED_VV_OP( 956,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f78b414,        0x524f229d,        0x3f78b414 );
TEST_FPRED_VV_OP( 957,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bd72133e,        0x5254e959,        0xbd72133e );
TEST_FPRED_VV_OP( 958,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cee6997,        0x2aef92ad,        0x0cee6997 );
TEST_FPRED_VV_OP( 959,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a1b49f6,        0x31229858,        0x1a1b49f6 );
TEST_FPRED_VV_OP( 960,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074cefef0,        0xb06bc8f6,        0x74cefef0 );
TEST_FPRED_VV_OP( 961,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db8a3bd9,        0x5dcce032,        0xdb8a3bd9 );
TEST_FPRED_VV_OP( 962,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004b329421,        0x310e5031,        0x4b329421 );
TEST_FPRED_VV_OP( 963,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a31ab60,        0xf2069096,        0x3a31ab60 );
TEST_FPRED_VV_OP( 964,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e953c01f,        0x072a3060,        0xe953c01f );
TEST_FPRED_VV_OP( 965,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f147ddf,        0x9c33042c,        0x0f147ddf );
TEST_FPRED_VV_OP( 966,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf457330,        0x06dd7d38,        0xcf457330 );
TEST_FPRED_VV_OP( 967,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019f95636,        0xe4b100b8,        0x19f95636 );
TEST_FPRED_VV_OP( 968,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030610d6c,        0x04c5e517,        0x30610d6c );
TEST_FPRED_VV_OP( 969,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007cfe6ad7,        0x3b50cc02,        0x7cfe6ad7 );
TEST_FPRED_VV_OP( 970,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000051a59b6f,        0x6f0086f2,        0x51a59b6f );
TEST_FPRED_VV_OP( 971,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be384770,        0xc583b3da,        0xbe384770 );
TEST_FPRED_VV_OP( 972,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000336dc41b,        0xae6ff135,        0x336dc41b );
TEST_FPRED_VV_OP( 973,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a87f271a,        0x7815f9b0,        0xa87f271a );
TEST_FPRED_VV_OP( 974,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c9121e1,        0x5cc84607,        0x6c9121e1 );
TEST_FPRED_VV_OP( 975,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a73c95c4,        0x754bced3,        0xa73c95c4 );
TEST_FPRED_VV_OP( 976,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000caf0a32c,        0xaec59a2a,        0xcaf0a32c );
TEST_FPRED_VV_OP( 977,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000046f5a171,        0x8542dc85,        0x46f5a171 );
TEST_FPRED_VV_OP( 978,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000251c1e00,        0x3af43c9d,        0x251c1e00 );
TEST_FPRED_VV_OP( 979,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac7c3863,        0xae8c12b8,        0xac7c3863 );
TEST_FPRED_VV_OP( 980,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f02a18c,        0x67be397d,        0x8f02a18c );
TEST_FPRED_VV_OP( 981,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091fd21c8,        0x8758cfc4,        0x91fd21c8 );
TEST_FPRED_VV_OP( 982,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004453aa24,        0x1de4f6af,        0x4453aa24 );
TEST_FPRED_VV_OP( 983,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008cc4c438,        0x1a455288,        0x8cc4c438 );
TEST_FPRED_VV_OP( 984,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcafd1ca,        0x88db7d8c,        0xbcafd1ca );
TEST_FPRED_VV_OP( 985,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000767634b8,        0xf937aafa,        0x767634b8 );
TEST_FPRED_VV_OP( 986,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000177434a8,        0xca3650e2,        0x177434a8 );
TEST_FPRED_VV_OP( 987,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004602bb95,        0xc7044eb3,        0x4602bb95 );
TEST_FPRED_VV_OP( 988,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb2a44f6,        0x58933db0,        0xbb2a44f6 );
TEST_FPRED_VV_OP( 989,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e1cd9683,        0x0545acbb,        0xe1cd9683 );
TEST_FPRED_VV_OP( 990,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c649858c,        0xb379a614,        0xc649858c );
TEST_FPRED_VV_OP( 991,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000834794d4,        0x9b3eb4cc,        0x834794d4 );
TEST_FPRED_VV_OP( 992,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e226001f,        0xe9519192,        0xe226001f );
TEST_FPRED_VV_OP( 993,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bbf119a,        0x2eb0d339,        0x3bbf119a );
TEST_FPRED_VV_OP( 994,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aeac265,        0xf575e7bb,        0x0aeac265 );
TEST_FPRED_VV_OP( 995,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041649ded,        0xee907664,        0x41649ded );
TEST_FPRED_VV_OP( 996,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000054d909fd,        0x53960a4c,        0x54d909fd );
TEST_FPRED_VV_OP( 997,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082c44d2b,        0x87973a27,        0x82c44d2b );
TEST_FPRED_VV_OP( 998,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085371e54,        0xa925b817,        0x85371e54 );
TEST_FPRED_VV_OP( 999,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091074282,        0x1c1a1e45,        0x91074282 );
TEST_FPRED_VV_OP( 1000,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061ae58b5,        0x20dcdbeb,        0x61ae58b5 );
TEST_FPRED_VV_OP( 1001,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c611ba41,        0x2d3e0667,        0xc611ba41 );
TEST_FPRED_VV_OP( 1002,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0fb779f,        0x53d05d72,        0xd0fb779f );
TEST_FPRED_VV_OP( 1003,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000999f8b26,        0xb822ad39,        0x999f8b26 );
TEST_FPRED_VV_OP( 1004,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a113808e,        0x4ffe6390,        0xa113808e );
TEST_FPRED_VV_OP( 1005,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000675a54fd,        0x9ef29035,        0x675a54fd );
TEST_FPRED_VV_OP( 1006,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008864b1ab,        0xd0450fa2,        0x8864b1ab );
TEST_FPRED_VV_OP( 1007,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cd9e4966,        0x0d89744e,        0xcd9e4966 );
TEST_FPRED_VV_OP( 1008,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ecdb94a3,        0x346489f5,        0xecdb94a3 );
TEST_FPRED_VV_OP( 1009,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050fb73b8,        0xd48dd733,        0x50fb73b8 );
TEST_FPRED_VV_OP( 1010,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001566303a,        0x5d857c31,        0x1566303a );
TEST_FPRED_VV_OP( 1011,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f77c3228,        0x9b185404,        0xf77c3228 );
TEST_FPRED_VV_OP( 1012,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de7da192,        0x41059de4,        0xde7da192 );
TEST_FPRED_VV_OP( 1013,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a2510c7,        0x12d11883,        0x1a2510c7 );
TEST_FPRED_VV_OP( 1014,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c4f914e,        0xa647e794,        0x8c4f914e );
TEST_FPRED_VV_OP( 1015,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae52acb6,        0xd5710481,        0xae52acb6 );
TEST_FPRED_VV_OP( 1016,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000269ca43a,        0xcca75bc9,        0x269ca43a );
TEST_FPRED_VV_OP( 1017,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000112bfa6f,        0x28ea8990,        0x112bfa6f );
TEST_FPRED_VV_OP( 1018,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e6388e69,        0x4914fd85,        0xe6388e69 );
TEST_FPRED_VV_OP( 1019,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f9c2d14,        0x9edd447a,        0x9f9c2d14 );
TEST_FPRED_VV_OP( 1020,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085d763a6,        0x1a012a8e,        0x85d763a6 );
TEST_FPRED_VV_OP( 1021,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac497736,        0x697d2a85,        0xac497736 );
TEST_FPRED_VV_OP( 1022,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a462146,        0x0e3deb9d,        0x8a462146 );
TEST_FPRED_VV_OP( 1023,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2300ca6,        0x9da1bcd6,        0xd2300ca6 );
TEST_FPRED_VV_OP( 1024,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab04b597,        0x5254ddf9,        0xab04b597 );
  #-------------------------------------------------------------
  # VV Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_FPRED_VV_OP_rd1( 1025,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d5173d3b, 0x7F800000, 0xd5173d3b );
  TEST_FPRED_VV_OP_11( 1026,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d5173d3b, 0x7F800000, 0xd5173d3b );
  TEST_FPRED_VV_OP_rd2( 1027,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c954c88, 0x00000000, 0x1c954c88 );
  TEST_FPRED_VV_OP_12( 1028,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c954c88, 0x00000000, 0x1c954c88 );
  TEST_FPRED_VV_OP_rd3( 1029,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae8f2f8a, 0xBF800000, 0xae8f2f8a );
  TEST_FPRED_VV_OP_13( 1030,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae8f2f8a, 0xBF800000, 0xae8f2f8a );
  TEST_FPRED_VV_OP_rd4( 1031,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e18cd6d3, 0xBF800000, 0xe18cd6d3 );
  TEST_FPRED_VV_OP_14( 1032,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e18cd6d3, 0xBF800000, 0xe18cd6d3 );
  TEST_FPRED_VV_OP_rd5( 1033,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7128ead, 0xBF800000, 0xe7128ead );
  TEST_FPRED_VV_OP_15( 1034,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7128ead, 0xBF800000, 0xe7128ead );
  TEST_FPRED_VV_OP_rd6( 1035,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000430c45f2, 0xBF800000, 0x430c45f2 );
  TEST_FPRED_VV_OP_16( 1036,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000430c45f2, 0xBF800000, 0x430c45f2 );
  TEST_FPRED_VV_OP_rd7( 1037,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fece821, 0xBF800000, 0x1fece821 );
  TEST_FPRED_VV_OP_17( 1038,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fece821, 0xBF800000, 0x1fece821 );
  TEST_FPRED_VV_OP_rd9( 1039,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009deac411, 0xBF800000, 0x9deac411 );
  TEST_FPRED_VV_OP_19( 1040,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009deac411, 0xBF800000, 0x9deac411 );
  TEST_FPRED_VV_OP_rd10( 1041,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d578536b, 0xBF800000, 0xd578536b );
  TEST_FPRED_VV_OP_110( 1042,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d578536b, 0xBF800000, 0xd578536b );
  TEST_FPRED_VV_OP_rd11( 1043,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a2112c5, 0xBF800000, 0x5a2112c5 );
  TEST_FPRED_VV_OP_111( 1044,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a2112c5, 0xBF800000, 0x5a2112c5 );
  TEST_FPRED_VV_OP_rd12( 1045,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033755502, 0xBF800000, 0x33755502 );
  TEST_FPRED_VV_OP_112( 1046,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033755502, 0xBF800000, 0x33755502 );
  TEST_FPRED_VV_OP_rd13( 1047,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041f512c8, 0xBF800000, 0x41f512c8 );
  TEST_FPRED_VV_OP_113( 1048,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041f512c8, 0xBF800000, 0x41f512c8 );
  TEST_FPRED_VV_OP_rd14( 1049,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b07c90e, 0xBF800000, 0x5b07c90e );
  TEST_FPRED_VV_OP_114( 1050,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b07c90e, 0xBF800000, 0x5b07c90e );
  TEST_FPRED_VV_OP_rd15( 1051,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030e95eba, 0xBF800000, 0x30e95eba );
  TEST_FPRED_VV_OP_115( 1052,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030e95eba, 0xBF800000, 0x30e95eba );
  TEST_FPRED_VV_OP_rd17( 1053,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ce250988, 0xBF800000, 0xce250988 );
  TEST_FPRED_VV_OP_117( 1054,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ce250988, 0xBF800000, 0xce250988 );
  TEST_FPRED_VV_OP_rd18( 1055,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000546ef0b9, 0xBF800000, 0x546ef0b9 );
  TEST_FPRED_VV_OP_118( 1056,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000546ef0b9, 0xBF800000, 0x546ef0b9 );
  TEST_FPRED_VV_OP_rd19( 1057,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c69a228, 0x3F800000, 0x7c69a228 );
  TEST_FPRED_VV_OP_119( 1058,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c69a228, 0x3F800000, 0x7c69a228 );
  TEST_FPRED_VV_OP_rd20( 1059,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000540da0bc, 0x3F800000, 0x540da0bc );
  TEST_FPRED_VV_OP_120( 1060,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000540da0bc, 0x3F800000, 0x540da0bc );
  TEST_FPRED_VV_OP_rd21( 1061,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b917bde6, 0x3F800000, 0xb917bde6 );
  TEST_FPRED_VV_OP_121( 1062,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b917bde6, 0x3F800000, 0xb917bde6 );
  TEST_FPRED_VV_OP_rd22( 1063,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002b14a548, 0x3F800000, 0x2b14a548 );
  TEST_FPRED_VV_OP_122( 1064,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002b14a548, 0x3F800000, 0x2b14a548 );
  TEST_FPRED_VV_OP_rd23( 1065,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005c51c72f, 0x3F800000, 0x5c51c72f );
  TEST_FPRED_VV_OP_123( 1066,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005c51c72f, 0x3F800000, 0x5c51c72f );
  TEST_FPRED_VV_OP_rd25( 1067,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f8e67fb0, 0x3F800000, 0xf8e67fb0 );
  TEST_FPRED_VV_OP_125( 1068,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f8e67fb0, 0x3F800000, 0xf8e67fb0 );
  TEST_FPRED_VV_OP_rd26( 1069,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000045b5c5f1, 0x3F800000, 0x45b5c5f1 );
  TEST_FPRED_VV_OP_126( 1070,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000045b5c5f1, 0x3F800000, 0x45b5c5f1 );
  TEST_FPRED_VV_OP_rd27( 1071,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006bd9ba9a, 0x3F800000, 0x6bd9ba9a );
  TEST_FPRED_VV_OP_127( 1072,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006bd9ba9a, 0x3F800000, 0x6bd9ba9a );
  TEST_FPRED_VV_OP_rd28( 1073,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c1e8667, 0x3F800000, 0x9c1e8667 );
  TEST_FPRED_VV_OP_128( 1074,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c1e8667, 0x3F800000, 0x9c1e8667 );
  TEST_FPRED_VV_OP_rd29( 1075,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a2c7d45, 0x3F800000, 0x8a2c7d45 );
  TEST_FPRED_VV_OP_129( 1076,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a2c7d45, 0x3F800000, 0x8a2c7d45 );
  TEST_FPRED_VV_OP_rd30( 1077,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000af61ac13, 0x3F800000, 0xaf61ac13 );
  TEST_FPRED_VV_OP_130( 1078,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000af61ac13, 0x3F800000, 0xaf61ac13 );
  TEST_FPRED_VV_OP_rd31( 1079,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc06f22d, 0x3F800000, 0xcc06f22d );
  TEST_FPRED_VV_OP_131( 1080,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc06f22d, 0x3F800000, 0xcc06f22d );
  TEST_FPRED_VV_OP_rd1( 1081,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ac84f04, 0x3F800000, 0x6ac84f04 );
  TEST_FPRED_VV_OP_11( 1082,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ac84f04, 0x3F800000, 0x6ac84f04 );
  TEST_FPRED_VV_OP_rd2( 1083,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000581f3afc, 0x3F800000, 0x581f3afc );
  TEST_FPRED_VV_OP_12( 1084,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000581f3afc, 0x3F800000, 0x581f3afc );
  TEST_FPRED_VV_OP_rd3( 1085,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006122b26e, 0x3F800000, 0x6122b26e );
  TEST_FPRED_VV_OP_13( 1086,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006122b26e, 0x3F800000, 0x6122b26e );
  TEST_FPRED_VV_OP_rd4( 1087,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff4914a8, 0xFF7FFFFF, 0xff4914a8 );
  TEST_FPRED_VV_OP_14( 1088,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff4914a8, 0xFF7FFFFF, 0xff4914a8 );
  TEST_FPRED_VV_OP_rd5( 1089,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0a80a4a, 0xFF7FFFFF, 0xf0a80a4a );
  TEST_FPRED_VV_OP_15( 1090,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0a80a4a, 0xFF7FFFFF, 0xf0a80a4a );
  TEST_FPRED_VV_OP_rd6( 1091,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044577dfa, 0xFF7FFFFF, 0x44577dfa );
  TEST_FPRED_VV_OP_16( 1092,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044577dfa, 0xFF7FFFFF, 0x44577dfa );
  TEST_FPRED_VV_OP_rd7( 1093,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e31172b1, 0xFF7FFFFF, 0xe31172b1 );
  TEST_FPRED_VV_OP_17( 1094,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e31172b1, 0xFF7FFFFF, 0xe31172b1 );
  TEST_FPRED_VV_OP_rd9( 1095,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009cd4367e, 0xFF7FFFFF, 0x9cd4367e );
  TEST_FPRED_VV_OP_19( 1096,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009cd4367e, 0xFF7FFFFF, 0x9cd4367e );
  TEST_FPRED_VV_OP_rd10( 1097,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053266571, 0xFF7FFFFF, 0x53266571 );
  TEST_FPRED_VV_OP_110( 1098,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053266571, 0xFF7FFFFF, 0x53266571 );
  TEST_FPRED_VV_OP_rd11( 1099,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039a2b9a9, 0xFF7FFFFF, 0x39a2b9a9 );
  TEST_FPRED_VV_OP_111( 1100,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039a2b9a9, 0xFF7FFFFF, 0x39a2b9a9 );
  TEST_FPRED_VV_OP_rd12( 1101,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f628feb7, 0xFF7FFFFF, 0xf628feb7 );
  TEST_FPRED_VV_OP_112( 1102,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f628feb7, 0xFF7FFFFF, 0xf628feb7 );
  TEST_FPRED_VV_OP_rd13( 1103,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000519a8397, 0xFF7FFFFF, 0x519a8397 );
  TEST_FPRED_VV_OP_113( 1104,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000519a8397, 0xFF7FFFFF, 0x519a8397 );
  TEST_FPRED_VV_OP_rd14( 1105,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d949e747, 0xFF7FFFFF, 0xd949e747 );
  TEST_FPRED_VV_OP_114( 1106,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d949e747, 0xFF7FFFFF, 0xd949e747 );
  TEST_FPRED_VV_OP_rd15( 1107,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fe0b7d68, 0xFF7FFFFF, 0xfe0b7d68 );
  TEST_FPRED_VV_OP_115( 1108,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fe0b7d68, 0xFF7FFFFF, 0xfe0b7d68 );
  TEST_FPRED_VV_OP_rd17( 1109,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b9f0a06, 0xFF7FFFFF, 0x7b9f0a06 );
  TEST_FPRED_VV_OP_117( 1110,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b9f0a06, 0xFF7FFFFF, 0x7b9f0a06 );
  TEST_FPRED_VV_OP_rd18( 1111,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e25828a9, 0xFF7FFFFF, 0xe25828a9 );
  TEST_FPRED_VV_OP_118( 1112,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e25828a9, 0xFF7FFFFF, 0xe25828a9 );
  TEST_FPRED_VV_OP_rd19( 1113,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ff72e08, 0xFF7FFFFF, 0x6ff72e08 );
  TEST_FPRED_VV_OP_119( 1114,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ff72e08, 0xFF7FFFFF, 0x6ff72e08 );
  TEST_FPRED_VV_OP_rd20( 1115,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae72d34d, 0x7F7FFFFF, 0xae72d34d );
  TEST_FPRED_VV_OP_120( 1116,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae72d34d, 0x7F7FFFFF, 0xae72d34d );
  TEST_FPRED_VV_OP_rd21( 1117,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f61fde3e, 0x7F7FFFFF, 0xf61fde3e );
  TEST_FPRED_VV_OP_121( 1118,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f61fde3e, 0x7F7FFFFF, 0xf61fde3e );
  TEST_FPRED_VV_OP_rd22( 1119,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001cb57d88, 0x7F7FFFFF, 0x1cb57d88 );
  TEST_FPRED_VV_OP_122( 1120,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001cb57d88, 0x7F7FFFFF, 0x1cb57d88 );
  TEST_FPRED_VV_OP_rd23( 1121,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bb5e465, 0x7F7FFFFF, 0x3bb5e465 );
  TEST_FPRED_VV_OP_123( 1122,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bb5e465, 0x7F7FFFFF, 0x3bb5e465 );
  TEST_FPRED_VV_OP_rd25( 1123,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae23f858, 0x7F7FFFFF, 0xae23f858 );
  TEST_FPRED_VV_OP_125( 1124,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae23f858, 0x7F7FFFFF, 0xae23f858 );
  TEST_FPRED_VV_OP_rd26( 1125,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032b4b342, 0x7F7FFFFF, 0x32b4b342 );
  TEST_FPRED_VV_OP_126( 1126,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032b4b342, 0x7F7FFFFF, 0x32b4b342 );
  TEST_FPRED_VV_OP_rd27( 1127,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c5034c7, 0x7F7FFFFF, 0x9c5034c7 );
  TEST_FPRED_VV_OP_127( 1128,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c5034c7, 0x7F7FFFFF, 0x9c5034c7 );
  TEST_FPRED_VV_OP_rd28( 1129,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006129cabb, 0x7F7FFFFF, 0x6129cabb );
  TEST_FPRED_VV_OP_128( 1130,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006129cabb, 0x7F7FFFFF, 0x6129cabb );
  TEST_FPRED_VV_OP_rd29( 1131,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009af4bc9a, 0x7F7FFFFF, 0x9af4bc9a );
  TEST_FPRED_VV_OP_129( 1132,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009af4bc9a, 0x7F7FFFFF, 0x9af4bc9a );
  TEST_FPRED_VV_OP_rd30( 1133,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c729acef, 0x7F7FFFFF, 0xc729acef );
  TEST_FPRED_VV_OP_130( 1134,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c729acef, 0x7F7FFFFF, 0xc729acef );
  TEST_FPRED_VV_OP_rd31( 1135,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007d485219, 0x7F7FFFFF, 0x7d485219 );
  TEST_FPRED_VV_OP_131( 1136,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007d485219, 0x7F7FFFFF, 0x7d485219 );
  TEST_FPRED_VV_OP_rd1( 1137,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a3b445a, 0x7F7FFFFF, 0x4a3b445a );
  TEST_FPRED_VV_OP_11( 1138,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a3b445a, 0x7F7FFFFF, 0x4a3b445a );
  TEST_FPRED_VV_OP_rd2( 1139,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000276f4a82, 0x7F7FFFFF, 0x276f4a82 );
  TEST_FPRED_VV_OP_12( 1140,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000276f4a82, 0x7F7FFFFF, 0x276f4a82 );
  TEST_FPRED_VV_OP_rd3( 1141,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd7bf9fc, 0x7F7FFFFF, 0xdd7bf9fc );
  TEST_FPRED_VV_OP_13( 1142,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd7bf9fc, 0x7F7FFFFF, 0xdd7bf9fc );
  TEST_FPRED_VV_OP_rd4( 1143,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006797c5aa, 0x7F7FFFFF, 0x6797c5aa );
  TEST_FPRED_VV_OP_14( 1144,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006797c5aa, 0x7F7FFFFF, 0x6797c5aa );
  TEST_FPRED_VV_OP_rd5( 1145,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c739bc0, 0x80855555, 0x9c739bc0 );
  TEST_FPRED_VV_OP_15( 1146,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c739bc0, 0x80855555, 0x9c739bc0 );
  TEST_FPRED_VV_OP_rd6( 1147,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000037e6587a, 0x80855555, 0x37e6587a );
  TEST_FPRED_VV_OP_16( 1148,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000037e6587a, 0x80855555, 0x37e6587a );
  TEST_FPRED_VV_OP_rd7( 1149,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000292fa2d6, 0x80855555, 0x292fa2d6 );
  TEST_FPRED_VV_OP_17( 1150,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000292fa2d6, 0x80855555, 0x292fa2d6 );
  TEST_FPRED_VV_OP_rd9( 1151,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a87ebd39, 0x80855555, 0xa87ebd39 );
  TEST_FPRED_VV_OP_19( 1152,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a87ebd39, 0x80855555, 0xa87ebd39 );
  TEST_FPRED_VV_OP_rd10( 1153,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000da3b9803, 0x80855555, 0xda3b9803 );
  TEST_FPRED_VV_OP_110( 1154,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000da3b9803, 0x80855555, 0xda3b9803 );
  TEST_FPRED_VV_OP_rd11( 1155,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf98db80, 0x80855555, 0xcf98db80 );
  TEST_FPRED_VV_OP_111( 1156,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf98db80, 0x80855555, 0xcf98db80 );
  TEST_FPRED_VV_OP_rd12( 1157,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a1993841, 0x80855555, 0xa1993841 );
  TEST_FPRED_VV_OP_112( 1158,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a1993841, 0x80855555, 0xa1993841 );
  TEST_FPRED_VV_OP_rd13( 1159,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000214c72b3, 0x80855555, 0x214c72b3 );
  TEST_FPRED_VV_OP_113( 1160,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000214c72b3, 0x80855555, 0x214c72b3 );
  TEST_FPRED_VV_OP_rd14( 1161,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a289aa8, 0x80855555, 0x4a289aa8 );
  TEST_FPRED_VV_OP_114( 1162,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a289aa8, 0x80855555, 0x4a289aa8 );
  TEST_FPRED_VV_OP_rd15( 1163,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d7777d1, 0x80855555, 0x3d7777d1 );
  TEST_FPRED_VV_OP_115( 1164,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d7777d1, 0x80855555, 0x3d7777d1 );
  TEST_FPRED_VV_OP_rd17( 1165,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013d30cfc, 0x80855555, 0x13d30cfc );
  TEST_FPRED_VV_OP_117( 1166,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013d30cfc, 0x80855555, 0x13d30cfc );
  TEST_FPRED_VV_OP_rd18( 1167,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a19a62b, 0x80855555, 0x8a19a62b );
  TEST_FPRED_VV_OP_118( 1168,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a19a62b, 0x80855555, 0x8a19a62b );
  TEST_FPRED_VV_OP_rd19( 1169,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007041e7d, 0x80855555, 0x07041e7d );
  TEST_FPRED_VV_OP_119( 1170,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007041e7d, 0x80855555, 0x07041e7d );
  TEST_FPRED_VV_OP_rd20( 1171,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b192289, 0x80855555, 0x3b192289 );
  TEST_FPRED_VV_OP_120( 1172,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b192289, 0x80855555, 0x3b192289 );
  TEST_FPRED_VV_OP_rd21( 1173,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8f72c52, 0x00800001, 0xb8f72c52 );
  TEST_FPRED_VV_OP_121( 1174,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8f72c52, 0x00800001, 0xb8f72c52 );
  TEST_FPRED_VV_OP_rd22( 1175,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a7c4f91, 0x00800001, 0x3a7c4f91 );
  TEST_FPRED_VV_OP_122( 1176,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a7c4f91, 0x00800001, 0x3a7c4f91 );
  TEST_FPRED_VV_OP_rd23( 1177,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002eadf0ac, 0x00800001, 0x2eadf0ac );
  TEST_FPRED_VV_OP_123( 1178,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002eadf0ac, 0x00800001, 0x2eadf0ac );
  TEST_FPRED_VV_OP_rd25( 1179,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c1ae516, 0x00800001, 0x8c1ae516 );
  TEST_FPRED_VV_OP_125( 1180,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c1ae516, 0x00800001, 0x8c1ae516 );
  TEST_FPRED_VV_OP_rd26( 1181,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb97f344, 0x00800001, 0xbb97f344 );
  TEST_FPRED_VV_OP_126( 1182,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb97f344, 0x00800001, 0xbb97f344 );
  TEST_FPRED_VV_OP_rd27( 1183,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d614a74, 0x00800001, 0x2d614a74 );
  TEST_FPRED_VV_OP_127( 1184,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d614a74, 0x00800001, 0x2d614a74 );
  TEST_FPRED_VV_OP_rd28( 1185,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dbb7bc69, 0x00800001, 0xdbb7bc69 );
  TEST_FPRED_VV_OP_128( 1186,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dbb7bc69, 0x00800001, 0xdbb7bc69 );
  TEST_FPRED_VV_OP_rd29( 1187,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075160c80, 0x00800001, 0x75160c80 );
  TEST_FPRED_VV_OP_129( 1188,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075160c80, 0x00800001, 0x75160c80 );
  TEST_FPRED_VV_OP_rd30( 1189,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026513b2, 0x00800001, 0x026513b2 );
  TEST_FPRED_VV_OP_130( 1190,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026513b2, 0x00800001, 0x026513b2 );
  TEST_FPRED_VV_OP_rd31( 1191,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3301eb1, 0x00800001, 0xb3301eb1 );
  TEST_FPRED_VV_OP_131( 1192,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3301eb1, 0x00800001, 0xb3301eb1 );
  TEST_FPRED_VV_OP_rd1( 1193,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000513b24cd, 0x00800001, 0x513b24cd );
  TEST_FPRED_VV_OP_11( 1194,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000513b24cd, 0x00800001, 0x513b24cd );
  TEST_FPRED_VV_OP_rd2( 1195,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2d18754, 0x00800001, 0xd2d18754 );
  TEST_FPRED_VV_OP_12( 1196,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2d18754, 0x00800001, 0xd2d18754 );
  TEST_FPRED_VV_OP_rd3( 1197,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fccea6a, 0x00800001, 0x0fccea6a );
  TEST_FPRED_VV_OP_13( 1198,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fccea6a, 0x00800001, 0x0fccea6a );
  TEST_FPRED_VV_OP_rd4( 1199,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4e15b15, 0x00800001, 0xb4e15b15 );
  TEST_FPRED_VV_OP_14( 1200,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4e15b15, 0x00800001, 0xb4e15b15 );
  TEST_FPRED_VV_OP_rd5( 1201,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b546b05b, 0x00800001, 0xb546b05b );
  TEST_FPRED_VV_OP_15( 1202,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b546b05b, 0x00800001, 0xb546b05b );
  TEST_FPRED_VV_OP_rd6( 1203,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f952852, 0x80800000, 0x0f952852 );
  TEST_FPRED_VV_OP_16( 1204,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f952852, 0x80800000, 0x0f952852 );
  TEST_FPRED_VV_OP_rd7( 1205,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007dbe9d89, 0x80800000, 0x7dbe9d89 );
  TEST_FPRED_VV_OP_17( 1206,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007dbe9d89, 0x80800000, 0x7dbe9d89 );
  TEST_FPRED_VV_OP_rd9( 1207,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d924a386, 0x80800000, 0xd924a386 );
  TEST_FPRED_VV_OP_19( 1208,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d924a386, 0x80800000, 0xd924a386 );
  TEST_FPRED_VV_OP_rd10( 1209,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df5f99f4, 0x80800000, 0xdf5f99f4 );
  TEST_FPRED_VV_OP_110( 1210,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df5f99f4, 0x80800000, 0xdf5f99f4 );
  TEST_FPRED_VV_OP_rd11( 1211,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006618d504, 0x80800000, 0x6618d504 );
  TEST_FPRED_VV_OP_111( 1212,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006618d504, 0x80800000, 0x6618d504 );
  TEST_FPRED_VV_OP_rd12( 1213,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008849a498, 0x80800000, 0x8849a498 );
  TEST_FPRED_VV_OP_112( 1214,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008849a498, 0x80800000, 0x8849a498 );
  TEST_FPRED_VV_OP_rd13( 1215,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f2961261, 0x80800000, 0xf2961261 );
  TEST_FPRED_VV_OP_113( 1216,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f2961261, 0x80800000, 0xf2961261 );
  TEST_FPRED_VV_OP_rd14( 1217,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e303d466, 0x80800000, 0xe303d466 );
  TEST_FPRED_VV_OP_114( 1218,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e303d466, 0x80800000, 0xe303d466 );
  TEST_FPRED_VV_OP_rd15( 1219,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d9d90f64, 0x80800000, 0xd9d90f64 );
  TEST_FPRED_VV_OP_115( 1220,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d9d90f64, 0x80800000, 0xd9d90f64 );
  TEST_FPRED_VV_OP_rd17( 1221,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b60686, 0x80800000, 0x07b60686 );
  TEST_FPRED_VV_OP_117( 1222,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b60686, 0x80800000, 0x07b60686 );
  TEST_FPRED_VV_OP_rd18( 1223,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092dc0a8a, 0x80800000, 0x92dc0a8a );
  TEST_FPRED_VV_OP_118( 1224,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092dc0a8a, 0x80800000, 0x92dc0a8a );
  TEST_FPRED_VV_OP_rd19( 1225,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000093997373, 0x80800000, 0x93997373 );
  TEST_FPRED_VV_OP_119( 1226,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000093997373, 0x80800000, 0x93997373 );
  TEST_FPRED_VV_OP_rd20( 1227,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e19d8f2e, 0x80800000, 0xe19d8f2e );
  TEST_FPRED_VV_OP_120( 1228,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e19d8f2e, 0x80800000, 0xe19d8f2e );
  TEST_FPRED_VV_OP_rd21( 1229,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd4ad4c7, 0x80800000, 0xdd4ad4c7 );
  TEST_FPRED_VV_OP_121( 1230,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd4ad4c7, 0x80800000, 0xdd4ad4c7 );
  TEST_FPRED_VV_OP_rd22( 1231,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3419eb, 0x00800000, 0x0b3419eb );
  TEST_FPRED_VV_OP_122( 1232,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3419eb, 0x00800000, 0x0b3419eb );
  TEST_FPRED_VV_OP_rd23( 1233,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000046365e84, 0x00800000, 0x46365e84 );
  TEST_FPRED_VV_OP_123( 1234,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000046365e84, 0x00800000, 0x46365e84 );
  TEST_FPRED_VV_OP_rd25( 1235,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065cdd905, 0x00800000, 0x65cdd905 );
  TEST_FPRED_VV_OP_125( 1236,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065cdd905, 0x00800000, 0x65cdd905 );
  TEST_FPRED_VV_OP_rd26( 1237,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd60629d, 0x00800000, 0xdd60629d );
  TEST_FPRED_VV_OP_126( 1238,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd60629d, 0x00800000, 0xdd60629d );
  TEST_FPRED_VV_OP_rd27( 1239,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016478c58, 0x00800000, 0x16478c58 );
  TEST_FPRED_VV_OP_127( 1240,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016478c58, 0x00800000, 0x16478c58 );
  TEST_FPRED_VV_OP_rd28( 1241,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d11c290e, 0x00800000, 0xd11c290e );
  TEST_FPRED_VV_OP_128( 1242,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d11c290e, 0x00800000, 0xd11c290e );
  TEST_FPRED_VV_OP_rd29( 1243,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d899e08, 0x00800000, 0x0d899e08 );
  TEST_FPRED_VV_OP_129( 1244,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d899e08, 0x00800000, 0x0d899e08 );
  TEST_FPRED_VV_OP_rd30( 1245,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9770a1f, 0x00800000, 0xc9770a1f );
  TEST_FPRED_VV_OP_130( 1246,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9770a1f, 0x00800000, 0xc9770a1f );
  TEST_FPRED_VV_OP_rd31( 1247,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac39d155, 0x00800000, 0xac39d155 );
  TEST_FPRED_VV_OP_131( 1248,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac39d155, 0x00800000, 0xac39d155 );
  TEST_FPRED_VV_OP_rd1( 1249,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7a7733, 0x00800000, 0x0f7a7733 );
  TEST_FPRED_VV_OP_11( 1250,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7a7733, 0x00800000, 0x0f7a7733 );
  TEST_FPRED_VV_OP_rd2( 1251,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a946bce1, 0x00800000, 0xa946bce1 );
  TEST_FPRED_VV_OP_12( 1252,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a946bce1, 0x00800000, 0xa946bce1 );
  TEST_FPRED_VV_OP_rd3( 1253,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004e00d0f3, 0x00800000, 0x4e00d0f3 );
  TEST_FPRED_VV_OP_13( 1254,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004e00d0f3, 0x00800000, 0x4e00d0f3 );
  TEST_FPRED_VV_OP_rd4( 1255,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003aa41dc4, 0x00800000, 0x3aa41dc4 );
  TEST_FPRED_VV_OP_14( 1256,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003aa41dc4, 0x00800000, 0x3aa41dc4 );
  TEST_FPRED_VV_OP_rd5( 1257,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9f9511, 0x00800000, 0x0a9f9511 );
  TEST_FPRED_VV_OP_15( 1258,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9f9511, 0x00800000, 0x0a9f9511 );
  TEST_FPRED_VV_OP_rd6( 1259,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005398487b, 0x00800000, 0x5398487b );
  TEST_FPRED_VV_OP_16( 1260,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005398487b, 0x00800000, 0x5398487b );
  TEST_FPRED_VV_OP_rd7( 1261,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3782028, 0x807FFFFF, 0xf3782028 );
  TEST_FPRED_VV_OP_17( 1262,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3782028, 0x807FFFFF, 0xf3782028 );
  TEST_FPRED_VV_OP_rd9( 1263,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ca3efb3, 0x807FFFFF, 0x8ca3efb3 );
  TEST_FPRED_VV_OP_19( 1264,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ca3efb3, 0x807FFFFF, 0x8ca3efb3 );
  TEST_FPRED_VV_OP_rd10( 1265,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cb7da0de, 0x807FFFFF, 0xcb7da0de );
  TEST_FPRED_VV_OP_110( 1266,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cb7da0de, 0x807FFFFF, 0xcb7da0de );
  TEST_FPRED_VV_OP_rd11( 1267,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000552d23d2, 0x807FFFFF, 0x552d23d2 );
  TEST_FPRED_VV_OP_111( 1268,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000552d23d2, 0x807FFFFF, 0x552d23d2 );
  TEST_FPRED_VV_OP_rd12( 1269,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003436f14c, 0x807FFFFF, 0x3436f14c );
  TEST_FPRED_VV_OP_112( 1270,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003436f14c, 0x807FFFFF, 0x3436f14c );
  TEST_FPRED_VV_OP_rd13( 1271,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f5f3f35, 0x807FFFFF, 0x6f5f3f35 );
  TEST_FPRED_VV_OP_113( 1272,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f5f3f35, 0x807FFFFF, 0x6f5f3f35 );
  TEST_FPRED_VV_OP_rd14( 1273,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053b5a207, 0x807FFFFF, 0x53b5a207 );
  TEST_FPRED_VV_OP_114( 1274,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053b5a207, 0x807FFFFF, 0x53b5a207 );
  TEST_FPRED_VV_OP_rd15( 1275,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d20dfb9f, 0x807FFFFF, 0xd20dfb9f );
  TEST_FPRED_VV_OP_115( 1276,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d20dfb9f, 0x807FFFFF, 0xd20dfb9f );
  TEST_FPRED_VV_OP_rd17( 1277,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f348d99, 0x807FFFFF, 0x0f348d99 );
  TEST_FPRED_VV_OP_117( 1278,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f348d99, 0x807FFFFF, 0x0f348d99 );
  TEST_FPRED_VV_OP_rd18( 1279,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003886ab90, 0x807FFFFF, 0x3886ab90 );
  TEST_FPRED_VV_OP_118( 1280,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003886ab90, 0x807FFFFF, 0x3886ab90 );
  TEST_FPRED_VV_OP_rd19( 1281,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000334f85a, 0x807FFFFF, 0x0334f85a );
  TEST_FPRED_VV_OP_119( 1282,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000334f85a, 0x807FFFFF, 0x0334f85a );
  TEST_FPRED_VV_OP_rd20( 1283,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea1670df, 0x807FFFFF, 0xea1670df );
  TEST_FPRED_VV_OP_120( 1284,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea1670df, 0x807FFFFF, 0xea1670df );
  TEST_FPRED_VV_OP_rd21( 1285,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d13744b3, 0x807FFFFF, 0xd13744b3 );
  TEST_FPRED_VV_OP_121( 1286,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d13744b3, 0x807FFFFF, 0xd13744b3 );
  TEST_FPRED_VV_OP_rd22( 1287,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000883fe017, 0x807FFFFF, 0x883fe017 );
  TEST_FPRED_VV_OP_122( 1288,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000883fe017, 0x807FFFFF, 0x883fe017 );
  TEST_FPRED_VV_OP_rd23( 1289,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001daf3b01, 0x007FFFFF, 0x1daf3b01 );
  TEST_FPRED_VV_OP_123( 1290,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001daf3b01, 0x007FFFFF, 0x1daf3b01 );
  TEST_FPRED_VV_OP_rd25( 1291,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec747b1c, 0x007FFFFF, 0xec747b1c );
  TEST_FPRED_VV_OP_125( 1292,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec747b1c, 0x007FFFFF, 0xec747b1c );
  TEST_FPRED_VV_OP_rd26( 1293,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c6eccf7, 0x007FFFFF, 0x0c6eccf7 );
  TEST_FPRED_VV_OP_126( 1294,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c6eccf7, 0x007FFFFF, 0x0c6eccf7 );
  TEST_FPRED_VV_OP_rd27( 1295,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004cad30bc, 0x007FFFFF, 0x4cad30bc );
  TEST_FPRED_VV_OP_127( 1296,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004cad30bc, 0x007FFFFF, 0x4cad30bc );
  TEST_FPRED_VV_OP_rd28( 1297,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000477b3771, 0x007FFFFF, 0x477b3771 );
  TEST_FPRED_VV_OP_128( 1298,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000477b3771, 0x007FFFFF, 0x477b3771 );
  TEST_FPRED_VV_OP_rd29( 1299,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aeef6b3d, 0x007FFFFF, 0xaeef6b3d );
  TEST_FPRED_VV_OP_129( 1300,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aeef6b3d, 0x007FFFFF, 0xaeef6b3d );
  TEST_FPRED_VV_OP_rd30( 1301,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001555f68c, 0x007FFFFF, 0x1555f68c );
  TEST_FPRED_VV_OP_130( 1302,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001555f68c, 0x007FFFFF, 0x1555f68c );
  TEST_FPRED_VV_OP_rd31( 1303,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7e378a2, 0x007FFFFF, 0xb7e378a2 );
  TEST_FPRED_VV_OP_131( 1304,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7e378a2, 0x007FFFFF, 0xb7e378a2 );
  TEST_FPRED_VV_OP_rd1( 1305,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b602bd3e, 0x007FFFFF, 0xb602bd3e );
  TEST_FPRED_VV_OP_11( 1306,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b602bd3e, 0x007FFFFF, 0xb602bd3e );
  TEST_FPRED_VV_OP_rd2( 1307,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000af130fb6, 0x007FFFFF, 0xaf130fb6 );
  TEST_FPRED_VV_OP_12( 1308,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000af130fb6, 0x007FFFFF, 0xaf130fb6 );
  TEST_FPRED_VV_OP_rd3( 1309,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031a4314a, 0x007FFFFF, 0x31a4314a );
  TEST_FPRED_VV_OP_13( 1310,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031a4314a, 0x007FFFFF, 0x31a4314a );
  TEST_FPRED_VV_OP_rd4( 1311,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c723b3d7, 0x007FFFFF, 0xc723b3d7 );
  TEST_FPRED_VV_OP_14( 1312,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c723b3d7, 0x007FFFFF, 0xc723b3d7 );
  TEST_FPRED_VV_OP_rd5( 1313,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007015aa42, 0x007FFFFF, 0x7015aa42 );
  TEST_FPRED_VV_OP_15( 1314,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007015aa42, 0x007FFFFF, 0x7015aa42 );
  TEST_FPRED_VV_OP_rd6( 1315,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000928aa3e, 0x007FFFFF, 0x0928aa3e );
  TEST_FPRED_VV_OP_16( 1316,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000928aa3e, 0x007FFFFF, 0x0928aa3e );
  TEST_FPRED_VV_OP_rd7( 1317,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022ef3704, 0x007FFFFF, 0x22ef3704 );
  TEST_FPRED_VV_OP_17( 1318,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022ef3704, 0x007FFFFF, 0x22ef3704 );
  TEST_FPRED_VV_OP_rd9( 1319,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004da52bc4, 0x807FFFFE, 0x4da52bc4 );
  TEST_FPRED_VV_OP_19( 1320,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004da52bc4, 0x807FFFFE, 0x4da52bc4 );
  TEST_FPRED_VV_OP_rd10( 1321,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000546d8880, 0x807FFFFE, 0x546d8880 );
  TEST_FPRED_VV_OP_110( 1322,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000546d8880, 0x807FFFFE, 0x546d8880 );
  TEST_FPRED_VV_OP_rd11( 1323,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78ee9c7, 0x807FFFFE, 0xf78ee9c7 );
  TEST_FPRED_VV_OP_111( 1324,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78ee9c7, 0x807FFFFE, 0xf78ee9c7 );
  TEST_FPRED_VV_OP_rd12( 1325,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c95bd691, 0x807FFFFE, 0xc95bd691 );
  TEST_FPRED_VV_OP_112( 1326,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c95bd691, 0x807FFFFE, 0xc95bd691 );
  TEST_FPRED_VV_OP_rd13( 1327,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005239bc94, 0x807FFFFE, 0x5239bc94 );
  TEST_FPRED_VV_OP_113( 1328,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005239bc94, 0x807FFFFE, 0x5239bc94 );
  TEST_FPRED_VV_OP_rd14( 1329,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b48c2fbf, 0x807FFFFE, 0xb48c2fbf );
  TEST_FPRED_VV_OP_114( 1330,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b48c2fbf, 0x807FFFFE, 0xb48c2fbf );
  TEST_FPRED_VV_OP_rd15( 1331,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067e301b5, 0x807FFFFE, 0x67e301b5 );
  TEST_FPRED_VV_OP_115( 1332,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067e301b5, 0x807FFFFE, 0x67e301b5 );
  TEST_FPRED_VV_OP_rd17( 1333,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027c6864f, 0x807FFFFE, 0x27c6864f );
  TEST_FPRED_VV_OP_117( 1334,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027c6864f, 0x807FFFFE, 0x27c6864f );
  TEST_FPRED_VV_OP_rd18( 1335,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026c6f274, 0x807FFFFE, 0x26c6f274 );
  TEST_FPRED_VV_OP_118( 1336,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026c6f274, 0x807FFFFE, 0x26c6f274 );
  TEST_FPRED_VV_OP_rd19( 1337,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000025f55d4e, 0x807FFFFE, 0x25f55d4e );
  TEST_FPRED_VV_OP_119( 1338,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000025f55d4e, 0x807FFFFE, 0x25f55d4e );
  TEST_FPRED_VV_OP_rd20( 1339,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d2eb86f, 0x807FFFFE, 0x5d2eb86f );
  TEST_FPRED_VV_OP_120( 1340,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d2eb86f, 0x807FFFFE, 0x5d2eb86f );
  TEST_FPRED_VV_OP_rd21( 1341,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000828a97e7, 0x807FFFFE, 0x828a97e7 );
  TEST_FPRED_VV_OP_121( 1342,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000828a97e7, 0x807FFFFE, 0x828a97e7 );
  TEST_FPRED_VV_OP_rd22( 1343,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067e912e1, 0x807FFFFE, 0x67e912e1 );
  TEST_FPRED_VV_OP_122( 1344,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067e912e1, 0x807FFFFE, 0x67e912e1 );
  TEST_FPRED_VV_OP_rd23( 1345,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d4617ee, 0x807FFFFE, 0x3d4617ee );
  TEST_FPRED_VV_OP_123( 1346,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d4617ee, 0x807FFFFE, 0x3d4617ee );
  TEST_FPRED_VV_OP_rd25( 1347,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001eca00ff, 0x00000002, 0x1eca00ff );
  TEST_FPRED_VV_OP_125( 1348,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001eca00ff, 0x00000002, 0x1eca00ff );
  TEST_FPRED_VV_OP_rd26( 1349,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002ecc47d2, 0x00000002, 0x2ecc47d2 );
  TEST_FPRED_VV_OP_126( 1350,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002ecc47d2, 0x00000002, 0x2ecc47d2 );
  TEST_FPRED_VV_OP_rd27( 1351,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3bb23d6, 0x00000002, 0xf3bb23d6 );
  TEST_FPRED_VV_OP_127( 1352,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3bb23d6, 0x00000002, 0xf3bb23d6 );
  TEST_FPRED_VV_OP_rd28( 1353,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab05bda1, 0x00000002, 0xab05bda1 );
  TEST_FPRED_VV_OP_128( 1354,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab05bda1, 0x00000002, 0xab05bda1 );
  TEST_FPRED_VV_OP_rd29( 1355,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bebbadd8, 0x00000002, 0xbebbadd8 );
  TEST_FPRED_VV_OP_129( 1356,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bebbadd8, 0x00000002, 0xbebbadd8 );
  TEST_FPRED_VV_OP_rd30( 1357,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000076ca2ed2, 0x00000002, 0x76ca2ed2 );
  TEST_FPRED_VV_OP_130( 1358,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000076ca2ed2, 0x00000002, 0x76ca2ed2 );
  TEST_FPRED_VV_OP_rd31( 1359,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002b20cd36, 0x00000002, 0x2b20cd36 );
  TEST_FPRED_VV_OP_131( 1360,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002b20cd36, 0x00000002, 0x2b20cd36 );
  TEST_FPRED_VV_OP_rd1( 1361,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000524f229d, 0x00000002, 0x524f229d );
  TEST_FPRED_VV_OP_11( 1362,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000524f229d, 0x00000002, 0x524f229d );
  TEST_FPRED_VV_OP_rd2( 1363,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005254e959, 0x00000002, 0x5254e959 );
  TEST_FPRED_VV_OP_12( 1364,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005254e959, 0x00000002, 0x5254e959 );
  TEST_FPRED_VV_OP_rd3( 1365,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002aef92ad, 0x00000002, 0x2aef92ad );
  TEST_FPRED_VV_OP_13( 1366,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002aef92ad, 0x00000002, 0x2aef92ad );
  TEST_FPRED_VV_OP_rd4( 1367,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031229858, 0x00000002, 0x31229858 );
  TEST_FPRED_VV_OP_14( 1368,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031229858, 0x00000002, 0x31229858 );
  TEST_FPRED_VV_OP_rd5( 1369,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b06bc8f6, 0x00000002, 0xb06bc8f6 );
  TEST_FPRED_VV_OP_15( 1370,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b06bc8f6, 0x00000002, 0xb06bc8f6 );
  TEST_FPRED_VV_OP_rd6( 1371,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005dcce032, 0x00000002, 0x5dcce032 );
  TEST_FPRED_VV_OP_16( 1372,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005dcce032, 0x00000002, 0x5dcce032 );
  TEST_FPRED_VV_OP_rd7( 1373,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000310e5031, 0x00000002, 0x310e5031 );
  TEST_FPRED_VV_OP_17( 1374,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000310e5031, 0x00000002, 0x310e5031 );
  TEST_FPRED_VV_OP_rd9( 1375,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072a3060, 0x80000001, 0x072a3060 );
  TEST_FPRED_VV_OP_19( 1376,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072a3060, 0x80000001, 0x072a3060 );
  TEST_FPRED_VV_OP_rd10( 1377,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c33042c, 0x80000001, 0x9c33042c );
  TEST_FPRED_VV_OP_110( 1378,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c33042c, 0x80000001, 0x9c33042c );
  TEST_FPRED_VV_OP_rd11( 1379,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006dd7d38, 0x80000001, 0x06dd7d38 );
  TEST_FPRED_VV_OP_111( 1380,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006dd7d38, 0x80000001, 0x06dd7d38 );
  TEST_FPRED_VV_OP_rd12( 1381,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4b100b8, 0x80000001, 0xe4b100b8 );
  TEST_FPRED_VV_OP_112( 1382,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4b100b8, 0x80000001, 0xe4b100b8 );
  TEST_FPRED_VV_OP_rd13( 1383,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004c5e517, 0x80000001, 0x04c5e517 );
  TEST_FPRED_VV_OP_113( 1384,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004c5e517, 0x80000001, 0x04c5e517 );
  TEST_FPRED_VV_OP_rd14( 1385,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b50cc02, 0x80000001, 0x3b50cc02 );
  TEST_FPRED_VV_OP_114( 1386,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b50cc02, 0x80000001, 0x3b50cc02 );
  TEST_FPRED_VV_OP_rd15( 1387,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f0086f2, 0x80000001, 0x6f0086f2 );
  TEST_FPRED_VV_OP_115( 1388,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f0086f2, 0x80000001, 0x6f0086f2 );
  TEST_FPRED_VV_OP_rd17( 1389,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae6ff135, 0x80000001, 0xae6ff135 );
  TEST_FPRED_VV_OP_117( 1390,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae6ff135, 0x80000001, 0xae6ff135 );
  TEST_FPRED_VV_OP_rd18( 1391,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007815f9b0, 0x80000001, 0x7815f9b0 );
  TEST_FPRED_VV_OP_118( 1392,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007815f9b0, 0x80000001, 0x7815f9b0 );
  TEST_FPRED_VV_OP_rd19( 1393,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005cc84607, 0x80000001, 0x5cc84607 );
  TEST_FPRED_VV_OP_119( 1394,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005cc84607, 0x80000001, 0x5cc84607 );
  TEST_FPRED_VV_OP_rd20( 1395,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000754bced3, 0x80000001, 0x754bced3 );
  TEST_FPRED_VV_OP_120( 1396,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000754bced3, 0x80000001, 0x754bced3 );
  TEST_FPRED_VV_OP_rd21( 1397,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aec59a2a, 0x80000001, 0xaec59a2a );
  TEST_FPRED_VV_OP_121( 1398,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aec59a2a, 0x80000001, 0xaec59a2a );
  TEST_FPRED_VV_OP_rd22( 1399,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008542dc85, 0x80000001, 0x8542dc85 );
  TEST_FPRED_VV_OP_122( 1400,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008542dc85, 0x80000001, 0x8542dc85 );
  TEST_FPRED_VV_OP_rd23( 1401,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003af43c9d, 0x80000001, 0x3af43c9d );
  TEST_FPRED_VV_OP_123( 1402,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003af43c9d, 0x80000001, 0x3af43c9d );
  TEST_FPRED_VV_OP_rd25( 1403,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067be397d, 0x00000001, 0x67be397d );
  TEST_FPRED_VV_OP_125( 1404,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067be397d, 0x00000001, 0x67be397d );
  TEST_FPRED_VV_OP_rd26( 1405,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008758cfc4, 0x00000001, 0x8758cfc4 );
  TEST_FPRED_VV_OP_126( 1406,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008758cfc4, 0x00000001, 0x8758cfc4 );
  TEST_FPRED_VV_OP_rd27( 1407,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001de4f6af, 0x00000001, 0x1de4f6af );
  TEST_FPRED_VV_OP_127( 1408,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001de4f6af, 0x00000001, 0x1de4f6af );
  TEST_FPRED_VV_OP_rd28( 1409,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a455288, 0x00000001, 0x1a455288 );
  TEST_FPRED_VV_OP_128( 1410,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a455288, 0x00000001, 0x1a455288 );
  TEST_FPRED_VV_OP_rd29( 1411,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088db7d8c, 0x00000001, 0x88db7d8c );
  TEST_FPRED_VV_OP_129( 1412,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088db7d8c, 0x00000001, 0x88db7d8c );
  TEST_FPRED_VV_OP_rd30( 1413,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f937aafa, 0x00000001, 0xf937aafa );
  TEST_FPRED_VV_OP_130( 1414,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f937aafa, 0x00000001, 0xf937aafa );
  TEST_FPRED_VV_OP_rd31( 1415,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ca3650e2, 0x00000001, 0xca3650e2 );
  TEST_FPRED_VV_OP_131( 1416,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ca3650e2, 0x00000001, 0xca3650e2 );
  TEST_FPRED_VV_OP_rd1( 1417,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c7044eb3, 0x00000001, 0xc7044eb3 );
  TEST_FPRED_VV_OP_11( 1418,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c7044eb3, 0x00000001, 0xc7044eb3 );
  TEST_FPRED_VV_OP_rd2( 1419,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058933db0, 0x00000001, 0x58933db0 );
  TEST_FPRED_VV_OP_12( 1420,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058933db0, 0x00000001, 0x58933db0 );
  TEST_FPRED_VV_OP_rd3( 1421,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000545acbb, 0x00000001, 0x0545acbb );
  TEST_FPRED_VV_OP_13( 1422,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000545acbb, 0x00000001, 0x0545acbb );
  TEST_FPRED_VV_OP_rd4( 1423,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b379a614, 0x00000001, 0xb379a614 );
  TEST_FPRED_VV_OP_14( 1424,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b379a614, 0x00000001, 0xb379a614 );
  TEST_FPRED_VV_OP_rd5( 1425,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b3eb4cc, 0x00000001, 0x9b3eb4cc );
  TEST_FPRED_VV_OP_15( 1426,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b3eb4cc, 0x00000001, 0x9b3eb4cc );
  TEST_FPRED_VV_OP_rd6( 1427,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e9519192, 0x00000001, 0xe9519192 );
  TEST_FPRED_VV_OP_16( 1428,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e9519192, 0x00000001, 0xe9519192 );
  TEST_FPRED_VV_OP_rd7( 1429,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002eb0d339, 0x00000001, 0x2eb0d339 );
  TEST_FPRED_VV_OP_17( 1430,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002eb0d339, 0x00000001, 0x2eb0d339 );
  TEST_FPRED_VV_OP_rd9( 1431,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ee907664, 0x00000001, 0xee907664 );
  TEST_FPRED_VV_OP_19( 1432,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ee907664, 0x00000001, 0xee907664 );
  TEST_FPRED_VV_OP_rd10( 1433,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053960a4c, 0x80000000, 0x53960a4c );
  TEST_FPRED_VV_OP_110( 1434,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053960a4c, 0x80000000, 0x53960a4c );
  TEST_FPRED_VV_OP_rd11( 1435,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000087973a27, 0x80000000, 0x87973a27 );
  TEST_FPRED_VV_OP_111( 1436,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000087973a27, 0x80000000, 0x87973a27 );
  TEST_FPRED_VV_OP_rd12( 1437,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a925b817, 0x80000000, 0xa925b817 );
  TEST_FPRED_VV_OP_112( 1438,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a925b817, 0x80000000, 0xa925b817 );
  TEST_FPRED_VV_OP_rd13( 1439,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c1a1e45, 0x80000000, 0x1c1a1e45 );
  TEST_FPRED_VV_OP_113( 1440,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c1a1e45, 0x80000000, 0x1c1a1e45 );
  TEST_FPRED_VV_OP_rd14( 1441,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020dcdbeb, 0x80000000, 0x20dcdbeb );
  TEST_FPRED_VV_OP_114( 1442,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020dcdbeb, 0x80000000, 0x20dcdbeb );
  TEST_FPRED_VV_OP_rd15( 1443,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d3e0667, 0x80000000, 0x2d3e0667 );
  TEST_FPRED_VV_OP_115( 1444,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d3e0667, 0x80000000, 0x2d3e0667 );
  TEST_FPRED_VV_OP_rd17( 1445,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b822ad39, 0x80000000, 0xb822ad39 );
  TEST_FPRED_VV_OP_117( 1446,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b822ad39, 0x80000000, 0xb822ad39 );
  TEST_FPRED_VV_OP_rd18( 1447,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004ffe6390, 0x80000000, 0x4ffe6390 );
  TEST_FPRED_VV_OP_118( 1448,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004ffe6390, 0x80000000, 0x4ffe6390 );
  TEST_FPRED_VV_OP_rd19( 1449,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009ef29035, 0x80000000, 0x9ef29035 );
  TEST_FPRED_VV_OP_119( 1450,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009ef29035, 0x80000000, 0x9ef29035 );
  TEST_FPRED_VV_OP_rd20( 1451,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0450fa2, 0x80000000, 0xd0450fa2 );
  TEST_FPRED_VV_OP_120( 1452,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0450fa2, 0x80000000, 0xd0450fa2 );
  TEST_FPRED_VV_OP_rd21( 1453,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d89744e, 0x80000000, 0x0d89744e );
  TEST_FPRED_VV_OP_121( 1454,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d89744e, 0x80000000, 0x0d89744e );
  TEST_FPRED_VV_OP_rd22( 1455,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000346489f5, 0x80000000, 0x346489f5 );
  TEST_FPRED_VV_OP_122( 1456,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000346489f5, 0x80000000, 0x346489f5 );
  TEST_FPRED_VV_OP_rd23( 1457,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d48dd733, 0x80000000, 0xd48dd733 );
  TEST_FPRED_VV_OP_123( 1458,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d48dd733, 0x80000000, 0xd48dd733 );
  TEST_FPRED_VV_OP_rd25( 1459,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b185404, 0x80000000, 0x9b185404 );
  TEST_FPRED_VV_OP_125( 1460,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b185404, 0x80000000, 0x9b185404 );
  TEST_FPRED_VV_OP_rd26( 1461,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041059de4, 0x00000000, 0x41059de4 );
  TEST_FPRED_VV_OP_126( 1462,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041059de4, 0x00000000, 0x41059de4 );
  TEST_FPRED_VV_OP_rd27( 1463,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012d11883, 0x00000000, 0x12d11883 );
  TEST_FPRED_VV_OP_127( 1464,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012d11883, 0x00000000, 0x12d11883 );
  TEST_FPRED_VV_OP_rd28( 1465,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a647e794, 0x00000000, 0xa647e794 );
  TEST_FPRED_VV_OP_128( 1466,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a647e794, 0x00000000, 0xa647e794 );
  TEST_FPRED_VV_OP_rd29( 1467,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d5710481, 0x00000000, 0xd5710481 );
  TEST_FPRED_VV_OP_129( 1468,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d5710481, 0x00000000, 0xd5710481 );
  TEST_FPRED_VV_OP_rd30( 1469,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cca75bc9, 0x00000000, 0xcca75bc9 );
  TEST_FPRED_VV_OP_130( 1470,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cca75bc9, 0x00000000, 0xcca75bc9 );
  TEST_FPRED_VV_OP_rd31( 1471,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028ea8990, 0x00000000, 0x28ea8990 );
  TEST_FPRED_VV_OP_131( 1472,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028ea8990, 0x00000000, 0x28ea8990 );
  TEST_FPRED_VV_OP_rd1( 1473,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004914fd85, 0x00000000, 0x4914fd85 );
  TEST_FPRED_VV_OP_11( 1474,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004914fd85, 0x00000000, 0x4914fd85 );
  TEST_FPRED_VV_OP_rd2( 1475,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009edd447a, 0x00000000, 0x9edd447a );
  TEST_FPRED_VV_OP_12( 1476,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009edd447a, 0x00000000, 0x9edd447a );
  TEST_FPRED_VV_OP_rd3( 1477,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a012a8e, 0x00000000, 0x1a012a8e );
  TEST_FPRED_VV_OP_13( 1478,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a012a8e, 0x00000000, 0x1a012a8e );
  TEST_FPRED_VV_OP_rd4( 1479,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000697d2a85, 0x00000000, 0x697d2a85 );
  TEST_FPRED_VV_OP_14( 1480,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000697d2a85, 0x00000000, 0x697d2a85 );
  TEST_FPRED_VV_OP_rd5( 1481,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3deb9d, 0x00000000, 0x0e3deb9d );
  TEST_FPRED_VV_OP_15( 1482,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3deb9d, 0x00000000, 0x0e3deb9d );
  TEST_FPRED_VV_OP_rd6( 1483,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009da1bcd6, 0x00000000, 0x9da1bcd6 );
  TEST_FPRED_VV_OP_16( 1484,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009da1bcd6, 0x00000000, 0x9da1bcd6 );
  TEST_FPRED_VV_OP_rd7( 1485,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005254ddf9, 0x00000000, 0x5254ddf9 );
  TEST_FPRED_VV_OP_17( 1486,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005254ddf9, 0x00000000, 0x5254ddf9 );
  TEST_FPRED_VV_OP_rd9( 1487,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016b77bce, 0x00000000, 0x16b77bce );
  TEST_FPRED_VV_OP_19( 1488,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016b77bce, 0x00000000, 0x16b77bce );
  TEST_FPRED_VV_OP_rd10( 1489,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085a8a33c, 0x16b77bce, 0x85a8a33c );
  TEST_FPRED_VV_OP_110( 1490,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085a8a33c, 0x16b77bce, 0x85a8a33c );
  TEST_FPRED_VV_OP_rd11( 1491,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be82002a, 0x85a8a33c, 0xbe82002a );
  TEST_FPRED_VV_OP_111( 1492,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be82002a, 0x85a8a33c, 0xbe82002a );
  TEST_FPRED_VV_OP_rd12( 1493,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b4eed81, 0xbe82002a, 0x6b4eed81 );
  TEST_FPRED_VV_OP_112( 1494,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b4eed81, 0xbe82002a, 0x6b4eed81 );
  TEST_FPRED_VV_OP_rd13( 1495,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcf2b7b2, 0x6b4eed81, 0xfcf2b7b2 );
  TEST_FPRED_VV_OP_113( 1496,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcf2b7b2, 0x6b4eed81, 0xfcf2b7b2 );
  TEST_FPRED_VV_OP_rd14( 1497,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b1a3f397, 0xfcf2b7b2, 0xb1a3f397 );
  TEST_FPRED_VV_OP_114( 1498,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b1a3f397, 0xfcf2b7b2, 0xb1a3f397 );
  TEST_FPRED_VV_OP_rd15( 1499,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081815039, 0xb1a3f397, 0x81815039 );
  TEST_FPRED_VV_OP_115( 1500,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081815039, 0xb1a3f397, 0x81815039 );
  TEST_FPRED_VV_OP_rd17( 1501,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000827c929, 0x7df4c24f, 0x0827c929 );
  TEST_FPRED_VV_OP_117( 1502,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000827c929, 0x7df4c24f, 0x0827c929 );
  TEST_FPRED_VV_OP_rd18( 1503,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e1f1c6ec, 0x0827c929, 0xe1f1c6ec );
  TEST_FPRED_VV_OP_118( 1504,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e1f1c6ec, 0x0827c929, 0xe1f1c6ec );
  TEST_FPRED_VV_OP_rd19( 1505,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b111081, 0xe1f1c6ec, 0x9b111081 );
  TEST_FPRED_VV_OP_119( 1506,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b111081, 0xe1f1c6ec, 0x9b111081 );
  TEST_FPRED_VV_OP_rd20( 1507,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c53c5a, 0x9b111081, 0x08c53c5a );
  TEST_FPRED_VV_OP_120( 1508,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c53c5a, 0x9b111081, 0x08c53c5a );
  TEST_FPRED_VV_OP_rd21( 1509,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016e35174, 0x08c53c5a, 0x16e35174 );
  TEST_FPRED_VV_OP_121( 1510,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016e35174, 0x08c53c5a, 0x16e35174 );
  TEST_FPRED_VV_OP_rd22( 1511,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020553b83, 0x16e35174, 0x20553b83 );
  TEST_FPRED_VV_OP_122( 1512,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020553b83, 0x16e35174, 0x20553b83 );
  TEST_FPRED_VV_OP_rd23( 1513,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f4ed3db2, 0x20553b83, 0xf4ed3db2 );
  TEST_FPRED_VV_OP_123( 1514,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f4ed3db2, 0x20553b83, 0xf4ed3db2 );
  TEST_FPRED_VV_OP_rd25( 1515,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f80d83b9, 0x5879b2ca, 0xf80d83b9 );
  TEST_FPRED_VV_OP_125( 1516,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f80d83b9, 0x5879b2ca, 0xf80d83b9 );
  TEST_FPRED_VV_OP_rd26( 1517,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b48384f, 0xf80d83b9, 0x7b48384f );
  TEST_FPRED_VV_OP_126( 1518,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b48384f, 0xf80d83b9, 0x7b48384f );
  TEST_FPRED_VV_OP_rd27( 1519,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089a6c1a0, 0x7b48384f, 0x89a6c1a0 );
  TEST_FPRED_VV_OP_127( 1520,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089a6c1a0, 0x7b48384f, 0x89a6c1a0 );
  TEST_FPRED_VV_OP_rd28( 1521,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031fe5439, 0x89a6c1a0, 0x31fe5439 );
  TEST_FPRED_VV_OP_128( 1522,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031fe5439, 0x89a6c1a0, 0x31fe5439 );
  TEST_FPRED_VV_OP_rd29( 1523,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ee2f5aa, 0x31fe5439, 0x6ee2f5aa );
  TEST_FPRED_VV_OP_129( 1524,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ee2f5aa, 0x31fe5439, 0x6ee2f5aa );
  TEST_FPRED_VV_OP_rd30( 1525,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000330f5715, 0x6ee2f5aa, 0x330f5715 );
  TEST_FPRED_VV_OP_130( 1526,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000330f5715, 0x6ee2f5aa, 0x330f5715 );
  TEST_FPRED_VV_OP_rd31( 1527,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f46020f, 0x330f5715, 0x9f46020f );
  TEST_FPRED_VV_OP_131( 1528,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f46020f, 0x330f5715, 0x9f46020f );
  TEST_FPRED_VV_OP_rd1( 1529,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b697e1c3, 0x9f46020f, 0xb697e1c3 );
  TEST_FPRED_VV_OP_11( 1530,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b697e1c3, 0x9f46020f, 0xb697e1c3 );
  TEST_FPRED_VV_OP_rd2( 1531,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f518acf6, 0xb697e1c3, 0xf518acf6 );
  TEST_FPRED_VV_OP_12( 1532,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f518acf6, 0xb697e1c3, 0xf518acf6 );
  TEST_FPRED_VV_OP_rd3( 1533,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003958ea56, 0xf518acf6, 0x3958ea56 );
  TEST_FPRED_VV_OP_13( 1534,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003958ea56, 0xf518acf6, 0x3958ea56 );
  TEST_FPRED_VV_OP_rd4( 1535,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056a29c95, 0x3958ea56, 0x56a29c95 );
  TEST_FPRED_VV_OP_14( 1536,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056a29c95, 0x3958ea56, 0x56a29c95 );
  TEST_FPRED_VV_OP_rd5( 1537,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ef286e01, 0x56a29c95, 0xef286e01 );
  TEST_FPRED_VV_OP_15( 1538,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ef286e01, 0x56a29c95, 0xef286e01 );
  TEST_FPRED_VV_OP_rd6( 1539,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f6cad350, 0xef286e01, 0xf6cad350 );
  TEST_FPRED_VV_OP_16( 1540,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f6cad350, 0xef286e01, 0xf6cad350 );
  TEST_FPRED_VV_OP_rd7( 1541,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e95400f6, 0xf6cad350, 0xe95400f6 );
  TEST_FPRED_VV_OP_17( 1542,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e95400f6, 0xf6cad350, 0xe95400f6 );
  TEST_FPRED_VV_OP_rd9( 1543,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ced78db, 0x0b2ac811, 0x3ced78db );
  TEST_FPRED_VV_OP_19( 1544,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ced78db, 0x0b2ac811, 0x3ced78db );
  TEST_FPRED_VV_OP_rd10( 1545,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075809524, 0x3ced78db, 0x75809524 );
  TEST_FPRED_VV_OP_110( 1546,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075809524, 0x3ced78db, 0x75809524 );
  TEST_FPRED_VV_OP_rd11( 1547,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c5e59fb2, 0x75809524, 0xc5e59fb2 );
  TEST_FPRED_VV_OP_111( 1548,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c5e59fb2, 0x75809524, 0xc5e59fb2 );
  TEST_FPRED_VV_OP_rd12( 1549,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd81fa0a, 0xc5e59fb2, 0xdd81fa0a );
  TEST_FPRED_VV_OP_112( 1550,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd81fa0a, 0xc5e59fb2, 0xdd81fa0a );
  TEST_FPRED_VV_OP_rd13( 1551,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec9fb18d, 0xdd81fa0a, 0xec9fb18d );
  TEST_FPRED_VV_OP_113( 1552,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec9fb18d, 0xdd81fa0a, 0xec9fb18d );
  TEST_FPRED_VV_OP_rd14( 1553,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030e1830a, 0xec9fb18d, 0x30e1830a );
  TEST_FPRED_VV_OP_114( 1554,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030e1830a, 0xec9fb18d, 0x30e1830a );
  TEST_FPRED_VV_OP_rd15( 1555,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021d2bbb0, 0x30e1830a, 0x21d2bbb0 );
  TEST_FPRED_VV_OP_115( 1556,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021d2bbb0, 0x30e1830a, 0x21d2bbb0 );
  TEST_FPRED_VV_OP_rd17( 1557,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019167ebd, 0x731a1760, 0x19167ebd );
  TEST_FPRED_VV_OP_117( 1558,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019167ebd, 0x731a1760, 0x19167ebd );
  TEST_FPRED_VV_OP_rd18( 1559,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007e537a04, 0x19167ebd, 0x7e537a04 );
  TEST_FPRED_VV_OP_118( 1560,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007e537a04, 0x19167ebd, 0x7e537a04 );
  TEST_FPRED_VV_OP_rd19( 1561,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf9dc475, 0x7e537a04, 0xcf9dc475 );
  TEST_FPRED_VV_OP_119( 1562,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf9dc475, 0x7e537a04, 0xcf9dc475 );
  TEST_FPRED_VV_OP_rd20( 1563,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017f847a1, 0xcf9dc475, 0x17f847a1 );
  TEST_FPRED_VV_OP_120( 1564,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017f847a1, 0xcf9dc475, 0x17f847a1 );
  TEST_FPRED_VV_OP_rd21( 1565,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005f4e2f05, 0x17f847a1, 0x5f4e2f05 );
  TEST_FPRED_VV_OP_121( 1566,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005f4e2f05, 0x17f847a1, 0x5f4e2f05 );
  TEST_FPRED_VV_OP_rd22( 1567,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011065906, 0x5f4e2f05, 0x11065906 );
  TEST_FPRED_VV_OP_122( 1568,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011065906, 0x5f4e2f05, 0x11065906 );
  TEST_FPRED_VV_OP_rd23( 1569,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9663dbb, 0x11065906, 0xa9663dbb );
  TEST_FPRED_VV_OP_123( 1570,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9663dbb, 0x11065906, 0xa9663dbb );
  TEST_FPRED_VV_OP_rd25( 1571,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ef201e7b, 0xb6d5707b, 0xef201e7b );
  TEST_FPRED_VV_OP_125( 1572,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ef201e7b, 0xb6d5707b, 0xef201e7b );
  TEST_FPRED_VV_OP_rd26( 1573,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4a84974, 0xef201e7b, 0xb4a84974 );
  TEST_FPRED_VV_OP_126( 1574,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4a84974, 0xef201e7b, 0xb4a84974 );
  TEST_FPRED_VV_OP_rd27( 1575,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9feb8d1, 0xb4a84974, 0xc9feb8d1 );
  TEST_FPRED_VV_OP_127( 1576,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9feb8d1, 0xb4a84974, 0xc9feb8d1 );
  TEST_FPRED_VV_OP_rd28( 1577,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba38c7b1, 0xc9feb8d1, 0xba38c7b1 );
  TEST_FPRED_VV_OP_128( 1578,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba38c7b1, 0xc9feb8d1, 0xba38c7b1 );
  TEST_FPRED_VV_OP_rd29( 1579,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001877b042, 0xba38c7b1, 0x1877b042 );
  TEST_FPRED_VV_OP_129( 1580,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001877b042, 0xba38c7b1, 0x1877b042 );
  TEST_FPRED_VV_OP_rd30( 1581,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091778cbb, 0x1877b042, 0x91778cbb );
  TEST_FPRED_VV_OP_130( 1582,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091778cbb, 0x1877b042, 0x91778cbb );
  TEST_FPRED_VV_OP_rd31( 1583,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e715ec9, 0x91778cbb, 0x2e715ec9 );
  TEST_FPRED_VV_OP_131( 1584,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e715ec9, 0x91778cbb, 0x2e715ec9 );
  TEST_FPRED_VV_OP_rd1( 1585,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ebc88fd7, 0x2e715ec9, 0xebc88fd7 );
  TEST_FPRED_VV_OP_11( 1586,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ebc88fd7, 0x2e715ec9, 0xebc88fd7 );
  TEST_FPRED_VV_OP_rd2( 1587,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006947de05, 0xebc88fd7, 0x6947de05 );
  TEST_FPRED_VV_OP_12( 1588,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006947de05, 0xebc88fd7, 0x6947de05 );
  TEST_FPRED_VV_OP_rd3( 1589,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aec12b86, 0x6947de05, 0xaec12b86 );
  TEST_FPRED_VV_OP_13( 1590,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aec12b86, 0x6947de05, 0xaec12b86 );
  TEST_FPRED_VV_OP_rd4( 1591,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006164c29e, 0xaec12b86, 0x6164c29e );
  TEST_FPRED_VV_OP_14( 1592,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006164c29e, 0xaec12b86, 0x6164c29e );
  TEST_FPRED_VV_OP_rd5( 1593,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba68fa1d, 0x6164c29e, 0xba68fa1d );
  TEST_FPRED_VV_OP_15( 1594,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba68fa1d, 0x6164c29e, 0xba68fa1d );
  TEST_FPRED_VV_OP_rd6( 1595,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017a54142, 0xba68fa1d, 0x17a54142 );
  TEST_FPRED_VV_OP_16( 1596,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017a54142, 0xba68fa1d, 0x17a54142 );
  TEST_FPRED_VV_OP_rd7( 1597,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb7b049e, 0x17a54142, 0xbb7b049e );
  TEST_FPRED_VV_OP_17( 1598,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb7b049e, 0x17a54142, 0xbb7b049e );
  TEST_FPRED_VV_OP_rd9( 1599,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001af6bb18, 0x08fab1e5, 0x1af6bb18 );
  TEST_FPRED_VV_OP_19( 1600,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001af6bb18, 0x08fab1e5, 0x1af6bb18 );
  TEST_FPRED_VV_OP_rd10( 1601,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074348a1d, 0x1af6bb18, 0x74348a1d );
  TEST_FPRED_VV_OP_110( 1602,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074348a1d, 0x1af6bb18, 0x74348a1d );
  TEST_FPRED_VV_OP_rd11( 1603,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41f5f9b, 0x74348a1d, 0xf41f5f9b );
  TEST_FPRED_VV_OP_111( 1604,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41f5f9b, 0x74348a1d, 0xf41f5f9b );
  TEST_FPRED_VV_OP_rd12( 1605,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000604f267a, 0xf41f5f9b, 0x604f267a );
  TEST_FPRED_VV_OP_112( 1606,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000604f267a, 0xf41f5f9b, 0x604f267a );
  TEST_FPRED_VV_OP_rd13( 1607,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008543a485, 0x604f267a, 0x8543a485 );
  TEST_FPRED_VV_OP_113( 1608,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008543a485, 0x604f267a, 0x8543a485 );
  TEST_FPRED_VV_OP_rd14( 1609,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017fca002, 0x8543a485, 0x17fca002 );
  TEST_FPRED_VV_OP_114( 1610,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017fca002, 0x8543a485, 0x17fca002 );
  TEST_FPRED_VV_OP_rd15( 1611,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003777625d, 0x17fca002, 0x3777625d );
  TEST_FPRED_VV_OP_115( 1612,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003777625d, 0x17fca002, 0x3777625d );
  TEST_FPRED_VV_OP_rd17( 1613,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e9591298, 0xca42df1f, 0xe9591298 );
  TEST_FPRED_VV_OP_117( 1614,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e9591298, 0xca42df1f, 0xe9591298 );
  TEST_FPRED_VV_OP_rd18( 1615,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000655428d1, 0xe9591298, 0x655428d1 );
  TEST_FPRED_VV_OP_118( 1616,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000655428d1, 0xe9591298, 0x655428d1 );
  TEST_FPRED_VV_OP_rd19( 1617,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000678995cf, 0x655428d1, 0x678995cf );
  TEST_FPRED_VV_OP_119( 1618,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000678995cf, 0x655428d1, 0x678995cf );
  TEST_FPRED_VV_OP_rd20( 1619,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ea84660, 0x678995cf, 0x7ea84660 );
  TEST_FPRED_VV_OP_120( 1620,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ea84660, 0x678995cf, 0x7ea84660 );
  TEST_FPRED_VV_OP_rd21( 1621,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000049f1faf, 0x7ea84660, 0x049f1faf );
  TEST_FPRED_VV_OP_121( 1622,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000049f1faf, 0x7ea84660, 0x049f1faf );
  TEST_FPRED_VV_OP_rd22( 1623,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009a6ccdab, 0x049f1faf, 0x9a6ccdab );
  TEST_FPRED_VV_OP_122( 1624,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009a6ccdab, 0x049f1faf, 0x9a6ccdab );
  TEST_FPRED_VV_OP_rd23( 1625,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f75264e4, 0x9a6ccdab, 0xf75264e4 );
  TEST_FPRED_VV_OP_123( 1626,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f75264e4, 0x9a6ccdab, 0xf75264e4 );
  TEST_FPRED_VV_OP_rd25( 1627,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000047e6b3b, 0x5b832e4f, 0x047e6b3b );
  TEST_FPRED_VV_OP_125( 1628,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000047e6b3b, 0x5b832e4f, 0x047e6b3b );
  TEST_FPRED_VV_OP_rd26( 1629,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c18c4e25, 0x047e6b3b, 0xc18c4e25 );
  TEST_FPRED_VV_OP_126( 1630,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c18c4e25, 0x047e6b3b, 0xc18c4e25 );
  TEST_FPRED_VV_OP_rd27( 1631,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006676bf0e, 0xc18c4e25, 0x6676bf0e );
  TEST_FPRED_VV_OP_127( 1632,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006676bf0e, 0xc18c4e25, 0x6676bf0e );
  TEST_FPRED_VV_OP_rd28( 1633,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000086738089, 0x6676bf0e, 0x86738089 );
  TEST_FPRED_VV_OP_128( 1634,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000086738089, 0x6676bf0e, 0x86738089 );
  TEST_FPRED_VV_OP_rd29( 1635,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001ee4a5ed, 0x86738089, 0x1ee4a5ed );
  TEST_FPRED_VV_OP_129( 1636,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001ee4a5ed, 0x86738089, 0x1ee4a5ed );
  TEST_FPRED_VV_OP_rd30( 1637,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b9545c29, 0x1ee4a5ed, 0xb9545c29 );
  TEST_FPRED_VV_OP_130( 1638,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b9545c29, 0x1ee4a5ed, 0xb9545c29 );
  TEST_FPRED_VV_OP_rd31( 1639,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002c7cb95f, 0xb9545c29, 0x2c7cb95f );
  TEST_FPRED_VV_OP_131( 1640,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002c7cb95f, 0xb9545c29, 0x2c7cb95f );
  TEST_FPRED_VV_OP_rd1( 1641,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ab6881d, 0x2c7cb95f, 0x8ab6881d );
  TEST_FPRED_VV_OP_11( 1642,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ab6881d, 0x2c7cb95f, 0x8ab6881d );
  TEST_FPRED_VV_OP_rd2( 1643,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032dc44c0, 0x8ab6881d, 0x32dc44c0 );
  TEST_FPRED_VV_OP_12( 1644,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032dc44c0, 0x8ab6881d, 0x32dc44c0 );
  TEST_FPRED_VV_OP_rd3( 1645,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007915e449, 0x32dc44c0, 0x7915e449 );
  TEST_FPRED_VV_OP_13( 1646,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007915e449, 0x32dc44c0, 0x7915e449 );
  TEST_FPRED_VV_OP_rd4( 1647,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b68216c7, 0x7915e449, 0xb68216c7 );
  TEST_FPRED_VV_OP_14( 1648,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b68216c7, 0x7915e449, 0xb68216c7 );
  TEST_FPRED_VV_OP_rd5( 1649,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053c4ffc4, 0xb68216c7, 0x53c4ffc4 );
  TEST_FPRED_VV_OP_15( 1650,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053c4ffc4, 0xb68216c7, 0x53c4ffc4 );
  TEST_FPRED_VV_OP_rd6( 1651,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c01a2b07, 0x53c4ffc4, 0xc01a2b07 );
  TEST_FPRED_VV_OP_16( 1652,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c01a2b07, 0x53c4ffc4, 0xc01a2b07 );
  TEST_FPRED_VV_OP_rd7( 1653,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006d56c00d, 0xc01a2b07, 0x6d56c00d );
  TEST_FPRED_VV_OP_17( 1654,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006d56c00d, 0xc01a2b07, 0x6d56c00d );
  TEST_FPRED_VV_OP_rd9( 1655,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a6c685c, 0x231896cb, 0x3a6c685c );
  TEST_FPRED_VV_OP_19( 1656,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a6c685c, 0x231896cb, 0x3a6c685c );
  TEST_FPRED_VV_OP_rd10( 1657,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e57e27bd, 0x3a6c685c, 0xe57e27bd );
  TEST_FPRED_VV_OP_110( 1658,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e57e27bd, 0x3a6c685c, 0xe57e27bd );
  TEST_FPRED_VV_OP_rd11( 1659,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003e6f7cbe, 0xe57e27bd, 0x3e6f7cbe );
  TEST_FPRED_VV_OP_111( 1660,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003e6f7cbe, 0xe57e27bd, 0x3e6f7cbe );
  TEST_FPRED_VV_OP_rd12( 1661,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e74e2da, 0x3e6f7cbe, 0x8e74e2da );
  TEST_FPRED_VV_OP_112( 1662,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e74e2da, 0x3e6f7cbe, 0x8e74e2da );
  TEST_FPRED_VV_OP_rd13( 1663,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcea6243, 0x8e74e2da, 0xfcea6243 );
  TEST_FPRED_VV_OP_113( 1664,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcea6243, 0x8e74e2da, 0xfcea6243 );
  TEST_FPRED_VV_OP_rd14( 1665,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080eedc35, 0xfcea6243, 0x80eedc35 );
  TEST_FPRED_VV_OP_114( 1666,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080eedc35, 0xfcea6243, 0x80eedc35 );
  TEST_FPRED_VV_OP_rd15( 1667,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048d92fb, 0x80eedc35, 0x048d92fb );
  TEST_FPRED_VV_OP_115( 1668,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048d92fb, 0x80eedc35, 0x048d92fb );
  TEST_FPRED_VV_OP_rd17( 1669,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012c54b7b, 0xe8e803f4, 0x12c54b7b );
  TEST_FPRED_VV_OP_117( 1670,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012c54b7b, 0xe8e803f4, 0x12c54b7b );
  TEST_FPRED_VV_OP_rd18( 1671,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d633cae, 0x12c54b7b, 0x2d633cae );
  TEST_FPRED_VV_OP_118( 1672,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d633cae, 0x12c54b7b, 0x2d633cae );
  TEST_FPRED_VV_OP_rd19( 1673,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be8c5af3, 0x2d633cae, 0xbe8c5af3 );
  TEST_FPRED_VV_OP_119( 1674,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be8c5af3, 0x2d633cae, 0xbe8c5af3 );
  TEST_FPRED_VV_OP_rd20( 1675,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000379def6c, 0xbe8c5af3, 0x379def6c );
  TEST_FPRED_VV_OP_120( 1676,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000379def6c, 0xbe8c5af3, 0x379def6c );
  TEST_FPRED_VV_OP_rd21( 1677,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e298ae9a, 0x379def6c, 0xe298ae9a );
  TEST_FPRED_VV_OP_121( 1678,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e298ae9a, 0x379def6c, 0xe298ae9a );
  TEST_FPRED_VV_OP_rd22( 1679,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000626b7cc5, 0xe298ae9a, 0x626b7cc5 );
  TEST_FPRED_VV_OP_122( 1680,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000626b7cc5, 0xe298ae9a, 0x626b7cc5 );
  TEST_FPRED_VV_OP_rd23( 1681,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f61b3a5, 0x626b7cc5, 0x8f61b3a5 );
  TEST_FPRED_VV_OP_123( 1682,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f61b3a5, 0x626b7cc5, 0x8f61b3a5 );
  TEST_FPRED_VV_OP_rd25( 1683,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b8cfcd, 0xe4219193, 0x01b8cfcd );
  TEST_FPRED_VV_OP_125( 1684,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b8cfcd, 0xe4219193, 0x01b8cfcd );
  TEST_FPRED_VV_OP_rd26( 1685,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bfcdf8, 0x01b8cfcd, 0x04bfcdf8 );
  TEST_FPRED_VV_OP_126( 1686,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bfcdf8, 0x01b8cfcd, 0x04bfcdf8 );
  TEST_FPRED_VV_OP_rd27( 1687,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d6cbbf81, 0x04bfcdf8, 0xd6cbbf81 );
  TEST_FPRED_VV_OP_127( 1688,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d6cbbf81, 0x04bfcdf8, 0xd6cbbf81 );
  TEST_FPRED_VV_OP_rd28( 1689,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bd075af, 0xd6cbbf81, 0x4bd075af );
  TEST_FPRED_VV_OP_128( 1690,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bd075af, 0xd6cbbf81, 0x4bd075af );
  TEST_FPRED_VV_OP_rd29( 1691,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e291d09b, 0x4bd075af, 0xe291d09b );
  TEST_FPRED_VV_OP_129( 1692,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e291d09b, 0x4bd075af, 0xe291d09b );
  TEST_FPRED_VV_OP_rd30( 1693,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0503b64, 0xe291d09b, 0xf0503b64 );
  TEST_FPRED_VV_OP_130( 1694,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0503b64, 0xe291d09b, 0xf0503b64 );
  TEST_FPRED_VV_OP_rd31( 1695,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021124d60, 0xf0503b64, 0x21124d60 );
  TEST_FPRED_VV_OP_131( 1696,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021124d60, 0xf0503b64, 0x21124d60 );
  TEST_FPRED_VV_OP_rd1( 1697,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017d5856b, 0x21124d60, 0x17d5856b );
  TEST_FPRED_VV_OP_11( 1698,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017d5856b, 0x21124d60, 0x17d5856b );
  TEST_FPRED_VV_OP_rd2( 1699,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007989bf32, 0x17d5856b, 0x7989bf32 );
  TEST_FPRED_VV_OP_12( 1700,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007989bf32, 0x17d5856b, 0x7989bf32 );
  TEST_FPRED_VV_OP_rd3( 1701,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b84a91f, 0x7989bf32, 0x6b84a91f );
  TEST_FPRED_VV_OP_13( 1702,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b84a91f, 0x7989bf32, 0x6b84a91f );
  TEST_FPRED_VV_OP_rd4( 1703,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003019a087, 0x6b84a91f, 0x3019a087 );
  TEST_FPRED_VV_OP_14( 1704,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003019a087, 0x6b84a91f, 0x3019a087 );
  TEST_FPRED_VV_OP_rd5( 1705,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c79214, 0x3019a087, 0x01c79214 );
  TEST_FPRED_VV_OP_15( 1706,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c79214, 0x3019a087, 0x01c79214 );
  TEST_FPRED_VV_OP_rd6( 1707,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea939be7, 0x01c79214, 0xea939be7 );
  TEST_FPRED_VV_OP_16( 1708,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea939be7, 0x01c79214, 0xea939be7 );
  TEST_FPRED_VV_OP_rd7( 1709,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c375122d, 0xea939be7, 0xc375122d );
  TEST_FPRED_VV_OP_17( 1710,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c375122d, 0xea939be7, 0xc375122d );
  TEST_FPRED_VV_OP_rd9( 1711,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d7eeffe, 0x116ec3d2, 0x2d7eeffe );
  TEST_FPRED_VV_OP_19( 1712,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d7eeffe, 0x116ec3d2, 0x2d7eeffe );
  TEST_FPRED_VV_OP_rd10( 1713,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e013be07, 0x2d7eeffe, 0xe013be07 );
  TEST_FPRED_VV_OP_110( 1714,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e013be07, 0x2d7eeffe, 0xe013be07 );
  TEST_FPRED_VV_OP_rd11( 1715,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b45484fc, 0xe013be07, 0xb45484fc );
  TEST_FPRED_VV_OP_111( 1716,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b45484fc, 0xe013be07, 0xb45484fc );
  TEST_FPRED_VV_OP_rd12( 1717,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002dcda7f1, 0xb45484fc, 0x2dcda7f1 );
  TEST_FPRED_VV_OP_112( 1718,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002dcda7f1, 0xb45484fc, 0x2dcda7f1 );
  TEST_FPRED_VV_OP_rd13( 1719,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e2151fa, 0x2dcda7f1, 0x2e2151fa );
  TEST_FPRED_VV_OP_113( 1720,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e2151fa, 0x2dcda7f1, 0x2e2151fa );
  TEST_FPRED_VV_OP_rd14( 1721,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500c5f17, 0x2e2151fa, 0x500c5f17 );
  TEST_FPRED_VV_OP_114( 1722,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500c5f17, 0x2e2151fa, 0x500c5f17 );
  TEST_FPRED_VV_OP_rd15( 1723,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000984b6942, 0x500c5f17, 0x984b6942 );
  TEST_FPRED_VV_OP_115( 1724,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000984b6942, 0x500c5f17, 0x984b6942 );
  TEST_FPRED_VV_OP_rd17( 1725,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0c7c26a, 0x9960c98a, 0xc0c7c26a );
  TEST_FPRED_VV_OP_117( 1726,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0c7c26a, 0x9960c98a, 0xc0c7c26a );
  TEST_FPRED_VV_OP_rd18( 1727,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c714bae1, 0xc0c7c26a, 0xc714bae1 );
  TEST_FPRED_VV_OP_118( 1728,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c714bae1, 0xc0c7c26a, 0xc714bae1 );
  TEST_FPRED_VV_OP_rd19( 1729,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c086243, 0xc714bae1, 0x7c086243 );
  TEST_FPRED_VV_OP_119( 1730,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c086243, 0xc714bae1, 0x7c086243 );
  TEST_FPRED_VV_OP_rd20( 1731,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009a4397f5, 0x7c086243, 0x9a4397f5 );
  TEST_FPRED_VV_OP_120( 1732,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009a4397f5, 0x7c086243, 0x9a4397f5 );
  TEST_FPRED_VV_OP_rd21( 1733,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b02b37fb, 0x9a4397f5, 0xb02b37fb );
  TEST_FPRED_VV_OP_121( 1734,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b02b37fb, 0x9a4397f5, 0xb02b37fb );
  TEST_FPRED_VV_OP_rd22( 1735,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec0ac4f0, 0xb02b37fb, 0xec0ac4f0 );
  TEST_FPRED_VV_OP_122( 1736,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec0ac4f0, 0xb02b37fb, 0xec0ac4f0 );
  TEST_FPRED_VV_OP_rd23( 1737,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000abb5045d, 0xec0ac4f0, 0xabb5045d );
  TEST_FPRED_VV_OP_123( 1738,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000abb5045d, 0xec0ac4f0, 0xabb5045d );
  TEST_FPRED_VV_OP_rd25( 1739,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004ef87036, 0x4de1938f, 0x4ef87036 );
  TEST_FPRED_VV_OP_125( 1740,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004ef87036, 0x4de1938f, 0x4ef87036 );
  TEST_FPRED_VV_OP_rd26( 1741,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000477553ed, 0x4ef87036, 0x477553ed );
  TEST_FPRED_VV_OP_126( 1742,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000477553ed, 0x4ef87036, 0x477553ed );
  TEST_FPRED_VV_OP_rd27( 1743,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df884a52, 0x477553ed, 0xdf884a52 );
  TEST_FPRED_VV_OP_127( 1744,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df884a52, 0x477553ed, 0xdf884a52 );
  TEST_FPRED_VV_OP_rd28( 1745,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e364a2c3, 0xdf884a52, 0xe364a2c3 );
  TEST_FPRED_VV_OP_128( 1746,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e364a2c3, 0xdf884a52, 0xe364a2c3 );
  TEST_FPRED_VV_OP_rd29( 1747,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005e3d04d3, 0xe364a2c3, 0x5e3d04d3 );
  TEST_FPRED_VV_OP_129( 1748,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005e3d04d3, 0xe364a2c3, 0x5e3d04d3 );
  TEST_FPRED_VV_OP_rd30( 1749,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a37172c6, 0x5e3d04d3, 0xa37172c6 );
  TEST_FPRED_VV_OP_130( 1750,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a37172c6, 0x5e3d04d3, 0xa37172c6 );
  TEST_FPRED_VV_OP_rd31( 1751,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039c33e1d, 0xa37172c6, 0x39c33e1d );
  TEST_FPRED_VV_OP_131( 1752,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039c33e1d, 0xa37172c6, 0x39c33e1d );
  TEST_FPRED_VV_OP_rd1( 1753,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005fa55642, 0x39c33e1d, 0x5fa55642 );
  TEST_FPRED_VV_OP_11( 1754,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005fa55642, 0x39c33e1d, 0x5fa55642 );
  TEST_FPRED_VV_OP_rd2( 1755,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c6588c96, 0x5fa55642, 0xc6588c96 );
  TEST_FPRED_VV_OP_12( 1756,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c6588c96, 0x5fa55642, 0xc6588c96 );
  TEST_FPRED_VV_OP_rd3( 1757,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057aa9ec7, 0xc6588c96, 0x57aa9ec7 );
  TEST_FPRED_VV_OP_13( 1758,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057aa9ec7, 0xc6588c96, 0x57aa9ec7 );
  TEST_FPRED_VV_OP_rd4( 1759,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052a373c8, 0x57aa9ec7, 0x52a373c8 );
  TEST_FPRED_VV_OP_14( 1760,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052a373c8, 0x57aa9ec7, 0x52a373c8 );
  TEST_FPRED_VV_OP_rd5( 1761,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000868a5027, 0x52a373c8, 0x868a5027 );
  TEST_FPRED_VV_OP_15( 1762,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000868a5027, 0x52a373c8, 0x868a5027 );
  TEST_FPRED_VV_OP_rd6( 1763,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000afc3fa5e, 0x868a5027, 0xafc3fa5e );
  TEST_FPRED_VV_OP_16( 1764,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000afc3fa5e, 0x868a5027, 0xafc3fa5e );
  TEST_FPRED_VV_OP_rd7( 1765,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000804beeba, 0xafc3fa5e, 0x804beeba );
  TEST_FPRED_VV_OP_17( 1766,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000804beeba, 0xafc3fa5e, 0x804beeba );
  TEST_FPRED_VV_OP_rd9( 1767,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053cf2324, 0xbf812338, 0x53cf2324 );
  TEST_FPRED_VV_OP_19( 1768,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053cf2324, 0xbf812338, 0x53cf2324 );
  TEST_FPRED_VV_OP_rd10( 1769,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c2a2099, 0x53cf2324, 0x1c2a2099 );
  TEST_FPRED_VV_OP_110( 1770,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c2a2099, 0x53cf2324, 0x1c2a2099 );
  TEST_FPRED_VV_OP_rd11( 1771,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077275ab3, 0x1c2a2099, 0x77275ab3 );
  TEST_FPRED_VV_OP_111( 1772,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077275ab3, 0x1c2a2099, 0x77275ab3 );
  TEST_FPRED_VV_OP_rd12( 1773,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f53143f, 0x77275ab3, 0x8f53143f );
  TEST_FPRED_VV_OP_112( 1774,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f53143f, 0x77275ab3, 0x8f53143f );
  TEST_FPRED_VV_OP_rd13( 1775,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007868d163, 0x8f53143f, 0x7868d163 );
  TEST_FPRED_VV_OP_113( 1776,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007868d163, 0x8f53143f, 0x7868d163 );
  TEST_FPRED_VV_OP_rd14( 1777,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003362ef56, 0x7868d163, 0x3362ef56 );
  TEST_FPRED_VV_OP_114( 1778,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003362ef56, 0x7868d163, 0x3362ef56 );
  TEST_FPRED_VV_OP_rd15( 1779,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f5c4c30d, 0x3362ef56, 0xf5c4c30d );
  TEST_FPRED_VV_OP_115( 1780,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f5c4c30d, 0x3362ef56, 0xf5c4c30d );
  TEST_FPRED_VV_OP_rd17( 1781,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bae49486, 0x3413c9a6, 0xbae49486 );
  TEST_FPRED_VV_OP_117( 1782,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bae49486, 0x3413c9a6, 0xbae49486 );
  TEST_FPRED_VV_OP_rd18( 1783,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004d195ecf, 0xbae49486, 0x4d195ecf );
  TEST_FPRED_VV_OP_118( 1784,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004d195ecf, 0xbae49486, 0x4d195ecf );
  TEST_FPRED_VV_OP_rd19( 1785,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055085e69, 0x4d195ecf, 0x55085e69 );
  TEST_FPRED_VV_OP_119( 1786,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055085e69, 0x4d195ecf, 0x55085e69 );
  TEST_FPRED_VV_OP_rd20( 1787,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000497af66c, 0x55085e69, 0x497af66c );
  TEST_FPRED_VV_OP_120( 1788,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000497af66c, 0x55085e69, 0x497af66c );
  TEST_FPRED_VV_OP_rd21( 1789,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000776d41f0, 0x497af66c, 0x776d41f0 );
  TEST_FPRED_VV_OP_121( 1790,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000776d41f0, 0x497af66c, 0x776d41f0 );
  TEST_FPRED_VV_OP_rd22( 1791,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b06fcef, 0x776d41f0, 0x6b06fcef );
  TEST_FPRED_VV_OP_122( 1792,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b06fcef, 0x776d41f0, 0x6b06fcef );
  TEST_FPRED_VV_OP_rd23( 1793,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec9c3cae, 0x6b06fcef, 0xec9c3cae );
  TEST_FPRED_VV_OP_123( 1794,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec9c3cae, 0x6b06fcef, 0xec9c3cae );
  TEST_FPRED_VV_OP_rd25( 1795,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a78b9e5d, 0xbbcdcd90, 0xa78b9e5d );
  TEST_FPRED_VV_OP_125( 1796,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a78b9e5d, 0xbbcdcd90, 0xa78b9e5d );
  TEST_FPRED_VV_OP_rd26( 1797,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b517d569, 0xa78b9e5d, 0xb517d569 );
  TEST_FPRED_VV_OP_126( 1798,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b517d569, 0xa78b9e5d, 0xb517d569 );
  TEST_FPRED_VV_OP_rd27( 1799,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058ecb82f, 0xb517d569, 0x58ecb82f );
  TEST_FPRED_VV_OP_127( 1800,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058ecb82f, 0xb517d569, 0x58ecb82f );
  TEST_FPRED_VV_OP_rd28( 1801,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000897683b0, 0x58ecb82f, 0x897683b0 );
  TEST_FPRED_VV_OP_128( 1802,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000897683b0, 0x58ecb82f, 0x897683b0 );
  TEST_FPRED_VV_OP_rd29( 1803,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017fed42, 0x897683b0, 0x017fed42 );
  TEST_FPRED_VV_OP_129( 1804,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017fed42, 0x897683b0, 0x017fed42 );
  TEST_FPRED_VV_OP_rd30( 1805,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ac46a81, 0x017fed42, 0x7ac46a81 );
  TEST_FPRED_VV_OP_130( 1806,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ac46a81, 0x017fed42, 0x7ac46a81 );
  TEST_FPRED_VV_OP_rd31( 1807,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b3424e3, 0x7ac46a81, 0x6b3424e3 );
  TEST_FPRED_VV_OP_131( 1808,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b3424e3, 0x7ac46a81, 0x6b3424e3 );
  TEST_FPRED_VV_OP_rd1( 1809,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78c7be0, 0x6b3424e3, 0xf78c7be0 );
  TEST_FPRED_VV_OP_11( 1810,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78c7be0, 0x6b3424e3, 0xf78c7be0 );
  TEST_FPRED_VV_OP_rd2( 1811,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000225c9001, 0xf78c7be0, 0x225c9001 );
  TEST_FPRED_VV_OP_12( 1812,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000225c9001, 0xf78c7be0, 0x225c9001 );
  TEST_FPRED_VV_OP_rd3( 1813,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000716f74e5, 0x225c9001, 0x716f74e5 );
  TEST_FPRED_VV_OP_13( 1814,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000716f74e5, 0x225c9001, 0x716f74e5 );
  TEST_FPRED_VV_OP_rd4( 1815,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ea07308, 0x716f74e5, 0x5ea07308 );
  TEST_FPRED_VV_OP_14( 1816,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ea07308, 0x716f74e5, 0x5ea07308 );
  TEST_FPRED_VV_OP_rd5( 1817,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009cb1f841, 0x5ea07308, 0x9cb1f841 );
  TEST_FPRED_VV_OP_15( 1818,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009cb1f841, 0x5ea07308, 0x9cb1f841 );
  TEST_FPRED_VV_OP_rd6( 1819,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069773182, 0x9cb1f841, 0x69773182 );
  TEST_FPRED_VV_OP_16( 1820,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069773182, 0x9cb1f841, 0x69773182 );
  TEST_FPRED_VV_OP_rd7( 1821,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba7c2bc1, 0x69773182, 0xba7c2bc1 );
  TEST_FPRED_VV_OP_17( 1822,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba7c2bc1, 0x69773182, 0xba7c2bc1 );
  TEST_FPRED_VV_OP_rd9( 1823,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7cbdb1c, 0x3615b6cd, 0xb7cbdb1c );
  TEST_FPRED_VV_OP_19( 1824,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7cbdb1c, 0x3615b6cd, 0xb7cbdb1c );
  TEST_FPRED_VV_OP_rd10( 1825,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057503bd7, 0xb7cbdb1c, 0x57503bd7 );
  TEST_FPRED_VV_OP_110( 1826,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057503bd7, 0xb7cbdb1c, 0x57503bd7 );
  TEST_FPRED_VV_OP_rd11( 1827,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d9043f, 0x57503bd7, 0x08d9043f );
  TEST_FPRED_VV_OP_111( 1828,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d9043f, 0x57503bd7, 0x08d9043f );
  TEST_FPRED_VV_OP_rd12( 1829,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de4c459d, 0x08d9043f, 0xde4c459d );
  TEST_FPRED_VV_OP_112( 1830,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de4c459d, 0x08d9043f, 0xde4c459d );
  TEST_FPRED_VV_OP_rd13( 1831,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a26c712, 0xde4c459d, 0x7a26c712 );
  TEST_FPRED_VV_OP_113( 1832,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a26c712, 0xde4c459d, 0x7a26c712 );
  TEST_FPRED_VV_OP_rd14( 1833,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000563028c3, 0x7a26c712, 0x563028c3 );
  TEST_FPRED_VV_OP_114( 1834,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000563028c3, 0x7a26c712, 0x563028c3 );
  TEST_FPRED_VV_OP_rd15( 1835,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000795e33bf, 0x563028c3, 0x795e33bf );
  TEST_FPRED_VV_OP_115( 1836,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000795e33bf, 0x563028c3, 0x795e33bf );
  TEST_FPRED_VV_OP_rd17( 1837,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f20bed88, 0xf2d19a38, 0xf20bed88 );
  TEST_FPRED_VV_OP_117( 1838,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f20bed88, 0xf2d19a38, 0xf20bed88 );
  TEST_FPRED_VV_OP_rd18( 1839,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007e91e990, 0xf20bed88, 0x7e91e990 );
  TEST_FPRED_VV_OP_118( 1840,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007e91e990, 0xf20bed88, 0x7e91e990 );
  TEST_FPRED_VV_OP_rd19( 1841,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028403d8f, 0x7e91e990, 0x28403d8f );
  TEST_FPRED_VV_OP_119( 1842,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028403d8f, 0x7e91e990, 0x28403d8f );
  TEST_FPRED_VV_OP_rd20( 1843,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e451d935, 0x28403d8f, 0xe451d935 );
  TEST_FPRED_VV_OP_120( 1844,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e451d935, 0x28403d8f, 0xe451d935 );
  TEST_FPRED_VV_OP_rd21( 1845,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006cbd6936, 0xe451d935, 0x6cbd6936 );
  TEST_FPRED_VV_OP_121( 1846,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006cbd6936, 0xe451d935, 0x6cbd6936 );
  TEST_FPRED_VV_OP_rd22( 1847,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bb4197f, 0x6cbd6936, 0x4bb4197f );
  TEST_FPRED_VV_OP_122( 1848,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bb4197f, 0x6cbd6936, 0x4bb4197f );
  TEST_FPRED_VV_OP_rd23( 1849,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b2301f0d, 0x4bb4197f, 0xb2301f0d );
  TEST_FPRED_VV_OP_123( 1850,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b2301f0d, 0x4bb4197f, 0xb2301f0d );
  TEST_FPRED_VV_OP_rd25( 1851,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016598049, 0xc0fe2faf, 0x16598049 );
  TEST_FPRED_VV_OP_125( 1852,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016598049, 0xc0fe2faf, 0x16598049 );
  TEST_FPRED_VV_OP_rd26( 1853,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008b074d85, 0x16598049, 0x8b074d85 );
  TEST_FPRED_VV_OP_126( 1854,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008b074d85, 0x16598049, 0x8b074d85 );
  TEST_FPRED_VV_OP_rd27( 1855,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3044c5f, 0x8b074d85, 0xb3044c5f );
  TEST_FPRED_VV_OP_127( 1856,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3044c5f, 0x8b074d85, 0xb3044c5f );
  TEST_FPRED_VV_OP_rd28( 1857,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052e624b8, 0xb3044c5f, 0x52e624b8 );
  TEST_FPRED_VV_OP_128( 1858,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052e624b8, 0xb3044c5f, 0x52e624b8 );
  TEST_FPRED_VV_OP_rd29( 1859,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4b5a3ae, 0x52e624b8, 0xe4b5a3ae );
  TEST_FPRED_VV_OP_129( 1860,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4b5a3ae, 0x52e624b8, 0xe4b5a3ae );
  TEST_FPRED_VV_OP_rd30( 1861,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000223b3100, 0xe4b5a3ae, 0x223b3100 );
  TEST_FPRED_VV_OP_130( 1862,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000223b3100, 0xe4b5a3ae, 0x223b3100 );
  TEST_FPRED_VV_OP_rd31( 1863,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000060e69e76, 0x223b3100, 0x60e69e76 );
  TEST_FPRED_VV_OP_131( 1864,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000060e69e76, 0x223b3100, 0x60e69e76 );
  TEST_FPRED_VV_OP_rd1( 1865,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b1ae2f0, 0x60e69e76, 0x7b1ae2f0 );
  TEST_FPRED_VV_OP_11( 1866,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b1ae2f0, 0x60e69e76, 0x7b1ae2f0 );
  TEST_FPRED_VV_OP_rd2( 1867,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008837caa2, 0x7b1ae2f0, 0x8837caa2 );
  TEST_FPRED_VV_OP_12( 1868,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008837caa2, 0x7b1ae2f0, 0x8837caa2 );
  TEST_FPRED_VV_OP_rd3( 1869,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64768d4, 0x8837caa2, 0xa64768d4 );
  TEST_FPRED_VV_OP_13( 1870,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64768d4, 0x8837caa2, 0xa64768d4 );
  TEST_FPRED_VV_OP_rd4( 1871,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3cafbaa, 0xa64768d4, 0xe3cafbaa );
  TEST_FPRED_VV_OP_14( 1872,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3cafbaa, 0xa64768d4, 0xe3cafbaa );
  TEST_FPRED_VV_OP_rd5( 1873,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000409e0a27, 0xe3cafbaa, 0x409e0a27 );
  TEST_FPRED_VV_OP_15( 1874,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000409e0a27, 0xe3cafbaa, 0x409e0a27 );
  TEST_FPRED_VV_OP_rd6( 1875,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008bca7953, 0x409e0a27, 0x8bca7953 );
  TEST_FPRED_VV_OP_16( 1876,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008bca7953, 0x409e0a27, 0x8bca7953 );
  TEST_FPRED_VV_OP_rd7( 1877,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000054110db1, 0x8bca7953, 0x54110db1 );
  TEST_FPRED_VV_OP_17( 1878,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000054110db1, 0x8bca7953, 0x54110db1 );
  TEST_FPRED_VV_OP_rd9( 1879,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082997f29, 0xdd376b5e, 0x82997f29 );
  TEST_FPRED_VV_OP_19( 1880,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082997f29, 0xdd376b5e, 0x82997f29 );
  TEST_FPRED_VV_OP_rd10( 1881,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000355719f2, 0x82997f29, 0x355719f2 );
  TEST_FPRED_VV_OP_110( 1882,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000355719f2, 0x82997f29, 0x355719f2 );
  TEST_FPRED_VV_OP_rd11( 1883,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000409cf5f2, 0x355719f2, 0x409cf5f2 );
  TEST_FPRED_VV_OP_111( 1884,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000409cf5f2, 0x355719f2, 0x409cf5f2 );
  TEST_FPRED_VV_OP_rd12( 1885,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0f04044, 0x409cf5f2, 0xd0f04044 );
  TEST_FPRED_VV_OP_112( 1886,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0f04044, 0x409cf5f2, 0xd0f04044 );
  TEST_FPRED_VV_OP_rd13( 1887,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b1f11cd7, 0xd0f04044, 0xb1f11cd7 );
  TEST_FPRED_VV_OP_113( 1888,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b1f11cd7, 0xd0f04044, 0xb1f11cd7 );
  TEST_FPRED_VV_OP_rd14( 1889,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de5e4fa6, 0xb1f11cd7, 0xde5e4fa6 );
  TEST_FPRED_VV_OP_114( 1890,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de5e4fa6, 0xb1f11cd7, 0xde5e4fa6 );
  TEST_FPRED_VV_OP_rd15( 1891,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d82dd4fd, 0xde5e4fa6, 0xd82dd4fd );
  TEST_FPRED_VV_OP_115( 1892,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d82dd4fd, 0xde5e4fa6, 0xd82dd4fd );
  TEST_FPRED_VV_OP_rd17( 1893,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004949dc26, 0xe58d530d, 0x4949dc26 );
  TEST_FPRED_VV_OP_117( 1894,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004949dc26, 0xe58d530d, 0x4949dc26 );
  TEST_FPRED_VV_OP_rd18( 1895,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e5f9ede, 0x4949dc26, 0x8e5f9ede );
  TEST_FPRED_VV_OP_118( 1896,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e5f9ede, 0x4949dc26, 0x8e5f9ede );
  TEST_FPRED_VV_OP_rd19( 1897,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e4a63c9, 0x8e5f9ede, 0x8e4a63c9 );
  TEST_FPRED_VV_OP_119( 1898,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e4a63c9, 0x8e5f9ede, 0x8e4a63c9 );
  TEST_FPRED_VV_OP_rd20( 1899,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003e0b7f6a, 0x8e4a63c9, 0x3e0b7f6a );
  TEST_FPRED_VV_OP_120( 1900,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003e0b7f6a, 0x8e4a63c9, 0x3e0b7f6a );
  TEST_FPRED_VV_OP_rd21( 1901,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000721e2d49, 0x3e0b7f6a, 0x721e2d49 );
  TEST_FPRED_VV_OP_121( 1902,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000721e2d49, 0x3e0b7f6a, 0x721e2d49 );
  TEST_FPRED_VV_OP_rd22( 1903,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b9420e82, 0x721e2d49, 0xb9420e82 );
  TEST_FPRED_VV_OP_122( 1904,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b9420e82, 0x721e2d49, 0xb9420e82 );
  TEST_FPRED_VV_OP_rd23( 1905,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f300bb4, 0xb9420e82, 0x9f300bb4 );
  TEST_FPRED_VV_OP_123( 1906,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f300bb4, 0xb9420e82, 0x9f300bb4 );
  TEST_FPRED_VV_OP_rd25( 1907,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033939602, 0xdaf09bbc, 0x33939602 );
  TEST_FPRED_VV_OP_125( 1908,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033939602, 0xdaf09bbc, 0x33939602 );
  TEST_FPRED_VV_OP_rd26( 1909,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022d815c2, 0x33939602, 0x22d815c2 );
  TEST_FPRED_VV_OP_126( 1910,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022d815c2, 0x33939602, 0x22d815c2 );
  TEST_FPRED_VV_OP_rd27( 1911,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd6461b8, 0x22d815c2, 0xdd6461b8 );
  TEST_FPRED_VV_OP_127( 1912,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd6461b8, 0x22d815c2, 0xdd6461b8 );
  TEST_FPRED_VV_OP_rd28( 1913,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a0c1de71, 0xdd6461b8, 0xa0c1de71 );
  TEST_FPRED_VV_OP_128( 1914,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a0c1de71, 0xdd6461b8, 0xa0c1de71 );
  TEST_FPRED_VV_OP_rd29( 1915,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008412c769, 0xa0c1de71, 0x8412c769 );
  TEST_FPRED_VV_OP_129( 1916,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008412c769, 0xa0c1de71, 0x8412c769 );
  TEST_FPRED_VV_OP_rd30( 1917,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e03a03d1, 0x8412c769, 0xe03a03d1 );
  TEST_FPRED_VV_OP_130( 1918,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e03a03d1, 0x8412c769, 0xe03a03d1 );
  TEST_FPRED_VV_OP_rd31( 1919,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001d7e0df1, 0xe03a03d1, 0x1d7e0df1 );
  TEST_FPRED_VV_OP_131( 1920,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001d7e0df1, 0xe03a03d1, 0x1d7e0df1 );
  TEST_FPRED_VV_OP_rd1( 1921,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa1ba77a, 0x1d7e0df1, 0xaa1ba77a );
  TEST_FPRED_VV_OP_11( 1922,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa1ba77a, 0x1d7e0df1, 0xaa1ba77a );
  TEST_FPRED_VV_OP_rd2( 1923,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fd16c33, 0xaa1ba77a, 0x1fd16c33 );
  TEST_FPRED_VV_OP_12( 1924,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fd16c33, 0xaa1ba77a, 0x1fd16c33 );
  TEST_FPRED_VV_OP_rd3( 1925,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e6b2620f, 0x1fd16c33, 0xe6b2620f );
  TEST_FPRED_VV_OP_13( 1926,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e6b2620f, 0x1fd16c33, 0xe6b2620f );
  TEST_FPRED_VV_OP_rd4( 1927,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d80b4e8d, 0xe6b2620f, 0xd80b4e8d );
  TEST_FPRED_VV_OP_14( 1928,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d80b4e8d, 0xe6b2620f, 0xd80b4e8d );
  TEST_FPRED_VV_OP_rd5( 1929,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c57dfcc, 0xd80b4e8d, 0x8c57dfcc );
  TEST_FPRED_VV_OP_15( 1930,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c57dfcc, 0xd80b4e8d, 0x8c57dfcc );
  TEST_FPRED_VV_OP_rd6( 1931,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072d00ff0, 0x8c57dfcc, 0x72d00ff0 );
  TEST_FPRED_VV_OP_16( 1932,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072d00ff0, 0x8c57dfcc, 0x72d00ff0 );
  TEST_FPRED_VV_OP_rd7( 1933,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d71f3bd, 0x72d00ff0, 0x8d71f3bd );
  TEST_FPRED_VV_OP_17( 1934,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d71f3bd, 0x72d00ff0, 0x8d71f3bd );
  TEST_FPRED_VV_OP_rd9( 1935,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065e2e213, 0x90df5366, 0x65e2e213 );
  TEST_FPRED_VV_OP_19( 1936,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065e2e213, 0x90df5366, 0x65e2e213 );
  TEST_FPRED_VV_OP_rd10( 1937,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d4af903f, 0x65e2e213, 0xd4af903f );
  TEST_FPRED_VV_OP_110( 1938,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d4af903f, 0x65e2e213, 0xd4af903f );
  TEST_FPRED_VV_OP_rd11( 1939,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b402769, 0xd4af903f, 0x0b402769 );
  TEST_FPRED_VV_OP_111( 1940,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b402769, 0xd4af903f, 0x0b402769 );
  TEST_FPRED_VV_OP_rd12( 1941,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e520a1a5, 0x0b402769, 0xe520a1a5 );
  TEST_FPRED_VV_OP_112( 1942,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e520a1a5, 0x0b402769, 0xe520a1a5 );
  TEST_FPRED_VV_OP_rd13( 1943,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002fd98a32, 0xe520a1a5, 0x2fd98a32 );
  TEST_FPRED_VV_OP_113( 1944,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002fd98a32, 0xe520a1a5, 0x2fd98a32 );
  TEST_FPRED_VV_OP_rd14( 1945,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d31c277, 0x2fd98a32, 0x8d31c277 );
  TEST_FPRED_VV_OP_114( 1946,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d31c277, 0x2fd98a32, 0x8d31c277 );
  TEST_FPRED_VV_OP_rd15( 1947,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000431be53f, 0x8d31c277, 0x431be53f );
  TEST_FPRED_VV_OP_115( 1948,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000431be53f, 0x8d31c277, 0x431be53f );
  TEST_FPRED_VV_OP_rd17( 1949,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x163af993, 0x00000000 );
  TEST_FPRED_VV_OP_117( 1950,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x163af993, 0x00000000 );
  TEST_FPRED_VV_OP_rd18( 1951,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x62d5fe2f, 0xBF800000 );
  TEST_FPRED_VV_OP_118( 1952,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x62d5fe2f, 0xBF800000 );
  TEST_FPRED_VV_OP_rd19( 1953,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0xbbbfcaf3, 0x3F800000 );
  TEST_FPRED_VV_OP_119( 1954,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0xbbbfcaf3, 0x3F800000 );
  TEST_FPRED_VV_OP_rd20( 1955,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x8ad27026, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_120( 1956,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x8ad27026, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd21( 1957,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x599ec422, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_121( 1958,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x599ec422, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd22( 1959,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xd0e57884, 0x80855555 );
  TEST_FPRED_VV_OP_122( 1960,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xd0e57884, 0x80855555 );
  TEST_FPRED_VV_OP_rd23( 1961,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x315858ad, 0x00800001 );
  TEST_FPRED_VV_OP_123( 1962,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x315858ad, 0x00800001 );
  TEST_FPRED_VV_OP_rd25( 1963,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x80c7fec6, 0x00800000 );
  TEST_FPRED_VV_OP_125( 1964,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x80c7fec6, 0x00800000 );
  TEST_FPRED_VV_OP_rd26( 1965,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0xb8a4eaba, 0x807FFFFF );
  TEST_FPRED_VV_OP_126( 1966,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0xb8a4eaba, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd27( 1967,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x893e4f51, 0x007FFFFF );
  TEST_FPRED_VV_OP_127( 1968,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x893e4f51, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd28( 1969,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xa204c639, 0x807FFFFE );
  TEST_FPRED_VV_OP_128( 1970,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xa204c639, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd29( 1971,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x092d4ba0, 0x00000002 );
  TEST_FPRED_VV_OP_129( 1972,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x092d4ba0, 0x00000002 );
  TEST_FPRED_VV_OP_rd30( 1973,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x8787ab14, 0x80000001 );
  TEST_FPRED_VV_OP_130( 1974,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x8787ab14, 0x80000001 );
  TEST_FPRED_VV_OP_rd31( 1975,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x61ce2443, 0x00000001 );
  TEST_FPRED_VV_OP_131( 1976,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x61ce2443, 0x00000001 );
  TEST_FPRED_VV_OP_rd1( 1977,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x8ac8c0d1, 0x80000000 );
  TEST_FPRED_VV_OP_11( 1978,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x8ac8c0d1, 0x80000000 );
  TEST_FPRED_VV_OP_rd2( 1979,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x2a519200, 0x00000000 );
  TEST_FPRED_VV_OP_12( 1980,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x2a519200, 0x00000000 );
  TEST_FPRED_VV_OP_rd3( 1981,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x156dd6bc, 0xBF800000 );
  TEST_FPRED_VV_OP_13( 1982,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x156dd6bc, 0xBF800000 );
  TEST_FPRED_VV_OP_rd4( 1983,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x35ceb876, 0x3F800000 );
  TEST_FPRED_VV_OP_14( 1984,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x35ceb876, 0x3F800000 );
  TEST_FPRED_VV_OP_rd5( 1985,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x766125a9, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_15( 1986,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x766125a9, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd6( 1987,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x05269d43, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_16( 1988,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x05269d43, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd7( 1989,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x1591c3bb, 0x80855555 );
  TEST_FPRED_VV_OP_17( 1990,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x1591c3bb, 0x80855555 );
  TEST_FPRED_VV_OP_rd9( 1991,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xb68e62d5, 0x80800000 );
  TEST_FPRED_VV_OP_19( 1992,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xb68e62d5, 0x80800000 );
  TEST_FPRED_VV_OP_rd10( 1993,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x98c5df64, 0x00800000 );
  TEST_FPRED_VV_OP_110( 1994,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x98c5df64, 0x00800000 );
  TEST_FPRED_VV_OP_rd11( 1995,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x58a4f5f8, 0x807FFFFF );
  TEST_FPRED_VV_OP_111( 1996,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x58a4f5f8, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd12( 1997,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x1b5d4991, 0x007FFFFF );
  TEST_FPRED_VV_OP_112( 1998,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x1b5d4991, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd13( 1999,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x02046b89, 0x807FFFFE );
  TEST_FPRED_VV_OP_113( 2000,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x02046b89, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd14( 2001,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xf4223dde, 0x00000002 );
  TEST_FPRED_VV_OP_114( 2002,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xf4223dde, 0x00000002 );
  TEST_FPRED_VV_OP_rd15( 2003,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xcf05164e, 0x80000001 );
  TEST_FPRED_VV_OP_115( 2004,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xcf05164e, 0x80000001 );
  TEST_FPRED_VV_OP_rd17( 2005,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x5e100e5a, 0x80000000 );
  TEST_FPRED_VV_OP_117( 2006,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x5e100e5a, 0x80000000 );
  TEST_FPRED_VV_OP_rd18( 2007,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8f51944a, 0x00000000 );
  TEST_FPRED_VV_OP_118( 2008,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8f51944a, 0x00000000 );
  TEST_FPRED_VV_OP_rd19( 2009,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x01d283cd, 0xBF800000 );
  TEST_FPRED_VV_OP_119( 2010,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x01d283cd, 0xBF800000 );
  TEST_FPRED_VV_OP_rd20( 2011,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x19ea57fc, 0x3F800000 );
  TEST_FPRED_VV_OP_120( 2012,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x19ea57fc, 0x3F800000 );
  TEST_FPRED_VV_OP_rd21( 2013,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xe246d9c3, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_121( 2014,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xe246d9c3, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd22( 2015,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xb3ede2cf, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_122( 2016,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xb3ede2cf, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd23( 2017,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x661a98bb, 0x80855555 );
  TEST_FPRED_VV_OP_123( 2018,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x661a98bb, 0x80855555 );
  TEST_FPRED_VV_OP_rd25( 2019,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xb54c779c, 0x80800000 );
  TEST_FPRED_VV_OP_125( 2020,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xb54c779c, 0x80800000 );
  TEST_FPRED_VV_OP_rd26( 2021,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x8b890ead, 0x00800000 );
  TEST_FPRED_VV_OP_126( 2022,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x8b890ead, 0x00800000 );
  TEST_FPRED_VV_OP_rd27( 2023,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x6f6d8ebb, 0x807FFFFF );
  TEST_FPRED_VV_OP_127( 2024,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x6f6d8ebb, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd28( 2025,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x701a72e3, 0x007FFFFF );
  TEST_FPRED_VV_OP_128( 2026,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x701a72e3, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd29( 2027,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x18854a53, 0x807FFFFE );
  TEST_FPRED_VV_OP_129( 2028,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x18854a53, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd30( 2029,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xd8b646c3, 0x00000002 );
  TEST_FPRED_VV_OP_130( 2030,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xd8b646c3, 0x00000002 );
  TEST_FPRED_VV_OP_rd31( 2031,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x7a859a9b, 0x80000001 );
  TEST_FPRED_VV_OP_131( 2032,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x7a859a9b, 0x80000001 );
  TEST_FPRED_VV_OP_rd1( 2033,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x99fb1285, 0x00000001 );
  TEST_FPRED_VV_OP_11( 2034,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x99fb1285, 0x00000001 );
  TEST_FPRED_VV_OP_rd2( 2035,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x6a49fdb6, 0x80000000 );
  TEST_FPRED_VV_OP_12( 2036,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x6a49fdb6, 0x80000000 );
  TEST_FPRED_VV_OP_rd3( 2037,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xe54c4797, 0x00000000 );
  TEST_FPRED_VV_OP_13( 2038,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xe54c4797, 0x00000000 );
  TEST_FPRED_VV_OP_rd4( 2039,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0xa13e91a2, 0xBF800000 );
  TEST_FPRED_VV_OP_14( 2040,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0xa13e91a2, 0xBF800000 );
  TEST_FPRED_VV_OP_rd5( 2041,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x56a16ea4, 0x3F800000 );
  TEST_FPRED_VV_OP_15( 2042,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x56a16ea4, 0x3F800000 );
  TEST_FPRED_VV_OP_rd6( 2043,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x8dc0e4ff, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_16( 2044,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x8dc0e4ff, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd7( 2045,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x267eb8c3, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_17( 2046,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x267eb8c3, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd9( 2047,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xd18cf677, 0x00800001 );
  TEST_FPRED_VV_OP_19( 2048,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xd18cf677, 0x00800001 );
  TEST_FPRED_VV_OP_rd10( 2049,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xc592af51, 0x80800000 );
  TEST_FPRED_VV_OP_110( 2050,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xc592af51, 0x80800000 );
  TEST_FPRED_VV_OP_rd11( 2051,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x639952be, 0x00800000 );
  TEST_FPRED_VV_OP_111( 2052,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x639952be, 0x00800000 );
  TEST_FPRED_VV_OP_rd12( 2053,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x5ecc40d7, 0x807FFFFF );
  TEST_FPRED_VV_OP_112( 2054,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x5ecc40d7, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd13( 2055,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x08e1872a, 0x007FFFFF );
  TEST_FPRED_VV_OP_113( 2056,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x08e1872a, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd14( 2057,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x699b0430, 0x807FFFFE );
  TEST_FPRED_VV_OP_114( 2058,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x699b0430, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd15( 2059,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x515deb63, 0x00000002 );
  TEST_FPRED_VV_OP_115( 2060,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x515deb63, 0x00000002 );
  TEST_FPRED_VV_OP_rd17( 2061,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x5ed38442, 0x00000001 );
  TEST_FPRED_VV_OP_117( 2062,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x5ed38442, 0x00000001 );
  TEST_FPRED_VV_OP_rd18( 2063,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x9444a8cf, 0x80000000 );
  TEST_FPRED_VV_OP_118( 2064,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x9444a8cf, 0x80000000 );
  TEST_FPRED_VV_OP_rd19( 2065,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x3b6f020e, 0x00000000 );
  TEST_FPRED_VV_OP_119( 2066,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x3b6f020e, 0x00000000 );
  TEST_FPRED_VV_OP_rd20( 2067,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x3d7a2c1a, 0xBF800000 );
  TEST_FPRED_VV_OP_120( 2068,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x3d7a2c1a, 0xBF800000 );
  TEST_FPRED_VV_OP_rd21( 2069,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0xe12d2042, 0x3F800000 );
  TEST_FPRED_VV_OP_121( 2070,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0xe12d2042, 0x3F800000 );
  TEST_FPRED_VV_OP_rd22( 2071,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xddc02bcf, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_122( 2072,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xddc02bcf, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd23( 2073,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xd793ec85, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_123( 2074,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xd793ec85, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd25( 2075,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x7b5bb683, 0x00800001 );
  TEST_FPRED_VV_OP_125( 2076,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x7b5bb683, 0x00800001 );
  TEST_FPRED_VV_OP_rd26( 2077,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xf3060550, 0x80800000 );
  TEST_FPRED_VV_OP_126( 2078,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xf3060550, 0x80800000 );
  TEST_FPRED_VV_OP_rd27( 2079,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xeb6622a3, 0x00800000 );
  TEST_FPRED_VV_OP_127( 2080,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xeb6622a3, 0x00800000 );
  TEST_FPRED_VV_OP_rd28( 2081,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x370df4fd, 0x807FFFFF );
  TEST_FPRED_VV_OP_128( 2082,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x370df4fd, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd29( 2083,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xe7026d7d, 0x007FFFFF );
  TEST_FPRED_VV_OP_129( 2084,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xe7026d7d, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd30( 2085,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xa7ef2bad, 0x807FFFFE );
  TEST_FPRED_VV_OP_130( 2086,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xa7ef2bad, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd31( 2087,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x5d994fff, 0x00000002 );
  TEST_FPRED_VV_OP_131( 2088,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x5d994fff, 0x00000002 );
  TEST_FPRED_VV_OP_rd1( 2089,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x6ab30fe4, 0x80000001 );
  TEST_FPRED_VV_OP_11( 2090,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x6ab30fe4, 0x80000001 );
  TEST_FPRED_VV_OP_rd2( 2091,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x72d35639, 0x00000001 );
  TEST_FPRED_VV_OP_12( 2092,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x72d35639, 0x00000001 );
  TEST_FPRED_VV_OP_rd3( 2093,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x27c70109, 0x80000000 );
  TEST_FPRED_VV_OP_13( 2094,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x27c70109, 0x80000000 );
  TEST_FPRED_VV_OP_rd4( 2095,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xf283b49c, 0x00000000 );
  TEST_FPRED_VV_OP_14( 2096,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xf283b49c, 0x00000000 );
  TEST_FPRED_VV_OP_rd5( 2097,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x3c70fd0b, 0xBF800000 );
  TEST_FPRED_VV_OP_15( 2098,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x3c70fd0b, 0xBF800000 );
  TEST_FPRED_VV_OP_rd6( 2099,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x1f46077b, 0x3F800000 );
  TEST_FPRED_VV_OP_16( 2100,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x1f46077b, 0x3F800000 );
  TEST_FPRED_VV_OP_rd7( 2101,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xc626d7b5, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_17( 2102,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xc626d7b5, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd9( 2103,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xa37e6d45, 0x80855555 );
  TEST_FPRED_VV_OP_19( 2104,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xa37e6d45, 0x80855555 );
  TEST_FPRED_VV_OP_rd10( 2105,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x69155a81, 0x00800001 );
  TEST_FPRED_VV_OP_110( 2106,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x69155a81, 0x00800001 );
  TEST_FPRED_VV_OP_rd11( 2107,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xe78f6b83, 0x80800000 );
  TEST_FPRED_VV_OP_111( 2108,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xe78f6b83, 0x80800000 );
  TEST_FPRED_VV_OP_rd12( 2109,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x9aba564b, 0x00800000 );
  TEST_FPRED_VV_OP_112( 2110,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x9aba564b, 0x00800000 );
  TEST_FPRED_VV_OP_rd13( 2111,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x3616aeda, 0x807FFFFF );
  TEST_FPRED_VV_OP_113( 2112,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x3616aeda, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd14( 2113,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xb6b43b38, 0x007FFFFF );
  TEST_FPRED_VV_OP_114( 2114,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xb6b43b38, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd15( 2115,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x48363fc9, 0x807FFFFE );
  TEST_FPRED_VV_OP_115( 2116,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x48363fc9, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd17( 2117,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x4f1f58ba, 0x80000001 );
  TEST_FPRED_VV_OP_117( 2118,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x4f1f58ba, 0x80000001 );
  TEST_FPRED_VV_OP_rd18( 2119,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x19e51db5, 0x00000001 );
  TEST_FPRED_VV_OP_118( 2120,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x19e51db5, 0x00000001 );
  TEST_FPRED_VV_OP_rd19( 2121,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xe0c53c63, 0x80000000 );
  TEST_FPRED_VV_OP_119( 2122,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xe0c53c63, 0x80000000 );
  TEST_FPRED_VV_OP_rd20( 2123,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x192352ad, 0x00000000 );
  TEST_FPRED_VV_OP_120( 2124,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x192352ad, 0x00000000 );
  TEST_FPRED_VV_OP_rd21( 2125,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x5639134a, 0xBF800000 );
  TEST_FPRED_VV_OP_121( 2126,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x5639134a, 0xBF800000 );
  TEST_FPRED_VV_OP_rd22( 2127,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x3b3c24ec, 0x3F800000 );
  TEST_FPRED_VV_OP_122( 2128,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x3b3c24ec, 0x3F800000 );
  TEST_FPRED_VV_OP_rd23( 2129,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x8376196a, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_123( 2130,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x8376196a, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd25( 2131,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x2cd12f68, 0x80855555 );
  TEST_FPRED_VV_OP_125( 2132,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x2cd12f68, 0x80855555 );
  TEST_FPRED_VV_OP_rd26( 2133,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x5b91a296, 0x00800001 );
  TEST_FPRED_VV_OP_126( 2134,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x5b91a296, 0x00800001 );
  TEST_FPRED_VV_OP_rd27( 2135,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x0a9edbe9, 0x80800000 );
  TEST_FPRED_VV_OP_127( 2136,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x0a9edbe9, 0x80800000 );
  TEST_FPRED_VV_OP_rd28( 2137,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xbc4fb8ab, 0x00800000 );
  TEST_FPRED_VV_OP_128( 2138,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xbc4fb8ab, 0x00800000 );
  TEST_FPRED_VV_OP_rd29( 2139,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x68714601, 0x807FFFFF );
  TEST_FPRED_VV_OP_129( 2140,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x68714601, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd30( 2141,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xf6077257, 0x007FFFFF );
  TEST_FPRED_VV_OP_130( 2142,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xf6077257, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd31( 2143,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x6baa10f2, 0x807FFFFE );
  TEST_FPRED_VV_OP_131( 2144,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x6baa10f2, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd1( 2145,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x210eee6d, 0x00000002 );
  TEST_FPRED_VV_OP_11( 2146,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x210eee6d, 0x00000002 );
  TEST_FPRED_VV_OP_rd2( 2147,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x9d9d1deb, 0x80000001 );
  TEST_FPRED_VV_OP_12( 2148,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x9d9d1deb, 0x80000001 );
  TEST_FPRED_VV_OP_rd3( 2149,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x52a2c944, 0x00000001 );
  TEST_FPRED_VV_OP_13( 2150,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x52a2c944, 0x00000001 );
  TEST_FPRED_VV_OP_rd4( 2151,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x69da5807, 0x80000000 );
  TEST_FPRED_VV_OP_14( 2152,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x69da5807, 0x80000000 );
  TEST_FPRED_VV_OP_rd5( 2153,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x5643827a, 0x00000000 );
  TEST_FPRED_VV_OP_15( 2154,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x5643827a, 0x00000000 );
  TEST_FPRED_VV_OP_rd6( 2155,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x548fa17d, 0xBF800000 );
  TEST_FPRED_VV_OP_16( 2156,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x548fa17d, 0xBF800000 );
  TEST_FPRED_VV_OP_rd7( 2157,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x0125e3bc, 0x3F800000 );
  TEST_FPRED_VV_OP_17( 2158,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x0125e3bc, 0x3F800000 );
  TEST_FPRED_VV_OP_rd9( 2159,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xd612accc, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_19( 2160,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xd612accc, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd10( 2161,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x7c624102, 0x80855555 );
  TEST_FPRED_VV_OP_110( 2162,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x7c624102, 0x80855555 );
  TEST_FPRED_VV_OP_rd11( 2163,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x81457ac4, 0x00800001 );
  TEST_FPRED_VV_OP_111( 2164,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x81457ac4, 0x00800001 );
  TEST_FPRED_VV_OP_rd12( 2165,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x169e8d7e, 0x80800000 );
  TEST_FPRED_VV_OP_112( 2166,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x169e8d7e, 0x80800000 );
  TEST_FPRED_VV_OP_rd13( 2167,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x82d5d8cc, 0x00800000 );
  TEST_FPRED_VV_OP_113( 2168,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x82d5d8cc, 0x00800000 );
  TEST_FPRED_VV_OP_rd14( 2169,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x2afa1e78, 0x807FFFFF );
  TEST_FPRED_VV_OP_114( 2170,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x2afa1e78, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd15( 2171,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xdb9ca373, 0x007FFFFF );
  TEST_FPRED_VV_OP_115( 2172,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xdb9ca373, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd17( 2173,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xb686377f, 0x00000002 );
  TEST_FPRED_VV_OP_117( 2174,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xb686377f, 0x00000002 );
  TEST_FPRED_VV_OP_rd18( 2175,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xc0570d1e, 0x80000001 );
  TEST_FPRED_VV_OP_118( 2176,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xc0570d1e, 0x80000001 );
  TEST_FPRED_VV_OP_rd19( 2177,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x6682aa99, 0x00000001 );
  TEST_FPRED_VV_OP_119( 2178,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x6682aa99, 0x00000001 );
  TEST_FPRED_VV_OP_rd20( 2179,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xd3ab2b5b, 0x80000000 );
  TEST_FPRED_VV_OP_120( 2180,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xd3ab2b5b, 0x80000000 );
  TEST_FPRED_VV_OP_rd21( 2181,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x32ce890a, 0x00000000 );
  TEST_FPRED_VV_OP_121( 2182,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x32ce890a, 0x00000000 );
  TEST_FPRED_VV_OP_rd22( 2183,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x50408aba, 0xBF800000 );
  TEST_FPRED_VV_OP_122( 2184,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x50408aba, 0xBF800000 );
  TEST_FPRED_VV_OP_rd23( 2185,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0xb4ea3655, 0x3F800000 );
  TEST_FPRED_VV_OP_123( 2186,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0xb4ea3655, 0x3F800000 );
  TEST_FPRED_VV_OP_rd25( 2187,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xeef03e8d, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_125( 2188,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xeef03e8d, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd26( 2189,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xde17d645, 0x80855555 );
  TEST_FPRED_VV_OP_126( 2190,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xde17d645, 0x80855555 );
  TEST_FPRED_VV_OP_rd27( 2191,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x0e7f9a32, 0x00800001 );
  TEST_FPRED_VV_OP_127( 2192,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x0e7f9a32, 0x00800001 );
  TEST_FPRED_VV_OP_rd28( 2193,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xeeca2f3b, 0x80800000 );
  TEST_FPRED_VV_OP_128( 2194,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xeeca2f3b, 0x80800000 );
  TEST_FPRED_VV_OP_rd29( 2195,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xf14f95f4, 0x00800000 );
  TEST_FPRED_VV_OP_129( 2196,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xf14f95f4, 0x00800000 );
  TEST_FPRED_VV_OP_rd30( 2197,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x63b7a76e, 0x807FFFFF );
  TEST_FPRED_VV_OP_130( 2198,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x63b7a76e, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd31( 2199,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xbcc9ab43, 0x007FFFFF );
  TEST_FPRED_VV_OP_131( 2200,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xbcc9ab43, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd1( 2201,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xdfeeae1d, 0x807FFFFE );
  TEST_FPRED_VV_OP_11( 2202,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xdfeeae1d, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd2( 2203,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x65eed45a, 0x00000002 );
  TEST_FPRED_VV_OP_12( 2204,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x65eed45a, 0x00000002 );
  TEST_FPRED_VV_OP_rd3( 2205,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xc8e4911e, 0x80000001 );
  TEST_FPRED_VV_OP_13( 2206,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xc8e4911e, 0x80000001 );
  TEST_FPRED_VV_OP_rd4( 2207,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x61bee6e3, 0x00000001 );
  TEST_FPRED_VV_OP_14( 2208,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x61bee6e3, 0x00000001 );
  TEST_FPRED_VV_OP_rd5( 2209,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x5a888b0b, 0x80000000 );
  TEST_FPRED_VV_OP_15( 2210,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x5a888b0b, 0x80000000 );
  TEST_FPRED_VV_OP_rd6( 2211,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xe8b9b2cd, 0x00000000 );
  TEST_FPRED_VV_OP_16( 2212,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xe8b9b2cd, 0x00000000 );
  TEST_FPRED_VV_OP_rd7( 2213,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x1bc3cb1f, 0xBF800000 );
  TEST_FPRED_VV_OP_17( 2214,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x1bc3cb1f, 0xBF800000 );
  TEST_FPRED_VV_OP_rd9( 2215,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x94518e9b, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_19( 2216,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x94518e9b, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd10( 2217,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x89b67375, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_110( 2218,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x89b67375, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd11( 2219,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xd4bea2c1, 0x80855555 );
  TEST_FPRED_VV_OP_111( 2220,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xd4bea2c1, 0x80855555 );
  TEST_FPRED_VV_OP_rd12( 2221,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xd7ac95f6, 0x00800001 );
  TEST_FPRED_VV_OP_112( 2222,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xd7ac95f6, 0x00800001 );
  TEST_FPRED_VV_OP_rd13( 2223,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xb4fe5b7c, 0x80800000 );
  TEST_FPRED_VV_OP_113( 2224,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xb4fe5b7c, 0x80800000 );
  TEST_FPRED_VV_OP_rd14( 2225,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x59dac688, 0x00800000 );
  TEST_FPRED_VV_OP_114( 2226,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x59dac688, 0x00800000 );
  TEST_FPRED_VV_OP_rd15( 2227,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0xd864b555, 0x807FFFFF );
  TEST_FPRED_VV_OP_115( 2228,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0xd864b555, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd17( 2229,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x8debdd64, 0x807FFFFE );
  TEST_FPRED_VV_OP_117( 2230,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x8debdd64, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd18( 2231,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x78f0b6be, 0x00000002 );
  TEST_FPRED_VV_OP_118( 2232,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x78f0b6be, 0x00000002 );
  TEST_FPRED_VV_OP_rd19( 2233,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xea5bd793, 0x80000001 );
  TEST_FPRED_VV_OP_119( 2234,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xea5bd793, 0x80000001 );
  TEST_FPRED_VV_OP_rd20( 2235,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x837bb1b9, 0x00000001 );
  TEST_FPRED_VV_OP_120( 2236,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x837bb1b9, 0x00000001 );
  TEST_FPRED_VV_OP_rd21( 2237,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xb8879ad6, 0x80000000 );
  TEST_FPRED_VV_OP_121( 2238,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xb8879ad6, 0x80000000 );
  TEST_FPRED_VV_OP_rd22( 2239,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xa62bf1a5, 0x00000000 );
  TEST_FPRED_VV_OP_122( 2240,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xa62bf1a5, 0x00000000 );
  TEST_FPRED_VV_OP_rd23( 2241,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x27457e6e, 0xBF800000 );
  TEST_FPRED_VV_OP_123( 2242,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x27457e6e, 0xBF800000 );
  TEST_FPRED_VV_OP_rd25( 2243,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xbc0e79b9, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_125( 2244,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xbc0e79b9, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd26( 2245,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x72ae0ac9, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_126( 2246,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x72ae0ac9, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd27( 2247,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xe29df404, 0x80855555 );
  TEST_FPRED_VV_OP_127( 2248,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xe29df404, 0x80855555 );
  TEST_FPRED_VV_OP_rd28( 2249,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xb117f9b7, 0x00800001 );
  TEST_FPRED_VV_OP_128( 2250,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xb117f9b7, 0x00800001 );
  TEST_FPRED_VV_OP_rd29( 2251,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xf0abe8ea, 0x80800000 );
  TEST_FPRED_VV_OP_129( 2252,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xf0abe8ea, 0x80800000 );
  TEST_FPRED_VV_OP_rd30( 2253,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x5b82f781, 0x00800000 );
  TEST_FPRED_VV_OP_130( 2254,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x5b82f781, 0x00800000 );
  TEST_FPRED_VV_OP_rd31( 2255,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x3aba4a26, 0x807FFFFF );
  TEST_FPRED_VV_OP_131( 2256,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x3aba4a26, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd1( 2257,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xefea5e67, 0x007FFFFF );
  TEST_FPRED_VV_OP_11( 2258,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xefea5e67, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd2( 2259,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x688be24b, 0x807FFFFE );
  TEST_FPRED_VV_OP_12( 2260,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x688be24b, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd3( 2261,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x21ad1582, 0x00000002 );
  TEST_FPRED_VV_OP_13( 2262,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x21ad1582, 0x00000002 );
  TEST_FPRED_VV_OP_rd4( 2263,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xa294f0b8, 0x80000001 );
  TEST_FPRED_VV_OP_14( 2264,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xa294f0b8, 0x80000001 );
  TEST_FPRED_VV_OP_rd5( 2265,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xa6440f97, 0x00000001 );
  TEST_FPRED_VV_OP_15( 2266,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xa6440f97, 0x00000001 );
  TEST_FPRED_VV_OP_rd6( 2267,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x5ea2d0b9, 0x80000000 );
  TEST_FPRED_VV_OP_16( 2268,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x5ea2d0b9, 0x80000000 );
  TEST_FPRED_VV_OP_rd7( 2269,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xbdc0571c, 0x00000000 );
  TEST_FPRED_VV_OP_17( 2270,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xbdc0571c, 0x00000000 );
  TEST_FPRED_VV_OP_rd9( 2271,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x0c377326, 0x3F800000 );
  TEST_FPRED_VV_OP_19( 2272,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x0c377326, 0x3F800000 );
  TEST_FPRED_VV_OP_rd10( 2273,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x533c8dfe, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_110( 2274,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x533c8dfe, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd11( 2275,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xe21ef6aa, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_111( 2276,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xe21ef6aa, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd12( 2277,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x919fa67d, 0x80855555 );
  TEST_FPRED_VV_OP_112( 2278,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x919fa67d, 0x80855555 );
  TEST_FPRED_VV_OP_rd13( 2279,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x873f1671, 0x00800001 );
  TEST_FPRED_VV_OP_113( 2280,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x873f1671, 0x00800001 );
  TEST_FPRED_VV_OP_rd14( 2281,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x2a9f2e23, 0x80800000 );
  TEST_FPRED_VV_OP_114( 2282,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x2a9f2e23, 0x80800000 );
  TEST_FPRED_VV_OP_rd15( 2283,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xbe22927b, 0x00800000 );
  TEST_FPRED_VV_OP_115( 2284,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xbe22927b, 0x00800000 );
  TEST_FPRED_VV_OP_rd17( 2285,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x75ce1220, 0x007FFFFF );
  TEST_FPRED_VV_OP_117( 2286,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x75ce1220, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd18( 2287,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x4447a68d, 0x807FFFFE );
  TEST_FPRED_VV_OP_118( 2288,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x4447a68d, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd19( 2289,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x3f78b414, 0x00000002 );
  TEST_FPRED_VV_OP_119( 2290,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x3f78b414, 0x00000002 );
  TEST_FPRED_VV_OP_rd20( 2291,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xbd72133e, 0x80000001 );
  TEST_FPRED_VV_OP_120( 2292,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xbd72133e, 0x80000001 );
  TEST_FPRED_VV_OP_rd21( 2293,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x0cee6997, 0x00000001 );
  TEST_FPRED_VV_OP_121( 2294,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x0cee6997, 0x00000001 );
  TEST_FPRED_VV_OP_rd22( 2295,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x1a1b49f6, 0x80000000 );
  TEST_FPRED_VV_OP_122( 2296,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x1a1b49f6, 0x80000000 );
  TEST_FPRED_VV_OP_rd23( 2297,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x74cefef0, 0x00000000 );
  TEST_FPRED_VV_OP_123( 2298,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x74cefef0, 0x00000000 );
  TEST_FPRED_VV_OP_rd25( 2299,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x4b329421, 0x3F800000 );
  TEST_FPRED_VV_OP_125( 2300,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x4b329421, 0x3F800000 );
  TEST_FPRED_VV_OP_rd26( 2301,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x3a31ab60, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_126( 2302,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x3a31ab60, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd27( 2303,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xe953c01f, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_127( 2304,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xe953c01f, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd28( 2305,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x0f147ddf, 0x80855555 );
  TEST_FPRED_VV_OP_128( 2306,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x0f147ddf, 0x80855555 );
  TEST_FPRED_VV_OP_rd29( 2307,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xcf457330, 0x00800001 );
  TEST_FPRED_VV_OP_129( 2308,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xcf457330, 0x00800001 );
  TEST_FPRED_VV_OP_rd30( 2309,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x19f95636, 0x80800000 );
  TEST_FPRED_VV_OP_130( 2310,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x19f95636, 0x80800000 );
  TEST_FPRED_VV_OP_rd31( 2311,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x30610d6c, 0x00800000 );
  TEST_FPRED_VV_OP_131( 2312,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x30610d6c, 0x00800000 );
  TEST_FPRED_VV_OP_rd1( 2313,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x7cfe6ad7, 0x807FFFFF );
  TEST_FPRED_VV_OP_11( 2314,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x7cfe6ad7, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd2( 2315,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x51a59b6f, 0x007FFFFF );
  TEST_FPRED_VV_OP_12( 2316,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x51a59b6f, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd3( 2317,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xbe384770, 0x807FFFFE );
  TEST_FPRED_VV_OP_13( 2318,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xbe384770, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd4( 2319,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x336dc41b, 0x00000002 );
  TEST_FPRED_VV_OP_14( 2320,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x336dc41b, 0x00000002 );
  TEST_FPRED_VV_OP_rd5( 2321,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xa87f271a, 0x80000001 );
  TEST_FPRED_VV_OP_15( 2322,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xa87f271a, 0x80000001 );
  TEST_FPRED_VV_OP_rd6( 2323,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x6c9121e1, 0x00000001 );
  TEST_FPRED_VV_OP_16( 2324,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x6c9121e1, 0x00000001 );
  TEST_FPRED_VV_OP_rd7( 2325,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xa73c95c4, 0x80000000 );
  TEST_FPRED_VV_OP_17( 2326,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xa73c95c4, 0x80000000 );
  TEST_FPRED_VV_OP_rd9( 2327,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x46f5a171, 0xBF800000 );
  TEST_FPRED_VV_OP_19( 2328,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x46f5a171, 0xBF800000 );
  TEST_FPRED_VV_OP_rd10( 2329,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x251c1e00, 0x3F800000 );
  TEST_FPRED_VV_OP_110( 2330,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x251c1e00, 0x3F800000 );
  TEST_FPRED_VV_OP_rd11( 2331,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xac7c3863, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_111( 2332,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xac7c3863, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd12( 2333,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x8f02a18c, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_112( 2334,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x8f02a18c, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd13( 2335,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x91fd21c8, 0x80855555 );
  TEST_FPRED_VV_OP_113( 2336,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x91fd21c8, 0x80855555 );
  TEST_FPRED_VV_OP_rd14( 2337,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x4453aa24, 0x00800001 );
  TEST_FPRED_VV_OP_114( 2338,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x4453aa24, 0x00800001 );
  TEST_FPRED_VV_OP_rd15( 2339,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x8cc4c438, 0x80800000 );
  TEST_FPRED_VV_OP_115( 2340,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x8cc4c438, 0x80800000 );
  TEST_FPRED_VV_OP_rd17( 2341,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x767634b8, 0x807FFFFF );
  TEST_FPRED_VV_OP_117( 2342,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x767634b8, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd18( 2343,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x177434a8, 0x007FFFFF );
  TEST_FPRED_VV_OP_118( 2344,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x177434a8, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd19( 2345,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x4602bb95, 0x807FFFFE );
  TEST_FPRED_VV_OP_119( 2346,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x4602bb95, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd20( 2347,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xbb2a44f6, 0x00000002 );
  TEST_FPRED_VV_OP_120( 2348,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xbb2a44f6, 0x00000002 );
  TEST_FPRED_VV_OP_rd21( 2349,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xe1cd9683, 0x80000001 );
  TEST_FPRED_VV_OP_121( 2350,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xe1cd9683, 0x80000001 );
  TEST_FPRED_VV_OP_rd22( 2351,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xc649858c, 0x00000001 );
  TEST_FPRED_VV_OP_122( 2352,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xc649858c, 0x00000001 );
  TEST_FPRED_VV_OP_rd23( 2353,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x834794d4, 0x80000000 );
  TEST_FPRED_VV_OP_123( 2354,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x834794d4, 0x80000000 );
  TEST_FPRED_VV_OP_rd25( 2355,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x3bbf119a, 0xBF800000 );
  TEST_FPRED_VV_OP_125( 2356,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x3bbf119a, 0xBF800000 );
  TEST_FPRED_VV_OP_rd26( 2357,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x0aeac265, 0x3F800000 );
  TEST_FPRED_VV_OP_126( 2358,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x0aeac265, 0x3F800000 );
  TEST_FPRED_VV_OP_rd27( 2359,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x41649ded, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_127( 2360,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x41649ded, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd28( 2361,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x54d909fd, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_128( 2362,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x54d909fd, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd29( 2363,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x82c44d2b, 0x80855555 );
  TEST_FPRED_VV_OP_129( 2364,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x82c44d2b, 0x80855555 );
  TEST_FPRED_VV_OP_rd30( 2365,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x85371e54, 0x00800001 );
  TEST_FPRED_VV_OP_130( 2366,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x85371e54, 0x00800001 );
  TEST_FPRED_VV_OP_rd31( 2367,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x91074282, 0x80800000 );
  TEST_FPRED_VV_OP_131( 2368,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x91074282, 0x80800000 );
  TEST_FPRED_VV_OP_rd1( 2369,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x61ae58b5, 0x00800000 );
  TEST_FPRED_VV_OP_11( 2370,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x61ae58b5, 0x00800000 );
  TEST_FPRED_VV_OP_rd2( 2371,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0xc611ba41, 0x807FFFFF );
  TEST_FPRED_VV_OP_12( 2372,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0xc611ba41, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd3( 2373,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xd0fb779f, 0x007FFFFF );
  TEST_FPRED_VV_OP_13( 2374,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xd0fb779f, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd4( 2375,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x999f8b26, 0x807FFFFE );
  TEST_FPRED_VV_OP_14( 2376,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x999f8b26, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd5( 2377,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xa113808e, 0x00000002 );
  TEST_FPRED_VV_OP_15( 2378,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xa113808e, 0x00000002 );
  TEST_FPRED_VV_OP_rd6( 2379,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x675a54fd, 0x80000001 );
  TEST_FPRED_VV_OP_16( 2380,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x675a54fd, 0x80000001 );
  TEST_FPRED_VV_OP_rd7( 2381,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8864b1ab, 0x00000001 );
  TEST_FPRED_VV_OP_17( 2382,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8864b1ab, 0x00000001 );
  TEST_FPRED_VV_OP_rd9( 2383,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xecdb94a3, 0x00000000 );
  TEST_FPRED_VV_OP_19( 2384,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xecdb94a3, 0x00000000 );
  TEST_FPRED_VV_OP_rd10( 2385,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x50fb73b8, 0xBF800000 );
  TEST_FPRED_VV_OP_110( 2386,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x50fb73b8, 0xBF800000 );
  TEST_FPRED_VV_OP_rd11( 2387,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x1566303a, 0x3F800000 );
  TEST_FPRED_VV_OP_111( 2388,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x1566303a, 0x3F800000 );
  TEST_FPRED_VV_OP_rd12( 2389,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xf77c3228, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_112( 2390,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xf77c3228, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd13( 2391,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xde7da192, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_113( 2392,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xde7da192, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd14( 2393,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x1a2510c7, 0x80855555 );
  TEST_FPRED_VV_OP_114( 2394,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x1a2510c7, 0x80855555 );
  TEST_FPRED_VV_OP_rd15( 2395,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x8c4f914e, 0x00800001 );
  TEST_FPRED_VV_OP_115( 2396,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x8c4f914e, 0x00800001 );
  TEST_FPRED_VV_OP_rd17( 2397,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x269ca43a, 0x00800000 );
  TEST_FPRED_VV_OP_117( 2398,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x269ca43a, 0x00800000 );
  TEST_FPRED_VV_OP_rd18( 2399,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x112bfa6f, 0x807FFFFF );
  TEST_FPRED_VV_OP_118( 2400,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x112bfa6f, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd19( 2401,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xe6388e69, 0x007FFFFF );
  TEST_FPRED_VV_OP_119( 2402,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xe6388e69, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd20( 2403,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x9f9c2d14, 0x807FFFFE );
  TEST_FPRED_VV_OP_120( 2404,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x9f9c2d14, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd21( 2405,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x85d763a6, 0x00000002 );
  TEST_FPRED_VV_OP_121( 2406,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x85d763a6, 0x00000002 );
  TEST_FPRED_VV_OP_rd22( 2407,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xac497736, 0x80000001 );
  TEST_FPRED_VV_OP_122( 2408,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xac497736, 0x80000001 );
  TEST_FPRED_VV_OP_rd23( 2409,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8a462146, 0x00000001 );
  TEST_FPRED_VV_OP_123( 2410,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8a462146, 0x00000001 );
  TEST_FPRED_VV_OP_rd25( 2411,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062d5fe2f, 0xab04b597, 0x62d5fe2f );
  TEST_FPRED_VV_OP_125( 2412,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062d5fe2f, 0xab04b597, 0x62d5fe2f );
  TEST_FPRED_VV_OP_rd26( 2413,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbfcaf3, 0xd5173d3b, 0xbbbfcaf3 );
  TEST_FPRED_VV_OP_126( 2414,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbfcaf3, 0xd5173d3b, 0xbbbfcaf3 );
  TEST_FPRED_VV_OP_rd27( 2415,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ad27026, 0x1c954c88, 0x8ad27026 );
  TEST_FPRED_VV_OP_127( 2416,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ad27026, 0x1c954c88, 0x8ad27026 );
  TEST_FPRED_VV_OP_rd28( 2417,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000599ec422, 0xae8f2f8a, 0x599ec422 );
  TEST_FPRED_VV_OP_128( 2418,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000599ec422, 0xae8f2f8a, 0x599ec422 );
  TEST_FPRED_VV_OP_rd29( 2419,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0e57884, 0xe18cd6d3, 0xd0e57884 );
  TEST_FPRED_VV_OP_129( 2420,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0e57884, 0xe18cd6d3, 0xd0e57884 );
  TEST_FPRED_VV_OP_rd30( 2421,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000315858ad, 0xe7128ead, 0x315858ad );
  TEST_FPRED_VV_OP_130( 2422,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000315858ad, 0xe7128ead, 0x315858ad );
  TEST_FPRED_VV_OP_rd31( 2423,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb79a22b, 0x430c45f2, 0xbb79a22b );
  TEST_FPRED_VV_OP_131( 2424,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb79a22b, 0x430c45f2, 0xbb79a22b );
  TEST_FPRED_VV_OP_rd1( 2425,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080c7fec6, 0x1fece821, 0x80c7fec6 );
  TEST_FPRED_VV_OP_11( 2426,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080c7fec6, 0x1fece821, 0x80c7fec6 );
  TEST_FPRED_VV_OP_rd2( 2427,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8a4eaba, 0xdbe8db2f, 0xb8a4eaba );
  TEST_FPRED_VV_OP_12( 2428,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8a4eaba, 0xdbe8db2f, 0xb8a4eaba );
  TEST_FPRED_VV_OP_rd3( 2429,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000893e4f51, 0x9deac411, 0x893e4f51 );
  TEST_FPRED_VV_OP_13( 2430,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000893e4f51, 0x9deac411, 0x893e4f51 );
  TEST_FPRED_VV_OP_rd4( 2431,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a204c639, 0xd578536b, 0xa204c639 );
  TEST_FPRED_VV_OP_14( 2432,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a204c639, 0xd578536b, 0xa204c639 );
  TEST_FPRED_VV_OP_rd5( 2433,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092d4ba0, 0x5a2112c5, 0x092d4ba0 );
  TEST_FPRED_VV_OP_15( 2434,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092d4ba0, 0x5a2112c5, 0x092d4ba0 );
  TEST_FPRED_VV_OP_rd6( 2435,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008787ab14, 0x33755502, 0x8787ab14 );
  TEST_FPRED_VV_OP_16( 2436,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008787ab14, 0x33755502, 0x8787ab14 );
  TEST_FPRED_VV_OP_rd7( 2437,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061ce2443, 0x41f512c8, 0x61ce2443 );
  TEST_FPRED_VV_OP_17( 2438,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061ce2443, 0x41f512c8, 0x61ce2443 );
  TEST_FPRED_VV_OP_rd9( 2439,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a519200, 0x30e95eba, 0x2a519200 );
  TEST_FPRED_VV_OP_19( 2440,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a519200, 0x30e95eba, 0x2a519200 );
  TEST_FPRED_VV_OP_rd10( 2441,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000156dd6bc, 0xdc43d0d7, 0x156dd6bc );
  TEST_FPRED_VV_OP_110( 2442,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000156dd6bc, 0xdc43d0d7, 0x156dd6bc );
  TEST_FPRED_VV_OP_rd11( 2443,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000035ceb876, 0xce250988, 0x35ceb876 );
  TEST_FPRED_VV_OP_111( 2444,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000035ceb876, 0xce250988, 0x35ceb876 );
  TEST_FPRED_VV_OP_rd12( 2445,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000766125a9, 0x546ef0b9, 0x766125a9 );
  TEST_FPRED_VV_OP_112( 2446,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000766125a9, 0x546ef0b9, 0x766125a9 );
  TEST_FPRED_VV_OP_rd13( 2447,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005269d43, 0x7c69a228, 0x05269d43 );
  TEST_FPRED_VV_OP_113( 2448,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005269d43, 0x7c69a228, 0x05269d43 );
  TEST_FPRED_VV_OP_rd14( 2449,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001591c3bb, 0x540da0bc, 0x1591c3bb );
  TEST_FPRED_VV_OP_114( 2450,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001591c3bb, 0x540da0bc, 0x1591c3bb );
  TEST_FPRED_VV_OP_rd15( 2451,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f19aaaa, 0xb917bde6, 0x7f19aaaa );
  TEST_FPRED_VV_OP_115( 2452,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f19aaaa, 0xb917bde6, 0x7f19aaaa );
  TEST_FPRED_VV_OP_rd17( 2453,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000098c5df64, 0x5c51c72f, 0x98c5df64 );
  TEST_FPRED_VV_OP_117( 2454,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000098c5df64, 0x5c51c72f, 0x98c5df64 );
  TEST_FPRED_VV_OP_rd18( 2455,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058a4f5f8, 0xe66cd16e, 0x58a4f5f8 );
  TEST_FPRED_VV_OP_118( 2456,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058a4f5f8, 0xe66cd16e, 0x58a4f5f8 );
  TEST_FPRED_VV_OP_rd19( 2457,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b5d4991, 0xf8e67fb0, 0x1b5d4991 );
  TEST_FPRED_VV_OP_119( 2458,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b5d4991, 0xf8e67fb0, 0x1b5d4991 );
  TEST_FPRED_VV_OP_rd20( 2459,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002046b89, 0x45b5c5f1, 0x02046b89 );
  TEST_FPRED_VV_OP_120( 2460,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002046b89, 0x45b5c5f1, 0x02046b89 );
  TEST_FPRED_VV_OP_rd21( 2461,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f4223dde, 0x6bd9ba9a, 0xf4223dde );
  TEST_FPRED_VV_OP_121( 2462,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f4223dde, 0x6bd9ba9a, 0xf4223dde );
  TEST_FPRED_VV_OP_rd22( 2463,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf05164e, 0x9c1e8667, 0xcf05164e );
  TEST_FPRED_VV_OP_122( 2464,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf05164e, 0x9c1e8667, 0xcf05164e );
  TEST_FPRED_VV_OP_rd23( 2465,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa67f476, 0x8a2c7d45, 0xaa67f476 );
  TEST_FPRED_VV_OP_123( 2466,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa67f476, 0x8a2c7d45, 0xaa67f476 );
  TEST_FPRED_VV_OP_rd25( 2467,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f51944a, 0xcc06f22d, 0x8f51944a );
  TEST_FPRED_VV_OP_125( 2468,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f51944a, 0xcc06f22d, 0x8f51944a );
  TEST_FPRED_VV_OP_rd26( 2469,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001d283cd, 0x6ac84f04, 0x01d283cd );
  TEST_FPRED_VV_OP_126( 2470,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001d283cd, 0x6ac84f04, 0x01d283cd );
  TEST_FPRED_VV_OP_rd27( 2471,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019ea57fc, 0x581f3afc, 0x19ea57fc );
  TEST_FPRED_VV_OP_127( 2472,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019ea57fc, 0x581f3afc, 0x19ea57fc );
  TEST_FPRED_VV_OP_rd28( 2473,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e246d9c3, 0x6122b26e, 0xe246d9c3 );
  TEST_FPRED_VV_OP_128( 2474,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e246d9c3, 0x6122b26e, 0xe246d9c3 );
  TEST_FPRED_VV_OP_rd29( 2475,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3ede2cf, 0xff4914a8, 0xb3ede2cf );
  TEST_FPRED_VV_OP_129( 2476,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3ede2cf, 0xff4914a8, 0xb3ede2cf );
  TEST_FPRED_VV_OP_rd30( 2477,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000661a98bb, 0xf0a80a4a, 0x661a98bb );
  TEST_FPRED_VV_OP_130( 2478,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000661a98bb, 0xf0a80a4a, 0x661a98bb );
  TEST_FPRED_VV_OP_rd31( 2479,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2e52100, 0x44577dfa, 0xd2e52100 );
  TEST_FPRED_VV_OP_131( 2480,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2e52100, 0x44577dfa, 0xd2e52100 );
  TEST_FPRED_VV_OP_rd1( 2481,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b54c779c, 0xe31172b1, 0xb54c779c );
  TEST_FPRED_VV_OP_11( 2482,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b54c779c, 0xe31172b1, 0xb54c779c );
  TEST_FPRED_VV_OP_rd2( 2483,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008b890ead, 0x30b00f6c, 0x8b890ead );
  TEST_FPRED_VV_OP_12( 2484,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008b890ead, 0x30b00f6c, 0x8b890ead );
  TEST_FPRED_VV_OP_rd3( 2485,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f6d8ebb, 0x9cd4367e, 0x6f6d8ebb );
  TEST_FPRED_VV_OP_13( 2486,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f6d8ebb, 0x9cd4367e, 0x6f6d8ebb );
  TEST_FPRED_VV_OP_rd4( 2487,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000701a72e3, 0x53266571, 0x701a72e3 );
  TEST_FPRED_VV_OP_14( 2488,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000701a72e3, 0x53266571, 0x701a72e3 );
  TEST_FPRED_VV_OP_rd5( 2489,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018854a53, 0x39a2b9a9, 0x18854a53 );
  TEST_FPRED_VV_OP_15( 2490,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018854a53, 0x39a2b9a9, 0x18854a53 );
  TEST_FPRED_VV_OP_rd6( 2491,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d8b646c3, 0xf628feb7, 0xd8b646c3 );
  TEST_FPRED_VV_OP_16( 2492,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d8b646c3, 0xf628feb7, 0xd8b646c3 );
  TEST_FPRED_VV_OP_rd7( 2493,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a859a9b, 0x519a8397, 0x7a859a9b );
  TEST_FPRED_VV_OP_17( 2494,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a859a9b, 0x519a8397, 0x7a859a9b );
  TEST_FPRED_VV_OP_rd9( 2495,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006a49fdb6, 0xfe0b7d68, 0x6a49fdb6 );
  TEST_FPRED_VV_OP_19( 2496,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006a49fdb6, 0xfe0b7d68, 0x6a49fdb6 );
  TEST_FPRED_VV_OP_rd10( 2497,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e54c4797, 0xd2ec6f9d, 0xe54c4797 );
  TEST_FPRED_VV_OP_110( 2498,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e54c4797, 0xd2ec6f9d, 0xe54c4797 );
  TEST_FPRED_VV_OP_rd11( 2499,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a13e91a2, 0x7b9f0a06, 0xa13e91a2 );
  TEST_FPRED_VV_OP_111( 2500,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a13e91a2, 0x7b9f0a06, 0xa13e91a2 );
  TEST_FPRED_VV_OP_rd12( 2501,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056a16ea4, 0xe25828a9, 0x56a16ea4 );
  TEST_FPRED_VV_OP_112( 2502,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056a16ea4, 0xe25828a9, 0x56a16ea4 );
  TEST_FPRED_VV_OP_rd13( 2503,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008dc0e4ff, 0x6ff72e08, 0x8dc0e4ff );
  TEST_FPRED_VV_OP_113( 2504,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008dc0e4ff, 0x6ff72e08, 0x8dc0e4ff );
  TEST_FPRED_VV_OP_rd14( 2505,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000267eb8c3, 0xae72d34d, 0x267eb8c3 );
  TEST_FPRED_VV_OP_114( 2506,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000267eb8c3, 0xae72d34d, 0x267eb8c3 );
  TEST_FPRED_VV_OP_rd15( 2507,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcdd3109, 0xf61fde3e, 0xbcdd3109 );
  TEST_FPRED_VV_OP_115( 2508,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcdd3109, 0xf61fde3e, 0xbcdd3109 );
  TEST_FPRED_VV_OP_rd17( 2509,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c592af51, 0x3bb5e465, 0xc592af51 );
  TEST_FPRED_VV_OP_117( 2510,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c592af51, 0x3bb5e465, 0xc592af51 );
  TEST_FPRED_VV_OP_rd18( 2511,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000639952be, 0x89b4574b, 0x639952be );
  TEST_FPRED_VV_OP_118( 2512,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000639952be, 0x89b4574b, 0x639952be );
  TEST_FPRED_VV_OP_rd19( 2513,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ecc40d7, 0xae23f858, 0x5ecc40d7 );
  TEST_FPRED_VV_OP_119( 2514,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ecc40d7, 0xae23f858, 0x5ecc40d7 );
  TEST_FPRED_VV_OP_rd20( 2515,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e1872a, 0x32b4b342, 0x08e1872a );
  TEST_FPRED_VV_OP_120( 2516,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e1872a, 0x32b4b342, 0x08e1872a );
  TEST_FPRED_VV_OP_rd21( 2517,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000699b0430, 0x9c5034c7, 0x699b0430 );
  TEST_FPRED_VV_OP_121( 2518,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000699b0430, 0x9c5034c7, 0x699b0430 );
  TEST_FPRED_VV_OP_rd22( 2519,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000515deb63, 0x6129cabb, 0x515deb63 );
  TEST_FPRED_VV_OP_122( 2520,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000515deb63, 0x6129cabb, 0x515deb63 );
  TEST_FPRED_VV_OP_rd23( 2521,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055107f38, 0x9af4bc9a, 0x55107f38 );
  TEST_FPRED_VV_OP_123( 2522,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055107f38, 0x9af4bc9a, 0x55107f38 );
  TEST_FPRED_VV_OP_rd25( 2523,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009444a8cf, 0x7d485219, 0x9444a8cf );
  TEST_FPRED_VV_OP_125( 2524,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009444a8cf, 0x7d485219, 0x9444a8cf );
  TEST_FPRED_VV_OP_rd26( 2525,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b6f020e, 0x4a3b445a, 0x3b6f020e );
  TEST_FPRED_VV_OP_126( 2526,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b6f020e, 0x4a3b445a, 0x3b6f020e );
  TEST_FPRED_VV_OP_rd27( 2527,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d7a2c1a, 0x276f4a82, 0x3d7a2c1a );
  TEST_FPRED_VV_OP_127( 2528,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d7a2c1a, 0x276f4a82, 0x3d7a2c1a );
  TEST_FPRED_VV_OP_rd28( 2529,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e12d2042, 0xdd7bf9fc, 0xe12d2042 );
  TEST_FPRED_VV_OP_128( 2530,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e12d2042, 0xdd7bf9fc, 0xe12d2042 );
  TEST_FPRED_VV_OP_rd29( 2531,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ddc02bcf, 0x6797c5aa, 0xddc02bcf );
  TEST_FPRED_VV_OP_129( 2532,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ddc02bcf, 0x6797c5aa, 0xddc02bcf );
  TEST_FPRED_VV_OP_rd30( 2533,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d793ec85, 0x9c739bc0, 0xd793ec85 );
  TEST_FPRED_VV_OP_130( 2534,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d793ec85, 0x9c739bc0, 0xd793ec85 );
  TEST_FPRED_VV_OP_rd31( 2535,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089179c2a, 0x37e6587a, 0x89179c2a );
  TEST_FPRED_VV_OP_131( 2536,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089179c2a, 0x37e6587a, 0x89179c2a );
  TEST_FPRED_VV_OP_rd1( 2537,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b5bb683, 0x292fa2d6, 0x7b5bb683 );
  TEST_FPRED_VV_OP_11( 2538,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b5bb683, 0x292fa2d6, 0x7b5bb683 );
  TEST_FPRED_VV_OP_rd2( 2539,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3060550, 0x57b6f48d, 0xf3060550 );
  TEST_FPRED_VV_OP_12( 2540,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3060550, 0x57b6f48d, 0xf3060550 );
  TEST_FPRED_VV_OP_rd3( 2541,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eb6622a3, 0xa87ebd39, 0xeb6622a3 );
  TEST_FPRED_VV_OP_13( 2542,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eb6622a3, 0xa87ebd39, 0xeb6622a3 );
  TEST_FPRED_VV_OP_rd4( 2543,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000370df4fd, 0xda3b9803, 0x370df4fd );
  TEST_FPRED_VV_OP_14( 2544,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000370df4fd, 0xda3b9803, 0x370df4fd );
  TEST_FPRED_VV_OP_rd5( 2545,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7026d7d, 0xcf98db80, 0xe7026d7d );
  TEST_FPRED_VV_OP_15( 2546,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7026d7d, 0xcf98db80, 0xe7026d7d );
  TEST_FPRED_VV_OP_rd6( 2547,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a7ef2bad, 0xa1993841, 0xa7ef2bad );
  TEST_FPRED_VV_OP_16( 2548,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a7ef2bad, 0xa1993841, 0xa7ef2bad );
  TEST_FPRED_VV_OP_rd7( 2549,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d994fff, 0x214c72b3, 0x5d994fff );
  TEST_FPRED_VV_OP_17( 2550,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d994fff, 0x214c72b3, 0x5d994fff );
  TEST_FPRED_VV_OP_rd9( 2551,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072d35639, 0x3d7777d1, 0x72d35639 );
  TEST_FPRED_VV_OP_19( 2552,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072d35639, 0x3d7777d1, 0x72d35639 );
  TEST_FPRED_VV_OP_rd10( 2553,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027c70109, 0x579e0114, 0x27c70109 );
  TEST_FPRED_VV_OP_110( 2554,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027c70109, 0x579e0114, 0x27c70109 );
  TEST_FPRED_VV_OP_rd11( 2555,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f283b49c, 0x13d30cfc, 0xf283b49c );
  TEST_FPRED_VV_OP_111( 2556,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f283b49c, 0x13d30cfc, 0xf283b49c );
  TEST_FPRED_VV_OP_rd12( 2557,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003c70fd0b, 0x8a19a62b, 0x3c70fd0b );
  TEST_FPRED_VV_OP_112( 2558,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003c70fd0b, 0x8a19a62b, 0x3c70fd0b );
  TEST_FPRED_VV_OP_rd13( 2559,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001f46077b, 0x07041e7d, 0x1f46077b );
  TEST_FPRED_VV_OP_113( 2560,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001f46077b, 0x07041e7d, 0x1f46077b );
  TEST_FPRED_VV_OP_rd14( 2561,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c626d7b5, 0x3b192289, 0xc626d7b5 );
  TEST_FPRED_VV_OP_114( 2562,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c626d7b5, 0x3b192289, 0xc626d7b5 );
  TEST_FPRED_VV_OP_rd15( 2563,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d8664806, 0xb8f72c52, 0xd8664806 );
  TEST_FPRED_VV_OP_115( 2564,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d8664806, 0xb8f72c52, 0xd8664806 );
  TEST_FPRED_VV_OP_rd17( 2565,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069155a81, 0x2eadf0ac, 0x69155a81 );
  TEST_FPRED_VV_OP_117( 2566,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069155a81, 0x2eadf0ac, 0x69155a81 );
  TEST_FPRED_VV_OP_rd18( 2567,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e78f6b83, 0xdbfec094, 0xe78f6b83 );
  TEST_FPRED_VV_OP_118( 2568,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e78f6b83, 0xdbfec094, 0xe78f6b83 );
  TEST_FPRED_VV_OP_rd19( 2569,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009aba564b, 0x8c1ae516, 0x9aba564b );
  TEST_FPRED_VV_OP_119( 2570,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009aba564b, 0x8c1ae516, 0x9aba564b );
  TEST_FPRED_VV_OP_rd20( 2571,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003616aeda, 0xbb97f344, 0x3616aeda );
  TEST_FPRED_VV_OP_120( 2572,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003616aeda, 0xbb97f344, 0x3616aeda );
  TEST_FPRED_VV_OP_rd21( 2573,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b6b43b38, 0x2d614a74, 0xb6b43b38 );
  TEST_FPRED_VV_OP_121( 2574,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b6b43b38, 0x2d614a74, 0xb6b43b38 );
  TEST_FPRED_VV_OP_rd22( 2575,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048363fc9, 0xdbb7bc69, 0x48363fc9 );
  TEST_FPRED_VV_OP_122( 2576,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048363fc9, 0xdbb7bc69, 0x48363fc9 );
  TEST_FPRED_VV_OP_rd23( 2577,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018fd8be4, 0x75160c80, 0x18fd8be4 );
  TEST_FPRED_VV_OP_123( 2578,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018fd8be4, 0x75160c80, 0x18fd8be4 );
  TEST_FPRED_VV_OP_rd25( 2579,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019e51db5, 0xb3301eb1, 0x19e51db5 );
  TEST_FPRED_VV_OP_125( 2580,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019e51db5, 0xb3301eb1, 0x19e51db5 );
  TEST_FPRED_VV_OP_rd26( 2581,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e0c53c63, 0x513b24cd, 0xe0c53c63 );
  TEST_FPRED_VV_OP_126( 2582,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e0c53c63, 0x513b24cd, 0xe0c53c63 );
  TEST_FPRED_VV_OP_rd27( 2583,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000192352ad, 0xd2d18754, 0x192352ad );
  TEST_FPRED_VV_OP_127( 2584,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000192352ad, 0xd2d18754, 0x192352ad );
  TEST_FPRED_VV_OP_rd28( 2585,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005639134a, 0x0fccea6a, 0x5639134a );
  TEST_FPRED_VV_OP_128( 2586,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005639134a, 0x0fccea6a, 0x5639134a );
  TEST_FPRED_VV_OP_rd29( 2587,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b3c24ec, 0xb4e15b15, 0x3b3c24ec );
  TEST_FPRED_VV_OP_129( 2588,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b3c24ec, 0xb4e15b15, 0x3b3c24ec );
  TEST_FPRED_VV_OP_rd30( 2589,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008376196a, 0xb546b05b, 0x8376196a );
  TEST_FPRED_VV_OP_130( 2590,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008376196a, 0xb546b05b, 0x8376196a );
  TEST_FPRED_VV_OP_rd31( 2591,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000024fcba35, 0x0f952852, 0x24fcba35 );
  TEST_FPRED_VV_OP_131( 2592,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000024fcba35, 0x0f952852, 0x24fcba35 );
  TEST_FPRED_VV_OP_rd1( 2593,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002cd12f68, 0x7dbe9d89, 0x2cd12f68 );
  TEST_FPRED_VV_OP_11( 2594,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002cd12f68, 0x7dbe9d89, 0x2cd12f68 );
  TEST_FPRED_VV_OP_rd2( 2595,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b91a296, 0xf8791ac8, 0x5b91a296 );
  TEST_FPRED_VV_OP_12( 2596,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b91a296, 0xf8791ac8, 0x5b91a296 );
  TEST_FPRED_VV_OP_rd3( 2597,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9edbe9, 0xd924a386, 0x0a9edbe9 );
  TEST_FPRED_VV_OP_13( 2598,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9edbe9, 0xd924a386, 0x0a9edbe9 );
  TEST_FPRED_VV_OP_rd4( 2599,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bc4fb8ab, 0xdf5f99f4, 0xbc4fb8ab );
  TEST_FPRED_VV_OP_14( 2600,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bc4fb8ab, 0xdf5f99f4, 0xbc4fb8ab );
  TEST_FPRED_VV_OP_rd5( 2601,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000068714601, 0x6618d504, 0x68714601 );
  TEST_FPRED_VV_OP_15( 2602,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000068714601, 0x6618d504, 0x68714601 );
  TEST_FPRED_VV_OP_rd6( 2603,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f6077257, 0x8849a498, 0xf6077257 );
  TEST_FPRED_VV_OP_16( 2604,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f6077257, 0x8849a498, 0xf6077257 );
  TEST_FPRED_VV_OP_rd7( 2605,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006baa10f2, 0xf2961261, 0x6baa10f2 );
  TEST_FPRED_VV_OP_17( 2606,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006baa10f2, 0xf2961261, 0x6baa10f2 );
  TEST_FPRED_VV_OP_rd9( 2607,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009d9d1deb, 0xd9d90f64, 0x9d9d1deb );
  TEST_FPRED_VV_OP_19( 2608,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009d9d1deb, 0xd9d90f64, 0x9d9d1deb );
  TEST_FPRED_VV_OP_rd10( 2609,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052a2c944, 0x9ceb7bc1, 0x52a2c944 );
  TEST_FPRED_VV_OP_110( 2610,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052a2c944, 0x9ceb7bc1, 0x52a2c944 );
  TEST_FPRED_VV_OP_rd11( 2611,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069da5807, 0x07b60686, 0x69da5807 );
  TEST_FPRED_VV_OP_111( 2612,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069da5807, 0x07b60686, 0x69da5807 );
  TEST_FPRED_VV_OP_rd12( 2613,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005643827a, 0x92dc0a8a, 0x5643827a );
  TEST_FPRED_VV_OP_112( 2614,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005643827a, 0x92dc0a8a, 0x5643827a );
  TEST_FPRED_VV_OP_rd13( 2615,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000548fa17d, 0x93997373, 0x548fa17d );
  TEST_FPRED_VV_OP_113( 2616,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000548fa17d, 0x93997373, 0x548fa17d );
  TEST_FPRED_VV_OP_rd14( 2617,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000125e3bc, 0xe19d8f2e, 0x0125e3bc );
  TEST_FPRED_VV_OP_114( 2618,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000125e3bc, 0xe19d8f2e, 0x0125e3bc );
  TEST_FPRED_VV_OP_rd15( 2619,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000034294c82, 0xdd4ad4c7, 0x34294c82 );
  TEST_FPRED_VV_OP_115( 2620,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000034294c82, 0xdd4ad4c7, 0x34294c82 );
  TEST_FPRED_VV_OP_rd17( 2621,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c624102, 0x46365e84, 0x7c624102 );
  TEST_FPRED_VV_OP_117( 2622,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c624102, 0x46365e84, 0x7c624102 );
  TEST_FPRED_VV_OP_rd18( 2623,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081457ac4, 0x92db17e9, 0x81457ac4 );
  TEST_FPRED_VV_OP_118( 2624,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081457ac4, 0x92db17e9, 0x81457ac4 );
  TEST_FPRED_VV_OP_rd19( 2625,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000169e8d7e, 0x65cdd905, 0x169e8d7e );
  TEST_FPRED_VV_OP_119( 2626,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000169e8d7e, 0x65cdd905, 0x169e8d7e );
  TEST_FPRED_VV_OP_rd20( 2627,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082d5d8cc, 0xdd60629d, 0x82d5d8cc );
  TEST_FPRED_VV_OP_120( 2628,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082d5d8cc, 0xdd60629d, 0x82d5d8cc );
  TEST_FPRED_VV_OP_rd21( 2629,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002afa1e78, 0x16478c58, 0x2afa1e78 );
  TEST_FPRED_VV_OP_121( 2630,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002afa1e78, 0x16478c58, 0x2afa1e78 );
  TEST_FPRED_VV_OP_rd22( 2631,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db9ca373, 0xd11c290e, 0xdb9ca373 );
  TEST_FPRED_VV_OP_122( 2632,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db9ca373, 0xd11c290e, 0xdb9ca373 );
  TEST_FPRED_VV_OP_rd23( 2633,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a002b93, 0x0d899e08, 0x8a002b93 );
  TEST_FPRED_VV_OP_123( 2634,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a002b93, 0x0d899e08, 0x8a002b93 );
  TEST_FPRED_VV_OP_rd25( 2635,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0570d1e, 0xac39d155, 0xc0570d1e );
  TEST_FPRED_VV_OP_125( 2636,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0570d1e, 0xac39d155, 0xc0570d1e );
  TEST_FPRED_VV_OP_rd26( 2637,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006682aa99, 0x0f7a7733, 0x6682aa99 );
  TEST_FPRED_VV_OP_126( 2638,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006682aa99, 0x0f7a7733, 0x6682aa99 );
  TEST_FPRED_VV_OP_rd27( 2639,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d3ab2b5b, 0xa946bce1, 0xd3ab2b5b );
  TEST_FPRED_VV_OP_127( 2640,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d3ab2b5b, 0xa946bce1, 0xd3ab2b5b );
  TEST_FPRED_VV_OP_rd28( 2641,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032ce890a, 0x4e00d0f3, 0x32ce890a );
  TEST_FPRED_VV_OP_128( 2642,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032ce890a, 0x4e00d0f3, 0x32ce890a );
  TEST_FPRED_VV_OP_rd29( 2643,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050408aba, 0x3aa41dc4, 0x50408aba );
  TEST_FPRED_VV_OP_129( 2644,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050408aba, 0x3aa41dc4, 0x50408aba );
  TEST_FPRED_VV_OP_rd30( 2645,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4ea3655, 0x0a9f9511, 0xb4ea3655 );
  TEST_FPRED_VV_OP_130( 2646,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4ea3655, 0x0a9f9511, 0xb4ea3655 );
  TEST_FPRED_VV_OP_rd31( 2647,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057385489, 0x5398487b, 0x57385489 );
  TEST_FPRED_VV_OP_131( 2648,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057385489, 0x5398487b, 0x57385489 );
  TEST_FPRED_VV_OP_rd1( 2649,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eef03e8d, 0xf3782028, 0xeef03e8d );
  TEST_FPRED_VV_OP_11( 2650,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eef03e8d, 0xf3782028, 0xeef03e8d );
  TEST_FPRED_VV_OP_rd2( 2651,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de17d645, 0x69b76600, 0xde17d645 );
  TEST_FPRED_VV_OP_12( 2652,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de17d645, 0x69b76600, 0xde17d645 );
  TEST_FPRED_VV_OP_rd3( 2653,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7f9a32, 0x8ca3efb3, 0x0e7f9a32 );
  TEST_FPRED_VV_OP_13( 2654,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7f9a32, 0x8ca3efb3, 0x0e7f9a32 );
  TEST_FPRED_VV_OP_rd4( 2655,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeca2f3b, 0xcb7da0de, 0xeeca2f3b );
  TEST_FPRED_VV_OP_14( 2656,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeca2f3b, 0xcb7da0de, 0xeeca2f3b );
  TEST_FPRED_VV_OP_rd5( 2657,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f14f95f4, 0x552d23d2, 0xf14f95f4 );
  TEST_FPRED_VV_OP_15( 2658,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f14f95f4, 0x552d23d2, 0xf14f95f4 );
  TEST_FPRED_VV_OP_rd6( 2659,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000063b7a76e, 0x3436f14c, 0x63b7a76e );
  TEST_FPRED_VV_OP_16( 2660,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000063b7a76e, 0x3436f14c, 0x63b7a76e );
  TEST_FPRED_VV_OP_rd7( 2661,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcc9ab43, 0x6f5f3f35, 0xbcc9ab43 );
  TEST_FPRED_VV_OP_17( 2662,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcc9ab43, 0x6f5f3f35, 0xbcc9ab43 );
  TEST_FPRED_VV_OP_rd9( 2663,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065eed45a, 0xd20dfb9f, 0x65eed45a );
  TEST_FPRED_VV_OP_19( 2664,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065eed45a, 0xd20dfb9f, 0x65eed45a );
  TEST_FPRED_VV_OP_rd10( 2665,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c8e4911e, 0x8723b674, 0xc8e4911e );
  TEST_FPRED_VV_OP_110( 2666,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c8e4911e, 0x8723b674, 0xc8e4911e );
  TEST_FPRED_VV_OP_rd11( 2667,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061bee6e3, 0x0f348d99, 0x61bee6e3 );
  TEST_FPRED_VV_OP_111( 2668,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061bee6e3, 0x0f348d99, 0x61bee6e3 );
  TEST_FPRED_VV_OP_rd12( 2669,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a888b0b, 0x3886ab90, 0x5a888b0b );
  TEST_FPRED_VV_OP_112( 2670,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a888b0b, 0x3886ab90, 0x5a888b0b );
  TEST_FPRED_VV_OP_rd13( 2671,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e8b9b2cd, 0x0334f85a, 0xe8b9b2cd );
  TEST_FPRED_VV_OP_113( 2672,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e8b9b2cd, 0x0334f85a, 0xe8b9b2cd );
  TEST_FPRED_VV_OP_rd14( 2673,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001bc3cb1f, 0xea1670df, 0x1bc3cb1f );
  TEST_FPRED_VV_OP_114( 2674,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001bc3cb1f, 0xea1670df, 0x1bc3cb1f );
  TEST_FPRED_VV_OP_rd15( 2675,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c9a9490, 0xd13744b3, 0x6c9a9490 );
  TEST_FPRED_VV_OP_115( 2676,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c9a9490, 0xd13744b3, 0x6c9a9490 );
  TEST_FPRED_VV_OP_rd17( 2677,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089b67375, 0x1daf3b01, 0x89b67375 );
  TEST_FPRED_VV_OP_117( 2678,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089b67375, 0x1daf3b01, 0x89b67375 );
  TEST_FPRED_VV_OP_rd18( 2679,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d4bea2c1, 0xa9c63a58, 0xd4bea2c1 );
  TEST_FPRED_VV_OP_118( 2680,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d4bea2c1, 0xa9c63a58, 0xd4bea2c1 );
  TEST_FPRED_VV_OP_rd19( 2681,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d7ac95f6, 0xec747b1c, 0xd7ac95f6 );
  TEST_FPRED_VV_OP_119( 2682,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d7ac95f6, 0xec747b1c, 0xd7ac95f6 );
  TEST_FPRED_VV_OP_rd20( 2683,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4fe5b7c, 0x0c6eccf7, 0xb4fe5b7c );
  TEST_FPRED_VV_OP_120( 2684,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4fe5b7c, 0x0c6eccf7, 0xb4fe5b7c );
  TEST_FPRED_VV_OP_rd21( 2685,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000059dac688, 0x4cad30bc, 0x59dac688 );
  TEST_FPRED_VV_OP_121( 2686,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000059dac688, 0x4cad30bc, 0x59dac688 );
  TEST_FPRED_VV_OP_rd22( 2687,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d864b555, 0x477b3771, 0xd864b555 );
  TEST_FPRED_VV_OP_122( 2688,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d864b555, 0x477b3771, 0xd864b555 );
  TEST_FPRED_VV_OP_rd23( 2689,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0a45c48, 0xaeef6b3d, 0xf0a45c48 );
  TEST_FPRED_VV_OP_123( 2690,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0a45c48, 0xaeef6b3d, 0xf0a45c48 );
  TEST_FPRED_VV_OP_rd25( 2691,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000078f0b6be, 0xb7e378a2, 0x78f0b6be );
  TEST_FPRED_VV_OP_125( 2692,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000078f0b6be, 0xb7e378a2, 0x78f0b6be );
  TEST_FPRED_VV_OP_rd26( 2693,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea5bd793, 0xb602bd3e, 0xea5bd793 );
  TEST_FPRED_VV_OP_126( 2694,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea5bd793, 0xb602bd3e, 0xea5bd793 );
  TEST_FPRED_VV_OP_rd27( 2695,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000837bb1b9, 0xaf130fb6, 0x837bb1b9 );
  TEST_FPRED_VV_OP_127( 2696,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000837bb1b9, 0xaf130fb6, 0x837bb1b9 );
  TEST_FPRED_VV_OP_rd28( 2697,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8879ad6, 0x31a4314a, 0xb8879ad6 );
  TEST_FPRED_VV_OP_128( 2698,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8879ad6, 0x31a4314a, 0xb8879ad6 );
  TEST_FPRED_VV_OP_rd29( 2699,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a62bf1a5, 0xc723b3d7, 0xa62bf1a5 );
  TEST_FPRED_VV_OP_129( 2700,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a62bf1a5, 0xc723b3d7, 0xa62bf1a5 );
  TEST_FPRED_VV_OP_rd30( 2701,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027457e6e, 0x7015aa42, 0x27457e6e );
  TEST_FPRED_VV_OP_130( 2702,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027457e6e, 0x7015aa42, 0x27457e6e );
  TEST_FPRED_VV_OP_rd31( 2703,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c42dea11, 0x0928aa3e, 0xc42dea11 );
  TEST_FPRED_VV_OP_131( 2704,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c42dea11, 0x0928aa3e, 0xc42dea11 );
  TEST_FPRED_VV_OP_rd1( 2705,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bc0e79b9, 0x22ef3704, 0xbc0e79b9 );
  TEST_FPRED_VV_OP_11( 2706,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bc0e79b9, 0x22ef3704, 0xbc0e79b9 );
  TEST_FPRED_VV_OP_rd2( 2707,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072ae0ac9, 0xf352256b, 0x72ae0ac9 );
  TEST_FPRED_VV_OP_12( 2708,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072ae0ac9, 0xf352256b, 0x72ae0ac9 );
  TEST_FPRED_VV_OP_rd3( 2709,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e29df404, 0x4da52bc4, 0xe29df404 );
  TEST_FPRED_VV_OP_13( 2710,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e29df404, 0x4da52bc4, 0xe29df404 );
  TEST_FPRED_VV_OP_rd4( 2711,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b117f9b7, 0x546d8880, 0xb117f9b7 );
  TEST_FPRED_VV_OP_14( 2712,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b117f9b7, 0x546d8880, 0xb117f9b7 );
  TEST_FPRED_VV_OP_rd5( 2713,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0abe8ea, 0xf78ee9c7, 0xf0abe8ea );
  TEST_FPRED_VV_OP_15( 2714,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0abe8ea, 0xf78ee9c7, 0xf0abe8ea );
  TEST_FPRED_VV_OP_rd6( 2715,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b82f781, 0xc95bd691, 0x5b82f781 );
  TEST_FPRED_VV_OP_16( 2716,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b82f781, 0xc95bd691, 0x5b82f781 );
  TEST_FPRED_VV_OP_rd7( 2717,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003aba4a26, 0x5239bc94, 0x3aba4a26 );
  TEST_FPRED_VV_OP_17( 2718,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003aba4a26, 0x5239bc94, 0x3aba4a26 );
  TEST_FPRED_VV_OP_rd9( 2719,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000688be24b, 0x67e301b5, 0x688be24b );
  TEST_FPRED_VV_OP_19( 2720,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000688be24b, 0x67e301b5, 0x688be24b );
  TEST_FPRED_VV_OP_rd10( 2721,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021ad1582, 0x240451c9, 0x21ad1582 );
  TEST_FPRED_VV_OP_110( 2722,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021ad1582, 0x240451c9, 0x21ad1582 );
  TEST_FPRED_VV_OP_rd11( 2723,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a294f0b8, 0x27c6864f, 0xa294f0b8 );
  TEST_FPRED_VV_OP_111( 2724,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a294f0b8, 0x27c6864f, 0xa294f0b8 );
  TEST_FPRED_VV_OP_rd12( 2725,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a6440f97, 0x26c6f274, 0xa6440f97 );
  TEST_FPRED_VV_OP_112( 2726,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a6440f97, 0x26c6f274, 0xa6440f97 );
  TEST_FPRED_VV_OP_rd13( 2727,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ea2d0b9, 0x25f55d4e, 0x5ea2d0b9 );
  TEST_FPRED_VV_OP_113( 2728,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ea2d0b9, 0x25f55d4e, 0x5ea2d0b9 );
  TEST_FPRED_VV_OP_rd14( 2729,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bdc0571c, 0x5d2eb86f, 0xbdc0571c );
  TEST_FPRED_VV_OP_114( 2730,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bdc0571c, 0x5d2eb86f, 0xbdc0571c );
  TEST_FPRED_VV_OP_rd15( 2731,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002442a91b, 0x828a97e7, 0x2442a91b );
  TEST_FPRED_VV_OP_115( 2732,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002442a91b, 0x828a97e7, 0x2442a91b );
  TEST_FPRED_VV_OP_rd17( 2733,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000533c8dfe, 0x3d4617ee, 0x533c8dfe );
  TEST_FPRED_VV_OP_117( 2734,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000533c8dfe, 0x3d4617ee, 0x533c8dfe );
  TEST_FPRED_VV_OP_rd18( 2735,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e21ef6aa, 0x09322d7d, 0xe21ef6aa );
  TEST_FPRED_VV_OP_118( 2736,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e21ef6aa, 0x09322d7d, 0xe21ef6aa );
  TEST_FPRED_VV_OP_rd19( 2737,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000919fa67d, 0x1eca00ff, 0x919fa67d );
  TEST_FPRED_VV_OP_119( 2738,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000919fa67d, 0x1eca00ff, 0x919fa67d );
  TEST_FPRED_VV_OP_rd20( 2739,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000873f1671, 0x2ecc47d2, 0x873f1671 );
  TEST_FPRED_VV_OP_120( 2740,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000873f1671, 0x2ecc47d2, 0x873f1671 );
  TEST_FPRED_VV_OP_rd21( 2741,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a9f2e23, 0xf3bb23d6, 0x2a9f2e23 );
  TEST_FPRED_VV_OP_121( 2742,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a9f2e23, 0xf3bb23d6, 0x2a9f2e23 );
  TEST_FPRED_VV_OP_rd22( 2743,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be22927b, 0xab05bda1, 0xbe22927b );
  TEST_FPRED_VV_OP_122( 2744,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be22927b, 0xab05bda1, 0xbe22927b );
  TEST_FPRED_VV_OP_rd23( 2745,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a992efc3, 0xbebbadd8, 0xa992efc3 );
  TEST_FPRED_VV_OP_123( 2746,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a992efc3, 0xbebbadd8, 0xa992efc3 );
  TEST_FPRED_VV_OP_rd25( 2747,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004447a68d, 0x2b20cd36, 0x4447a68d );
  TEST_FPRED_VV_OP_125( 2748,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004447a68d, 0x2b20cd36, 0x4447a68d );
  TEST_FPRED_VV_OP_rd26( 2749,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f78b414, 0x524f229d, 0x3f78b414 );
  TEST_FPRED_VV_OP_126( 2750,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f78b414, 0x524f229d, 0x3f78b414 );
  TEST_FPRED_VV_OP_rd27( 2751,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bd72133e, 0x5254e959, 0xbd72133e );
  TEST_FPRED_VV_OP_127( 2752,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bd72133e, 0x5254e959, 0xbd72133e );
  TEST_FPRED_VV_OP_rd28( 2753,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cee6997, 0x2aef92ad, 0x0cee6997 );
  TEST_FPRED_VV_OP_128( 2754,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cee6997, 0x2aef92ad, 0x0cee6997 );
  TEST_FPRED_VV_OP_rd29( 2755,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a1b49f6, 0x31229858, 0x1a1b49f6 );
  TEST_FPRED_VV_OP_129( 2756,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a1b49f6, 0x31229858, 0x1a1b49f6 );
  TEST_FPRED_VV_OP_rd30( 2757,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074cefef0, 0xb06bc8f6, 0x74cefef0 );
  TEST_FPRED_VV_OP_130( 2758,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074cefef0, 0xb06bc8f6, 0x74cefef0 );
  TEST_FPRED_VV_OP_rd31( 2759,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db8a3bd9, 0x5dcce032, 0xdb8a3bd9 );
  TEST_FPRED_VV_OP_131( 2760,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db8a3bd9, 0x5dcce032, 0xdb8a3bd9 );
  TEST_FPRED_VV_OP_rd1( 2761,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004b329421, 0x310e5031, 0x4b329421 );
  TEST_FPRED_VV_OP_11( 2762,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004b329421, 0x310e5031, 0x4b329421 );
  TEST_FPRED_VV_OP_rd2( 2763,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a31ab60, 0xf2069096, 0x3a31ab60 );
  TEST_FPRED_VV_OP_12( 2764,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a31ab60, 0xf2069096, 0x3a31ab60 );
  TEST_FPRED_VV_OP_rd3( 2765,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e953c01f, 0x072a3060, 0xe953c01f );
  TEST_FPRED_VV_OP_13( 2766,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e953c01f, 0x072a3060, 0xe953c01f );
  TEST_FPRED_VV_OP_rd4( 2767,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f147ddf, 0x9c33042c, 0x0f147ddf );
  TEST_FPRED_VV_OP_14( 2768,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f147ddf, 0x9c33042c, 0x0f147ddf );
  TEST_FPRED_VV_OP_rd5( 2769,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf457330, 0x06dd7d38, 0xcf457330 );
  TEST_FPRED_VV_OP_15( 2770,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf457330, 0x06dd7d38, 0xcf457330 );
  TEST_FPRED_VV_OP_rd6( 2771,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019f95636, 0xe4b100b8, 0x19f95636 );
  TEST_FPRED_VV_OP_16( 2772,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019f95636, 0xe4b100b8, 0x19f95636 );
  TEST_FPRED_VV_OP_rd7( 2773,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030610d6c, 0x04c5e517, 0x30610d6c );
  TEST_FPRED_VV_OP_17( 2774,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030610d6c, 0x04c5e517, 0x30610d6c );
  TEST_FPRED_VV_OP_rd9( 2775,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000051a59b6f, 0x6f0086f2, 0x51a59b6f );
  TEST_FPRED_VV_OP_19( 2776,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000051a59b6f, 0x6f0086f2, 0x51a59b6f );
  TEST_FPRED_VV_OP_rd10( 2777,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be384770, 0xc583b3da, 0xbe384770 );
  TEST_FPRED_VV_OP_110( 2778,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be384770, 0xc583b3da, 0xbe384770 );
  TEST_FPRED_VV_OP_rd11( 2779,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000336dc41b, 0xae6ff135, 0x336dc41b );
  TEST_FPRED_VV_OP_111( 2780,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000336dc41b, 0xae6ff135, 0x336dc41b );
  TEST_FPRED_VV_OP_rd12( 2781,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a87f271a, 0x7815f9b0, 0xa87f271a );
  TEST_FPRED_VV_OP_112( 2782,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a87f271a, 0x7815f9b0, 0xa87f271a );
  TEST_FPRED_VV_OP_rd13( 2783,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c9121e1, 0x5cc84607, 0x6c9121e1 );
  TEST_FPRED_VV_OP_113( 2784,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c9121e1, 0x5cc84607, 0x6c9121e1 );
  TEST_FPRED_VV_OP_rd14( 2785,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a73c95c4, 0x754bced3, 0xa73c95c4 );
  TEST_FPRED_VV_OP_114( 2786,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a73c95c4, 0x754bced3, 0xa73c95c4 );
  TEST_FPRED_VV_OP_rd15( 2787,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000caf0a32c, 0xaec59a2a, 0xcaf0a32c );
  TEST_FPRED_VV_OP_115( 2788,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000caf0a32c, 0xaec59a2a, 0xcaf0a32c );
  TEST_FPRED_VV_OP_rd17( 2789,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000251c1e00, 0x3af43c9d, 0x251c1e00 );
  TEST_FPRED_VV_OP_117( 2790,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000251c1e00, 0x3af43c9d, 0x251c1e00 );
  TEST_FPRED_VV_OP_rd18( 2791,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac7c3863, 0xae8c12b8, 0xac7c3863 );
  TEST_FPRED_VV_OP_118( 2792,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac7c3863, 0xae8c12b8, 0xac7c3863 );
  TEST_FPRED_VV_OP_rd19( 2793,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f02a18c, 0x67be397d, 0x8f02a18c );
  TEST_FPRED_VV_OP_119( 2794,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f02a18c, 0x67be397d, 0x8f02a18c );
  TEST_FPRED_VV_OP_rd20( 2795,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091fd21c8, 0x8758cfc4, 0x91fd21c8 );
  TEST_FPRED_VV_OP_120( 2796,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091fd21c8, 0x8758cfc4, 0x91fd21c8 );
  TEST_FPRED_VV_OP_rd21( 2797,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004453aa24, 0x1de4f6af, 0x4453aa24 );
  TEST_FPRED_VV_OP_121( 2798,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004453aa24, 0x1de4f6af, 0x4453aa24 );
  TEST_FPRED_VV_OP_rd22( 2799,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008cc4c438, 0x1a455288, 0x8cc4c438 );
  TEST_FPRED_VV_OP_122( 2800,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008cc4c438, 0x1a455288, 0x8cc4c438 );
  TEST_FPRED_VV_OP_rd23( 2801,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcafd1ca, 0x88db7d8c, 0xbcafd1ca );
  TEST_FPRED_VV_OP_123( 2802,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcafd1ca, 0x88db7d8c, 0xbcafd1ca );
  TEST_FPRED_VV_OP_rd25( 2803,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000177434a8, 0xca3650e2, 0x177434a8 );
  TEST_FPRED_VV_OP_125( 2804,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000177434a8, 0xca3650e2, 0x177434a8 );
  TEST_FPRED_VV_OP_rd26( 2805,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004602bb95, 0xc7044eb3, 0x4602bb95 );
  TEST_FPRED_VV_OP_126( 2806,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004602bb95, 0xc7044eb3, 0x4602bb95 );
  TEST_FPRED_VV_OP_rd27( 2807,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb2a44f6, 0x58933db0, 0xbb2a44f6 );
  TEST_FPRED_VV_OP_127( 2808,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb2a44f6, 0x58933db0, 0xbb2a44f6 );
  TEST_FPRED_VV_OP_rd28( 2809,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e1cd9683, 0x0545acbb, 0xe1cd9683 );
  TEST_FPRED_VV_OP_128( 2810,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e1cd9683, 0x0545acbb, 0xe1cd9683 );
  TEST_FPRED_VV_OP_rd29( 2811,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c649858c, 0xb379a614, 0xc649858c );
  TEST_FPRED_VV_OP_129( 2812,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c649858c, 0xb379a614, 0xc649858c );
  TEST_FPRED_VV_OP_rd30( 2813,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000834794d4, 0x9b3eb4cc, 0x834794d4 );
  TEST_FPRED_VV_OP_130( 2814,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000834794d4, 0x9b3eb4cc, 0x834794d4 );
  TEST_FPRED_VV_OP_rd31( 2815,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e226001f, 0xe9519192, 0xe226001f );
  TEST_FPRED_VV_OP_131( 2816,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e226001f, 0xe9519192, 0xe226001f );
  TEST_FPRED_VV_OP_rd1( 2817,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bbf119a, 0x2eb0d339, 0x3bbf119a );
  TEST_FPRED_VV_OP_11( 2818,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bbf119a, 0x2eb0d339, 0x3bbf119a );
  TEST_FPRED_VV_OP_rd2( 2819,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aeac265, 0xf575e7bb, 0x0aeac265 );
  TEST_FPRED_VV_OP_12( 2820,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aeac265, 0xf575e7bb, 0x0aeac265 );
  TEST_FPRED_VV_OP_rd3( 2821,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041649ded, 0xee907664, 0x41649ded );
  TEST_FPRED_VV_OP_13( 2822,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041649ded, 0xee907664, 0x41649ded );
  TEST_FPRED_VV_OP_rd4( 2823,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000054d909fd, 0x53960a4c, 0x54d909fd );
  TEST_FPRED_VV_OP_14( 2824,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000054d909fd, 0x53960a4c, 0x54d909fd );
  TEST_FPRED_VV_OP_rd5( 2825,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082c44d2b, 0x87973a27, 0x82c44d2b );
  TEST_FPRED_VV_OP_15( 2826,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082c44d2b, 0x87973a27, 0x82c44d2b );
  TEST_FPRED_VV_OP_rd6( 2827,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085371e54, 0xa925b817, 0x85371e54 );
  TEST_FPRED_VV_OP_16( 2828,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085371e54, 0xa925b817, 0x85371e54 );
  TEST_FPRED_VV_OP_rd7( 2829,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091074282, 0x1c1a1e45, 0x91074282 );
  TEST_FPRED_VV_OP_17( 2830,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091074282, 0x1c1a1e45, 0x91074282 );
  TEST_FPRED_VV_OP_rd9( 2831,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c611ba41, 0x2d3e0667, 0xc611ba41 );
  TEST_FPRED_VV_OP_19( 2832,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c611ba41, 0x2d3e0667, 0xc611ba41 );
  TEST_FPRED_VV_OP_rd10( 2833,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0fb779f, 0x53d05d72, 0xd0fb779f );
  TEST_FPRED_VV_OP_110( 2834,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0fb779f, 0x53d05d72, 0xd0fb779f );
  TEST_FPRED_VV_OP_rd11( 2835,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000999f8b26, 0xb822ad39, 0x999f8b26 );
  TEST_FPRED_VV_OP_111( 2836,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000999f8b26, 0xb822ad39, 0x999f8b26 );
  TEST_FPRED_VV_OP_rd12( 2837,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a113808e, 0x4ffe6390, 0xa113808e );
  TEST_FPRED_VV_OP_112( 2838,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a113808e, 0x4ffe6390, 0xa113808e );
  TEST_FPRED_VV_OP_rd13( 2839,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000675a54fd, 0x9ef29035, 0x675a54fd );
  TEST_FPRED_VV_OP_113( 2840,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000675a54fd, 0x9ef29035, 0x675a54fd );
  TEST_FPRED_VV_OP_rd14( 2841,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008864b1ab, 0xd0450fa2, 0x8864b1ab );
  TEST_FPRED_VV_OP_114( 2842,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008864b1ab, 0xd0450fa2, 0x8864b1ab );
  TEST_FPRED_VV_OP_rd15( 2843,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cd9e4966, 0x0d89744e, 0xcd9e4966 );
  TEST_FPRED_VV_OP_115( 2844,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cd9e4966, 0x0d89744e, 0xcd9e4966 );
  TEST_FPRED_VV_OP_rd17( 2845,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050fb73b8, 0xd48dd733, 0x50fb73b8 );
  TEST_FPRED_VV_OP_117( 2846,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050fb73b8, 0xd48dd733, 0x50fb73b8 );
  TEST_FPRED_VV_OP_rd18( 2847,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001566303a, 0x5d857c31, 0x1566303a );
  TEST_FPRED_VV_OP_118( 2848,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001566303a, 0x5d857c31, 0x1566303a );
  TEST_FPRED_VV_OP_rd19( 2849,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f77c3228, 0x9b185404, 0xf77c3228 );
  TEST_FPRED_VV_OP_119( 2850,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f77c3228, 0x9b185404, 0xf77c3228 );
  TEST_FPRED_VV_OP_rd20( 2851,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de7da192, 0x41059de4, 0xde7da192 );
  TEST_FPRED_VV_OP_120( 2852,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de7da192, 0x41059de4, 0xde7da192 );
  TEST_FPRED_VV_OP_rd21( 2853,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a2510c7, 0x12d11883, 0x1a2510c7 );
  TEST_FPRED_VV_OP_121( 2854,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a2510c7, 0x12d11883, 0x1a2510c7 );
  TEST_FPRED_VV_OP_rd22( 2855,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c4f914e, 0xa647e794, 0x8c4f914e );
  TEST_FPRED_VV_OP_122( 2856,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c4f914e, 0xa647e794, 0x8c4f914e );
  TEST_FPRED_VV_OP_rd23( 2857,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae52acb6, 0xd5710481, 0xae52acb6 );
  TEST_FPRED_VV_OP_123( 2858,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae52acb6, 0xd5710481, 0xae52acb6 );
  TEST_FPRED_VV_OP_rd25( 2859,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000112bfa6f, 0x28ea8990, 0x112bfa6f );
  TEST_FPRED_VV_OP_125( 2860,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000112bfa6f, 0x28ea8990, 0x112bfa6f );
  TEST_FPRED_VV_OP_rd26( 2861,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e6388e69, 0x4914fd85, 0xe6388e69 );
  TEST_FPRED_VV_OP_126( 2862,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e6388e69, 0x4914fd85, 0xe6388e69 );
  TEST_FPRED_VV_OP_rd27( 2863,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f9c2d14, 0x9edd447a, 0x9f9c2d14 );
  TEST_FPRED_VV_OP_127( 2864,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f9c2d14, 0x9edd447a, 0x9f9c2d14 );
  TEST_FPRED_VV_OP_rd28( 2865,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085d763a6, 0x1a012a8e, 0x85d763a6 );
  TEST_FPRED_VV_OP_128( 2866,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085d763a6, 0x1a012a8e, 0x85d763a6 );
  TEST_FPRED_VV_OP_rd29( 2867,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac497736, 0x697d2a85, 0xac497736 );
  TEST_FPRED_VV_OP_129( 2868,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac497736, 0x697d2a85, 0xac497736 );
  TEST_FPRED_VV_OP_rd30( 2869,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a462146, 0x0e3deb9d, 0x8a462146 );
  TEST_FPRED_VV_OP_130( 2870,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a462146, 0x0e3deb9d, 0x8a462146 );
  TEST_FPRED_VV_OP_rd31( 2871,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2300ca6, 0x9da1bcd6, 0xd2300ca6 );
  TEST_FPRED_VV_OP_131( 2872,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2300ca6, 0x9da1bcd6, 0xd2300ca6 );
  TEST_FPRED_VV_OP_rd1( 2873,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab04b597, 0x5254ddf9, 0xab04b597 );
  TEST_FPRED_VV_OP_11( 2874,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab04b597, 0x5254ddf9, 0xab04b597 );
  RVTEST_SIGBASE( x20,signature_x20_2)
    
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    
signature_x12_0:
        .fill 0,4,0xdeadbeef
    
    
    signature_x12_1:
        .fill 32,4,0xdeadbeef
    
    
    signature_x20_0:
        .fill 512,4,0xdeadbeef
    
    
    signature_x20_1:
        .fill 512,4,0xdeadbeef
    
    
    signature_x20_2:
        .fill 376,4,0xdeadbeef
    
    #ifdef rvtest_mtrap_routine
    
    mtrap_sigptr:
        .fill 128,4,0xdeadbeef
    
    #endif
    
    #ifdef rvtest_gpr_save
    
    gpr_save:
        .fill 32*(XLEN/32),4,0xdeadbeef
    
    #endif
    
    RVTEST_DATA_END
    

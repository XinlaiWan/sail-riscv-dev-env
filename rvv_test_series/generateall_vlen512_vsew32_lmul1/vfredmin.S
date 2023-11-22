#----------------------------------------------------------------------------- 
    # vfredmin.S
    #-----------------------------------------------------------------------------
    #
    # Test vfredmin instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vfredmin)
    
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
TEST_FPRED_VV_OP( 1,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d5173d3b,        0x7F800000,        0xd5173d3b );
TEST_FPRED_VV_OP( 2,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c954c88,        0x00000000,        0x1c954c88 );
TEST_FPRED_VV_OP( 3,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae8f2f8a,        0xBF800000,        0xae8f2f8a );
TEST_FPRED_VV_OP( 4,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e18cd6d3,        0xBF800000,        0xe18cd6d3 );
TEST_FPRED_VV_OP( 5,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7128ead,        0xBF800000,        0xe7128ead );
TEST_FPRED_VV_OP( 6,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000430c45f2,        0xBF800000,        0x430c45f2 );
TEST_FPRED_VV_OP( 7,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fece821,        0xBF800000,        0x1fece821 );
TEST_FPRED_VV_OP( 8,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dbe8db2f,        0xBF800000,        0xdbe8db2f );
TEST_FPRED_VV_OP( 9,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009deac411,        0xBF800000,        0x9deac411 );
TEST_FPRED_VV_OP( 10,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d578536b,        0xBF800000,        0xd578536b );
TEST_FPRED_VV_OP( 11,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a2112c5,        0xBF800000,        0x5a2112c5 );
TEST_FPRED_VV_OP( 12,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033755502,        0xBF800000,        0x33755502 );
TEST_FPRED_VV_OP( 13,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041f512c8,        0xBF800000,        0x41f512c8 );
TEST_FPRED_VV_OP( 14,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b07c90e,        0xBF800000,        0x5b07c90e );
TEST_FPRED_VV_OP( 15,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030e95eba,        0xBF800000,        0x30e95eba );
TEST_FPRED_VV_OP( 16,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dc43d0d7,        0xBF800000,        0xdc43d0d7 );
TEST_FPRED_VV_OP( 17,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ce250988,        0xBF800000,        0xce250988 );
TEST_FPRED_VV_OP( 18,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000546ef0b9,        0xBF800000,        0x546ef0b9 );
TEST_FPRED_VV_OP( 19,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c69a228,        0x3F800000,        0x7c69a228 );
TEST_FPRED_VV_OP( 20,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000540da0bc,        0x3F800000,        0x540da0bc );
TEST_FPRED_VV_OP( 21,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b917bde6,        0x3F800000,        0xb917bde6 );
TEST_FPRED_VV_OP( 22,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002b14a548,        0x3F800000,        0x2b14a548 );
TEST_FPRED_VV_OP( 23,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005c51c72f,        0x3F800000,        0x5c51c72f );
TEST_FPRED_VV_OP( 24,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e66cd16e,        0x3F800000,        0xe66cd16e );
TEST_FPRED_VV_OP( 25,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f8e67fb0,        0x3F800000,        0xf8e67fb0 );
TEST_FPRED_VV_OP( 26,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000045b5c5f1,        0x3F800000,        0x45b5c5f1 );
TEST_FPRED_VV_OP( 27,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006bd9ba9a,        0x3F800000,        0x6bd9ba9a );
TEST_FPRED_VV_OP( 28,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c1e8667,        0x3F800000,        0x9c1e8667 );
TEST_FPRED_VV_OP( 29,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a2c7d45,        0x3F800000,        0x8a2c7d45 );
TEST_FPRED_VV_OP( 30,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000af61ac13,        0x3F800000,        0xaf61ac13 );
TEST_FPRED_VV_OP( 31,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc06f22d,        0x3F800000,        0xcc06f22d );
TEST_FPRED_VV_OP( 32,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ac84f04,        0x3F800000,        0x6ac84f04 );
TEST_FPRED_VV_OP( 33,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000581f3afc,        0x3F800000,        0x581f3afc );
TEST_FPRED_VV_OP( 34,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006122b26e,        0x3F800000,        0x6122b26e );
TEST_FPRED_VV_OP( 35,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff4914a8,        0xFF7FFFFF,        0xff4914a8 );
TEST_FPRED_VV_OP( 36,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0a80a4a,        0xFF7FFFFF,        0xf0a80a4a );
TEST_FPRED_VV_OP( 37,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044577dfa,        0xFF7FFFFF,        0x44577dfa );
TEST_FPRED_VV_OP( 38,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e31172b1,        0xFF7FFFFF,        0xe31172b1 );
TEST_FPRED_VV_OP( 39,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030b00f6c,        0xFF7FFFFF,        0x30b00f6c );
TEST_FPRED_VV_OP( 40,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009cd4367e,        0xFF7FFFFF,        0x9cd4367e );
TEST_FPRED_VV_OP( 41,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053266571,        0xFF7FFFFF,        0x53266571 );
TEST_FPRED_VV_OP( 42,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039a2b9a9,        0xFF7FFFFF,        0x39a2b9a9 );
TEST_FPRED_VV_OP( 43,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f628feb7,        0xFF7FFFFF,        0xf628feb7 );
TEST_FPRED_VV_OP( 44,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000519a8397,        0xFF7FFFFF,        0x519a8397 );
TEST_FPRED_VV_OP( 45,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d949e747,        0xFF7FFFFF,        0xd949e747 );
TEST_FPRED_VV_OP( 46,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fe0b7d68,        0xFF7FFFFF,        0xfe0b7d68 );
TEST_FPRED_VV_OP( 47,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2ec6f9d,        0xFF7FFFFF,        0xd2ec6f9d );
TEST_FPRED_VV_OP( 48,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b9f0a06,        0xFF7FFFFF,        0x7b9f0a06 );
TEST_FPRED_VV_OP( 49,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e25828a9,        0xFF7FFFFF,        0xe25828a9 );
TEST_FPRED_VV_OP( 50,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ff72e08,        0xFF7FFFFF,        0x6ff72e08 );
TEST_FPRED_VV_OP( 51,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae72d34d,        0x7F7FFFFF,        0xae72d34d );
TEST_FPRED_VV_OP( 52,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f61fde3e,        0x7F7FFFFF,        0xf61fde3e );
TEST_FPRED_VV_OP( 53,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001cb57d88,        0x7F7FFFFF,        0x1cb57d88 );
TEST_FPRED_VV_OP( 54,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bb5e465,        0x7F7FFFFF,        0x3bb5e465 );
TEST_FPRED_VV_OP( 55,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089b4574b,        0x7F7FFFFF,        0x89b4574b );
TEST_FPRED_VV_OP( 56,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae23f858,        0x7F7FFFFF,        0xae23f858 );
TEST_FPRED_VV_OP( 57,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032b4b342,        0x7F7FFFFF,        0x32b4b342 );
TEST_FPRED_VV_OP( 58,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c5034c7,        0x7F7FFFFF,        0x9c5034c7 );
TEST_FPRED_VV_OP( 59,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006129cabb,        0x7F7FFFFF,        0x6129cabb );
TEST_FPRED_VV_OP( 60,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009af4bc9a,        0x7F7FFFFF,        0x9af4bc9a );
TEST_FPRED_VV_OP( 61,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c729acef,        0x7F7FFFFF,        0xc729acef );
TEST_FPRED_VV_OP( 62,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007d485219,        0x7F7FFFFF,        0x7d485219 );
TEST_FPRED_VV_OP( 63,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a3b445a,        0x7F7FFFFF,        0x4a3b445a );
TEST_FPRED_VV_OP( 64,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000276f4a82,        0x7F7FFFFF,        0x276f4a82 );
TEST_FPRED_VV_OP( 65,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd7bf9fc,        0x7F7FFFFF,        0xdd7bf9fc );
TEST_FPRED_VV_OP( 66,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006797c5aa,        0x7F7FFFFF,        0x6797c5aa );
TEST_FPRED_VV_OP( 67,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c739bc0,        0x80855555,        0x9c739bc0 );
TEST_FPRED_VV_OP( 68,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000037e6587a,        0x80855555,        0x37e6587a );
TEST_FPRED_VV_OP( 69,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000292fa2d6,        0x80855555,        0x292fa2d6 );
TEST_FPRED_VV_OP( 70,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057b6f48d,        0x80855555,        0x57b6f48d );
TEST_FPRED_VV_OP( 71,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a87ebd39,        0x80855555,        0xa87ebd39 );
TEST_FPRED_VV_OP( 72,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000da3b9803,        0x80855555,        0xda3b9803 );
TEST_FPRED_VV_OP( 73,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf98db80,        0x80855555,        0xcf98db80 );
TEST_FPRED_VV_OP( 74,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a1993841,        0x80855555,        0xa1993841 );
TEST_FPRED_VV_OP( 75,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000214c72b3,        0x80855555,        0x214c72b3 );
TEST_FPRED_VV_OP( 76,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a289aa8,        0x80855555,        0x4a289aa8 );
TEST_FPRED_VV_OP( 77,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d7777d1,        0x80855555,        0x3d7777d1 );
TEST_FPRED_VV_OP( 78,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000579e0114,        0x80855555,        0x579e0114 );
TEST_FPRED_VV_OP( 79,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013d30cfc,        0x80855555,        0x13d30cfc );
TEST_FPRED_VV_OP( 80,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a19a62b,        0x80855555,        0x8a19a62b );
TEST_FPRED_VV_OP( 81,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007041e7d,        0x80855555,        0x07041e7d );
TEST_FPRED_VV_OP( 82,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b192289,        0x80855555,        0x3b192289 );
TEST_FPRED_VV_OP( 83,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8f72c52,        0x00800001,        0xb8f72c52 );
TEST_FPRED_VV_OP( 84,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a7c4f91,        0x00800001,        0x3a7c4f91 );
TEST_FPRED_VV_OP( 85,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002eadf0ac,        0x00800001,        0x2eadf0ac );
TEST_FPRED_VV_OP( 86,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dbfec094,        0x00800001,        0xdbfec094 );
TEST_FPRED_VV_OP( 87,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c1ae516,        0x00800001,        0x8c1ae516 );
TEST_FPRED_VV_OP( 88,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb97f344,        0x00800001,        0xbb97f344 );
TEST_FPRED_VV_OP( 89,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d614a74,        0x00800001,        0x2d614a74 );
TEST_FPRED_VV_OP( 90,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dbb7bc69,        0x00800001,        0xdbb7bc69 );
TEST_FPRED_VV_OP( 91,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075160c80,        0x00800001,        0x75160c80 );
TEST_FPRED_VV_OP( 92,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026513b2,        0x00800001,        0x026513b2 );
TEST_FPRED_VV_OP( 93,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3301eb1,        0x00800001,        0xb3301eb1 );
TEST_FPRED_VV_OP( 94,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000513b24cd,        0x00800001,        0x513b24cd );
TEST_FPRED_VV_OP( 95,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2d18754,        0x00800001,        0xd2d18754 );
TEST_FPRED_VV_OP( 96,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fccea6a,        0x00800001,        0x0fccea6a );
TEST_FPRED_VV_OP( 97,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4e15b15,        0x00800001,        0xb4e15b15 );
TEST_FPRED_VV_OP( 98,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b546b05b,        0x00800001,        0xb546b05b );
TEST_FPRED_VV_OP( 99,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f952852,        0x80800000,        0x0f952852 );
TEST_FPRED_VV_OP( 100,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007dbe9d89,        0x80800000,        0x7dbe9d89 );
TEST_FPRED_VV_OP( 101,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f8791ac8,        0x80800000,        0xf8791ac8 );
TEST_FPRED_VV_OP( 102,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d924a386,        0x80800000,        0xd924a386 );
TEST_FPRED_VV_OP( 103,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df5f99f4,        0x80800000,        0xdf5f99f4 );
TEST_FPRED_VV_OP( 104,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006618d504,        0x80800000,        0x6618d504 );
TEST_FPRED_VV_OP( 105,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008849a498,        0x80800000,        0x8849a498 );
TEST_FPRED_VV_OP( 106,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f2961261,        0x80800000,        0xf2961261 );
TEST_FPRED_VV_OP( 107,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e303d466,        0x80800000,        0xe303d466 );
TEST_FPRED_VV_OP( 108,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d9d90f64,        0x80800000,        0xd9d90f64 );
TEST_FPRED_VV_OP( 109,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009ceb7bc1,        0x80800000,        0x9ceb7bc1 );
TEST_FPRED_VV_OP( 110,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b60686,        0x80800000,        0x07b60686 );
TEST_FPRED_VV_OP( 111,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092dc0a8a,        0x80800000,        0x92dc0a8a );
TEST_FPRED_VV_OP( 112,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000093997373,        0x80800000,        0x93997373 );
TEST_FPRED_VV_OP( 113,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e19d8f2e,        0x80800000,        0xe19d8f2e );
TEST_FPRED_VV_OP( 114,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd4ad4c7,        0x80800000,        0xdd4ad4c7 );
TEST_FPRED_VV_OP( 115,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3419eb,        0x00800000,        0x0b3419eb );
TEST_FPRED_VV_OP( 116,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000046365e84,        0x00800000,        0x46365e84 );
TEST_FPRED_VV_OP( 117,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092db17e9,        0x00800000,        0x92db17e9 );
TEST_FPRED_VV_OP( 118,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065cdd905,        0x00800000,        0x65cdd905 );
TEST_FPRED_VV_OP( 119,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd60629d,        0x00800000,        0xdd60629d );
TEST_FPRED_VV_OP( 120,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016478c58,        0x00800000,        0x16478c58 );
TEST_FPRED_VV_OP( 121,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d11c290e,        0x00800000,        0xd11c290e );
TEST_FPRED_VV_OP( 122,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d899e08,        0x00800000,        0x0d899e08 );
TEST_FPRED_VV_OP( 123,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9770a1f,        0x00800000,        0xc9770a1f );
TEST_FPRED_VV_OP( 124,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac39d155,        0x00800000,        0xac39d155 );
TEST_FPRED_VV_OP( 125,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7a7733,        0x00800000,        0x0f7a7733 );
TEST_FPRED_VV_OP( 126,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a946bce1,        0x00800000,        0xa946bce1 );
TEST_FPRED_VV_OP( 127,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004e00d0f3,        0x00800000,        0x4e00d0f3 );
TEST_FPRED_VV_OP( 128,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003aa41dc4,        0x00800000,        0x3aa41dc4 );
TEST_FPRED_VV_OP( 129,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9f9511,        0x00800000,        0x0a9f9511 );
TEST_FPRED_VV_OP( 130,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005398487b,        0x00800000,        0x5398487b );
TEST_FPRED_VV_OP( 131,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3782028,        0x807FFFFF,        0xf3782028 );
TEST_FPRED_VV_OP( 132,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069b76600,        0x807FFFFF,        0x69b76600 );
TEST_FPRED_VV_OP( 133,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ca3efb3,        0x807FFFFF,        0x8ca3efb3 );
TEST_FPRED_VV_OP( 134,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cb7da0de,        0x807FFFFF,        0xcb7da0de );
TEST_FPRED_VV_OP( 135,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000552d23d2,        0x807FFFFF,        0x552d23d2 );
TEST_FPRED_VV_OP( 136,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003436f14c,        0x807FFFFF,        0x3436f14c );
TEST_FPRED_VV_OP( 137,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f5f3f35,        0x807FFFFF,        0x6f5f3f35 );
TEST_FPRED_VV_OP( 138,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053b5a207,        0x807FFFFF,        0x53b5a207 );
TEST_FPRED_VV_OP( 139,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d20dfb9f,        0x807FFFFF,        0xd20dfb9f );
TEST_FPRED_VV_OP( 140,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008723b674,        0x807FFFFF,        0x8723b674 );
TEST_FPRED_VV_OP( 141,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f348d99,        0x807FFFFF,        0x0f348d99 );
TEST_FPRED_VV_OP( 142,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003886ab90,        0x807FFFFF,        0x3886ab90 );
TEST_FPRED_VV_OP( 143,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000334f85a,        0x807FFFFF,        0x0334f85a );
TEST_FPRED_VV_OP( 144,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea1670df,        0x807FFFFF,        0xea1670df );
TEST_FPRED_VV_OP( 145,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d13744b3,        0x807FFFFF,        0xd13744b3 );
TEST_FPRED_VV_OP( 146,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000883fe017,        0x807FFFFF,        0x883fe017 );
TEST_FPRED_VV_OP( 147,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001daf3b01,        0x007FFFFF,        0x1daf3b01 );
TEST_FPRED_VV_OP( 148,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9c63a58,        0x007FFFFF,        0xa9c63a58 );
TEST_FPRED_VV_OP( 149,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec747b1c,        0x007FFFFF,        0xec747b1c );
TEST_FPRED_VV_OP( 150,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c6eccf7,        0x007FFFFF,        0x0c6eccf7 );
TEST_FPRED_VV_OP( 151,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004cad30bc,        0x007FFFFF,        0x4cad30bc );
TEST_FPRED_VV_OP( 152,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000477b3771,        0x007FFFFF,        0x477b3771 );
TEST_FPRED_VV_OP( 153,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aeef6b3d,        0x007FFFFF,        0xaeef6b3d );
TEST_FPRED_VV_OP( 154,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001555f68c,        0x007FFFFF,        0x1555f68c );
TEST_FPRED_VV_OP( 155,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7e378a2,        0x007FFFFF,        0xb7e378a2 );
TEST_FPRED_VV_OP( 156,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b602bd3e,        0x007FFFFF,        0xb602bd3e );
TEST_FPRED_VV_OP( 157,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000af130fb6,        0x007FFFFF,        0xaf130fb6 );
TEST_FPRED_VV_OP( 158,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031a4314a,        0x007FFFFF,        0x31a4314a );
TEST_FPRED_VV_OP( 159,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c723b3d7,        0x007FFFFF,        0xc723b3d7 );
TEST_FPRED_VV_OP( 160,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007015aa42,        0x007FFFFF,        0x7015aa42 );
TEST_FPRED_VV_OP( 161,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000928aa3e,        0x007FFFFF,        0x0928aa3e );
TEST_FPRED_VV_OP( 162,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022ef3704,        0x007FFFFF,        0x22ef3704 );
TEST_FPRED_VV_OP( 163,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f352256b,        0x807FFFFE,        0xf352256b );
TEST_FPRED_VV_OP( 164,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004da52bc4,        0x807FFFFE,        0x4da52bc4 );
TEST_FPRED_VV_OP( 165,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000546d8880,        0x807FFFFE,        0x546d8880 );
TEST_FPRED_VV_OP( 166,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78ee9c7,        0x807FFFFE,        0xf78ee9c7 );
TEST_FPRED_VV_OP( 167,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c95bd691,        0x807FFFFE,        0xc95bd691 );
TEST_FPRED_VV_OP( 168,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005239bc94,        0x807FFFFE,        0x5239bc94 );
TEST_FPRED_VV_OP( 169,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b48c2fbf,        0x807FFFFE,        0xb48c2fbf );
TEST_FPRED_VV_OP( 170,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067e301b5,        0x807FFFFE,        0x67e301b5 );
TEST_FPRED_VV_OP( 171,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000240451c9,        0x807FFFFE,        0x240451c9 );
TEST_FPRED_VV_OP( 172,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027c6864f,        0x807FFFFE,        0x27c6864f );
TEST_FPRED_VV_OP( 173,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026c6f274,        0x807FFFFE,        0x26c6f274 );
TEST_FPRED_VV_OP( 174,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000025f55d4e,        0x807FFFFE,        0x25f55d4e );
TEST_FPRED_VV_OP( 175,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d2eb86f,        0x807FFFFE,        0x5d2eb86f );
TEST_FPRED_VV_OP( 176,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000828a97e7,        0x807FFFFE,        0x828a97e7 );
TEST_FPRED_VV_OP( 177,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067e912e1,        0x807FFFFE,        0x67e912e1 );
TEST_FPRED_VV_OP( 178,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d4617ee,        0x807FFFFE,        0x3d4617ee );
TEST_FPRED_VV_OP( 179,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009322d7d,        0x00000002,        0x09322d7d );
TEST_FPRED_VV_OP( 180,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001eca00ff,        0x00000002,        0x1eca00ff );
TEST_FPRED_VV_OP( 181,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002ecc47d2,        0x00000002,        0x2ecc47d2 );
TEST_FPRED_VV_OP( 182,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3bb23d6,        0x00000002,        0xf3bb23d6 );
TEST_FPRED_VV_OP( 183,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab05bda1,        0x00000002,        0xab05bda1 );
TEST_FPRED_VV_OP( 184,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bebbadd8,        0x00000002,        0xbebbadd8 );
TEST_FPRED_VV_OP( 185,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000076ca2ed2,        0x00000002,        0x76ca2ed2 );
TEST_FPRED_VV_OP( 186,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002b20cd36,        0x00000002,        0x2b20cd36 );
TEST_FPRED_VV_OP( 187,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000524f229d,        0x00000002,        0x524f229d );
TEST_FPRED_VV_OP( 188,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005254e959,        0x00000002,        0x5254e959 );
TEST_FPRED_VV_OP( 189,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002aef92ad,        0x00000002,        0x2aef92ad );
TEST_FPRED_VV_OP( 190,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031229858,        0x00000002,        0x31229858 );
TEST_FPRED_VV_OP( 191,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b06bc8f6,        0x00000002,        0xb06bc8f6 );
TEST_FPRED_VV_OP( 192,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005dcce032,        0x00000002,        0x5dcce032 );
TEST_FPRED_VV_OP( 193,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000310e5031,        0x00000002,        0x310e5031 );
TEST_FPRED_VV_OP( 194,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f2069096,        0x00000002,        0xf2069096 );
TEST_FPRED_VV_OP( 195,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072a3060,        0x80000001,        0x072a3060 );
TEST_FPRED_VV_OP( 196,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c33042c,        0x80000001,        0x9c33042c );
TEST_FPRED_VV_OP( 197,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006dd7d38,        0x80000001,        0x06dd7d38 );
TEST_FPRED_VV_OP( 198,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4b100b8,        0x80000001,        0xe4b100b8 );
TEST_FPRED_VV_OP( 199,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004c5e517,        0x80000001,        0x04c5e517 );
TEST_FPRED_VV_OP( 200,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b50cc02,        0x80000001,        0x3b50cc02 );
TEST_FPRED_VV_OP( 201,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f0086f2,        0x80000001,        0x6f0086f2 );
TEST_FPRED_VV_OP( 202,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c583b3da,        0x80000001,        0xc583b3da );
TEST_FPRED_VV_OP( 203,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae6ff135,        0x80000001,        0xae6ff135 );
TEST_FPRED_VV_OP( 204,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007815f9b0,        0x80000001,        0x7815f9b0 );
TEST_FPRED_VV_OP( 205,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005cc84607,        0x80000001,        0x5cc84607 );
TEST_FPRED_VV_OP( 206,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000754bced3,        0x80000001,        0x754bced3 );
TEST_FPRED_VV_OP( 207,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aec59a2a,        0x80000001,        0xaec59a2a );
TEST_FPRED_VV_OP( 208,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008542dc85,        0x80000001,        0x8542dc85 );
TEST_FPRED_VV_OP( 209,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003af43c9d,        0x80000001,        0x3af43c9d );
TEST_FPRED_VV_OP( 210,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae8c12b8,        0x80000001,        0xae8c12b8 );
TEST_FPRED_VV_OP( 211,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067be397d,        0x00000001,        0x67be397d );
TEST_FPRED_VV_OP( 212,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008758cfc4,        0x00000001,        0x8758cfc4 );
TEST_FPRED_VV_OP( 213,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001de4f6af,        0x00000001,        0x1de4f6af );
TEST_FPRED_VV_OP( 214,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a455288,        0x00000001,        0x1a455288 );
TEST_FPRED_VV_OP( 215,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088db7d8c,        0x00000001,        0x88db7d8c );
TEST_FPRED_VV_OP( 216,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f937aafa,        0x00000001,        0xf937aafa );
TEST_FPRED_VV_OP( 217,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ca3650e2,        0x00000001,        0xca3650e2 );
TEST_FPRED_VV_OP( 218,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c7044eb3,        0x00000001,        0xc7044eb3 );
TEST_FPRED_VV_OP( 219,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058933db0,        0x00000001,        0x58933db0 );
TEST_FPRED_VV_OP( 220,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000545acbb,        0x00000001,        0x0545acbb );
TEST_FPRED_VV_OP( 221,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b379a614,        0x00000001,        0xb379a614 );
TEST_FPRED_VV_OP( 222,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b3eb4cc,        0x00000001,        0x9b3eb4cc );
TEST_FPRED_VV_OP( 223,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e9519192,        0x00000001,        0xe9519192 );
TEST_FPRED_VV_OP( 224,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002eb0d339,        0x00000001,        0x2eb0d339 );
TEST_FPRED_VV_OP( 225,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f575e7bb,        0x00000001,        0xf575e7bb );
TEST_FPRED_VV_OP( 226,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ee907664,        0x00000001,        0xee907664 );
TEST_FPRED_VV_OP( 227,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053960a4c,        0x80000000,        0x53960a4c );
TEST_FPRED_VV_OP( 228,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000087973a27,        0x80000000,        0x87973a27 );
TEST_FPRED_VV_OP( 229,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a925b817,        0x80000000,        0xa925b817 );
TEST_FPRED_VV_OP( 230,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c1a1e45,        0x80000000,        0x1c1a1e45 );
TEST_FPRED_VV_OP( 231,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020dcdbeb,        0x80000000,        0x20dcdbeb );
TEST_FPRED_VV_OP( 232,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d3e0667,        0x80000000,        0x2d3e0667 );
TEST_FPRED_VV_OP( 233,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053d05d72,        0x80000000,        0x53d05d72 );
TEST_FPRED_VV_OP( 234,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b822ad39,        0x80000000,        0xb822ad39 );
TEST_FPRED_VV_OP( 235,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004ffe6390,        0x80000000,        0x4ffe6390 );
TEST_FPRED_VV_OP( 236,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009ef29035,        0x80000000,        0x9ef29035 );
TEST_FPRED_VV_OP( 237,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0450fa2,        0x80000000,        0xd0450fa2 );
TEST_FPRED_VV_OP( 238,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d89744e,        0x80000000,        0x0d89744e );
TEST_FPRED_VV_OP( 239,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000346489f5,        0x80000000,        0x346489f5 );
TEST_FPRED_VV_OP( 240,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d48dd733,        0x80000000,        0xd48dd733 );
TEST_FPRED_VV_OP( 241,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d857c31,        0x80000000,        0x5d857c31 );
TEST_FPRED_VV_OP( 242,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b185404,        0x80000000,        0x9b185404 );
TEST_FPRED_VV_OP( 243,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041059de4,        0x00000000,        0x41059de4 );
TEST_FPRED_VV_OP( 244,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012d11883,        0x00000000,        0x12d11883 );
TEST_FPRED_VV_OP( 245,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a647e794,        0x00000000,        0xa647e794 );
TEST_FPRED_VV_OP( 246,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d5710481,        0x00000000,        0xd5710481 );
TEST_FPRED_VV_OP( 247,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cca75bc9,        0x00000000,        0xcca75bc9 );
TEST_FPRED_VV_OP( 248,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028ea8990,        0x00000000,        0x28ea8990 );
TEST_FPRED_VV_OP( 249,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004914fd85,        0x00000000,        0x4914fd85 );
TEST_FPRED_VV_OP( 250,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009edd447a,        0x00000000,        0x9edd447a );
TEST_FPRED_VV_OP( 251,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a012a8e,        0x00000000,        0x1a012a8e );
TEST_FPRED_VV_OP( 252,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000697d2a85,        0x00000000,        0x697d2a85 );
TEST_FPRED_VV_OP( 253,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3deb9d,        0x00000000,        0x0e3deb9d );
TEST_FPRED_VV_OP( 254,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009da1bcd6,        0x00000000,        0x9da1bcd6 );
TEST_FPRED_VV_OP( 255,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005254ddf9,        0x00000000,        0x5254ddf9 );
TEST_FPRED_VV_OP( 256,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c3eab36,        0x00000000,        0x0c3eab36 );
TEST_FPRED_VV_OP( 257,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016b77bce,        0x00000000,        0x16b77bce );
TEST_FPRED_VV_OP( 258,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085a8a33c,        0x16b77bce,        0x85a8a33c );
TEST_FPRED_VV_OP( 259,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be82002a,        0x85a8a33c,        0xbe82002a );
TEST_FPRED_VV_OP( 260,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b4eed81,        0xbe82002a,        0x6b4eed81 );
TEST_FPRED_VV_OP( 261,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcf2b7b2,        0x6b4eed81,        0xfcf2b7b2 );
TEST_FPRED_VV_OP( 262,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b1a3f397,        0xfcf2b7b2,        0xb1a3f397 );
TEST_FPRED_VV_OP( 263,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081815039,        0xb1a3f397,        0x81815039 );
TEST_FPRED_VV_OP( 264,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007df4c24f,        0x81815039,        0x7df4c24f );
TEST_FPRED_VV_OP( 265,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000827c929,        0x7df4c24f,        0x0827c929 );
TEST_FPRED_VV_OP( 266,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e1f1c6ec,        0x0827c929,        0xe1f1c6ec );
TEST_FPRED_VV_OP( 267,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b111081,        0xe1f1c6ec,        0x9b111081 );
TEST_FPRED_VV_OP( 268,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c53c5a,        0x9b111081,        0x08c53c5a );
TEST_FPRED_VV_OP( 269,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016e35174,        0x08c53c5a,        0x16e35174 );
TEST_FPRED_VV_OP( 270,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020553b83,        0x16e35174,        0x20553b83 );
TEST_FPRED_VV_OP( 271,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f4ed3db2,        0x20553b83,        0xf4ed3db2 );
TEST_FPRED_VV_OP( 272,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005879b2ca,        0xf4ed3db2,        0x5879b2ca );
TEST_FPRED_VV_OP( 273,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f80d83b9,        0x5879b2ca,        0xf80d83b9 );
TEST_FPRED_VV_OP( 274,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b48384f,        0xf80d83b9,        0x7b48384f );
TEST_FPRED_VV_OP( 275,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089a6c1a0,        0x7b48384f,        0x89a6c1a0 );
TEST_FPRED_VV_OP( 276,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031fe5439,        0x89a6c1a0,        0x31fe5439 );
TEST_FPRED_VV_OP( 277,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ee2f5aa,        0x31fe5439,        0x6ee2f5aa );
TEST_FPRED_VV_OP( 278,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000330f5715,        0x6ee2f5aa,        0x330f5715 );
TEST_FPRED_VV_OP( 279,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f46020f,        0x330f5715,        0x9f46020f );
TEST_FPRED_VV_OP( 280,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b697e1c3,        0x9f46020f,        0xb697e1c3 );
TEST_FPRED_VV_OP( 281,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f518acf6,        0xb697e1c3,        0xf518acf6 );
TEST_FPRED_VV_OP( 282,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003958ea56,        0xf518acf6,        0x3958ea56 );
TEST_FPRED_VV_OP( 283,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056a29c95,        0x3958ea56,        0x56a29c95 );
TEST_FPRED_VV_OP( 284,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ef286e01,        0x56a29c95,        0xef286e01 );
TEST_FPRED_VV_OP( 285,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f6cad350,        0xef286e01,        0xf6cad350 );
TEST_FPRED_VV_OP( 286,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e95400f6,        0xf6cad350,        0xe95400f6 );
TEST_FPRED_VV_OP( 287,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b2ac811,        0xe95400f6,        0x0b2ac811 );
TEST_FPRED_VV_OP( 288,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ced78db,        0x0b2ac811,        0x3ced78db );
TEST_FPRED_VV_OP( 289,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075809524,        0x3ced78db,        0x75809524 );
TEST_FPRED_VV_OP( 290,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c5e59fb2,        0x75809524,        0xc5e59fb2 );
TEST_FPRED_VV_OP( 291,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd81fa0a,        0xc5e59fb2,        0xdd81fa0a );
TEST_FPRED_VV_OP( 292,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec9fb18d,        0xdd81fa0a,        0xec9fb18d );
TEST_FPRED_VV_OP( 293,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030e1830a,        0xec9fb18d,        0x30e1830a );
TEST_FPRED_VV_OP( 294,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021d2bbb0,        0x30e1830a,        0x21d2bbb0 );
TEST_FPRED_VV_OP( 295,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000731a1760,        0x21d2bbb0,        0x731a1760 );
TEST_FPRED_VV_OP( 296,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019167ebd,        0x731a1760,        0x19167ebd );
TEST_FPRED_VV_OP( 297,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007e537a04,        0x19167ebd,        0x7e537a04 );
TEST_FPRED_VV_OP( 298,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf9dc475,        0x7e537a04,        0xcf9dc475 );
TEST_FPRED_VV_OP( 299,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017f847a1,        0xcf9dc475,        0x17f847a1 );
TEST_FPRED_VV_OP( 300,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005f4e2f05,        0x17f847a1,        0x5f4e2f05 );
TEST_FPRED_VV_OP( 301,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011065906,        0x5f4e2f05,        0x11065906 );
TEST_FPRED_VV_OP( 302,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9663dbb,        0x11065906,        0xa9663dbb );
TEST_FPRED_VV_OP( 303,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b6d5707b,        0xa9663dbb,        0xb6d5707b );
TEST_FPRED_VV_OP( 304,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ef201e7b,        0xb6d5707b,        0xef201e7b );
TEST_FPRED_VV_OP( 305,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4a84974,        0xef201e7b,        0xb4a84974 );
TEST_FPRED_VV_OP( 306,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9feb8d1,        0xb4a84974,        0xc9feb8d1 );
TEST_FPRED_VV_OP( 307,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba38c7b1,        0xc9feb8d1,        0xba38c7b1 );
TEST_FPRED_VV_OP( 308,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001877b042,        0xba38c7b1,        0x1877b042 );
TEST_FPRED_VV_OP( 309,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091778cbb,        0x1877b042,        0x91778cbb );
TEST_FPRED_VV_OP( 310,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e715ec9,        0x91778cbb,        0x2e715ec9 );
TEST_FPRED_VV_OP( 311,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ebc88fd7,        0x2e715ec9,        0xebc88fd7 );
TEST_FPRED_VV_OP( 312,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006947de05,        0xebc88fd7,        0x6947de05 );
TEST_FPRED_VV_OP( 313,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aec12b86,        0x6947de05,        0xaec12b86 );
TEST_FPRED_VV_OP( 314,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006164c29e,        0xaec12b86,        0x6164c29e );
TEST_FPRED_VV_OP( 315,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba68fa1d,        0x6164c29e,        0xba68fa1d );
TEST_FPRED_VV_OP( 316,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017a54142,        0xba68fa1d,        0x17a54142 );
TEST_FPRED_VV_OP( 317,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb7b049e,        0x17a54142,        0xbb7b049e );
TEST_FPRED_VV_OP( 318,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008fab1e5,        0xbb7b049e,        0x08fab1e5 );
TEST_FPRED_VV_OP( 319,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001af6bb18,        0x08fab1e5,        0x1af6bb18 );
TEST_FPRED_VV_OP( 320,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074348a1d,        0x1af6bb18,        0x74348a1d );
TEST_FPRED_VV_OP( 321,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41f5f9b,        0x74348a1d,        0xf41f5f9b );
TEST_FPRED_VV_OP( 322,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000604f267a,        0xf41f5f9b,        0x604f267a );
TEST_FPRED_VV_OP( 323,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008543a485,        0x604f267a,        0x8543a485 );
TEST_FPRED_VV_OP( 324,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017fca002,        0x8543a485,        0x17fca002 );
TEST_FPRED_VV_OP( 325,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003777625d,        0x17fca002,        0x3777625d );
TEST_FPRED_VV_OP( 326,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ca42df1f,        0x3777625d,        0xca42df1f );
TEST_FPRED_VV_OP( 327,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e9591298,        0xca42df1f,        0xe9591298 );
TEST_FPRED_VV_OP( 328,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000655428d1,        0xe9591298,        0x655428d1 );
TEST_FPRED_VV_OP( 329,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000678995cf,        0x655428d1,        0x678995cf );
TEST_FPRED_VV_OP( 330,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ea84660,        0x678995cf,        0x7ea84660 );
TEST_FPRED_VV_OP( 331,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000049f1faf,        0x7ea84660,        0x049f1faf );
TEST_FPRED_VV_OP( 332,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009a6ccdab,        0x049f1faf,        0x9a6ccdab );
TEST_FPRED_VV_OP( 333,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f75264e4,        0x9a6ccdab,        0xf75264e4 );
TEST_FPRED_VV_OP( 334,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b832e4f,        0xf75264e4,        0x5b832e4f );
TEST_FPRED_VV_OP( 335,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000047e6b3b,        0x5b832e4f,        0x047e6b3b );
TEST_FPRED_VV_OP( 336,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c18c4e25,        0x047e6b3b,        0xc18c4e25 );
TEST_FPRED_VV_OP( 337,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006676bf0e,        0xc18c4e25,        0x6676bf0e );
TEST_FPRED_VV_OP( 338,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000086738089,        0x6676bf0e,        0x86738089 );
TEST_FPRED_VV_OP( 339,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001ee4a5ed,        0x86738089,        0x1ee4a5ed );
TEST_FPRED_VV_OP( 340,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b9545c29,        0x1ee4a5ed,        0xb9545c29 );
TEST_FPRED_VV_OP( 341,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002c7cb95f,        0xb9545c29,        0x2c7cb95f );
TEST_FPRED_VV_OP( 342,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ab6881d,        0x2c7cb95f,        0x8ab6881d );
TEST_FPRED_VV_OP( 343,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032dc44c0,        0x8ab6881d,        0x32dc44c0 );
TEST_FPRED_VV_OP( 344,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007915e449,        0x32dc44c0,        0x7915e449 );
TEST_FPRED_VV_OP( 345,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b68216c7,        0x7915e449,        0xb68216c7 );
TEST_FPRED_VV_OP( 346,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053c4ffc4,        0xb68216c7,        0x53c4ffc4 );
TEST_FPRED_VV_OP( 347,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c01a2b07,        0x53c4ffc4,        0xc01a2b07 );
TEST_FPRED_VV_OP( 348,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006d56c00d,        0xc01a2b07,        0x6d56c00d );
TEST_FPRED_VV_OP( 349,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000231896cb,        0x6d56c00d,        0x231896cb );
TEST_FPRED_VV_OP( 350,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a6c685c,        0x231896cb,        0x3a6c685c );
TEST_FPRED_VV_OP( 351,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e57e27bd,        0x3a6c685c,        0xe57e27bd );
TEST_FPRED_VV_OP( 352,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003e6f7cbe,        0xe57e27bd,        0x3e6f7cbe );
TEST_FPRED_VV_OP( 353,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e74e2da,        0x3e6f7cbe,        0x8e74e2da );
TEST_FPRED_VV_OP( 354,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcea6243,        0x8e74e2da,        0xfcea6243 );
TEST_FPRED_VV_OP( 355,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080eedc35,        0xfcea6243,        0x80eedc35 );
TEST_FPRED_VV_OP( 356,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048d92fb,        0x80eedc35,        0x048d92fb );
TEST_FPRED_VV_OP( 357,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e8e803f4,        0x048d92fb,        0xe8e803f4 );
TEST_FPRED_VV_OP( 358,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012c54b7b,        0xe8e803f4,        0x12c54b7b );
TEST_FPRED_VV_OP( 359,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d633cae,        0x12c54b7b,        0x2d633cae );
TEST_FPRED_VV_OP( 360,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be8c5af3,        0x2d633cae,        0xbe8c5af3 );
TEST_FPRED_VV_OP( 361,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000379def6c,        0xbe8c5af3,        0x379def6c );
TEST_FPRED_VV_OP( 362,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e298ae9a,        0x379def6c,        0xe298ae9a );
TEST_FPRED_VV_OP( 363,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000626b7cc5,        0xe298ae9a,        0x626b7cc5 );
TEST_FPRED_VV_OP( 364,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f61b3a5,        0x626b7cc5,        0x8f61b3a5 );
TEST_FPRED_VV_OP( 365,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4219193,        0x8f61b3a5,        0xe4219193 );
TEST_FPRED_VV_OP( 366,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b8cfcd,        0xe4219193,        0x01b8cfcd );
TEST_FPRED_VV_OP( 367,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bfcdf8,        0x01b8cfcd,        0x04bfcdf8 );
TEST_FPRED_VV_OP( 368,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d6cbbf81,        0x04bfcdf8,        0xd6cbbf81 );
TEST_FPRED_VV_OP( 369,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bd075af,        0xd6cbbf81,        0x4bd075af );
TEST_FPRED_VV_OP( 370,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e291d09b,        0x4bd075af,        0xe291d09b );
TEST_FPRED_VV_OP( 371,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0503b64,        0xe291d09b,        0xf0503b64 );
TEST_FPRED_VV_OP( 372,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021124d60,        0xf0503b64,        0x21124d60 );
TEST_FPRED_VV_OP( 373,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017d5856b,        0x21124d60,        0x17d5856b );
TEST_FPRED_VV_OP( 374,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007989bf32,        0x17d5856b,        0x7989bf32 );
TEST_FPRED_VV_OP( 375,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b84a91f,        0x7989bf32,        0x6b84a91f );
TEST_FPRED_VV_OP( 376,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003019a087,        0x6b84a91f,        0x3019a087 );
TEST_FPRED_VV_OP( 377,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c79214,        0x3019a087,        0x01c79214 );
TEST_FPRED_VV_OP( 378,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea939be7,        0x01c79214,        0xea939be7 );
TEST_FPRED_VV_OP( 379,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c375122d,        0xea939be7,        0xc375122d );
TEST_FPRED_VV_OP( 380,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000116ec3d2,        0xc375122d,        0x116ec3d2 );
TEST_FPRED_VV_OP( 381,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d7eeffe,        0x116ec3d2,        0x2d7eeffe );
TEST_FPRED_VV_OP( 382,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e013be07,        0x2d7eeffe,        0xe013be07 );
TEST_FPRED_VV_OP( 383,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b45484fc,        0xe013be07,        0xb45484fc );
TEST_FPRED_VV_OP( 384,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002dcda7f1,        0xb45484fc,        0x2dcda7f1 );
TEST_FPRED_VV_OP( 385,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e2151fa,        0x2dcda7f1,        0x2e2151fa );
TEST_FPRED_VV_OP( 386,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500c5f17,        0x2e2151fa,        0x500c5f17 );
TEST_FPRED_VV_OP( 387,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000984b6942,        0x500c5f17,        0x984b6942 );
TEST_FPRED_VV_OP( 388,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009960c98a,        0x984b6942,        0x9960c98a );
TEST_FPRED_VV_OP( 389,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0c7c26a,        0x9960c98a,        0xc0c7c26a );
TEST_FPRED_VV_OP( 390,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c714bae1,        0xc0c7c26a,        0xc714bae1 );
TEST_FPRED_VV_OP( 391,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c086243,        0xc714bae1,        0x7c086243 );
TEST_FPRED_VV_OP( 392,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009a4397f5,        0x7c086243,        0x9a4397f5 );
TEST_FPRED_VV_OP( 393,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b02b37fb,        0x9a4397f5,        0xb02b37fb );
TEST_FPRED_VV_OP( 394,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec0ac4f0,        0xb02b37fb,        0xec0ac4f0 );
TEST_FPRED_VV_OP( 395,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000abb5045d,        0xec0ac4f0,        0xabb5045d );
TEST_FPRED_VV_OP( 396,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004de1938f,        0xabb5045d,        0x4de1938f );
TEST_FPRED_VV_OP( 397,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004ef87036,        0x4de1938f,        0x4ef87036 );
TEST_FPRED_VV_OP( 398,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000477553ed,        0x4ef87036,        0x477553ed );
TEST_FPRED_VV_OP( 399,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df884a52,        0x477553ed,        0xdf884a52 );
TEST_FPRED_VV_OP( 400,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e364a2c3,        0xdf884a52,        0xe364a2c3 );
TEST_FPRED_VV_OP( 401,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005e3d04d3,        0xe364a2c3,        0x5e3d04d3 );
TEST_FPRED_VV_OP( 402,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a37172c6,        0x5e3d04d3,        0xa37172c6 );
TEST_FPRED_VV_OP( 403,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039c33e1d,        0xa37172c6,        0x39c33e1d );
TEST_FPRED_VV_OP( 404,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005fa55642,        0x39c33e1d,        0x5fa55642 );
TEST_FPRED_VV_OP( 405,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c6588c96,        0x5fa55642,        0xc6588c96 );
TEST_FPRED_VV_OP( 406,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057aa9ec7,        0xc6588c96,        0x57aa9ec7 );
TEST_FPRED_VV_OP( 407,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052a373c8,        0x57aa9ec7,        0x52a373c8 );
TEST_FPRED_VV_OP( 408,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000868a5027,        0x52a373c8,        0x868a5027 );
TEST_FPRED_VV_OP( 409,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000afc3fa5e,        0x868a5027,        0xafc3fa5e );
TEST_FPRED_VV_OP( 410,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000804beeba,        0xafc3fa5e,        0x804beeba );
TEST_FPRED_VV_OP( 411,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf812338,        0x804beeba,        0xbf812338 );
TEST_FPRED_VV_OP( 412,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053cf2324,        0xbf812338,        0x53cf2324 );
TEST_FPRED_VV_OP( 413,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c2a2099,        0x53cf2324,        0x1c2a2099 );
TEST_FPRED_VV_OP( 414,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077275ab3,        0x1c2a2099,        0x77275ab3 );
TEST_FPRED_VV_OP( 415,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f53143f,        0x77275ab3,        0x8f53143f );
TEST_FPRED_VV_OP( 416,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007868d163,        0x8f53143f,        0x7868d163 );
TEST_FPRED_VV_OP( 417,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003362ef56,        0x7868d163,        0x3362ef56 );
TEST_FPRED_VV_OP( 418,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f5c4c30d,        0x3362ef56,        0xf5c4c30d );
TEST_FPRED_VV_OP( 419,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003413c9a6,        0xf5c4c30d,        0x3413c9a6 );
TEST_FPRED_VV_OP( 420,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bae49486,        0x3413c9a6,        0xbae49486 );
TEST_FPRED_VV_OP( 421,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004d195ecf,        0xbae49486,        0x4d195ecf );
TEST_FPRED_VV_OP( 422,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055085e69,        0x4d195ecf,        0x55085e69 );
TEST_FPRED_VV_OP( 423,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000497af66c,        0x55085e69,        0x497af66c );
TEST_FPRED_VV_OP( 424,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000776d41f0,        0x497af66c,        0x776d41f0 );
TEST_FPRED_VV_OP( 425,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b06fcef,        0x776d41f0,        0x6b06fcef );
TEST_FPRED_VV_OP( 426,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec9c3cae,        0x6b06fcef,        0xec9c3cae );
TEST_FPRED_VV_OP( 427,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbcdcd90,        0xec9c3cae,        0xbbcdcd90 );
TEST_FPRED_VV_OP( 428,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a78b9e5d,        0xbbcdcd90,        0xa78b9e5d );
TEST_FPRED_VV_OP( 429,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b517d569,        0xa78b9e5d,        0xb517d569 );
TEST_FPRED_VV_OP( 430,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058ecb82f,        0xb517d569,        0x58ecb82f );
TEST_FPRED_VV_OP( 431,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000897683b0,        0x58ecb82f,        0x897683b0 );
TEST_FPRED_VV_OP( 432,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017fed42,        0x897683b0,        0x017fed42 );
TEST_FPRED_VV_OP( 433,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ac46a81,        0x017fed42,        0x7ac46a81 );
TEST_FPRED_VV_OP( 434,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b3424e3,        0x7ac46a81,        0x6b3424e3 );
TEST_FPRED_VV_OP( 435,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78c7be0,        0x6b3424e3,        0xf78c7be0 );
TEST_FPRED_VV_OP( 436,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000225c9001,        0xf78c7be0,        0x225c9001 );
TEST_FPRED_VV_OP( 437,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000716f74e5,        0x225c9001,        0x716f74e5 );
TEST_FPRED_VV_OP( 438,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ea07308,        0x716f74e5,        0x5ea07308 );
TEST_FPRED_VV_OP( 439,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009cb1f841,        0x5ea07308,        0x9cb1f841 );
TEST_FPRED_VV_OP( 440,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069773182,        0x9cb1f841,        0x69773182 );
TEST_FPRED_VV_OP( 441,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba7c2bc1,        0x69773182,        0xba7c2bc1 );
TEST_FPRED_VV_OP( 442,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003615b6cd,        0xba7c2bc1,        0x3615b6cd );
TEST_FPRED_VV_OP( 443,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7cbdb1c,        0x3615b6cd,        0xb7cbdb1c );
TEST_FPRED_VV_OP( 444,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057503bd7,        0xb7cbdb1c,        0x57503bd7 );
TEST_FPRED_VV_OP( 445,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d9043f,        0x57503bd7,        0x08d9043f );
TEST_FPRED_VV_OP( 446,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de4c459d,        0x08d9043f,        0xde4c459d );
TEST_FPRED_VV_OP( 447,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a26c712,        0xde4c459d,        0x7a26c712 );
TEST_FPRED_VV_OP( 448,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000563028c3,        0x7a26c712,        0x563028c3 );
TEST_FPRED_VV_OP( 449,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000795e33bf,        0x563028c3,        0x795e33bf );
TEST_FPRED_VV_OP( 450,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f2d19a38,        0x795e33bf,        0xf2d19a38 );
TEST_FPRED_VV_OP( 451,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f20bed88,        0xf2d19a38,        0xf20bed88 );
TEST_FPRED_VV_OP( 452,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007e91e990,        0xf20bed88,        0x7e91e990 );
TEST_FPRED_VV_OP( 453,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028403d8f,        0x7e91e990,        0x28403d8f );
TEST_FPRED_VV_OP( 454,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e451d935,        0x28403d8f,        0xe451d935 );
TEST_FPRED_VV_OP( 455,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006cbd6936,        0xe451d935,        0x6cbd6936 );
TEST_FPRED_VV_OP( 456,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bb4197f,        0x6cbd6936,        0x4bb4197f );
TEST_FPRED_VV_OP( 457,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b2301f0d,        0x4bb4197f,        0xb2301f0d );
TEST_FPRED_VV_OP( 458,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0fe2faf,        0xb2301f0d,        0xc0fe2faf );
TEST_FPRED_VV_OP( 459,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016598049,        0xc0fe2faf,        0x16598049 );
TEST_FPRED_VV_OP( 460,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008b074d85,        0x16598049,        0x8b074d85 );
TEST_FPRED_VV_OP( 461,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3044c5f,        0x8b074d85,        0xb3044c5f );
TEST_FPRED_VV_OP( 462,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052e624b8,        0xb3044c5f,        0x52e624b8 );
TEST_FPRED_VV_OP( 463,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4b5a3ae,        0x52e624b8,        0xe4b5a3ae );
TEST_FPRED_VV_OP( 464,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000223b3100,        0xe4b5a3ae,        0x223b3100 );
TEST_FPRED_VV_OP( 465,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000060e69e76,        0x223b3100,        0x60e69e76 );
TEST_FPRED_VV_OP( 466,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b1ae2f0,        0x60e69e76,        0x7b1ae2f0 );
TEST_FPRED_VV_OP( 467,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008837caa2,        0x7b1ae2f0,        0x8837caa2 );
TEST_FPRED_VV_OP( 468,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64768d4,        0x8837caa2,        0xa64768d4 );
TEST_FPRED_VV_OP( 469,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3cafbaa,        0xa64768d4,        0xe3cafbaa );
TEST_FPRED_VV_OP( 470,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000409e0a27,        0xe3cafbaa,        0x409e0a27 );
TEST_FPRED_VV_OP( 471,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008bca7953,        0x409e0a27,        0x8bca7953 );
TEST_FPRED_VV_OP( 472,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000054110db1,        0x8bca7953,        0x54110db1 );
TEST_FPRED_VV_OP( 473,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd376b5e,        0x54110db1,        0xdd376b5e );
TEST_FPRED_VV_OP( 474,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082997f29,        0xdd376b5e,        0x82997f29 );
TEST_FPRED_VV_OP( 475,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000355719f2,        0x82997f29,        0x355719f2 );
TEST_FPRED_VV_OP( 476,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000409cf5f2,        0x355719f2,        0x409cf5f2 );
TEST_FPRED_VV_OP( 477,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0f04044,        0x409cf5f2,        0xd0f04044 );
TEST_FPRED_VV_OP( 478,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b1f11cd7,        0xd0f04044,        0xb1f11cd7 );
TEST_FPRED_VV_OP( 479,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de5e4fa6,        0xb1f11cd7,        0xde5e4fa6 );
TEST_FPRED_VV_OP( 480,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d82dd4fd,        0xde5e4fa6,        0xd82dd4fd );
TEST_FPRED_VV_OP( 481,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e58d530d,        0xd82dd4fd,        0xe58d530d );
TEST_FPRED_VV_OP( 482,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004949dc26,        0xe58d530d,        0x4949dc26 );
TEST_FPRED_VV_OP( 483,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e5f9ede,        0x4949dc26,        0x8e5f9ede );
TEST_FPRED_VV_OP( 484,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e4a63c9,        0x8e5f9ede,        0x8e4a63c9 );
TEST_FPRED_VV_OP( 485,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003e0b7f6a,        0x8e4a63c9,        0x3e0b7f6a );
TEST_FPRED_VV_OP( 486,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000721e2d49,        0x3e0b7f6a,        0x721e2d49 );
TEST_FPRED_VV_OP( 487,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b9420e82,        0x721e2d49,        0xb9420e82 );
TEST_FPRED_VV_OP( 488,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f300bb4,        0xb9420e82,        0x9f300bb4 );
TEST_FPRED_VV_OP( 489,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000daf09bbc,        0x9f300bb4,        0xdaf09bbc );
TEST_FPRED_VV_OP( 490,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033939602,        0xdaf09bbc,        0x33939602 );
TEST_FPRED_VV_OP( 491,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022d815c2,        0x33939602,        0x22d815c2 );
TEST_FPRED_VV_OP( 492,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd6461b8,        0x22d815c2,        0xdd6461b8 );
TEST_FPRED_VV_OP( 493,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a0c1de71,        0xdd6461b8,        0xa0c1de71 );
TEST_FPRED_VV_OP( 494,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008412c769,        0xa0c1de71,        0x8412c769 );
TEST_FPRED_VV_OP( 495,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e03a03d1,        0x8412c769,        0xe03a03d1 );
TEST_FPRED_VV_OP( 496,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001d7e0df1,        0xe03a03d1,        0x1d7e0df1 );
TEST_FPRED_VV_OP( 497,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa1ba77a,        0x1d7e0df1,        0xaa1ba77a );
TEST_FPRED_VV_OP( 498,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fd16c33,        0xaa1ba77a,        0x1fd16c33 );
TEST_FPRED_VV_OP( 499,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e6b2620f,        0x1fd16c33,        0xe6b2620f );
TEST_FPRED_VV_OP( 500,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d80b4e8d,        0xe6b2620f,        0xd80b4e8d );
TEST_FPRED_VV_OP( 501,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c57dfcc,        0xd80b4e8d,        0x8c57dfcc );
TEST_FPRED_VV_OP( 502,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072d00ff0,        0x8c57dfcc,        0x72d00ff0 );
TEST_FPRED_VV_OP( 503,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d71f3bd,        0x72d00ff0,        0x8d71f3bd );
TEST_FPRED_VV_OP( 504,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000090df5366,        0x8d71f3bd,        0x90df5366 );
TEST_FPRED_VV_OP( 505,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065e2e213,        0x90df5366,        0x65e2e213 );
TEST_FPRED_VV_OP( 506,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d4af903f,        0x65e2e213,        0xd4af903f );
TEST_FPRED_VV_OP( 507,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b402769,        0xd4af903f,        0x0b402769 );
TEST_FPRED_VV_OP( 508,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e520a1a5,        0x0b402769,        0xe520a1a5 );
TEST_FPRED_VV_OP( 509,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002fd98a32,        0xe520a1a5,        0x2fd98a32 );
TEST_FPRED_VV_OP( 510,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d31c277,        0x2fd98a32,        0x8d31c277 );
TEST_FPRED_VV_OP( 511,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000431be53f,        0x8d31c277,        0x431be53f );
TEST_FPRED_VV_OP( 512,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000163af993,        0x431be53f,        0x163af993 );
TEST_FPRED_VV_OP( 513,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x163af993,        0x00000000 );
TEST_FPRED_VV_OP( 514,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x62d5fe2f,        0xBF800000 );
TEST_FPRED_VV_OP( 515,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0xbbbfcaf3,        0x3F800000 );
TEST_FPRED_VV_OP( 516,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x8ad27026,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 517,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x599ec422,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 518,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0xd0e57884,        0x80855555 );
TEST_FPRED_VV_OP( 519,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x315858ad,        0x00800001 );
TEST_FPRED_VV_OP( 520,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xbb79a22b,        0x80800000 );
TEST_FPRED_VV_OP( 521,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x80c7fec6,        0x00800000 );
TEST_FPRED_VV_OP( 522,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0xb8a4eaba,        0x807FFFFF );
TEST_FPRED_VV_OP( 523,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x893e4f51,        0x007FFFFF );
TEST_FPRED_VV_OP( 524,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0xa204c639,        0x807FFFFE );
TEST_FPRED_VV_OP( 525,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x092d4ba0,        0x00000002 );
TEST_FPRED_VV_OP( 526,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x8787ab14,        0x80000001 );
TEST_FPRED_VV_OP( 527,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x61ce2443,        0x00000001 );
TEST_FPRED_VV_OP( 528,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x8ac8c0d1,        0x80000000 );
TEST_FPRED_VV_OP( 529,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x2a519200,        0x00000000 );
TEST_FPRED_VV_OP( 530,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x156dd6bc,        0xBF800000 );
TEST_FPRED_VV_OP( 531,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x35ceb876,        0x3F800000 );
TEST_FPRED_VV_OP( 532,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x766125a9,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 533,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x05269d43,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 534,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x1591c3bb,        0x80855555 );
TEST_FPRED_VV_OP( 535,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x7f19aaaa,        0x00800001 );
TEST_FPRED_VV_OP( 536,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xb68e62d5,        0x80800000 );
TEST_FPRED_VV_OP( 537,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x98c5df64,        0x00800000 );
TEST_FPRED_VV_OP( 538,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x58a4f5f8,        0x807FFFFF );
TEST_FPRED_VV_OP( 539,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x1b5d4991,        0x007FFFFF );
TEST_FPRED_VV_OP( 540,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x02046b89,        0x807FFFFE );
TEST_FPRED_VV_OP( 541,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0xf4223dde,        0x00000002 );
TEST_FPRED_VV_OP( 542,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xcf05164e,        0x80000001 );
TEST_FPRED_VV_OP( 543,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0xaa67f476,        0x00000001 );
TEST_FPRED_VV_OP( 544,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x5e100e5a,        0x80000000 );
TEST_FPRED_VV_OP( 545,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x8f51944a,        0x00000000 );
TEST_FPRED_VV_OP( 546,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x01d283cd,        0xBF800000 );
TEST_FPRED_VV_OP( 547,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x19ea57fc,        0x3F800000 );
TEST_FPRED_VV_OP( 548,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0xe246d9c3,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 549,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xb3ede2cf,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 550,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x661a98bb,        0x80855555 );
TEST_FPRED_VV_OP( 551,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0xd2e52100,        0x00800001 );
TEST_FPRED_VV_OP( 552,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xb54c779c,        0x80800000 );
TEST_FPRED_VV_OP( 553,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x8b890ead,        0x00800000 );
TEST_FPRED_VV_OP( 554,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x6f6d8ebb,        0x807FFFFF );
TEST_FPRED_VV_OP( 555,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x701a72e3,        0x007FFFFF );
TEST_FPRED_VV_OP( 556,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x18854a53,        0x807FFFFE );
TEST_FPRED_VV_OP( 557,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0xd8b646c3,        0x00000002 );
TEST_FPRED_VV_OP( 558,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x7a859a9b,        0x80000001 );
TEST_FPRED_VV_OP( 559,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x99fb1285,        0x00000001 );
TEST_FPRED_VV_OP( 560,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x6a49fdb6,        0x80000000 );
TEST_FPRED_VV_OP( 561,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xe54c4797,        0x00000000 );
TEST_FPRED_VV_OP( 562,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0xa13e91a2,        0xBF800000 );
TEST_FPRED_VV_OP( 563,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x56a16ea4,        0x3F800000 );
TEST_FPRED_VV_OP( 564,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x8dc0e4ff,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 565,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x267eb8c3,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 566,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0xbcdd3109,        0x80855555 );
TEST_FPRED_VV_OP( 567,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0xd18cf677,        0x00800001 );
TEST_FPRED_VV_OP( 568,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xc592af51,        0x80800000 );
TEST_FPRED_VV_OP( 569,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x639952be,        0x00800000 );
TEST_FPRED_VV_OP( 570,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x5ecc40d7,        0x807FFFFF );
TEST_FPRED_VV_OP( 571,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x08e1872a,        0x007FFFFF );
TEST_FPRED_VV_OP( 572,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x699b0430,        0x807FFFFE );
TEST_FPRED_VV_OP( 573,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x515deb63,        0x00000002 );
TEST_FPRED_VV_OP( 574,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x55107f38,        0x80000001 );
TEST_FPRED_VV_OP( 575,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x5ed38442,        0x00000001 );
TEST_FPRED_VV_OP( 576,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x9444a8cf,        0x80000000 );
TEST_FPRED_VV_OP( 577,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x3b6f020e,        0x00000000 );
TEST_FPRED_VV_OP( 578,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x3d7a2c1a,        0xBF800000 );
TEST_FPRED_VV_OP( 579,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0xe12d2042,        0x3F800000 );
TEST_FPRED_VV_OP( 580,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0xddc02bcf,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 581,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xd793ec85,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 582,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x89179c2a,        0x80855555 );
TEST_FPRED_VV_OP( 583,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x7b5bb683,        0x00800001 );
TEST_FPRED_VV_OP( 584,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xf3060550,        0x80800000 );
TEST_FPRED_VV_OP( 585,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0xeb6622a3,        0x00800000 );
TEST_FPRED_VV_OP( 586,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x370df4fd,        0x807FFFFF );
TEST_FPRED_VV_OP( 587,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xe7026d7d,        0x007FFFFF );
TEST_FPRED_VV_OP( 588,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0xa7ef2bad,        0x807FFFFE );
TEST_FPRED_VV_OP( 589,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x5d994fff,        0x00000002 );
TEST_FPRED_VV_OP( 590,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x6ab30fe4,        0x80000001 );
TEST_FPRED_VV_OP( 591,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x72d35639,        0x00000001 );
TEST_FPRED_VV_OP( 592,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x27c70109,        0x80000000 );
TEST_FPRED_VV_OP( 593,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xf283b49c,        0x00000000 );
TEST_FPRED_VV_OP( 594,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x3c70fd0b,        0xBF800000 );
TEST_FPRED_VV_OP( 595,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x1f46077b,        0x3F800000 );
TEST_FPRED_VV_OP( 596,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0xc626d7b5,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 597,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xd8664806,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 598,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0xa37e6d45,        0x80855555 );
TEST_FPRED_VV_OP( 599,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x69155a81,        0x00800001 );
TEST_FPRED_VV_OP( 600,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xe78f6b83,        0x80800000 );
TEST_FPRED_VV_OP( 601,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x9aba564b,        0x00800000 );
TEST_FPRED_VV_OP( 602,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x3616aeda,        0x807FFFFF );
TEST_FPRED_VV_OP( 603,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xb6b43b38,        0x007FFFFF );
TEST_FPRED_VV_OP( 604,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x48363fc9,        0x807FFFFE );
TEST_FPRED_VV_OP( 605,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x18fd8be4,        0x00000002 );
TEST_FPRED_VV_OP( 606,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x4f1f58ba,        0x80000001 );
TEST_FPRED_VV_OP( 607,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x19e51db5,        0x00000001 );
TEST_FPRED_VV_OP( 608,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0xe0c53c63,        0x80000000 );
TEST_FPRED_VV_OP( 609,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x192352ad,        0x00000000 );
TEST_FPRED_VV_OP( 610,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x5639134a,        0xBF800000 );
TEST_FPRED_VV_OP( 611,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x3b3c24ec,        0x3F800000 );
TEST_FPRED_VV_OP( 612,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x8376196a,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 613,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x24fcba35,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 614,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x2cd12f68,        0x80855555 );
TEST_FPRED_VV_OP( 615,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x5b91a296,        0x00800001 );
TEST_FPRED_VV_OP( 616,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0x0a9edbe9,        0x80800000 );
TEST_FPRED_VV_OP( 617,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0xbc4fb8ab,        0x00800000 );
TEST_FPRED_VV_OP( 618,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x68714601,        0x807FFFFF );
TEST_FPRED_VV_OP( 619,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xf6077257,        0x007FFFFF );
TEST_FPRED_VV_OP( 620,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x6baa10f2,        0x807FFFFE );
TEST_FPRED_VV_OP( 621,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x210eee6d,        0x00000002 );
TEST_FPRED_VV_OP( 622,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x9d9d1deb,        0x80000001 );
TEST_FPRED_VV_OP( 623,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x52a2c944,        0x00000001 );
TEST_FPRED_VV_OP( 624,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x69da5807,        0x80000000 );
TEST_FPRED_VV_OP( 625,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x5643827a,        0x00000000 );
TEST_FPRED_VV_OP( 626,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x548fa17d,        0xBF800000 );
TEST_FPRED_VV_OP( 627,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x0125e3bc,        0x3F800000 );
TEST_FPRED_VV_OP( 628,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x34294c82,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 629,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xd612accc,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 630,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x7c624102,        0x80855555 );
TEST_FPRED_VV_OP( 631,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x81457ac4,        0x00800001 );
TEST_FPRED_VV_OP( 632,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0x169e8d7e,        0x80800000 );
TEST_FPRED_VV_OP( 633,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x82d5d8cc,        0x00800000 );
TEST_FPRED_VV_OP( 634,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x2afa1e78,        0x807FFFFF );
TEST_FPRED_VV_OP( 635,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xdb9ca373,        0x007FFFFF );
TEST_FPRED_VV_OP( 636,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x8a002b93,        0x807FFFFE );
TEST_FPRED_VV_OP( 637,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0xb686377f,        0x00000002 );
TEST_FPRED_VV_OP( 638,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xc0570d1e,        0x80000001 );
TEST_FPRED_VV_OP( 639,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x6682aa99,        0x00000001 );
TEST_FPRED_VV_OP( 640,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0xd3ab2b5b,        0x80000000 );
TEST_FPRED_VV_OP( 641,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x32ce890a,        0x00000000 );
TEST_FPRED_VV_OP( 642,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x50408aba,        0xBF800000 );
TEST_FPRED_VV_OP( 643,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0xb4ea3655,        0x3F800000 );
TEST_FPRED_VV_OP( 644,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x57385489,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 645,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xeef03e8d,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 646,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0xde17d645,        0x80855555 );
TEST_FPRED_VV_OP( 647,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x0e7f9a32,        0x00800001 );
TEST_FPRED_VV_OP( 648,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xeeca2f3b,        0x80800000 );
TEST_FPRED_VV_OP( 649,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0xf14f95f4,        0x00800000 );
TEST_FPRED_VV_OP( 650,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x63b7a76e,        0x807FFFFF );
TEST_FPRED_VV_OP( 651,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xbcc9ab43,        0x007FFFFF );
TEST_FPRED_VV_OP( 652,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0xdfeeae1d,        0x807FFFFE );
TEST_FPRED_VV_OP( 653,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x65eed45a,        0x00000002 );
TEST_FPRED_VV_OP( 654,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xc8e4911e,        0x80000001 );
TEST_FPRED_VV_OP( 655,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x61bee6e3,        0x00000001 );
TEST_FPRED_VV_OP( 656,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x5a888b0b,        0x80000000 );
TEST_FPRED_VV_OP( 657,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xe8b9b2cd,        0x00000000 );
TEST_FPRED_VV_OP( 658,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x1bc3cb1f,        0xBF800000 );
TEST_FPRED_VV_OP( 659,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x6c9a9490,        0x3F800000 );
TEST_FPRED_VV_OP( 660,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x94518e9b,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 661,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x89b67375,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 662,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0xd4bea2c1,        0x80855555 );
TEST_FPRED_VV_OP( 663,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0xd7ac95f6,        0x00800001 );
TEST_FPRED_VV_OP( 664,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xb4fe5b7c,        0x80800000 );
TEST_FPRED_VV_OP( 665,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x59dac688,        0x00800000 );
TEST_FPRED_VV_OP( 666,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0xd864b555,        0x807FFFFF );
TEST_FPRED_VV_OP( 667,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xf0a45c48,        0x007FFFFF );
TEST_FPRED_VV_OP( 668,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x8debdd64,        0x807FFFFE );
TEST_FPRED_VV_OP( 669,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x78f0b6be,        0x00000002 );
TEST_FPRED_VV_OP( 670,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xea5bd793,        0x80000001 );
TEST_FPRED_VV_OP( 671,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x837bb1b9,        0x00000001 );
TEST_FPRED_VV_OP( 672,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0xb8879ad6,        0x80000000 );
TEST_FPRED_VV_OP( 673,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xa62bf1a5,        0x00000000 );
TEST_FPRED_VV_OP( 674,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x27457e6e,        0xBF800000 );
TEST_FPRED_VV_OP( 675,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0xc42dea11,        0x3F800000 );
TEST_FPRED_VV_OP( 676,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0xbc0e79b9,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 677,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x72ae0ac9,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 678,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0xe29df404,        0x80855555 );
TEST_FPRED_VV_OP( 679,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0xb117f9b7,        0x00800001 );
TEST_FPRED_VV_OP( 680,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xf0abe8ea,        0x80800000 );
TEST_FPRED_VV_OP( 681,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x5b82f781,        0x00800000 );
TEST_FPRED_VV_OP( 682,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x3aba4a26,        0x807FFFFF );
TEST_FPRED_VV_OP( 683,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xefea5e67,        0x007FFFFF );
TEST_FPRED_VV_OP( 684,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x688be24b,        0x807FFFFE );
TEST_FPRED_VV_OP( 685,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x21ad1582,        0x00000002 );
TEST_FPRED_VV_OP( 686,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xa294f0b8,        0x80000001 );
TEST_FPRED_VV_OP( 687,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0xa6440f97,        0x00000001 );
TEST_FPRED_VV_OP( 688,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x5ea2d0b9,        0x80000000 );
TEST_FPRED_VV_OP( 689,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xbdc0571c,        0x00000000 );
TEST_FPRED_VV_OP( 690,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x2442a91b,        0xBF800000 );
TEST_FPRED_VV_OP( 691,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x0c377326,        0x3F800000 );
TEST_FPRED_VV_OP( 692,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x533c8dfe,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 693,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xe21ef6aa,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 694,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x919fa67d,        0x80855555 );
TEST_FPRED_VV_OP( 695,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x873f1671,        0x00800001 );
TEST_FPRED_VV_OP( 696,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0x2a9f2e23,        0x80800000 );
TEST_FPRED_VV_OP( 697,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0xbe22927b,        0x00800000 );
TEST_FPRED_VV_OP( 698,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0xa992efc3,        0x807FFFFF );
TEST_FPRED_VV_OP( 699,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x75ce1220,        0x007FFFFF );
TEST_FPRED_VV_OP( 700,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x4447a68d,        0x807FFFFE );
TEST_FPRED_VV_OP( 701,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x3f78b414,        0x00000002 );
TEST_FPRED_VV_OP( 702,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xbd72133e,        0x80000001 );
TEST_FPRED_VV_OP( 703,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x0cee6997,        0x00000001 );
TEST_FPRED_VV_OP( 704,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x1a1b49f6,        0x80000000 );
TEST_FPRED_VV_OP( 705,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x74cefef0,        0x00000000 );
TEST_FPRED_VV_OP( 706,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0xdb8a3bd9,        0xBF800000 );
TEST_FPRED_VV_OP( 707,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x4b329421,        0x3F800000 );
TEST_FPRED_VV_OP( 708,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x3a31ab60,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 709,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xe953c01f,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 710,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x0f147ddf,        0x80855555 );
TEST_FPRED_VV_OP( 711,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0xcf457330,        0x00800001 );
TEST_FPRED_VV_OP( 712,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0x19f95636,        0x80800000 );
TEST_FPRED_VV_OP( 713,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x30610d6c,        0x00800000 );
TEST_FPRED_VV_OP( 714,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x7cfe6ad7,        0x807FFFFF );
TEST_FPRED_VV_OP( 715,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x51a59b6f,        0x007FFFFF );
TEST_FPRED_VV_OP( 716,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0xbe384770,        0x807FFFFE );
TEST_FPRED_VV_OP( 717,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x336dc41b,        0x00000002 );
TEST_FPRED_VV_OP( 718,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xa87f271a,        0x80000001 );
TEST_FPRED_VV_OP( 719,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x6c9121e1,        0x00000001 );
TEST_FPRED_VV_OP( 720,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0xa73c95c4,        0x80000000 );
TEST_FPRED_VV_OP( 721,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xcaf0a32c,        0x00000000 );
TEST_FPRED_VV_OP( 722,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x46f5a171,        0xBF800000 );
TEST_FPRED_VV_OP( 723,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x251c1e00,        0x3F800000 );
TEST_FPRED_VV_OP( 724,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0xac7c3863,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 725,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x8f02a18c,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 726,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x91fd21c8,        0x80855555 );
TEST_FPRED_VV_OP( 727,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x4453aa24,        0x00800001 );
TEST_FPRED_VV_OP( 728,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0x8cc4c438,        0x80800000 );
TEST_FPRED_VV_OP( 729,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0xbcafd1ca,        0x00800000 );
TEST_FPRED_VV_OP( 730,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x767634b8,        0x807FFFFF );
TEST_FPRED_VV_OP( 731,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0x177434a8,        0x007FFFFF );
TEST_FPRED_VV_OP( 732,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x4602bb95,        0x807FFFFE );
TEST_FPRED_VV_OP( 733,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0xbb2a44f6,        0x00000002 );
TEST_FPRED_VV_OP( 734,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xe1cd9683,        0x80000001 );
TEST_FPRED_VV_OP( 735,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0xc649858c,        0x00000001 );
TEST_FPRED_VV_OP( 736,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0x834794d4,        0x80000000 );
TEST_FPRED_VV_OP( 737,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xe226001f,        0x00000000 );
TEST_FPRED_VV_OP( 738,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x3bbf119a,        0xBF800000 );
TEST_FPRED_VV_OP( 739,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x0aeac265,        0x3F800000 );
TEST_FPRED_VV_OP( 740,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0x41649ded,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 741,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0x54d909fd,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 742,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x82c44d2b,        0x80855555 );
TEST_FPRED_VV_OP( 743,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x85371e54,        0x00800001 );
TEST_FPRED_VV_OP( 744,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0x91074282,        0x80800000 );
TEST_FPRED_VV_OP( 745,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x61ae58b5,        0x00800000 );
TEST_FPRED_VV_OP( 746,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0xc611ba41,        0x807FFFFF );
TEST_FPRED_VV_OP( 747,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xd0fb779f,        0x007FFFFF );
TEST_FPRED_VV_OP( 748,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x999f8b26,        0x807FFFFE );
TEST_FPRED_VV_OP( 749,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0xa113808e,        0x00000002 );
TEST_FPRED_VV_OP( 750,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0x675a54fd,        0x80000001 );
TEST_FPRED_VV_OP( 751,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x8864b1ab,        0x00000001 );
TEST_FPRED_VV_OP( 752,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0xcd9e4966,        0x80000000 );
TEST_FPRED_VV_OP( 753,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xecdb94a3,        0x00000000 );
TEST_FPRED_VV_OP( 754,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000,        0x50fb73b8,        0xBF800000 );
TEST_FPRED_VV_OP( 755,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000,        0x1566303a,        0x3F800000 );
TEST_FPRED_VV_OP( 756,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff,        0xf77c3228,        0xFF7FFFFF );
TEST_FPRED_VV_OP( 757,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff,        0xde7da192,        0x7F7FFFFF );
TEST_FPRED_VV_OP( 758,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555,        0x1a2510c7,        0x80855555 );
TEST_FPRED_VV_OP( 759,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001,        0x8c4f914e,        0x00800001 );
TEST_FPRED_VV_OP( 760,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000,        0xae52acb6,        0x80800000 );
TEST_FPRED_VV_OP( 761,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000,        0x269ca43a,        0x00800000 );
TEST_FPRED_VV_OP( 762,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff,        0x112bfa6f,        0x807FFFFF );
TEST_FPRED_VV_OP( 763,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff,        0xe6388e69,        0x007FFFFF );
TEST_FPRED_VV_OP( 764,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe,        0x9f9c2d14,        0x807FFFFE );
TEST_FPRED_VV_OP( 765,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x85d763a6,        0x00000002 );
TEST_FPRED_VV_OP( 766,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001,        0xac497736,        0x80000001 );
TEST_FPRED_VV_OP( 767,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x8a462146,        0x00000001 );
TEST_FPRED_VV_OP( 768,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000,        0xd2300ca6,        0x80000000 );
TEST_FPRED_VV_OP( 769,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062d5fe2f,        0xab04b597,        0x62d5fe2f );
TEST_FPRED_VV_OP( 770,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbfcaf3,        0xd5173d3b,        0xbbbfcaf3 );
TEST_FPRED_VV_OP( 771,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ad27026,        0x1c954c88,        0x8ad27026 );
TEST_FPRED_VV_OP( 772,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000599ec422,        0xae8f2f8a,        0x599ec422 );
TEST_FPRED_VV_OP( 773,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0e57884,        0xe18cd6d3,        0xd0e57884 );
TEST_FPRED_VV_OP( 774,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000315858ad,        0xe7128ead,        0x315858ad );
TEST_FPRED_VV_OP( 775,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb79a22b,        0x430c45f2,        0xbb79a22b );
TEST_FPRED_VV_OP( 776,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080c7fec6,        0x1fece821,        0x80c7fec6 );
TEST_FPRED_VV_OP( 777,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8a4eaba,        0xdbe8db2f,        0xb8a4eaba );
TEST_FPRED_VV_OP( 778,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000893e4f51,        0x9deac411,        0x893e4f51 );
TEST_FPRED_VV_OP( 779,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a204c639,        0xd578536b,        0xa204c639 );
TEST_FPRED_VV_OP( 780,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092d4ba0,        0x5a2112c5,        0x092d4ba0 );
TEST_FPRED_VV_OP( 781,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008787ab14,        0x33755502,        0x8787ab14 );
TEST_FPRED_VV_OP( 782,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061ce2443,        0x41f512c8,        0x61ce2443 );
TEST_FPRED_VV_OP( 783,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ac8c0d1,        0x5b07c90e,        0x8ac8c0d1 );
TEST_FPRED_VV_OP( 784,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a519200,        0x30e95eba,        0x2a519200 );
TEST_FPRED_VV_OP( 785,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000156dd6bc,        0xdc43d0d7,        0x156dd6bc );
TEST_FPRED_VV_OP( 786,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000035ceb876,        0xce250988,        0x35ceb876 );
TEST_FPRED_VV_OP( 787,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000766125a9,        0x546ef0b9,        0x766125a9 );
TEST_FPRED_VV_OP( 788,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005269d43,        0x7c69a228,        0x05269d43 );
TEST_FPRED_VV_OP( 789,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001591c3bb,        0x540da0bc,        0x1591c3bb );
TEST_FPRED_VV_OP( 790,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f19aaaa,        0xb917bde6,        0x7f19aaaa );
TEST_FPRED_VV_OP( 791,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b68e62d5,        0x2b14a548,        0xb68e62d5 );
TEST_FPRED_VV_OP( 792,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000098c5df64,        0x5c51c72f,        0x98c5df64 );
TEST_FPRED_VV_OP( 793,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058a4f5f8,        0xe66cd16e,        0x58a4f5f8 );
TEST_FPRED_VV_OP( 794,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b5d4991,        0xf8e67fb0,        0x1b5d4991 );
TEST_FPRED_VV_OP( 795,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002046b89,        0x45b5c5f1,        0x02046b89 );
TEST_FPRED_VV_OP( 796,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f4223dde,        0x6bd9ba9a,        0xf4223dde );
TEST_FPRED_VV_OP( 797,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf05164e,        0x9c1e8667,        0xcf05164e );
TEST_FPRED_VV_OP( 798,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa67f476,        0x8a2c7d45,        0xaa67f476 );
TEST_FPRED_VV_OP( 799,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005e100e5a,        0xaf61ac13,        0x5e100e5a );
TEST_FPRED_VV_OP( 800,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f51944a,        0xcc06f22d,        0x8f51944a );
TEST_FPRED_VV_OP( 801,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001d283cd,        0x6ac84f04,        0x01d283cd );
TEST_FPRED_VV_OP( 802,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019ea57fc,        0x581f3afc,        0x19ea57fc );
TEST_FPRED_VV_OP( 803,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e246d9c3,        0x6122b26e,        0xe246d9c3 );
TEST_FPRED_VV_OP( 804,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3ede2cf,        0xff4914a8,        0xb3ede2cf );
TEST_FPRED_VV_OP( 805,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000661a98bb,        0xf0a80a4a,        0x661a98bb );
TEST_FPRED_VV_OP( 806,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2e52100,        0x44577dfa,        0xd2e52100 );
TEST_FPRED_VV_OP( 807,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b54c779c,        0xe31172b1,        0xb54c779c );
TEST_FPRED_VV_OP( 808,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008b890ead,        0x30b00f6c,        0x8b890ead );
TEST_FPRED_VV_OP( 809,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f6d8ebb,        0x9cd4367e,        0x6f6d8ebb );
TEST_FPRED_VV_OP( 810,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000701a72e3,        0x53266571,        0x701a72e3 );
TEST_FPRED_VV_OP( 811,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018854a53,        0x39a2b9a9,        0x18854a53 );
TEST_FPRED_VV_OP( 812,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d8b646c3,        0xf628feb7,        0xd8b646c3 );
TEST_FPRED_VV_OP( 813,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a859a9b,        0x519a8397,        0x7a859a9b );
TEST_FPRED_VV_OP( 814,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099fb1285,        0xd949e747,        0x99fb1285 );
TEST_FPRED_VV_OP( 815,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006a49fdb6,        0xfe0b7d68,        0x6a49fdb6 );
TEST_FPRED_VV_OP( 816,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e54c4797,        0xd2ec6f9d,        0xe54c4797 );
TEST_FPRED_VV_OP( 817,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a13e91a2,        0x7b9f0a06,        0xa13e91a2 );
TEST_FPRED_VV_OP( 818,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056a16ea4,        0xe25828a9,        0x56a16ea4 );
TEST_FPRED_VV_OP( 819,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008dc0e4ff,        0x6ff72e08,        0x8dc0e4ff );
TEST_FPRED_VV_OP( 820,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000267eb8c3,        0xae72d34d,        0x267eb8c3 );
TEST_FPRED_VV_OP( 821,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcdd3109,        0xf61fde3e,        0xbcdd3109 );
TEST_FPRED_VV_OP( 822,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d18cf677,        0x1cb57d88,        0xd18cf677 );
TEST_FPRED_VV_OP( 823,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c592af51,        0x3bb5e465,        0xc592af51 );
TEST_FPRED_VV_OP( 824,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000639952be,        0x89b4574b,        0x639952be );
TEST_FPRED_VV_OP( 825,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ecc40d7,        0xae23f858,        0x5ecc40d7 );
TEST_FPRED_VV_OP( 826,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e1872a,        0x32b4b342,        0x08e1872a );
TEST_FPRED_VV_OP( 827,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000699b0430,        0x9c5034c7,        0x699b0430 );
TEST_FPRED_VV_OP( 828,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000515deb63,        0x6129cabb,        0x515deb63 );
TEST_FPRED_VV_OP( 829,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055107f38,        0x9af4bc9a,        0x55107f38 );
TEST_FPRED_VV_OP( 830,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ed38442,        0xc729acef,        0x5ed38442 );
TEST_FPRED_VV_OP( 831,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009444a8cf,        0x7d485219,        0x9444a8cf );
TEST_FPRED_VV_OP( 832,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b6f020e,        0x4a3b445a,        0x3b6f020e );
TEST_FPRED_VV_OP( 833,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d7a2c1a,        0x276f4a82,        0x3d7a2c1a );
TEST_FPRED_VV_OP( 834,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e12d2042,        0xdd7bf9fc,        0xe12d2042 );
TEST_FPRED_VV_OP( 835,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ddc02bcf,        0x6797c5aa,        0xddc02bcf );
TEST_FPRED_VV_OP( 836,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d793ec85,        0x9c739bc0,        0xd793ec85 );
TEST_FPRED_VV_OP( 837,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089179c2a,        0x37e6587a,        0x89179c2a );
TEST_FPRED_VV_OP( 838,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b5bb683,        0x292fa2d6,        0x7b5bb683 );
TEST_FPRED_VV_OP( 839,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3060550,        0x57b6f48d,        0xf3060550 );
TEST_FPRED_VV_OP( 840,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eb6622a3,        0xa87ebd39,        0xeb6622a3 );
TEST_FPRED_VV_OP( 841,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000370df4fd,        0xda3b9803,        0x370df4fd );
TEST_FPRED_VV_OP( 842,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7026d7d,        0xcf98db80,        0xe7026d7d );
TEST_FPRED_VV_OP( 843,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a7ef2bad,        0xa1993841,        0xa7ef2bad );
TEST_FPRED_VV_OP( 844,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d994fff,        0x214c72b3,        0x5d994fff );
TEST_FPRED_VV_OP( 845,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ab30fe4,        0x4a289aa8,        0x6ab30fe4 );
TEST_FPRED_VV_OP( 846,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072d35639,        0x3d7777d1,        0x72d35639 );
TEST_FPRED_VV_OP( 847,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027c70109,        0x579e0114,        0x27c70109 );
TEST_FPRED_VV_OP( 848,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f283b49c,        0x13d30cfc,        0xf283b49c );
TEST_FPRED_VV_OP( 849,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003c70fd0b,        0x8a19a62b,        0x3c70fd0b );
TEST_FPRED_VV_OP( 850,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001f46077b,        0x07041e7d,        0x1f46077b );
TEST_FPRED_VV_OP( 851,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c626d7b5,        0x3b192289,        0xc626d7b5 );
TEST_FPRED_VV_OP( 852,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d8664806,        0xb8f72c52,        0xd8664806 );
TEST_FPRED_VV_OP( 853,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a37e6d45,        0x3a7c4f91,        0xa37e6d45 );
TEST_FPRED_VV_OP( 854,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069155a81,        0x2eadf0ac,        0x69155a81 );
TEST_FPRED_VV_OP( 855,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e78f6b83,        0xdbfec094,        0xe78f6b83 );
TEST_FPRED_VV_OP( 856,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009aba564b,        0x8c1ae516,        0x9aba564b );
TEST_FPRED_VV_OP( 857,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003616aeda,        0xbb97f344,        0x3616aeda );
TEST_FPRED_VV_OP( 858,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b6b43b38,        0x2d614a74,        0xb6b43b38 );
TEST_FPRED_VV_OP( 859,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048363fc9,        0xdbb7bc69,        0x48363fc9 );
TEST_FPRED_VV_OP( 860,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018fd8be4,        0x75160c80,        0x18fd8be4 );
TEST_FPRED_VV_OP( 861,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004f1f58ba,        0x026513b2,        0x4f1f58ba );
TEST_FPRED_VV_OP( 862,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019e51db5,        0xb3301eb1,        0x19e51db5 );
TEST_FPRED_VV_OP( 863,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e0c53c63,        0x513b24cd,        0xe0c53c63 );
TEST_FPRED_VV_OP( 864,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000192352ad,        0xd2d18754,        0x192352ad );
TEST_FPRED_VV_OP( 865,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005639134a,        0x0fccea6a,        0x5639134a );
TEST_FPRED_VV_OP( 866,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b3c24ec,        0xb4e15b15,        0x3b3c24ec );
TEST_FPRED_VV_OP( 867,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008376196a,        0xb546b05b,        0x8376196a );
TEST_FPRED_VV_OP( 868,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000024fcba35,        0x0f952852,        0x24fcba35 );
TEST_FPRED_VV_OP( 869,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002cd12f68,        0x7dbe9d89,        0x2cd12f68 );
TEST_FPRED_VV_OP( 870,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b91a296,        0xf8791ac8,        0x5b91a296 );
TEST_FPRED_VV_OP( 871,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9edbe9,        0xd924a386,        0x0a9edbe9 );
TEST_FPRED_VV_OP( 872,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bc4fb8ab,        0xdf5f99f4,        0xbc4fb8ab );
TEST_FPRED_VV_OP( 873,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000068714601,        0x6618d504,        0x68714601 );
TEST_FPRED_VV_OP( 874,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f6077257,        0x8849a498,        0xf6077257 );
TEST_FPRED_VV_OP( 875,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006baa10f2,        0xf2961261,        0x6baa10f2 );
TEST_FPRED_VV_OP( 876,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000210eee6d,        0xe303d466,        0x210eee6d );
TEST_FPRED_VV_OP( 877,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009d9d1deb,        0xd9d90f64,        0x9d9d1deb );
TEST_FPRED_VV_OP( 878,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052a2c944,        0x9ceb7bc1,        0x52a2c944 );
TEST_FPRED_VV_OP( 879,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069da5807,        0x07b60686,        0x69da5807 );
TEST_FPRED_VV_OP( 880,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005643827a,        0x92dc0a8a,        0x5643827a );
TEST_FPRED_VV_OP( 881,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000548fa17d,        0x93997373,        0x548fa17d );
TEST_FPRED_VV_OP( 882,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000125e3bc,        0xe19d8f2e,        0x0125e3bc );
TEST_FPRED_VV_OP( 883,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000034294c82,        0xdd4ad4c7,        0x34294c82 );
TEST_FPRED_VV_OP( 884,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d612accc,        0x0b3419eb,        0xd612accc );
TEST_FPRED_VV_OP( 885,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c624102,        0x46365e84,        0x7c624102 );
TEST_FPRED_VV_OP( 886,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081457ac4,        0x92db17e9,        0x81457ac4 );
TEST_FPRED_VV_OP( 887,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000169e8d7e,        0x65cdd905,        0x169e8d7e );
TEST_FPRED_VV_OP( 888,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082d5d8cc,        0xdd60629d,        0x82d5d8cc );
TEST_FPRED_VV_OP( 889,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002afa1e78,        0x16478c58,        0x2afa1e78 );
TEST_FPRED_VV_OP( 890,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db9ca373,        0xd11c290e,        0xdb9ca373 );
TEST_FPRED_VV_OP( 891,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a002b93,        0x0d899e08,        0x8a002b93 );
TEST_FPRED_VV_OP( 892,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b686377f,        0xc9770a1f,        0xb686377f );
TEST_FPRED_VV_OP( 893,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0570d1e,        0xac39d155,        0xc0570d1e );
TEST_FPRED_VV_OP( 894,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006682aa99,        0x0f7a7733,        0x6682aa99 );
TEST_FPRED_VV_OP( 895,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d3ab2b5b,        0xa946bce1,        0xd3ab2b5b );
TEST_FPRED_VV_OP( 896,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032ce890a,        0x4e00d0f3,        0x32ce890a );
TEST_FPRED_VV_OP( 897,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050408aba,        0x3aa41dc4,        0x50408aba );
TEST_FPRED_VV_OP( 898,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4ea3655,        0x0a9f9511,        0xb4ea3655 );
TEST_FPRED_VV_OP( 899,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057385489,        0x5398487b,        0x57385489 );
TEST_FPRED_VV_OP( 900,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eef03e8d,        0xf3782028,        0xeef03e8d );
TEST_FPRED_VV_OP( 901,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de17d645,        0x69b76600,        0xde17d645 );
TEST_FPRED_VV_OP( 902,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7f9a32,        0x8ca3efb3,        0x0e7f9a32 );
TEST_FPRED_VV_OP( 903,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeca2f3b,        0xcb7da0de,        0xeeca2f3b );
TEST_FPRED_VV_OP( 904,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f14f95f4,        0x552d23d2,        0xf14f95f4 );
TEST_FPRED_VV_OP( 905,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000063b7a76e,        0x3436f14c,        0x63b7a76e );
TEST_FPRED_VV_OP( 906,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcc9ab43,        0x6f5f3f35,        0xbcc9ab43 );
TEST_FPRED_VV_OP( 907,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dfeeae1d,        0x53b5a207,        0xdfeeae1d );
TEST_FPRED_VV_OP( 908,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065eed45a,        0xd20dfb9f,        0x65eed45a );
TEST_FPRED_VV_OP( 909,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c8e4911e,        0x8723b674,        0xc8e4911e );
TEST_FPRED_VV_OP( 910,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061bee6e3,        0x0f348d99,        0x61bee6e3 );
TEST_FPRED_VV_OP( 911,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a888b0b,        0x3886ab90,        0x5a888b0b );
TEST_FPRED_VV_OP( 912,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e8b9b2cd,        0x0334f85a,        0xe8b9b2cd );
TEST_FPRED_VV_OP( 913,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001bc3cb1f,        0xea1670df,        0x1bc3cb1f );
TEST_FPRED_VV_OP( 914,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c9a9490,        0xd13744b3,        0x6c9a9490 );
TEST_FPRED_VV_OP( 915,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000094518e9b,        0x883fe017,        0x94518e9b );
TEST_FPRED_VV_OP( 916,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089b67375,        0x1daf3b01,        0x89b67375 );
TEST_FPRED_VV_OP( 917,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d4bea2c1,        0xa9c63a58,        0xd4bea2c1 );
TEST_FPRED_VV_OP( 918,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d7ac95f6,        0xec747b1c,        0xd7ac95f6 );
TEST_FPRED_VV_OP( 919,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4fe5b7c,        0x0c6eccf7,        0xb4fe5b7c );
TEST_FPRED_VV_OP( 920,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000059dac688,        0x4cad30bc,        0x59dac688 );
TEST_FPRED_VV_OP( 921,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d864b555,        0x477b3771,        0xd864b555 );
TEST_FPRED_VV_OP( 922,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0a45c48,        0xaeef6b3d,        0xf0a45c48 );
TEST_FPRED_VV_OP( 923,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008debdd64,        0x1555f68c,        0x8debdd64 );
TEST_FPRED_VV_OP( 924,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000078f0b6be,        0xb7e378a2,        0x78f0b6be );
TEST_FPRED_VV_OP( 925,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea5bd793,        0xb602bd3e,        0xea5bd793 );
TEST_FPRED_VV_OP( 926,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000837bb1b9,        0xaf130fb6,        0x837bb1b9 );
TEST_FPRED_VV_OP( 927,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8879ad6,        0x31a4314a,        0xb8879ad6 );
TEST_FPRED_VV_OP( 928,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a62bf1a5,        0xc723b3d7,        0xa62bf1a5 );
TEST_FPRED_VV_OP( 929,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027457e6e,        0x7015aa42,        0x27457e6e );
TEST_FPRED_VV_OP( 930,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c42dea11,        0x0928aa3e,        0xc42dea11 );
TEST_FPRED_VV_OP( 931,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bc0e79b9,        0x22ef3704,        0xbc0e79b9 );
TEST_FPRED_VV_OP( 932,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072ae0ac9,        0xf352256b,        0x72ae0ac9 );
TEST_FPRED_VV_OP( 933,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e29df404,        0x4da52bc4,        0xe29df404 );
TEST_FPRED_VV_OP( 934,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b117f9b7,        0x546d8880,        0xb117f9b7 );
TEST_FPRED_VV_OP( 935,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0abe8ea,        0xf78ee9c7,        0xf0abe8ea );
TEST_FPRED_VV_OP( 936,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b82f781,        0xc95bd691,        0x5b82f781 );
TEST_FPRED_VV_OP( 937,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003aba4a26,        0x5239bc94,        0x3aba4a26 );
TEST_FPRED_VV_OP( 938,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000efea5e67,        0xb48c2fbf,        0xefea5e67 );
TEST_FPRED_VV_OP( 939,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000688be24b,        0x67e301b5,        0x688be24b );
TEST_FPRED_VV_OP( 940,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021ad1582,        0x240451c9,        0x21ad1582 );
TEST_FPRED_VV_OP( 941,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a294f0b8,        0x27c6864f,        0xa294f0b8 );
TEST_FPRED_VV_OP( 942,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a6440f97,        0x26c6f274,        0xa6440f97 );
TEST_FPRED_VV_OP( 943,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ea2d0b9,        0x25f55d4e,        0x5ea2d0b9 );
TEST_FPRED_VV_OP( 944,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bdc0571c,        0x5d2eb86f,        0xbdc0571c );
TEST_FPRED_VV_OP( 945,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002442a91b,        0x828a97e7,        0x2442a91b );
TEST_FPRED_VV_OP( 946,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c377326,        0x67e912e1,        0x0c377326 );
TEST_FPRED_VV_OP( 947,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000533c8dfe,        0x3d4617ee,        0x533c8dfe );
TEST_FPRED_VV_OP( 948,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e21ef6aa,        0x09322d7d,        0xe21ef6aa );
TEST_FPRED_VV_OP( 949,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000919fa67d,        0x1eca00ff,        0x919fa67d );
TEST_FPRED_VV_OP( 950,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000873f1671,        0x2ecc47d2,        0x873f1671 );
TEST_FPRED_VV_OP( 951,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a9f2e23,        0xf3bb23d6,        0x2a9f2e23 );
TEST_FPRED_VV_OP( 952,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be22927b,        0xab05bda1,        0xbe22927b );
TEST_FPRED_VV_OP( 953,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a992efc3,        0xbebbadd8,        0xa992efc3 );
TEST_FPRED_VV_OP( 954,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075ce1220,        0x76ca2ed2,        0x75ce1220 );
TEST_FPRED_VV_OP( 955,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004447a68d,        0x2b20cd36,        0x4447a68d );
TEST_FPRED_VV_OP( 956,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f78b414,        0x524f229d,        0x3f78b414 );
TEST_FPRED_VV_OP( 957,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bd72133e,        0x5254e959,        0xbd72133e );
TEST_FPRED_VV_OP( 958,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cee6997,        0x2aef92ad,        0x0cee6997 );
TEST_FPRED_VV_OP( 959,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a1b49f6,        0x31229858,        0x1a1b49f6 );
TEST_FPRED_VV_OP( 960,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074cefef0,        0xb06bc8f6,        0x74cefef0 );
TEST_FPRED_VV_OP( 961,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db8a3bd9,        0x5dcce032,        0xdb8a3bd9 );
TEST_FPRED_VV_OP( 962,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004b329421,        0x310e5031,        0x4b329421 );
TEST_FPRED_VV_OP( 963,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a31ab60,        0xf2069096,        0x3a31ab60 );
TEST_FPRED_VV_OP( 964,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e953c01f,        0x072a3060,        0xe953c01f );
TEST_FPRED_VV_OP( 965,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f147ddf,        0x9c33042c,        0x0f147ddf );
TEST_FPRED_VV_OP( 966,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf457330,        0x06dd7d38,        0xcf457330 );
TEST_FPRED_VV_OP( 967,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019f95636,        0xe4b100b8,        0x19f95636 );
TEST_FPRED_VV_OP( 968,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030610d6c,        0x04c5e517,        0x30610d6c );
TEST_FPRED_VV_OP( 969,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007cfe6ad7,        0x3b50cc02,        0x7cfe6ad7 );
TEST_FPRED_VV_OP( 970,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000051a59b6f,        0x6f0086f2,        0x51a59b6f );
TEST_FPRED_VV_OP( 971,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be384770,        0xc583b3da,        0xbe384770 );
TEST_FPRED_VV_OP( 972,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000336dc41b,        0xae6ff135,        0x336dc41b );
TEST_FPRED_VV_OP( 973,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a87f271a,        0x7815f9b0,        0xa87f271a );
TEST_FPRED_VV_OP( 974,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c9121e1,        0x5cc84607,        0x6c9121e1 );
TEST_FPRED_VV_OP( 975,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a73c95c4,        0x754bced3,        0xa73c95c4 );
TEST_FPRED_VV_OP( 976,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000caf0a32c,        0xaec59a2a,        0xcaf0a32c );
TEST_FPRED_VV_OP( 977,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000046f5a171,        0x8542dc85,        0x46f5a171 );
TEST_FPRED_VV_OP( 978,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000251c1e00,        0x3af43c9d,        0x251c1e00 );
TEST_FPRED_VV_OP( 979,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac7c3863,        0xae8c12b8,        0xac7c3863 );
TEST_FPRED_VV_OP( 980,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f02a18c,        0x67be397d,        0x8f02a18c );
TEST_FPRED_VV_OP( 981,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091fd21c8,        0x8758cfc4,        0x91fd21c8 );
TEST_FPRED_VV_OP( 982,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004453aa24,        0x1de4f6af,        0x4453aa24 );
TEST_FPRED_VV_OP( 983,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008cc4c438,        0x1a455288,        0x8cc4c438 );
TEST_FPRED_VV_OP( 984,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcafd1ca,        0x88db7d8c,        0xbcafd1ca );
TEST_FPRED_VV_OP( 985,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000767634b8,        0xf937aafa,        0x767634b8 );
TEST_FPRED_VV_OP( 986,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000177434a8,        0xca3650e2,        0x177434a8 );
TEST_FPRED_VV_OP( 987,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004602bb95,        0xc7044eb3,        0x4602bb95 );
TEST_FPRED_VV_OP( 988,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb2a44f6,        0x58933db0,        0xbb2a44f6 );
TEST_FPRED_VV_OP( 989,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e1cd9683,        0x0545acbb,        0xe1cd9683 );
TEST_FPRED_VV_OP( 990,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c649858c,        0xb379a614,        0xc649858c );
TEST_FPRED_VV_OP( 991,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000834794d4,        0x9b3eb4cc,        0x834794d4 );
TEST_FPRED_VV_OP( 992,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e226001f,        0xe9519192,        0xe226001f );
TEST_FPRED_VV_OP( 993,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bbf119a,        0x2eb0d339,        0x3bbf119a );
TEST_FPRED_VV_OP( 994,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aeac265,        0xf575e7bb,        0x0aeac265 );
TEST_FPRED_VV_OP( 995,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041649ded,        0xee907664,        0x41649ded );
TEST_FPRED_VV_OP( 996,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000054d909fd,        0x53960a4c,        0x54d909fd );
TEST_FPRED_VV_OP( 997,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082c44d2b,        0x87973a27,        0x82c44d2b );
TEST_FPRED_VV_OP( 998,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085371e54,        0xa925b817,        0x85371e54 );
TEST_FPRED_VV_OP( 999,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091074282,        0x1c1a1e45,        0x91074282 );
TEST_FPRED_VV_OP( 1000,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061ae58b5,        0x20dcdbeb,        0x61ae58b5 );
TEST_FPRED_VV_OP( 1001,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c611ba41,        0x2d3e0667,        0xc611ba41 );
TEST_FPRED_VV_OP( 1002,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0fb779f,        0x53d05d72,        0xd0fb779f );
TEST_FPRED_VV_OP( 1003,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000999f8b26,        0xb822ad39,        0x999f8b26 );
TEST_FPRED_VV_OP( 1004,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a113808e,        0x4ffe6390,        0xa113808e );
TEST_FPRED_VV_OP( 1005,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000675a54fd,        0x9ef29035,        0x675a54fd );
TEST_FPRED_VV_OP( 1006,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008864b1ab,        0xd0450fa2,        0x8864b1ab );
TEST_FPRED_VV_OP( 1007,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cd9e4966,        0x0d89744e,        0xcd9e4966 );
TEST_FPRED_VV_OP( 1008,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ecdb94a3,        0x346489f5,        0xecdb94a3 );
TEST_FPRED_VV_OP( 1009,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050fb73b8,        0xd48dd733,        0x50fb73b8 );
TEST_FPRED_VV_OP( 1010,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001566303a,        0x5d857c31,        0x1566303a );
TEST_FPRED_VV_OP( 1011,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f77c3228,        0x9b185404,        0xf77c3228 );
TEST_FPRED_VV_OP( 1012,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de7da192,        0x41059de4,        0xde7da192 );
TEST_FPRED_VV_OP( 1013,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a2510c7,        0x12d11883,        0x1a2510c7 );
TEST_FPRED_VV_OP( 1014,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c4f914e,        0xa647e794,        0x8c4f914e );
TEST_FPRED_VV_OP( 1015,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae52acb6,        0xd5710481,        0xae52acb6 );
TEST_FPRED_VV_OP( 1016,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000269ca43a,        0xcca75bc9,        0x269ca43a );
TEST_FPRED_VV_OP( 1017,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000112bfa6f,        0x28ea8990,        0x112bfa6f );
TEST_FPRED_VV_OP( 1018,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e6388e69,        0x4914fd85,        0xe6388e69 );
TEST_FPRED_VV_OP( 1019,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f9c2d14,        0x9edd447a,        0x9f9c2d14 );
TEST_FPRED_VV_OP( 1020,  vfredmin.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085d763a6,        0x1a012a8e,        0x85d763a6 );
TEST_FPRED_VV_OP( 1021,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac497736,        0x697d2a85,        0xac497736 );
TEST_FPRED_VV_OP( 1022,  vfredmin.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a462146,        0x0e3deb9d,        0x8a462146 );
TEST_FPRED_VV_OP( 1023,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2300ca6,        0x9da1bcd6,        0xd2300ca6 );
TEST_FPRED_VV_OP( 1024,  vfredmin.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab04b597,        0x5254ddf9,        0xab04b597 );
  #-------------------------------------------------------------
  # VV Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_FPRED_VV_OP_rd1( 1025,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d5173d3b, 0x7F800000, 0xd5173d3b );
  TEST_FPRED_VV_OP_11( 1026,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d5173d3b, 0x7F800000, 0xd5173d3b );
  TEST_FPRED_VV_OP_rd2( 1027,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c954c88, 0x00000000, 0x1c954c88 );
  TEST_FPRED_VV_OP_12( 1028,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c954c88, 0x00000000, 0x1c954c88 );
  TEST_FPRED_VV_OP_rd3( 1029,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae8f2f8a, 0xBF800000, 0xae8f2f8a );
  TEST_FPRED_VV_OP_13( 1030,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae8f2f8a, 0xBF800000, 0xae8f2f8a );
  TEST_FPRED_VV_OP_rd4( 1031,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e18cd6d3, 0xBF800000, 0xe18cd6d3 );
  TEST_FPRED_VV_OP_14( 1032,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e18cd6d3, 0xBF800000, 0xe18cd6d3 );
  TEST_FPRED_VV_OP_rd5( 1033,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7128ead, 0xBF800000, 0xe7128ead );
  TEST_FPRED_VV_OP_15( 1034,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7128ead, 0xBF800000, 0xe7128ead );
  TEST_FPRED_VV_OP_rd6( 1035,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000430c45f2, 0xBF800000, 0x430c45f2 );
  TEST_FPRED_VV_OP_16( 1036,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000430c45f2, 0xBF800000, 0x430c45f2 );
  TEST_FPRED_VV_OP_rd7( 1037,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fece821, 0xBF800000, 0x1fece821 );
  TEST_FPRED_VV_OP_17( 1038,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fece821, 0xBF800000, 0x1fece821 );
  TEST_FPRED_VV_OP_rd9( 1039,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009deac411, 0xBF800000, 0x9deac411 );
  TEST_FPRED_VV_OP_19( 1040,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009deac411, 0xBF800000, 0x9deac411 );
  TEST_FPRED_VV_OP_rd10( 1041,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d578536b, 0xBF800000, 0xd578536b );
  TEST_FPRED_VV_OP_110( 1042,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d578536b, 0xBF800000, 0xd578536b );
  TEST_FPRED_VV_OP_rd11( 1043,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a2112c5, 0xBF800000, 0x5a2112c5 );
  TEST_FPRED_VV_OP_111( 1044,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a2112c5, 0xBF800000, 0x5a2112c5 );
  TEST_FPRED_VV_OP_rd12( 1045,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033755502, 0xBF800000, 0x33755502 );
  TEST_FPRED_VV_OP_112( 1046,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033755502, 0xBF800000, 0x33755502 );
  TEST_FPRED_VV_OP_rd13( 1047,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041f512c8, 0xBF800000, 0x41f512c8 );
  TEST_FPRED_VV_OP_113( 1048,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041f512c8, 0xBF800000, 0x41f512c8 );
  TEST_FPRED_VV_OP_rd14( 1049,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b07c90e, 0xBF800000, 0x5b07c90e );
  TEST_FPRED_VV_OP_114( 1050,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b07c90e, 0xBF800000, 0x5b07c90e );
  TEST_FPRED_VV_OP_rd15( 1051,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030e95eba, 0xBF800000, 0x30e95eba );
  TEST_FPRED_VV_OP_115( 1052,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030e95eba, 0xBF800000, 0x30e95eba );
  TEST_FPRED_VV_OP_rd17( 1053,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ce250988, 0xBF800000, 0xce250988 );
  TEST_FPRED_VV_OP_117( 1054,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ce250988, 0xBF800000, 0xce250988 );
  TEST_FPRED_VV_OP_rd18( 1055,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000546ef0b9, 0xBF800000, 0x546ef0b9 );
  TEST_FPRED_VV_OP_118( 1056,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000546ef0b9, 0xBF800000, 0x546ef0b9 );
  TEST_FPRED_VV_OP_rd19( 1057,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c69a228, 0x3F800000, 0x7c69a228 );
  TEST_FPRED_VV_OP_119( 1058,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c69a228, 0x3F800000, 0x7c69a228 );
  TEST_FPRED_VV_OP_rd20( 1059,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000540da0bc, 0x3F800000, 0x540da0bc );
  TEST_FPRED_VV_OP_120( 1060,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000540da0bc, 0x3F800000, 0x540da0bc );
  TEST_FPRED_VV_OP_rd21( 1061,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b917bde6, 0x3F800000, 0xb917bde6 );
  TEST_FPRED_VV_OP_121( 1062,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b917bde6, 0x3F800000, 0xb917bde6 );
  TEST_FPRED_VV_OP_rd22( 1063,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002b14a548, 0x3F800000, 0x2b14a548 );
  TEST_FPRED_VV_OP_122( 1064,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002b14a548, 0x3F800000, 0x2b14a548 );
  TEST_FPRED_VV_OP_rd23( 1065,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005c51c72f, 0x3F800000, 0x5c51c72f );
  TEST_FPRED_VV_OP_123( 1066,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005c51c72f, 0x3F800000, 0x5c51c72f );
  TEST_FPRED_VV_OP_rd25( 1067,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f8e67fb0, 0x3F800000, 0xf8e67fb0 );
  TEST_FPRED_VV_OP_125( 1068,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f8e67fb0, 0x3F800000, 0xf8e67fb0 );
  TEST_FPRED_VV_OP_rd26( 1069,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000045b5c5f1, 0x3F800000, 0x45b5c5f1 );
  TEST_FPRED_VV_OP_126( 1070,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000045b5c5f1, 0x3F800000, 0x45b5c5f1 );
  TEST_FPRED_VV_OP_rd27( 1071,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006bd9ba9a, 0x3F800000, 0x6bd9ba9a );
  TEST_FPRED_VV_OP_127( 1072,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006bd9ba9a, 0x3F800000, 0x6bd9ba9a );
  TEST_FPRED_VV_OP_rd28( 1073,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c1e8667, 0x3F800000, 0x9c1e8667 );
  TEST_FPRED_VV_OP_128( 1074,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c1e8667, 0x3F800000, 0x9c1e8667 );
  TEST_FPRED_VV_OP_rd29( 1075,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a2c7d45, 0x3F800000, 0x8a2c7d45 );
  TEST_FPRED_VV_OP_129( 1076,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a2c7d45, 0x3F800000, 0x8a2c7d45 );
  TEST_FPRED_VV_OP_rd30( 1077,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000af61ac13, 0x3F800000, 0xaf61ac13 );
  TEST_FPRED_VV_OP_130( 1078,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000af61ac13, 0x3F800000, 0xaf61ac13 );
  TEST_FPRED_VV_OP_rd31( 1079,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc06f22d, 0x3F800000, 0xcc06f22d );
  TEST_FPRED_VV_OP_131( 1080,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cc06f22d, 0x3F800000, 0xcc06f22d );
  TEST_FPRED_VV_OP_rd1( 1081,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ac84f04, 0x3F800000, 0x6ac84f04 );
  TEST_FPRED_VV_OP_11( 1082,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ac84f04, 0x3F800000, 0x6ac84f04 );
  TEST_FPRED_VV_OP_rd2( 1083,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000581f3afc, 0x3F800000, 0x581f3afc );
  TEST_FPRED_VV_OP_12( 1084,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000581f3afc, 0x3F800000, 0x581f3afc );
  TEST_FPRED_VV_OP_rd3( 1085,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006122b26e, 0x3F800000, 0x6122b26e );
  TEST_FPRED_VV_OP_13( 1086,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006122b26e, 0x3F800000, 0x6122b26e );
  TEST_FPRED_VV_OP_rd4( 1087,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff4914a8, 0xFF7FFFFF, 0xff4914a8 );
  TEST_FPRED_VV_OP_14( 1088,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff4914a8, 0xFF7FFFFF, 0xff4914a8 );
  TEST_FPRED_VV_OP_rd5( 1089,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0a80a4a, 0xFF7FFFFF, 0xf0a80a4a );
  TEST_FPRED_VV_OP_15( 1090,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0a80a4a, 0xFF7FFFFF, 0xf0a80a4a );
  TEST_FPRED_VV_OP_rd6( 1091,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044577dfa, 0xFF7FFFFF, 0x44577dfa );
  TEST_FPRED_VV_OP_16( 1092,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044577dfa, 0xFF7FFFFF, 0x44577dfa );
  TEST_FPRED_VV_OP_rd7( 1093,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e31172b1, 0xFF7FFFFF, 0xe31172b1 );
  TEST_FPRED_VV_OP_17( 1094,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e31172b1, 0xFF7FFFFF, 0xe31172b1 );
  TEST_FPRED_VV_OP_rd9( 1095,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009cd4367e, 0xFF7FFFFF, 0x9cd4367e );
  TEST_FPRED_VV_OP_19( 1096,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009cd4367e, 0xFF7FFFFF, 0x9cd4367e );
  TEST_FPRED_VV_OP_rd10( 1097,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053266571, 0xFF7FFFFF, 0x53266571 );
  TEST_FPRED_VV_OP_110( 1098,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053266571, 0xFF7FFFFF, 0x53266571 );
  TEST_FPRED_VV_OP_rd11( 1099,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039a2b9a9, 0xFF7FFFFF, 0x39a2b9a9 );
  TEST_FPRED_VV_OP_111( 1100,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039a2b9a9, 0xFF7FFFFF, 0x39a2b9a9 );
  TEST_FPRED_VV_OP_rd12( 1101,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f628feb7, 0xFF7FFFFF, 0xf628feb7 );
  TEST_FPRED_VV_OP_112( 1102,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f628feb7, 0xFF7FFFFF, 0xf628feb7 );
  TEST_FPRED_VV_OP_rd13( 1103,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000519a8397, 0xFF7FFFFF, 0x519a8397 );
  TEST_FPRED_VV_OP_113( 1104,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000519a8397, 0xFF7FFFFF, 0x519a8397 );
  TEST_FPRED_VV_OP_rd14( 1105,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d949e747, 0xFF7FFFFF, 0xd949e747 );
  TEST_FPRED_VV_OP_114( 1106,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d949e747, 0xFF7FFFFF, 0xd949e747 );
  TEST_FPRED_VV_OP_rd15( 1107,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fe0b7d68, 0xFF7FFFFF, 0xfe0b7d68 );
  TEST_FPRED_VV_OP_115( 1108,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fe0b7d68, 0xFF7FFFFF, 0xfe0b7d68 );
  TEST_FPRED_VV_OP_rd17( 1109,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b9f0a06, 0xFF7FFFFF, 0x7b9f0a06 );
  TEST_FPRED_VV_OP_117( 1110,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b9f0a06, 0xFF7FFFFF, 0x7b9f0a06 );
  TEST_FPRED_VV_OP_rd18( 1111,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e25828a9, 0xFF7FFFFF, 0xe25828a9 );
  TEST_FPRED_VV_OP_118( 1112,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e25828a9, 0xFF7FFFFF, 0xe25828a9 );
  TEST_FPRED_VV_OP_rd19( 1113,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ff72e08, 0xFF7FFFFF, 0x6ff72e08 );
  TEST_FPRED_VV_OP_119( 1114,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ff72e08, 0xFF7FFFFF, 0x6ff72e08 );
  TEST_FPRED_VV_OP_rd20( 1115,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae72d34d, 0x7F7FFFFF, 0xae72d34d );
  TEST_FPRED_VV_OP_120( 1116,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae72d34d, 0x7F7FFFFF, 0xae72d34d );
  TEST_FPRED_VV_OP_rd21( 1117,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f61fde3e, 0x7F7FFFFF, 0xf61fde3e );
  TEST_FPRED_VV_OP_121( 1118,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f61fde3e, 0x7F7FFFFF, 0xf61fde3e );
  TEST_FPRED_VV_OP_rd22( 1119,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001cb57d88, 0x7F7FFFFF, 0x1cb57d88 );
  TEST_FPRED_VV_OP_122( 1120,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001cb57d88, 0x7F7FFFFF, 0x1cb57d88 );
  TEST_FPRED_VV_OP_rd23( 1121,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bb5e465, 0x7F7FFFFF, 0x3bb5e465 );
  TEST_FPRED_VV_OP_123( 1122,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bb5e465, 0x7F7FFFFF, 0x3bb5e465 );
  TEST_FPRED_VV_OP_rd25( 1123,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae23f858, 0x7F7FFFFF, 0xae23f858 );
  TEST_FPRED_VV_OP_125( 1124,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae23f858, 0x7F7FFFFF, 0xae23f858 );
  TEST_FPRED_VV_OP_rd26( 1125,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032b4b342, 0x7F7FFFFF, 0x32b4b342 );
  TEST_FPRED_VV_OP_126( 1126,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032b4b342, 0x7F7FFFFF, 0x32b4b342 );
  TEST_FPRED_VV_OP_rd27( 1127,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c5034c7, 0x7F7FFFFF, 0x9c5034c7 );
  TEST_FPRED_VV_OP_127( 1128,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c5034c7, 0x7F7FFFFF, 0x9c5034c7 );
  TEST_FPRED_VV_OP_rd28( 1129,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006129cabb, 0x7F7FFFFF, 0x6129cabb );
  TEST_FPRED_VV_OP_128( 1130,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006129cabb, 0x7F7FFFFF, 0x6129cabb );
  TEST_FPRED_VV_OP_rd29( 1131,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009af4bc9a, 0x7F7FFFFF, 0x9af4bc9a );
  TEST_FPRED_VV_OP_129( 1132,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009af4bc9a, 0x7F7FFFFF, 0x9af4bc9a );
  TEST_FPRED_VV_OP_rd30( 1133,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c729acef, 0x7F7FFFFF, 0xc729acef );
  TEST_FPRED_VV_OP_130( 1134,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c729acef, 0x7F7FFFFF, 0xc729acef );
  TEST_FPRED_VV_OP_rd31( 1135,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007d485219, 0x7F7FFFFF, 0x7d485219 );
  TEST_FPRED_VV_OP_131( 1136,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007d485219, 0x7F7FFFFF, 0x7d485219 );
  TEST_FPRED_VV_OP_rd1( 1137,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a3b445a, 0x7F7FFFFF, 0x4a3b445a );
  TEST_FPRED_VV_OP_11( 1138,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a3b445a, 0x7F7FFFFF, 0x4a3b445a );
  TEST_FPRED_VV_OP_rd2( 1139,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000276f4a82, 0x7F7FFFFF, 0x276f4a82 );
  TEST_FPRED_VV_OP_12( 1140,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000276f4a82, 0x7F7FFFFF, 0x276f4a82 );
  TEST_FPRED_VV_OP_rd3( 1141,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd7bf9fc, 0x7F7FFFFF, 0xdd7bf9fc );
  TEST_FPRED_VV_OP_13( 1142,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd7bf9fc, 0x7F7FFFFF, 0xdd7bf9fc );
  TEST_FPRED_VV_OP_rd4( 1143,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006797c5aa, 0x7F7FFFFF, 0x6797c5aa );
  TEST_FPRED_VV_OP_14( 1144,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006797c5aa, 0x7F7FFFFF, 0x6797c5aa );
  TEST_FPRED_VV_OP_rd5( 1145,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c739bc0, 0x80855555, 0x9c739bc0 );
  TEST_FPRED_VV_OP_15( 1146,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c739bc0, 0x80855555, 0x9c739bc0 );
  TEST_FPRED_VV_OP_rd6( 1147,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000037e6587a, 0x80855555, 0x37e6587a );
  TEST_FPRED_VV_OP_16( 1148,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000037e6587a, 0x80855555, 0x37e6587a );
  TEST_FPRED_VV_OP_rd7( 1149,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000292fa2d6, 0x80855555, 0x292fa2d6 );
  TEST_FPRED_VV_OP_17( 1150,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000292fa2d6, 0x80855555, 0x292fa2d6 );
  TEST_FPRED_VV_OP_rd9( 1151,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a87ebd39, 0x80855555, 0xa87ebd39 );
  TEST_FPRED_VV_OP_19( 1152,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a87ebd39, 0x80855555, 0xa87ebd39 );
  TEST_FPRED_VV_OP_rd10( 1153,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000da3b9803, 0x80855555, 0xda3b9803 );
  TEST_FPRED_VV_OP_110( 1154,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000da3b9803, 0x80855555, 0xda3b9803 );
  TEST_FPRED_VV_OP_rd11( 1155,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf98db80, 0x80855555, 0xcf98db80 );
  TEST_FPRED_VV_OP_111( 1156,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf98db80, 0x80855555, 0xcf98db80 );
  TEST_FPRED_VV_OP_rd12( 1157,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a1993841, 0x80855555, 0xa1993841 );
  TEST_FPRED_VV_OP_112( 1158,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a1993841, 0x80855555, 0xa1993841 );
  TEST_FPRED_VV_OP_rd13( 1159,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000214c72b3, 0x80855555, 0x214c72b3 );
  TEST_FPRED_VV_OP_113( 1160,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000214c72b3, 0x80855555, 0x214c72b3 );
  TEST_FPRED_VV_OP_rd14( 1161,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a289aa8, 0x80855555, 0x4a289aa8 );
  TEST_FPRED_VV_OP_114( 1162,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a289aa8, 0x80855555, 0x4a289aa8 );
  TEST_FPRED_VV_OP_rd15( 1163,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d7777d1, 0x80855555, 0x3d7777d1 );
  TEST_FPRED_VV_OP_115( 1164,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d7777d1, 0x80855555, 0x3d7777d1 );
  TEST_FPRED_VV_OP_rd17( 1165,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013d30cfc, 0x80855555, 0x13d30cfc );
  TEST_FPRED_VV_OP_117( 1166,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013d30cfc, 0x80855555, 0x13d30cfc );
  TEST_FPRED_VV_OP_rd18( 1167,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a19a62b, 0x80855555, 0x8a19a62b );
  TEST_FPRED_VV_OP_118( 1168,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a19a62b, 0x80855555, 0x8a19a62b );
  TEST_FPRED_VV_OP_rd19( 1169,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007041e7d, 0x80855555, 0x07041e7d );
  TEST_FPRED_VV_OP_119( 1170,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007041e7d, 0x80855555, 0x07041e7d );
  TEST_FPRED_VV_OP_rd20( 1171,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b192289, 0x80855555, 0x3b192289 );
  TEST_FPRED_VV_OP_120( 1172,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b192289, 0x80855555, 0x3b192289 );
  TEST_FPRED_VV_OP_rd21( 1173,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8f72c52, 0x00800001, 0xb8f72c52 );
  TEST_FPRED_VV_OP_121( 1174,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8f72c52, 0x00800001, 0xb8f72c52 );
  TEST_FPRED_VV_OP_rd22( 1175,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a7c4f91, 0x00800001, 0x3a7c4f91 );
  TEST_FPRED_VV_OP_122( 1176,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a7c4f91, 0x00800001, 0x3a7c4f91 );
  TEST_FPRED_VV_OP_rd23( 1177,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002eadf0ac, 0x00800001, 0x2eadf0ac );
  TEST_FPRED_VV_OP_123( 1178,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002eadf0ac, 0x00800001, 0x2eadf0ac );
  TEST_FPRED_VV_OP_rd25( 1179,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c1ae516, 0x00800001, 0x8c1ae516 );
  TEST_FPRED_VV_OP_125( 1180,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c1ae516, 0x00800001, 0x8c1ae516 );
  TEST_FPRED_VV_OP_rd26( 1181,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb97f344, 0x00800001, 0xbb97f344 );
  TEST_FPRED_VV_OP_126( 1182,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb97f344, 0x00800001, 0xbb97f344 );
  TEST_FPRED_VV_OP_rd27( 1183,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d614a74, 0x00800001, 0x2d614a74 );
  TEST_FPRED_VV_OP_127( 1184,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d614a74, 0x00800001, 0x2d614a74 );
  TEST_FPRED_VV_OP_rd28( 1185,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dbb7bc69, 0x00800001, 0xdbb7bc69 );
  TEST_FPRED_VV_OP_128( 1186,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dbb7bc69, 0x00800001, 0xdbb7bc69 );
  TEST_FPRED_VV_OP_rd29( 1187,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075160c80, 0x00800001, 0x75160c80 );
  TEST_FPRED_VV_OP_129( 1188,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075160c80, 0x00800001, 0x75160c80 );
  TEST_FPRED_VV_OP_rd30( 1189,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026513b2, 0x00800001, 0x026513b2 );
  TEST_FPRED_VV_OP_130( 1190,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026513b2, 0x00800001, 0x026513b2 );
  TEST_FPRED_VV_OP_rd31( 1191,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3301eb1, 0x00800001, 0xb3301eb1 );
  TEST_FPRED_VV_OP_131( 1192,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3301eb1, 0x00800001, 0xb3301eb1 );
  TEST_FPRED_VV_OP_rd1( 1193,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000513b24cd, 0x00800001, 0x513b24cd );
  TEST_FPRED_VV_OP_11( 1194,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000513b24cd, 0x00800001, 0x513b24cd );
  TEST_FPRED_VV_OP_rd2( 1195,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2d18754, 0x00800001, 0xd2d18754 );
  TEST_FPRED_VV_OP_12( 1196,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2d18754, 0x00800001, 0xd2d18754 );
  TEST_FPRED_VV_OP_rd3( 1197,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fccea6a, 0x00800001, 0x0fccea6a );
  TEST_FPRED_VV_OP_13( 1198,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fccea6a, 0x00800001, 0x0fccea6a );
  TEST_FPRED_VV_OP_rd4( 1199,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4e15b15, 0x00800001, 0xb4e15b15 );
  TEST_FPRED_VV_OP_14( 1200,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4e15b15, 0x00800001, 0xb4e15b15 );
  TEST_FPRED_VV_OP_rd5( 1201,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b546b05b, 0x00800001, 0xb546b05b );
  TEST_FPRED_VV_OP_15( 1202,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b546b05b, 0x00800001, 0xb546b05b );
  TEST_FPRED_VV_OP_rd6( 1203,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f952852, 0x80800000, 0x0f952852 );
  TEST_FPRED_VV_OP_16( 1204,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f952852, 0x80800000, 0x0f952852 );
  TEST_FPRED_VV_OP_rd7( 1205,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007dbe9d89, 0x80800000, 0x7dbe9d89 );
  TEST_FPRED_VV_OP_17( 1206,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007dbe9d89, 0x80800000, 0x7dbe9d89 );
  TEST_FPRED_VV_OP_rd9( 1207,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d924a386, 0x80800000, 0xd924a386 );
  TEST_FPRED_VV_OP_19( 1208,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d924a386, 0x80800000, 0xd924a386 );
  TEST_FPRED_VV_OP_rd10( 1209,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df5f99f4, 0x80800000, 0xdf5f99f4 );
  TEST_FPRED_VV_OP_110( 1210,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df5f99f4, 0x80800000, 0xdf5f99f4 );
  TEST_FPRED_VV_OP_rd11( 1211,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006618d504, 0x80800000, 0x6618d504 );
  TEST_FPRED_VV_OP_111( 1212,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006618d504, 0x80800000, 0x6618d504 );
  TEST_FPRED_VV_OP_rd12( 1213,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008849a498, 0x80800000, 0x8849a498 );
  TEST_FPRED_VV_OP_112( 1214,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008849a498, 0x80800000, 0x8849a498 );
  TEST_FPRED_VV_OP_rd13( 1215,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f2961261, 0x80800000, 0xf2961261 );
  TEST_FPRED_VV_OP_113( 1216,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f2961261, 0x80800000, 0xf2961261 );
  TEST_FPRED_VV_OP_rd14( 1217,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e303d466, 0x80800000, 0xe303d466 );
  TEST_FPRED_VV_OP_114( 1218,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e303d466, 0x80800000, 0xe303d466 );
  TEST_FPRED_VV_OP_rd15( 1219,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d9d90f64, 0x80800000, 0xd9d90f64 );
  TEST_FPRED_VV_OP_115( 1220,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d9d90f64, 0x80800000, 0xd9d90f64 );
  TEST_FPRED_VV_OP_rd17( 1221,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b60686, 0x80800000, 0x07b60686 );
  TEST_FPRED_VV_OP_117( 1222,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b60686, 0x80800000, 0x07b60686 );
  TEST_FPRED_VV_OP_rd18( 1223,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092dc0a8a, 0x80800000, 0x92dc0a8a );
  TEST_FPRED_VV_OP_118( 1224,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092dc0a8a, 0x80800000, 0x92dc0a8a );
  TEST_FPRED_VV_OP_rd19( 1225,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000093997373, 0x80800000, 0x93997373 );
  TEST_FPRED_VV_OP_119( 1226,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000093997373, 0x80800000, 0x93997373 );
  TEST_FPRED_VV_OP_rd20( 1227,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e19d8f2e, 0x80800000, 0xe19d8f2e );
  TEST_FPRED_VV_OP_120( 1228,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e19d8f2e, 0x80800000, 0xe19d8f2e );
  TEST_FPRED_VV_OP_rd21( 1229,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd4ad4c7, 0x80800000, 0xdd4ad4c7 );
  TEST_FPRED_VV_OP_121( 1230,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd4ad4c7, 0x80800000, 0xdd4ad4c7 );
  TEST_FPRED_VV_OP_rd22( 1231,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3419eb, 0x00800000, 0x0b3419eb );
  TEST_FPRED_VV_OP_122( 1232,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3419eb, 0x00800000, 0x0b3419eb );
  TEST_FPRED_VV_OP_rd23( 1233,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000046365e84, 0x00800000, 0x46365e84 );
  TEST_FPRED_VV_OP_123( 1234,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000046365e84, 0x00800000, 0x46365e84 );
  TEST_FPRED_VV_OP_rd25( 1235,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065cdd905, 0x00800000, 0x65cdd905 );
  TEST_FPRED_VV_OP_125( 1236,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065cdd905, 0x00800000, 0x65cdd905 );
  TEST_FPRED_VV_OP_rd26( 1237,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd60629d, 0x00800000, 0xdd60629d );
  TEST_FPRED_VV_OP_126( 1238,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd60629d, 0x00800000, 0xdd60629d );
  TEST_FPRED_VV_OP_rd27( 1239,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016478c58, 0x00800000, 0x16478c58 );
  TEST_FPRED_VV_OP_127( 1240,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016478c58, 0x00800000, 0x16478c58 );
  TEST_FPRED_VV_OP_rd28( 1241,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d11c290e, 0x00800000, 0xd11c290e );
  TEST_FPRED_VV_OP_128( 1242,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d11c290e, 0x00800000, 0xd11c290e );
  TEST_FPRED_VV_OP_rd29( 1243,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d899e08, 0x00800000, 0x0d899e08 );
  TEST_FPRED_VV_OP_129( 1244,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d899e08, 0x00800000, 0x0d899e08 );
  TEST_FPRED_VV_OP_rd30( 1245,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9770a1f, 0x00800000, 0xc9770a1f );
  TEST_FPRED_VV_OP_130( 1246,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9770a1f, 0x00800000, 0xc9770a1f );
  TEST_FPRED_VV_OP_rd31( 1247,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac39d155, 0x00800000, 0xac39d155 );
  TEST_FPRED_VV_OP_131( 1248,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac39d155, 0x00800000, 0xac39d155 );
  TEST_FPRED_VV_OP_rd1( 1249,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7a7733, 0x00800000, 0x0f7a7733 );
  TEST_FPRED_VV_OP_11( 1250,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7a7733, 0x00800000, 0x0f7a7733 );
  TEST_FPRED_VV_OP_rd2( 1251,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a946bce1, 0x00800000, 0xa946bce1 );
  TEST_FPRED_VV_OP_12( 1252,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a946bce1, 0x00800000, 0xa946bce1 );
  TEST_FPRED_VV_OP_rd3( 1253,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004e00d0f3, 0x00800000, 0x4e00d0f3 );
  TEST_FPRED_VV_OP_13( 1254,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004e00d0f3, 0x00800000, 0x4e00d0f3 );
  TEST_FPRED_VV_OP_rd4( 1255,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003aa41dc4, 0x00800000, 0x3aa41dc4 );
  TEST_FPRED_VV_OP_14( 1256,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003aa41dc4, 0x00800000, 0x3aa41dc4 );
  TEST_FPRED_VV_OP_rd5( 1257,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9f9511, 0x00800000, 0x0a9f9511 );
  TEST_FPRED_VV_OP_15( 1258,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9f9511, 0x00800000, 0x0a9f9511 );
  TEST_FPRED_VV_OP_rd6( 1259,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005398487b, 0x00800000, 0x5398487b );
  TEST_FPRED_VV_OP_16( 1260,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005398487b, 0x00800000, 0x5398487b );
  TEST_FPRED_VV_OP_rd7( 1261,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3782028, 0x807FFFFF, 0xf3782028 );
  TEST_FPRED_VV_OP_17( 1262,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3782028, 0x807FFFFF, 0xf3782028 );
  TEST_FPRED_VV_OP_rd9( 1263,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ca3efb3, 0x807FFFFF, 0x8ca3efb3 );
  TEST_FPRED_VV_OP_19( 1264,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ca3efb3, 0x807FFFFF, 0x8ca3efb3 );
  TEST_FPRED_VV_OP_rd10( 1265,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cb7da0de, 0x807FFFFF, 0xcb7da0de );
  TEST_FPRED_VV_OP_110( 1266,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cb7da0de, 0x807FFFFF, 0xcb7da0de );
  TEST_FPRED_VV_OP_rd11( 1267,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000552d23d2, 0x807FFFFF, 0x552d23d2 );
  TEST_FPRED_VV_OP_111( 1268,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000552d23d2, 0x807FFFFF, 0x552d23d2 );
  TEST_FPRED_VV_OP_rd12( 1269,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003436f14c, 0x807FFFFF, 0x3436f14c );
  TEST_FPRED_VV_OP_112( 1270,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003436f14c, 0x807FFFFF, 0x3436f14c );
  TEST_FPRED_VV_OP_rd13( 1271,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f5f3f35, 0x807FFFFF, 0x6f5f3f35 );
  TEST_FPRED_VV_OP_113( 1272,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f5f3f35, 0x807FFFFF, 0x6f5f3f35 );
  TEST_FPRED_VV_OP_rd14( 1273,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053b5a207, 0x807FFFFF, 0x53b5a207 );
  TEST_FPRED_VV_OP_114( 1274,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053b5a207, 0x807FFFFF, 0x53b5a207 );
  TEST_FPRED_VV_OP_rd15( 1275,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d20dfb9f, 0x807FFFFF, 0xd20dfb9f );
  TEST_FPRED_VV_OP_115( 1276,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d20dfb9f, 0x807FFFFF, 0xd20dfb9f );
  TEST_FPRED_VV_OP_rd17( 1277,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f348d99, 0x807FFFFF, 0x0f348d99 );
  TEST_FPRED_VV_OP_117( 1278,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f348d99, 0x807FFFFF, 0x0f348d99 );
  TEST_FPRED_VV_OP_rd18( 1279,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003886ab90, 0x807FFFFF, 0x3886ab90 );
  TEST_FPRED_VV_OP_118( 1280,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003886ab90, 0x807FFFFF, 0x3886ab90 );
  TEST_FPRED_VV_OP_rd19( 1281,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000334f85a, 0x807FFFFF, 0x0334f85a );
  TEST_FPRED_VV_OP_119( 1282,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000334f85a, 0x807FFFFF, 0x0334f85a );
  TEST_FPRED_VV_OP_rd20( 1283,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea1670df, 0x807FFFFF, 0xea1670df );
  TEST_FPRED_VV_OP_120( 1284,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea1670df, 0x807FFFFF, 0xea1670df );
  TEST_FPRED_VV_OP_rd21( 1285,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d13744b3, 0x807FFFFF, 0xd13744b3 );
  TEST_FPRED_VV_OP_121( 1286,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d13744b3, 0x807FFFFF, 0xd13744b3 );
  TEST_FPRED_VV_OP_rd22( 1287,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000883fe017, 0x807FFFFF, 0x883fe017 );
  TEST_FPRED_VV_OP_122( 1288,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000883fe017, 0x807FFFFF, 0x883fe017 );
  TEST_FPRED_VV_OP_rd23( 1289,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001daf3b01, 0x007FFFFF, 0x1daf3b01 );
  TEST_FPRED_VV_OP_123( 1290,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001daf3b01, 0x007FFFFF, 0x1daf3b01 );
  TEST_FPRED_VV_OP_rd25( 1291,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec747b1c, 0x007FFFFF, 0xec747b1c );
  TEST_FPRED_VV_OP_125( 1292,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec747b1c, 0x007FFFFF, 0xec747b1c );
  TEST_FPRED_VV_OP_rd26( 1293,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c6eccf7, 0x007FFFFF, 0x0c6eccf7 );
  TEST_FPRED_VV_OP_126( 1294,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c6eccf7, 0x007FFFFF, 0x0c6eccf7 );
  TEST_FPRED_VV_OP_rd27( 1295,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004cad30bc, 0x007FFFFF, 0x4cad30bc );
  TEST_FPRED_VV_OP_127( 1296,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004cad30bc, 0x007FFFFF, 0x4cad30bc );
  TEST_FPRED_VV_OP_rd28( 1297,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000477b3771, 0x007FFFFF, 0x477b3771 );
  TEST_FPRED_VV_OP_128( 1298,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000477b3771, 0x007FFFFF, 0x477b3771 );
  TEST_FPRED_VV_OP_rd29( 1299,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aeef6b3d, 0x007FFFFF, 0xaeef6b3d );
  TEST_FPRED_VV_OP_129( 1300,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aeef6b3d, 0x007FFFFF, 0xaeef6b3d );
  TEST_FPRED_VV_OP_rd30( 1301,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001555f68c, 0x007FFFFF, 0x1555f68c );
  TEST_FPRED_VV_OP_130( 1302,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001555f68c, 0x007FFFFF, 0x1555f68c );
  TEST_FPRED_VV_OP_rd31( 1303,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7e378a2, 0x007FFFFF, 0xb7e378a2 );
  TEST_FPRED_VV_OP_131( 1304,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7e378a2, 0x007FFFFF, 0xb7e378a2 );
  TEST_FPRED_VV_OP_rd1( 1305,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b602bd3e, 0x007FFFFF, 0xb602bd3e );
  TEST_FPRED_VV_OP_11( 1306,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b602bd3e, 0x007FFFFF, 0xb602bd3e );
  TEST_FPRED_VV_OP_rd2( 1307,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000af130fb6, 0x007FFFFF, 0xaf130fb6 );
  TEST_FPRED_VV_OP_12( 1308,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000af130fb6, 0x007FFFFF, 0xaf130fb6 );
  TEST_FPRED_VV_OP_rd3( 1309,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031a4314a, 0x007FFFFF, 0x31a4314a );
  TEST_FPRED_VV_OP_13( 1310,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031a4314a, 0x007FFFFF, 0x31a4314a );
  TEST_FPRED_VV_OP_rd4( 1311,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c723b3d7, 0x007FFFFF, 0xc723b3d7 );
  TEST_FPRED_VV_OP_14( 1312,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c723b3d7, 0x007FFFFF, 0xc723b3d7 );
  TEST_FPRED_VV_OP_rd5( 1313,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007015aa42, 0x007FFFFF, 0x7015aa42 );
  TEST_FPRED_VV_OP_15( 1314,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007015aa42, 0x007FFFFF, 0x7015aa42 );
  TEST_FPRED_VV_OP_rd6( 1315,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000928aa3e, 0x007FFFFF, 0x0928aa3e );
  TEST_FPRED_VV_OP_16( 1316,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000928aa3e, 0x007FFFFF, 0x0928aa3e );
  TEST_FPRED_VV_OP_rd7( 1317,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022ef3704, 0x007FFFFF, 0x22ef3704 );
  TEST_FPRED_VV_OP_17( 1318,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022ef3704, 0x007FFFFF, 0x22ef3704 );
  TEST_FPRED_VV_OP_rd9( 1319,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004da52bc4, 0x807FFFFE, 0x4da52bc4 );
  TEST_FPRED_VV_OP_19( 1320,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004da52bc4, 0x807FFFFE, 0x4da52bc4 );
  TEST_FPRED_VV_OP_rd10( 1321,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000546d8880, 0x807FFFFE, 0x546d8880 );
  TEST_FPRED_VV_OP_110( 1322,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000546d8880, 0x807FFFFE, 0x546d8880 );
  TEST_FPRED_VV_OP_rd11( 1323,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78ee9c7, 0x807FFFFE, 0xf78ee9c7 );
  TEST_FPRED_VV_OP_111( 1324,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78ee9c7, 0x807FFFFE, 0xf78ee9c7 );
  TEST_FPRED_VV_OP_rd12( 1325,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c95bd691, 0x807FFFFE, 0xc95bd691 );
  TEST_FPRED_VV_OP_112( 1326,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c95bd691, 0x807FFFFE, 0xc95bd691 );
  TEST_FPRED_VV_OP_rd13( 1327,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005239bc94, 0x807FFFFE, 0x5239bc94 );
  TEST_FPRED_VV_OP_113( 1328,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005239bc94, 0x807FFFFE, 0x5239bc94 );
  TEST_FPRED_VV_OP_rd14( 1329,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b48c2fbf, 0x807FFFFE, 0xb48c2fbf );
  TEST_FPRED_VV_OP_114( 1330,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b48c2fbf, 0x807FFFFE, 0xb48c2fbf );
  TEST_FPRED_VV_OP_rd15( 1331,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067e301b5, 0x807FFFFE, 0x67e301b5 );
  TEST_FPRED_VV_OP_115( 1332,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067e301b5, 0x807FFFFE, 0x67e301b5 );
  TEST_FPRED_VV_OP_rd17( 1333,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027c6864f, 0x807FFFFE, 0x27c6864f );
  TEST_FPRED_VV_OP_117( 1334,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027c6864f, 0x807FFFFE, 0x27c6864f );
  TEST_FPRED_VV_OP_rd18( 1335,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026c6f274, 0x807FFFFE, 0x26c6f274 );
  TEST_FPRED_VV_OP_118( 1336,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026c6f274, 0x807FFFFE, 0x26c6f274 );
  TEST_FPRED_VV_OP_rd19( 1337,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000025f55d4e, 0x807FFFFE, 0x25f55d4e );
  TEST_FPRED_VV_OP_119( 1338,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000025f55d4e, 0x807FFFFE, 0x25f55d4e );
  TEST_FPRED_VV_OP_rd20( 1339,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d2eb86f, 0x807FFFFE, 0x5d2eb86f );
  TEST_FPRED_VV_OP_120( 1340,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d2eb86f, 0x807FFFFE, 0x5d2eb86f );
  TEST_FPRED_VV_OP_rd21( 1341,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000828a97e7, 0x807FFFFE, 0x828a97e7 );
  TEST_FPRED_VV_OP_121( 1342,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000828a97e7, 0x807FFFFE, 0x828a97e7 );
  TEST_FPRED_VV_OP_rd22( 1343,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067e912e1, 0x807FFFFE, 0x67e912e1 );
  TEST_FPRED_VV_OP_122( 1344,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067e912e1, 0x807FFFFE, 0x67e912e1 );
  TEST_FPRED_VV_OP_rd23( 1345,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d4617ee, 0x807FFFFE, 0x3d4617ee );
  TEST_FPRED_VV_OP_123( 1346,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d4617ee, 0x807FFFFE, 0x3d4617ee );
  TEST_FPRED_VV_OP_rd25( 1347,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001eca00ff, 0x00000002, 0x1eca00ff );
  TEST_FPRED_VV_OP_125( 1348,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001eca00ff, 0x00000002, 0x1eca00ff );
  TEST_FPRED_VV_OP_rd26( 1349,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002ecc47d2, 0x00000002, 0x2ecc47d2 );
  TEST_FPRED_VV_OP_126( 1350,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002ecc47d2, 0x00000002, 0x2ecc47d2 );
  TEST_FPRED_VV_OP_rd27( 1351,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3bb23d6, 0x00000002, 0xf3bb23d6 );
  TEST_FPRED_VV_OP_127( 1352,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3bb23d6, 0x00000002, 0xf3bb23d6 );
  TEST_FPRED_VV_OP_rd28( 1353,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab05bda1, 0x00000002, 0xab05bda1 );
  TEST_FPRED_VV_OP_128( 1354,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab05bda1, 0x00000002, 0xab05bda1 );
  TEST_FPRED_VV_OP_rd29( 1355,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bebbadd8, 0x00000002, 0xbebbadd8 );
  TEST_FPRED_VV_OP_129( 1356,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bebbadd8, 0x00000002, 0xbebbadd8 );
  TEST_FPRED_VV_OP_rd30( 1357,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000076ca2ed2, 0x00000002, 0x76ca2ed2 );
  TEST_FPRED_VV_OP_130( 1358,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000076ca2ed2, 0x00000002, 0x76ca2ed2 );
  TEST_FPRED_VV_OP_rd31( 1359,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002b20cd36, 0x00000002, 0x2b20cd36 );
  TEST_FPRED_VV_OP_131( 1360,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002b20cd36, 0x00000002, 0x2b20cd36 );
  TEST_FPRED_VV_OP_rd1( 1361,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000524f229d, 0x00000002, 0x524f229d );
  TEST_FPRED_VV_OP_11( 1362,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000524f229d, 0x00000002, 0x524f229d );
  TEST_FPRED_VV_OP_rd2( 1363,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005254e959, 0x00000002, 0x5254e959 );
  TEST_FPRED_VV_OP_12( 1364,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005254e959, 0x00000002, 0x5254e959 );
  TEST_FPRED_VV_OP_rd3( 1365,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002aef92ad, 0x00000002, 0x2aef92ad );
  TEST_FPRED_VV_OP_13( 1366,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002aef92ad, 0x00000002, 0x2aef92ad );
  TEST_FPRED_VV_OP_rd4( 1367,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031229858, 0x00000002, 0x31229858 );
  TEST_FPRED_VV_OP_14( 1368,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031229858, 0x00000002, 0x31229858 );
  TEST_FPRED_VV_OP_rd5( 1369,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b06bc8f6, 0x00000002, 0xb06bc8f6 );
  TEST_FPRED_VV_OP_15( 1370,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b06bc8f6, 0x00000002, 0xb06bc8f6 );
  TEST_FPRED_VV_OP_rd6( 1371,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005dcce032, 0x00000002, 0x5dcce032 );
  TEST_FPRED_VV_OP_16( 1372,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005dcce032, 0x00000002, 0x5dcce032 );
  TEST_FPRED_VV_OP_rd7( 1373,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000310e5031, 0x00000002, 0x310e5031 );
  TEST_FPRED_VV_OP_17( 1374,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000310e5031, 0x00000002, 0x310e5031 );
  TEST_FPRED_VV_OP_rd9( 1375,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072a3060, 0x80000001, 0x072a3060 );
  TEST_FPRED_VV_OP_19( 1376,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072a3060, 0x80000001, 0x072a3060 );
  TEST_FPRED_VV_OP_rd10( 1377,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c33042c, 0x80000001, 0x9c33042c );
  TEST_FPRED_VV_OP_110( 1378,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c33042c, 0x80000001, 0x9c33042c );
  TEST_FPRED_VV_OP_rd11( 1379,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006dd7d38, 0x80000001, 0x06dd7d38 );
  TEST_FPRED_VV_OP_111( 1380,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006dd7d38, 0x80000001, 0x06dd7d38 );
  TEST_FPRED_VV_OP_rd12( 1381,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4b100b8, 0x80000001, 0xe4b100b8 );
  TEST_FPRED_VV_OP_112( 1382,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4b100b8, 0x80000001, 0xe4b100b8 );
  TEST_FPRED_VV_OP_rd13( 1383,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004c5e517, 0x80000001, 0x04c5e517 );
  TEST_FPRED_VV_OP_113( 1384,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004c5e517, 0x80000001, 0x04c5e517 );
  TEST_FPRED_VV_OP_rd14( 1385,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b50cc02, 0x80000001, 0x3b50cc02 );
  TEST_FPRED_VV_OP_114( 1386,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b50cc02, 0x80000001, 0x3b50cc02 );
  TEST_FPRED_VV_OP_rd15( 1387,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f0086f2, 0x80000001, 0x6f0086f2 );
  TEST_FPRED_VV_OP_115( 1388,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f0086f2, 0x80000001, 0x6f0086f2 );
  TEST_FPRED_VV_OP_rd17( 1389,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae6ff135, 0x80000001, 0xae6ff135 );
  TEST_FPRED_VV_OP_117( 1390,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae6ff135, 0x80000001, 0xae6ff135 );
  TEST_FPRED_VV_OP_rd18( 1391,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007815f9b0, 0x80000001, 0x7815f9b0 );
  TEST_FPRED_VV_OP_118( 1392,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007815f9b0, 0x80000001, 0x7815f9b0 );
  TEST_FPRED_VV_OP_rd19( 1393,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005cc84607, 0x80000001, 0x5cc84607 );
  TEST_FPRED_VV_OP_119( 1394,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005cc84607, 0x80000001, 0x5cc84607 );
  TEST_FPRED_VV_OP_rd20( 1395,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000754bced3, 0x80000001, 0x754bced3 );
  TEST_FPRED_VV_OP_120( 1396,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000754bced3, 0x80000001, 0x754bced3 );
  TEST_FPRED_VV_OP_rd21( 1397,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aec59a2a, 0x80000001, 0xaec59a2a );
  TEST_FPRED_VV_OP_121( 1398,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aec59a2a, 0x80000001, 0xaec59a2a );
  TEST_FPRED_VV_OP_rd22( 1399,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008542dc85, 0x80000001, 0x8542dc85 );
  TEST_FPRED_VV_OP_122( 1400,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008542dc85, 0x80000001, 0x8542dc85 );
  TEST_FPRED_VV_OP_rd23( 1401,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003af43c9d, 0x80000001, 0x3af43c9d );
  TEST_FPRED_VV_OP_123( 1402,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003af43c9d, 0x80000001, 0x3af43c9d );
  TEST_FPRED_VV_OP_rd25( 1403,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067be397d, 0x00000001, 0x67be397d );
  TEST_FPRED_VV_OP_125( 1404,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067be397d, 0x00000001, 0x67be397d );
  TEST_FPRED_VV_OP_rd26( 1405,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008758cfc4, 0x00000001, 0x8758cfc4 );
  TEST_FPRED_VV_OP_126( 1406,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008758cfc4, 0x00000001, 0x8758cfc4 );
  TEST_FPRED_VV_OP_rd27( 1407,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001de4f6af, 0x00000001, 0x1de4f6af );
  TEST_FPRED_VV_OP_127( 1408,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001de4f6af, 0x00000001, 0x1de4f6af );
  TEST_FPRED_VV_OP_rd28( 1409,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a455288, 0x00000001, 0x1a455288 );
  TEST_FPRED_VV_OP_128( 1410,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a455288, 0x00000001, 0x1a455288 );
  TEST_FPRED_VV_OP_rd29( 1411,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088db7d8c, 0x00000001, 0x88db7d8c );
  TEST_FPRED_VV_OP_129( 1412,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088db7d8c, 0x00000001, 0x88db7d8c );
  TEST_FPRED_VV_OP_rd30( 1413,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f937aafa, 0x00000001, 0xf937aafa );
  TEST_FPRED_VV_OP_130( 1414,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f937aafa, 0x00000001, 0xf937aafa );
  TEST_FPRED_VV_OP_rd31( 1415,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ca3650e2, 0x00000001, 0xca3650e2 );
  TEST_FPRED_VV_OP_131( 1416,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ca3650e2, 0x00000001, 0xca3650e2 );
  TEST_FPRED_VV_OP_rd1( 1417,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c7044eb3, 0x00000001, 0xc7044eb3 );
  TEST_FPRED_VV_OP_11( 1418,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c7044eb3, 0x00000001, 0xc7044eb3 );
  TEST_FPRED_VV_OP_rd2( 1419,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058933db0, 0x00000001, 0x58933db0 );
  TEST_FPRED_VV_OP_12( 1420,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058933db0, 0x00000001, 0x58933db0 );
  TEST_FPRED_VV_OP_rd3( 1421,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000545acbb, 0x00000001, 0x0545acbb );
  TEST_FPRED_VV_OP_13( 1422,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000545acbb, 0x00000001, 0x0545acbb );
  TEST_FPRED_VV_OP_rd4( 1423,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b379a614, 0x00000001, 0xb379a614 );
  TEST_FPRED_VV_OP_14( 1424,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b379a614, 0x00000001, 0xb379a614 );
  TEST_FPRED_VV_OP_rd5( 1425,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b3eb4cc, 0x00000001, 0x9b3eb4cc );
  TEST_FPRED_VV_OP_15( 1426,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b3eb4cc, 0x00000001, 0x9b3eb4cc );
  TEST_FPRED_VV_OP_rd6( 1427,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e9519192, 0x00000001, 0xe9519192 );
  TEST_FPRED_VV_OP_16( 1428,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e9519192, 0x00000001, 0xe9519192 );
  TEST_FPRED_VV_OP_rd7( 1429,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002eb0d339, 0x00000001, 0x2eb0d339 );
  TEST_FPRED_VV_OP_17( 1430,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002eb0d339, 0x00000001, 0x2eb0d339 );
  TEST_FPRED_VV_OP_rd9( 1431,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ee907664, 0x00000001, 0xee907664 );
  TEST_FPRED_VV_OP_19( 1432,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ee907664, 0x00000001, 0xee907664 );
  TEST_FPRED_VV_OP_rd10( 1433,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053960a4c, 0x80000000, 0x53960a4c );
  TEST_FPRED_VV_OP_110( 1434,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053960a4c, 0x80000000, 0x53960a4c );
  TEST_FPRED_VV_OP_rd11( 1435,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000087973a27, 0x80000000, 0x87973a27 );
  TEST_FPRED_VV_OP_111( 1436,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000087973a27, 0x80000000, 0x87973a27 );
  TEST_FPRED_VV_OP_rd12( 1437,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a925b817, 0x80000000, 0xa925b817 );
  TEST_FPRED_VV_OP_112( 1438,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a925b817, 0x80000000, 0xa925b817 );
  TEST_FPRED_VV_OP_rd13( 1439,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c1a1e45, 0x80000000, 0x1c1a1e45 );
  TEST_FPRED_VV_OP_113( 1440,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c1a1e45, 0x80000000, 0x1c1a1e45 );
  TEST_FPRED_VV_OP_rd14( 1441,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020dcdbeb, 0x80000000, 0x20dcdbeb );
  TEST_FPRED_VV_OP_114( 1442,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020dcdbeb, 0x80000000, 0x20dcdbeb );
  TEST_FPRED_VV_OP_rd15( 1443,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d3e0667, 0x80000000, 0x2d3e0667 );
  TEST_FPRED_VV_OP_115( 1444,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d3e0667, 0x80000000, 0x2d3e0667 );
  TEST_FPRED_VV_OP_rd17( 1445,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b822ad39, 0x80000000, 0xb822ad39 );
  TEST_FPRED_VV_OP_117( 1446,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b822ad39, 0x80000000, 0xb822ad39 );
  TEST_FPRED_VV_OP_rd18( 1447,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004ffe6390, 0x80000000, 0x4ffe6390 );
  TEST_FPRED_VV_OP_118( 1448,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004ffe6390, 0x80000000, 0x4ffe6390 );
  TEST_FPRED_VV_OP_rd19( 1449,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009ef29035, 0x80000000, 0x9ef29035 );
  TEST_FPRED_VV_OP_119( 1450,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009ef29035, 0x80000000, 0x9ef29035 );
  TEST_FPRED_VV_OP_rd20( 1451,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0450fa2, 0x80000000, 0xd0450fa2 );
  TEST_FPRED_VV_OP_120( 1452,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0450fa2, 0x80000000, 0xd0450fa2 );
  TEST_FPRED_VV_OP_rd21( 1453,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d89744e, 0x80000000, 0x0d89744e );
  TEST_FPRED_VV_OP_121( 1454,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d89744e, 0x80000000, 0x0d89744e );
  TEST_FPRED_VV_OP_rd22( 1455,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000346489f5, 0x80000000, 0x346489f5 );
  TEST_FPRED_VV_OP_122( 1456,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000346489f5, 0x80000000, 0x346489f5 );
  TEST_FPRED_VV_OP_rd23( 1457,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d48dd733, 0x80000000, 0xd48dd733 );
  TEST_FPRED_VV_OP_123( 1458,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d48dd733, 0x80000000, 0xd48dd733 );
  TEST_FPRED_VV_OP_rd25( 1459,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b185404, 0x80000000, 0x9b185404 );
  TEST_FPRED_VV_OP_125( 1460,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b185404, 0x80000000, 0x9b185404 );
  TEST_FPRED_VV_OP_rd26( 1461,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041059de4, 0x00000000, 0x41059de4 );
  TEST_FPRED_VV_OP_126( 1462,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041059de4, 0x00000000, 0x41059de4 );
  TEST_FPRED_VV_OP_rd27( 1463,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012d11883, 0x00000000, 0x12d11883 );
  TEST_FPRED_VV_OP_127( 1464,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012d11883, 0x00000000, 0x12d11883 );
  TEST_FPRED_VV_OP_rd28( 1465,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a647e794, 0x00000000, 0xa647e794 );
  TEST_FPRED_VV_OP_128( 1466,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a647e794, 0x00000000, 0xa647e794 );
  TEST_FPRED_VV_OP_rd29( 1467,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d5710481, 0x00000000, 0xd5710481 );
  TEST_FPRED_VV_OP_129( 1468,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d5710481, 0x00000000, 0xd5710481 );
  TEST_FPRED_VV_OP_rd30( 1469,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cca75bc9, 0x00000000, 0xcca75bc9 );
  TEST_FPRED_VV_OP_130( 1470,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cca75bc9, 0x00000000, 0xcca75bc9 );
  TEST_FPRED_VV_OP_rd31( 1471,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028ea8990, 0x00000000, 0x28ea8990 );
  TEST_FPRED_VV_OP_131( 1472,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028ea8990, 0x00000000, 0x28ea8990 );
  TEST_FPRED_VV_OP_rd1( 1473,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004914fd85, 0x00000000, 0x4914fd85 );
  TEST_FPRED_VV_OP_11( 1474,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004914fd85, 0x00000000, 0x4914fd85 );
  TEST_FPRED_VV_OP_rd2( 1475,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009edd447a, 0x00000000, 0x9edd447a );
  TEST_FPRED_VV_OP_12( 1476,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009edd447a, 0x00000000, 0x9edd447a );
  TEST_FPRED_VV_OP_rd3( 1477,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a012a8e, 0x00000000, 0x1a012a8e );
  TEST_FPRED_VV_OP_13( 1478,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a012a8e, 0x00000000, 0x1a012a8e );
  TEST_FPRED_VV_OP_rd4( 1479,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000697d2a85, 0x00000000, 0x697d2a85 );
  TEST_FPRED_VV_OP_14( 1480,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000697d2a85, 0x00000000, 0x697d2a85 );
  TEST_FPRED_VV_OP_rd5( 1481,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3deb9d, 0x00000000, 0x0e3deb9d );
  TEST_FPRED_VV_OP_15( 1482,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3deb9d, 0x00000000, 0x0e3deb9d );
  TEST_FPRED_VV_OP_rd6( 1483,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009da1bcd6, 0x00000000, 0x9da1bcd6 );
  TEST_FPRED_VV_OP_16( 1484,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009da1bcd6, 0x00000000, 0x9da1bcd6 );
  TEST_FPRED_VV_OP_rd7( 1485,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005254ddf9, 0x00000000, 0x5254ddf9 );
  TEST_FPRED_VV_OP_17( 1486,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005254ddf9, 0x00000000, 0x5254ddf9 );
  TEST_FPRED_VV_OP_rd9( 1487,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016b77bce, 0x00000000, 0x16b77bce );
  TEST_FPRED_VV_OP_19( 1488,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016b77bce, 0x00000000, 0x16b77bce );
  TEST_FPRED_VV_OP_rd10( 1489,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085a8a33c, 0x16b77bce, 0x85a8a33c );
  TEST_FPRED_VV_OP_110( 1490,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085a8a33c, 0x16b77bce, 0x85a8a33c );
  TEST_FPRED_VV_OP_rd11( 1491,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be82002a, 0x85a8a33c, 0xbe82002a );
  TEST_FPRED_VV_OP_111( 1492,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be82002a, 0x85a8a33c, 0xbe82002a );
  TEST_FPRED_VV_OP_rd12( 1493,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b4eed81, 0xbe82002a, 0x6b4eed81 );
  TEST_FPRED_VV_OP_112( 1494,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b4eed81, 0xbe82002a, 0x6b4eed81 );
  TEST_FPRED_VV_OP_rd13( 1495,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcf2b7b2, 0x6b4eed81, 0xfcf2b7b2 );
  TEST_FPRED_VV_OP_113( 1496,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcf2b7b2, 0x6b4eed81, 0xfcf2b7b2 );
  TEST_FPRED_VV_OP_rd14( 1497,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b1a3f397, 0xfcf2b7b2, 0xb1a3f397 );
  TEST_FPRED_VV_OP_114( 1498,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b1a3f397, 0xfcf2b7b2, 0xb1a3f397 );
  TEST_FPRED_VV_OP_rd15( 1499,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081815039, 0xb1a3f397, 0x81815039 );
  TEST_FPRED_VV_OP_115( 1500,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081815039, 0xb1a3f397, 0x81815039 );
  TEST_FPRED_VV_OP_rd17( 1501,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000827c929, 0x7df4c24f, 0x0827c929 );
  TEST_FPRED_VV_OP_117( 1502,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000827c929, 0x7df4c24f, 0x0827c929 );
  TEST_FPRED_VV_OP_rd18( 1503,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e1f1c6ec, 0x0827c929, 0xe1f1c6ec );
  TEST_FPRED_VV_OP_118( 1504,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e1f1c6ec, 0x0827c929, 0xe1f1c6ec );
  TEST_FPRED_VV_OP_rd19( 1505,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b111081, 0xe1f1c6ec, 0x9b111081 );
  TEST_FPRED_VV_OP_119( 1506,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009b111081, 0xe1f1c6ec, 0x9b111081 );
  TEST_FPRED_VV_OP_rd20( 1507,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c53c5a, 0x9b111081, 0x08c53c5a );
  TEST_FPRED_VV_OP_120( 1508,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c53c5a, 0x9b111081, 0x08c53c5a );
  TEST_FPRED_VV_OP_rd21( 1509,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016e35174, 0x08c53c5a, 0x16e35174 );
  TEST_FPRED_VV_OP_121( 1510,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016e35174, 0x08c53c5a, 0x16e35174 );
  TEST_FPRED_VV_OP_rd22( 1511,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020553b83, 0x16e35174, 0x20553b83 );
  TEST_FPRED_VV_OP_122( 1512,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020553b83, 0x16e35174, 0x20553b83 );
  TEST_FPRED_VV_OP_rd23( 1513,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f4ed3db2, 0x20553b83, 0xf4ed3db2 );
  TEST_FPRED_VV_OP_123( 1514,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f4ed3db2, 0x20553b83, 0xf4ed3db2 );
  TEST_FPRED_VV_OP_rd25( 1515,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f80d83b9, 0x5879b2ca, 0xf80d83b9 );
  TEST_FPRED_VV_OP_125( 1516,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f80d83b9, 0x5879b2ca, 0xf80d83b9 );
  TEST_FPRED_VV_OP_rd26( 1517,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b48384f, 0xf80d83b9, 0x7b48384f );
  TEST_FPRED_VV_OP_126( 1518,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b48384f, 0xf80d83b9, 0x7b48384f );
  TEST_FPRED_VV_OP_rd27( 1519,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089a6c1a0, 0x7b48384f, 0x89a6c1a0 );
  TEST_FPRED_VV_OP_127( 1520,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089a6c1a0, 0x7b48384f, 0x89a6c1a0 );
  TEST_FPRED_VV_OP_rd28( 1521,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031fe5439, 0x89a6c1a0, 0x31fe5439 );
  TEST_FPRED_VV_OP_128( 1522,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031fe5439, 0x89a6c1a0, 0x31fe5439 );
  TEST_FPRED_VV_OP_rd29( 1523,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ee2f5aa, 0x31fe5439, 0x6ee2f5aa );
  TEST_FPRED_VV_OP_129( 1524,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ee2f5aa, 0x31fe5439, 0x6ee2f5aa );
  TEST_FPRED_VV_OP_rd30( 1525,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000330f5715, 0x6ee2f5aa, 0x330f5715 );
  TEST_FPRED_VV_OP_130( 1526,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000330f5715, 0x6ee2f5aa, 0x330f5715 );
  TEST_FPRED_VV_OP_rd31( 1527,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f46020f, 0x330f5715, 0x9f46020f );
  TEST_FPRED_VV_OP_131( 1528,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f46020f, 0x330f5715, 0x9f46020f );
  TEST_FPRED_VV_OP_rd1( 1529,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b697e1c3, 0x9f46020f, 0xb697e1c3 );
  TEST_FPRED_VV_OP_11( 1530,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b697e1c3, 0x9f46020f, 0xb697e1c3 );
  TEST_FPRED_VV_OP_rd2( 1531,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f518acf6, 0xb697e1c3, 0xf518acf6 );
  TEST_FPRED_VV_OP_12( 1532,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f518acf6, 0xb697e1c3, 0xf518acf6 );
  TEST_FPRED_VV_OP_rd3( 1533,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003958ea56, 0xf518acf6, 0x3958ea56 );
  TEST_FPRED_VV_OP_13( 1534,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003958ea56, 0xf518acf6, 0x3958ea56 );
  TEST_FPRED_VV_OP_rd4( 1535,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056a29c95, 0x3958ea56, 0x56a29c95 );
  TEST_FPRED_VV_OP_14( 1536,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056a29c95, 0x3958ea56, 0x56a29c95 );
  TEST_FPRED_VV_OP_rd5( 1537,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ef286e01, 0x56a29c95, 0xef286e01 );
  TEST_FPRED_VV_OP_15( 1538,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ef286e01, 0x56a29c95, 0xef286e01 );
  TEST_FPRED_VV_OP_rd6( 1539,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f6cad350, 0xef286e01, 0xf6cad350 );
  TEST_FPRED_VV_OP_16( 1540,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f6cad350, 0xef286e01, 0xf6cad350 );
  TEST_FPRED_VV_OP_rd7( 1541,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e95400f6, 0xf6cad350, 0xe95400f6 );
  TEST_FPRED_VV_OP_17( 1542,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e95400f6, 0xf6cad350, 0xe95400f6 );
  TEST_FPRED_VV_OP_rd9( 1543,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ced78db, 0x0b2ac811, 0x3ced78db );
  TEST_FPRED_VV_OP_19( 1544,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ced78db, 0x0b2ac811, 0x3ced78db );
  TEST_FPRED_VV_OP_rd10( 1545,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075809524, 0x3ced78db, 0x75809524 );
  TEST_FPRED_VV_OP_110( 1546,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075809524, 0x3ced78db, 0x75809524 );
  TEST_FPRED_VV_OP_rd11( 1547,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c5e59fb2, 0x75809524, 0xc5e59fb2 );
  TEST_FPRED_VV_OP_111( 1548,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c5e59fb2, 0x75809524, 0xc5e59fb2 );
  TEST_FPRED_VV_OP_rd12( 1549,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd81fa0a, 0xc5e59fb2, 0xdd81fa0a );
  TEST_FPRED_VV_OP_112( 1550,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd81fa0a, 0xc5e59fb2, 0xdd81fa0a );
  TEST_FPRED_VV_OP_rd13( 1551,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec9fb18d, 0xdd81fa0a, 0xec9fb18d );
  TEST_FPRED_VV_OP_113( 1552,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec9fb18d, 0xdd81fa0a, 0xec9fb18d );
  TEST_FPRED_VV_OP_rd14( 1553,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030e1830a, 0xec9fb18d, 0x30e1830a );
  TEST_FPRED_VV_OP_114( 1554,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030e1830a, 0xec9fb18d, 0x30e1830a );
  TEST_FPRED_VV_OP_rd15( 1555,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021d2bbb0, 0x30e1830a, 0x21d2bbb0 );
  TEST_FPRED_VV_OP_115( 1556,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021d2bbb0, 0x30e1830a, 0x21d2bbb0 );
  TEST_FPRED_VV_OP_rd17( 1557,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019167ebd, 0x731a1760, 0x19167ebd );
  TEST_FPRED_VV_OP_117( 1558,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019167ebd, 0x731a1760, 0x19167ebd );
  TEST_FPRED_VV_OP_rd18( 1559,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007e537a04, 0x19167ebd, 0x7e537a04 );
  TEST_FPRED_VV_OP_118( 1560,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007e537a04, 0x19167ebd, 0x7e537a04 );
  TEST_FPRED_VV_OP_rd19( 1561,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf9dc475, 0x7e537a04, 0xcf9dc475 );
  TEST_FPRED_VV_OP_119( 1562,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf9dc475, 0x7e537a04, 0xcf9dc475 );
  TEST_FPRED_VV_OP_rd20( 1563,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017f847a1, 0xcf9dc475, 0x17f847a1 );
  TEST_FPRED_VV_OP_120( 1564,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017f847a1, 0xcf9dc475, 0x17f847a1 );
  TEST_FPRED_VV_OP_rd21( 1565,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005f4e2f05, 0x17f847a1, 0x5f4e2f05 );
  TEST_FPRED_VV_OP_121( 1566,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005f4e2f05, 0x17f847a1, 0x5f4e2f05 );
  TEST_FPRED_VV_OP_rd22( 1567,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011065906, 0x5f4e2f05, 0x11065906 );
  TEST_FPRED_VV_OP_122( 1568,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011065906, 0x5f4e2f05, 0x11065906 );
  TEST_FPRED_VV_OP_rd23( 1569,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9663dbb, 0x11065906, 0xa9663dbb );
  TEST_FPRED_VV_OP_123( 1570,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9663dbb, 0x11065906, 0xa9663dbb );
  TEST_FPRED_VV_OP_rd25( 1571,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ef201e7b, 0xb6d5707b, 0xef201e7b );
  TEST_FPRED_VV_OP_125( 1572,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ef201e7b, 0xb6d5707b, 0xef201e7b );
  TEST_FPRED_VV_OP_rd26( 1573,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4a84974, 0xef201e7b, 0xb4a84974 );
  TEST_FPRED_VV_OP_126( 1574,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4a84974, 0xef201e7b, 0xb4a84974 );
  TEST_FPRED_VV_OP_rd27( 1575,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9feb8d1, 0xb4a84974, 0xc9feb8d1 );
  TEST_FPRED_VV_OP_127( 1576,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9feb8d1, 0xb4a84974, 0xc9feb8d1 );
  TEST_FPRED_VV_OP_rd28( 1577,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba38c7b1, 0xc9feb8d1, 0xba38c7b1 );
  TEST_FPRED_VV_OP_128( 1578,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba38c7b1, 0xc9feb8d1, 0xba38c7b1 );
  TEST_FPRED_VV_OP_rd29( 1579,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001877b042, 0xba38c7b1, 0x1877b042 );
  TEST_FPRED_VV_OP_129( 1580,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001877b042, 0xba38c7b1, 0x1877b042 );
  TEST_FPRED_VV_OP_rd30( 1581,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091778cbb, 0x1877b042, 0x91778cbb );
  TEST_FPRED_VV_OP_130( 1582,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091778cbb, 0x1877b042, 0x91778cbb );
  TEST_FPRED_VV_OP_rd31( 1583,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e715ec9, 0x91778cbb, 0x2e715ec9 );
  TEST_FPRED_VV_OP_131( 1584,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e715ec9, 0x91778cbb, 0x2e715ec9 );
  TEST_FPRED_VV_OP_rd1( 1585,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ebc88fd7, 0x2e715ec9, 0xebc88fd7 );
  TEST_FPRED_VV_OP_11( 1586,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ebc88fd7, 0x2e715ec9, 0xebc88fd7 );
  TEST_FPRED_VV_OP_rd2( 1587,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006947de05, 0xebc88fd7, 0x6947de05 );
  TEST_FPRED_VV_OP_12( 1588,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006947de05, 0xebc88fd7, 0x6947de05 );
  TEST_FPRED_VV_OP_rd3( 1589,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aec12b86, 0x6947de05, 0xaec12b86 );
  TEST_FPRED_VV_OP_13( 1590,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aec12b86, 0x6947de05, 0xaec12b86 );
  TEST_FPRED_VV_OP_rd4( 1591,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006164c29e, 0xaec12b86, 0x6164c29e );
  TEST_FPRED_VV_OP_14( 1592,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006164c29e, 0xaec12b86, 0x6164c29e );
  TEST_FPRED_VV_OP_rd5( 1593,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba68fa1d, 0x6164c29e, 0xba68fa1d );
  TEST_FPRED_VV_OP_15( 1594,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba68fa1d, 0x6164c29e, 0xba68fa1d );
  TEST_FPRED_VV_OP_rd6( 1595,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017a54142, 0xba68fa1d, 0x17a54142 );
  TEST_FPRED_VV_OP_16( 1596,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017a54142, 0xba68fa1d, 0x17a54142 );
  TEST_FPRED_VV_OP_rd7( 1597,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb7b049e, 0x17a54142, 0xbb7b049e );
  TEST_FPRED_VV_OP_17( 1598,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb7b049e, 0x17a54142, 0xbb7b049e );
  TEST_FPRED_VV_OP_rd9( 1599,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001af6bb18, 0x08fab1e5, 0x1af6bb18 );
  TEST_FPRED_VV_OP_19( 1600,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001af6bb18, 0x08fab1e5, 0x1af6bb18 );
  TEST_FPRED_VV_OP_rd10( 1601,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074348a1d, 0x1af6bb18, 0x74348a1d );
  TEST_FPRED_VV_OP_110( 1602,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074348a1d, 0x1af6bb18, 0x74348a1d );
  TEST_FPRED_VV_OP_rd11( 1603,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41f5f9b, 0x74348a1d, 0xf41f5f9b );
  TEST_FPRED_VV_OP_111( 1604,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41f5f9b, 0x74348a1d, 0xf41f5f9b );
  TEST_FPRED_VV_OP_rd12( 1605,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000604f267a, 0xf41f5f9b, 0x604f267a );
  TEST_FPRED_VV_OP_112( 1606,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000604f267a, 0xf41f5f9b, 0x604f267a );
  TEST_FPRED_VV_OP_rd13( 1607,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008543a485, 0x604f267a, 0x8543a485 );
  TEST_FPRED_VV_OP_113( 1608,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008543a485, 0x604f267a, 0x8543a485 );
  TEST_FPRED_VV_OP_rd14( 1609,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017fca002, 0x8543a485, 0x17fca002 );
  TEST_FPRED_VV_OP_114( 1610,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017fca002, 0x8543a485, 0x17fca002 );
  TEST_FPRED_VV_OP_rd15( 1611,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003777625d, 0x17fca002, 0x3777625d );
  TEST_FPRED_VV_OP_115( 1612,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003777625d, 0x17fca002, 0x3777625d );
  TEST_FPRED_VV_OP_rd17( 1613,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e9591298, 0xca42df1f, 0xe9591298 );
  TEST_FPRED_VV_OP_117( 1614,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e9591298, 0xca42df1f, 0xe9591298 );
  TEST_FPRED_VV_OP_rd18( 1615,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000655428d1, 0xe9591298, 0x655428d1 );
  TEST_FPRED_VV_OP_118( 1616,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000655428d1, 0xe9591298, 0x655428d1 );
  TEST_FPRED_VV_OP_rd19( 1617,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000678995cf, 0x655428d1, 0x678995cf );
  TEST_FPRED_VV_OP_119( 1618,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000678995cf, 0x655428d1, 0x678995cf );
  TEST_FPRED_VV_OP_rd20( 1619,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ea84660, 0x678995cf, 0x7ea84660 );
  TEST_FPRED_VV_OP_120( 1620,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ea84660, 0x678995cf, 0x7ea84660 );
  TEST_FPRED_VV_OP_rd21( 1621,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000049f1faf, 0x7ea84660, 0x049f1faf );
  TEST_FPRED_VV_OP_121( 1622,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000049f1faf, 0x7ea84660, 0x049f1faf );
  TEST_FPRED_VV_OP_rd22( 1623,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009a6ccdab, 0x049f1faf, 0x9a6ccdab );
  TEST_FPRED_VV_OP_122( 1624,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009a6ccdab, 0x049f1faf, 0x9a6ccdab );
  TEST_FPRED_VV_OP_rd23( 1625,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f75264e4, 0x9a6ccdab, 0xf75264e4 );
  TEST_FPRED_VV_OP_123( 1626,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f75264e4, 0x9a6ccdab, 0xf75264e4 );
  TEST_FPRED_VV_OP_rd25( 1627,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000047e6b3b, 0x5b832e4f, 0x047e6b3b );
  TEST_FPRED_VV_OP_125( 1628,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000047e6b3b, 0x5b832e4f, 0x047e6b3b );
  TEST_FPRED_VV_OP_rd26( 1629,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c18c4e25, 0x047e6b3b, 0xc18c4e25 );
  TEST_FPRED_VV_OP_126( 1630,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c18c4e25, 0x047e6b3b, 0xc18c4e25 );
  TEST_FPRED_VV_OP_rd27( 1631,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006676bf0e, 0xc18c4e25, 0x6676bf0e );
  TEST_FPRED_VV_OP_127( 1632,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006676bf0e, 0xc18c4e25, 0x6676bf0e );
  TEST_FPRED_VV_OP_rd28( 1633,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000086738089, 0x6676bf0e, 0x86738089 );
  TEST_FPRED_VV_OP_128( 1634,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000086738089, 0x6676bf0e, 0x86738089 );
  TEST_FPRED_VV_OP_rd29( 1635,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001ee4a5ed, 0x86738089, 0x1ee4a5ed );
  TEST_FPRED_VV_OP_129( 1636,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001ee4a5ed, 0x86738089, 0x1ee4a5ed );
  TEST_FPRED_VV_OP_rd30( 1637,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b9545c29, 0x1ee4a5ed, 0xb9545c29 );
  TEST_FPRED_VV_OP_130( 1638,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b9545c29, 0x1ee4a5ed, 0xb9545c29 );
  TEST_FPRED_VV_OP_rd31( 1639,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002c7cb95f, 0xb9545c29, 0x2c7cb95f );
  TEST_FPRED_VV_OP_131( 1640,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002c7cb95f, 0xb9545c29, 0x2c7cb95f );
  TEST_FPRED_VV_OP_rd1( 1641,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ab6881d, 0x2c7cb95f, 0x8ab6881d );
  TEST_FPRED_VV_OP_11( 1642,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ab6881d, 0x2c7cb95f, 0x8ab6881d );
  TEST_FPRED_VV_OP_rd2( 1643,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032dc44c0, 0x8ab6881d, 0x32dc44c0 );
  TEST_FPRED_VV_OP_12( 1644,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032dc44c0, 0x8ab6881d, 0x32dc44c0 );
  TEST_FPRED_VV_OP_rd3( 1645,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007915e449, 0x32dc44c0, 0x7915e449 );
  TEST_FPRED_VV_OP_13( 1646,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007915e449, 0x32dc44c0, 0x7915e449 );
  TEST_FPRED_VV_OP_rd4( 1647,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b68216c7, 0x7915e449, 0xb68216c7 );
  TEST_FPRED_VV_OP_14( 1648,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b68216c7, 0x7915e449, 0xb68216c7 );
  TEST_FPRED_VV_OP_rd5( 1649,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053c4ffc4, 0xb68216c7, 0x53c4ffc4 );
  TEST_FPRED_VV_OP_15( 1650,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053c4ffc4, 0xb68216c7, 0x53c4ffc4 );
  TEST_FPRED_VV_OP_rd6( 1651,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c01a2b07, 0x53c4ffc4, 0xc01a2b07 );
  TEST_FPRED_VV_OP_16( 1652,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c01a2b07, 0x53c4ffc4, 0xc01a2b07 );
  TEST_FPRED_VV_OP_rd7( 1653,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006d56c00d, 0xc01a2b07, 0x6d56c00d );
  TEST_FPRED_VV_OP_17( 1654,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006d56c00d, 0xc01a2b07, 0x6d56c00d );
  TEST_FPRED_VV_OP_rd9( 1655,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a6c685c, 0x231896cb, 0x3a6c685c );
  TEST_FPRED_VV_OP_19( 1656,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a6c685c, 0x231896cb, 0x3a6c685c );
  TEST_FPRED_VV_OP_rd10( 1657,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e57e27bd, 0x3a6c685c, 0xe57e27bd );
  TEST_FPRED_VV_OP_110( 1658,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e57e27bd, 0x3a6c685c, 0xe57e27bd );
  TEST_FPRED_VV_OP_rd11( 1659,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003e6f7cbe, 0xe57e27bd, 0x3e6f7cbe );
  TEST_FPRED_VV_OP_111( 1660,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003e6f7cbe, 0xe57e27bd, 0x3e6f7cbe );
  TEST_FPRED_VV_OP_rd12( 1661,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e74e2da, 0x3e6f7cbe, 0x8e74e2da );
  TEST_FPRED_VV_OP_112( 1662,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e74e2da, 0x3e6f7cbe, 0x8e74e2da );
  TEST_FPRED_VV_OP_rd13( 1663,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcea6243, 0x8e74e2da, 0xfcea6243 );
  TEST_FPRED_VV_OP_113( 1664,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcea6243, 0x8e74e2da, 0xfcea6243 );
  TEST_FPRED_VV_OP_rd14( 1665,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080eedc35, 0xfcea6243, 0x80eedc35 );
  TEST_FPRED_VV_OP_114( 1666,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080eedc35, 0xfcea6243, 0x80eedc35 );
  TEST_FPRED_VV_OP_rd15( 1667,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048d92fb, 0x80eedc35, 0x048d92fb );
  TEST_FPRED_VV_OP_115( 1668,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048d92fb, 0x80eedc35, 0x048d92fb );
  TEST_FPRED_VV_OP_rd17( 1669,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012c54b7b, 0xe8e803f4, 0x12c54b7b );
  TEST_FPRED_VV_OP_117( 1670,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012c54b7b, 0xe8e803f4, 0x12c54b7b );
  TEST_FPRED_VV_OP_rd18( 1671,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d633cae, 0x12c54b7b, 0x2d633cae );
  TEST_FPRED_VV_OP_118( 1672,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d633cae, 0x12c54b7b, 0x2d633cae );
  TEST_FPRED_VV_OP_rd19( 1673,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be8c5af3, 0x2d633cae, 0xbe8c5af3 );
  TEST_FPRED_VV_OP_119( 1674,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be8c5af3, 0x2d633cae, 0xbe8c5af3 );
  TEST_FPRED_VV_OP_rd20( 1675,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000379def6c, 0xbe8c5af3, 0x379def6c );
  TEST_FPRED_VV_OP_120( 1676,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000379def6c, 0xbe8c5af3, 0x379def6c );
  TEST_FPRED_VV_OP_rd21( 1677,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e298ae9a, 0x379def6c, 0xe298ae9a );
  TEST_FPRED_VV_OP_121( 1678,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e298ae9a, 0x379def6c, 0xe298ae9a );
  TEST_FPRED_VV_OP_rd22( 1679,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000626b7cc5, 0xe298ae9a, 0x626b7cc5 );
  TEST_FPRED_VV_OP_122( 1680,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000626b7cc5, 0xe298ae9a, 0x626b7cc5 );
  TEST_FPRED_VV_OP_rd23( 1681,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f61b3a5, 0x626b7cc5, 0x8f61b3a5 );
  TEST_FPRED_VV_OP_123( 1682,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f61b3a5, 0x626b7cc5, 0x8f61b3a5 );
  TEST_FPRED_VV_OP_rd25( 1683,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b8cfcd, 0xe4219193, 0x01b8cfcd );
  TEST_FPRED_VV_OP_125( 1684,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b8cfcd, 0xe4219193, 0x01b8cfcd );
  TEST_FPRED_VV_OP_rd26( 1685,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bfcdf8, 0x01b8cfcd, 0x04bfcdf8 );
  TEST_FPRED_VV_OP_126( 1686,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bfcdf8, 0x01b8cfcd, 0x04bfcdf8 );
  TEST_FPRED_VV_OP_rd27( 1687,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d6cbbf81, 0x04bfcdf8, 0xd6cbbf81 );
  TEST_FPRED_VV_OP_127( 1688,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d6cbbf81, 0x04bfcdf8, 0xd6cbbf81 );
  TEST_FPRED_VV_OP_rd28( 1689,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bd075af, 0xd6cbbf81, 0x4bd075af );
  TEST_FPRED_VV_OP_128( 1690,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bd075af, 0xd6cbbf81, 0x4bd075af );
  TEST_FPRED_VV_OP_rd29( 1691,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e291d09b, 0x4bd075af, 0xe291d09b );
  TEST_FPRED_VV_OP_129( 1692,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e291d09b, 0x4bd075af, 0xe291d09b );
  TEST_FPRED_VV_OP_rd30( 1693,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0503b64, 0xe291d09b, 0xf0503b64 );
  TEST_FPRED_VV_OP_130( 1694,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0503b64, 0xe291d09b, 0xf0503b64 );
  TEST_FPRED_VV_OP_rd31( 1695,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021124d60, 0xf0503b64, 0x21124d60 );
  TEST_FPRED_VV_OP_131( 1696,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021124d60, 0xf0503b64, 0x21124d60 );
  TEST_FPRED_VV_OP_rd1( 1697,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017d5856b, 0x21124d60, 0x17d5856b );
  TEST_FPRED_VV_OP_11( 1698,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017d5856b, 0x21124d60, 0x17d5856b );
  TEST_FPRED_VV_OP_rd2( 1699,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007989bf32, 0x17d5856b, 0x7989bf32 );
  TEST_FPRED_VV_OP_12( 1700,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007989bf32, 0x17d5856b, 0x7989bf32 );
  TEST_FPRED_VV_OP_rd3( 1701,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b84a91f, 0x7989bf32, 0x6b84a91f );
  TEST_FPRED_VV_OP_13( 1702,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b84a91f, 0x7989bf32, 0x6b84a91f );
  TEST_FPRED_VV_OP_rd4( 1703,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003019a087, 0x6b84a91f, 0x3019a087 );
  TEST_FPRED_VV_OP_14( 1704,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003019a087, 0x6b84a91f, 0x3019a087 );
  TEST_FPRED_VV_OP_rd5( 1705,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c79214, 0x3019a087, 0x01c79214 );
  TEST_FPRED_VV_OP_15( 1706,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c79214, 0x3019a087, 0x01c79214 );
  TEST_FPRED_VV_OP_rd6( 1707,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea939be7, 0x01c79214, 0xea939be7 );
  TEST_FPRED_VV_OP_16( 1708,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea939be7, 0x01c79214, 0xea939be7 );
  TEST_FPRED_VV_OP_rd7( 1709,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c375122d, 0xea939be7, 0xc375122d );
  TEST_FPRED_VV_OP_17( 1710,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c375122d, 0xea939be7, 0xc375122d );
  TEST_FPRED_VV_OP_rd9( 1711,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d7eeffe, 0x116ec3d2, 0x2d7eeffe );
  TEST_FPRED_VV_OP_19( 1712,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002d7eeffe, 0x116ec3d2, 0x2d7eeffe );
  TEST_FPRED_VV_OP_rd10( 1713,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e013be07, 0x2d7eeffe, 0xe013be07 );
  TEST_FPRED_VV_OP_110( 1714,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e013be07, 0x2d7eeffe, 0xe013be07 );
  TEST_FPRED_VV_OP_rd11( 1715,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b45484fc, 0xe013be07, 0xb45484fc );
  TEST_FPRED_VV_OP_111( 1716,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b45484fc, 0xe013be07, 0xb45484fc );
  TEST_FPRED_VV_OP_rd12( 1717,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002dcda7f1, 0xb45484fc, 0x2dcda7f1 );
  TEST_FPRED_VV_OP_112( 1718,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002dcda7f1, 0xb45484fc, 0x2dcda7f1 );
  TEST_FPRED_VV_OP_rd13( 1719,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e2151fa, 0x2dcda7f1, 0x2e2151fa );
  TEST_FPRED_VV_OP_113( 1720,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e2151fa, 0x2dcda7f1, 0x2e2151fa );
  TEST_FPRED_VV_OP_rd14( 1721,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500c5f17, 0x2e2151fa, 0x500c5f17 );
  TEST_FPRED_VV_OP_114( 1722,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500c5f17, 0x2e2151fa, 0x500c5f17 );
  TEST_FPRED_VV_OP_rd15( 1723,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000984b6942, 0x500c5f17, 0x984b6942 );
  TEST_FPRED_VV_OP_115( 1724,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000984b6942, 0x500c5f17, 0x984b6942 );
  TEST_FPRED_VV_OP_rd17( 1725,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0c7c26a, 0x9960c98a, 0xc0c7c26a );
  TEST_FPRED_VV_OP_117( 1726,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0c7c26a, 0x9960c98a, 0xc0c7c26a );
  TEST_FPRED_VV_OP_rd18( 1727,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c714bae1, 0xc0c7c26a, 0xc714bae1 );
  TEST_FPRED_VV_OP_118( 1728,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c714bae1, 0xc0c7c26a, 0xc714bae1 );
  TEST_FPRED_VV_OP_rd19( 1729,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c086243, 0xc714bae1, 0x7c086243 );
  TEST_FPRED_VV_OP_119( 1730,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c086243, 0xc714bae1, 0x7c086243 );
  TEST_FPRED_VV_OP_rd20( 1731,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009a4397f5, 0x7c086243, 0x9a4397f5 );
  TEST_FPRED_VV_OP_120( 1732,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009a4397f5, 0x7c086243, 0x9a4397f5 );
  TEST_FPRED_VV_OP_rd21( 1733,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b02b37fb, 0x9a4397f5, 0xb02b37fb );
  TEST_FPRED_VV_OP_121( 1734,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b02b37fb, 0x9a4397f5, 0xb02b37fb );
  TEST_FPRED_VV_OP_rd22( 1735,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec0ac4f0, 0xb02b37fb, 0xec0ac4f0 );
  TEST_FPRED_VV_OP_122( 1736,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec0ac4f0, 0xb02b37fb, 0xec0ac4f0 );
  TEST_FPRED_VV_OP_rd23( 1737,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000abb5045d, 0xec0ac4f0, 0xabb5045d );
  TEST_FPRED_VV_OP_123( 1738,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000abb5045d, 0xec0ac4f0, 0xabb5045d );
  TEST_FPRED_VV_OP_rd25( 1739,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004ef87036, 0x4de1938f, 0x4ef87036 );
  TEST_FPRED_VV_OP_125( 1740,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004ef87036, 0x4de1938f, 0x4ef87036 );
  TEST_FPRED_VV_OP_rd26( 1741,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000477553ed, 0x4ef87036, 0x477553ed );
  TEST_FPRED_VV_OP_126( 1742,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000477553ed, 0x4ef87036, 0x477553ed );
  TEST_FPRED_VV_OP_rd27( 1743,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df884a52, 0x477553ed, 0xdf884a52 );
  TEST_FPRED_VV_OP_127( 1744,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df884a52, 0x477553ed, 0xdf884a52 );
  TEST_FPRED_VV_OP_rd28( 1745,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e364a2c3, 0xdf884a52, 0xe364a2c3 );
  TEST_FPRED_VV_OP_128( 1746,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e364a2c3, 0xdf884a52, 0xe364a2c3 );
  TEST_FPRED_VV_OP_rd29( 1747,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005e3d04d3, 0xe364a2c3, 0x5e3d04d3 );
  TEST_FPRED_VV_OP_129( 1748,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005e3d04d3, 0xe364a2c3, 0x5e3d04d3 );
  TEST_FPRED_VV_OP_rd30( 1749,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a37172c6, 0x5e3d04d3, 0xa37172c6 );
  TEST_FPRED_VV_OP_130( 1750,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a37172c6, 0x5e3d04d3, 0xa37172c6 );
  TEST_FPRED_VV_OP_rd31( 1751,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039c33e1d, 0xa37172c6, 0x39c33e1d );
  TEST_FPRED_VV_OP_131( 1752,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039c33e1d, 0xa37172c6, 0x39c33e1d );
  TEST_FPRED_VV_OP_rd1( 1753,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005fa55642, 0x39c33e1d, 0x5fa55642 );
  TEST_FPRED_VV_OP_11( 1754,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005fa55642, 0x39c33e1d, 0x5fa55642 );
  TEST_FPRED_VV_OP_rd2( 1755,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c6588c96, 0x5fa55642, 0xc6588c96 );
  TEST_FPRED_VV_OP_12( 1756,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c6588c96, 0x5fa55642, 0xc6588c96 );
  TEST_FPRED_VV_OP_rd3( 1757,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057aa9ec7, 0xc6588c96, 0x57aa9ec7 );
  TEST_FPRED_VV_OP_13( 1758,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057aa9ec7, 0xc6588c96, 0x57aa9ec7 );
  TEST_FPRED_VV_OP_rd4( 1759,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052a373c8, 0x57aa9ec7, 0x52a373c8 );
  TEST_FPRED_VV_OP_14( 1760,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052a373c8, 0x57aa9ec7, 0x52a373c8 );
  TEST_FPRED_VV_OP_rd5( 1761,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000868a5027, 0x52a373c8, 0x868a5027 );
  TEST_FPRED_VV_OP_15( 1762,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000868a5027, 0x52a373c8, 0x868a5027 );
  TEST_FPRED_VV_OP_rd6( 1763,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000afc3fa5e, 0x868a5027, 0xafc3fa5e );
  TEST_FPRED_VV_OP_16( 1764,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000afc3fa5e, 0x868a5027, 0xafc3fa5e );
  TEST_FPRED_VV_OP_rd7( 1765,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000804beeba, 0xafc3fa5e, 0x804beeba );
  TEST_FPRED_VV_OP_17( 1766,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000804beeba, 0xafc3fa5e, 0x804beeba );
  TEST_FPRED_VV_OP_rd9( 1767,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053cf2324, 0xbf812338, 0x53cf2324 );
  TEST_FPRED_VV_OP_19( 1768,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053cf2324, 0xbf812338, 0x53cf2324 );
  TEST_FPRED_VV_OP_rd10( 1769,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c2a2099, 0x53cf2324, 0x1c2a2099 );
  TEST_FPRED_VV_OP_110( 1770,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c2a2099, 0x53cf2324, 0x1c2a2099 );
  TEST_FPRED_VV_OP_rd11( 1771,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077275ab3, 0x1c2a2099, 0x77275ab3 );
  TEST_FPRED_VV_OP_111( 1772,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077275ab3, 0x1c2a2099, 0x77275ab3 );
  TEST_FPRED_VV_OP_rd12( 1773,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f53143f, 0x77275ab3, 0x8f53143f );
  TEST_FPRED_VV_OP_112( 1774,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f53143f, 0x77275ab3, 0x8f53143f );
  TEST_FPRED_VV_OP_rd13( 1775,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007868d163, 0x8f53143f, 0x7868d163 );
  TEST_FPRED_VV_OP_113( 1776,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007868d163, 0x8f53143f, 0x7868d163 );
  TEST_FPRED_VV_OP_rd14( 1777,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003362ef56, 0x7868d163, 0x3362ef56 );
  TEST_FPRED_VV_OP_114( 1778,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003362ef56, 0x7868d163, 0x3362ef56 );
  TEST_FPRED_VV_OP_rd15( 1779,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f5c4c30d, 0x3362ef56, 0xf5c4c30d );
  TEST_FPRED_VV_OP_115( 1780,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f5c4c30d, 0x3362ef56, 0xf5c4c30d );
  TEST_FPRED_VV_OP_rd17( 1781,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bae49486, 0x3413c9a6, 0xbae49486 );
  TEST_FPRED_VV_OP_117( 1782,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bae49486, 0x3413c9a6, 0xbae49486 );
  TEST_FPRED_VV_OP_rd18( 1783,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004d195ecf, 0xbae49486, 0x4d195ecf );
  TEST_FPRED_VV_OP_118( 1784,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004d195ecf, 0xbae49486, 0x4d195ecf );
  TEST_FPRED_VV_OP_rd19( 1785,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055085e69, 0x4d195ecf, 0x55085e69 );
  TEST_FPRED_VV_OP_119( 1786,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055085e69, 0x4d195ecf, 0x55085e69 );
  TEST_FPRED_VV_OP_rd20( 1787,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000497af66c, 0x55085e69, 0x497af66c );
  TEST_FPRED_VV_OP_120( 1788,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000497af66c, 0x55085e69, 0x497af66c );
  TEST_FPRED_VV_OP_rd21( 1789,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000776d41f0, 0x497af66c, 0x776d41f0 );
  TEST_FPRED_VV_OP_121( 1790,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000776d41f0, 0x497af66c, 0x776d41f0 );
  TEST_FPRED_VV_OP_rd22( 1791,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b06fcef, 0x776d41f0, 0x6b06fcef );
  TEST_FPRED_VV_OP_122( 1792,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b06fcef, 0x776d41f0, 0x6b06fcef );
  TEST_FPRED_VV_OP_rd23( 1793,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec9c3cae, 0x6b06fcef, 0xec9c3cae );
  TEST_FPRED_VV_OP_123( 1794,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ec9c3cae, 0x6b06fcef, 0xec9c3cae );
  TEST_FPRED_VV_OP_rd25( 1795,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a78b9e5d, 0xbbcdcd90, 0xa78b9e5d );
  TEST_FPRED_VV_OP_125( 1796,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a78b9e5d, 0xbbcdcd90, 0xa78b9e5d );
  TEST_FPRED_VV_OP_rd26( 1797,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b517d569, 0xa78b9e5d, 0xb517d569 );
  TEST_FPRED_VV_OP_126( 1798,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b517d569, 0xa78b9e5d, 0xb517d569 );
  TEST_FPRED_VV_OP_rd27( 1799,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058ecb82f, 0xb517d569, 0x58ecb82f );
  TEST_FPRED_VV_OP_127( 1800,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058ecb82f, 0xb517d569, 0x58ecb82f );
  TEST_FPRED_VV_OP_rd28( 1801,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000897683b0, 0x58ecb82f, 0x897683b0 );
  TEST_FPRED_VV_OP_128( 1802,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000897683b0, 0x58ecb82f, 0x897683b0 );
  TEST_FPRED_VV_OP_rd29( 1803,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017fed42, 0x897683b0, 0x017fed42 );
  TEST_FPRED_VV_OP_129( 1804,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017fed42, 0x897683b0, 0x017fed42 );
  TEST_FPRED_VV_OP_rd30( 1805,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ac46a81, 0x017fed42, 0x7ac46a81 );
  TEST_FPRED_VV_OP_130( 1806,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ac46a81, 0x017fed42, 0x7ac46a81 );
  TEST_FPRED_VV_OP_rd31( 1807,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b3424e3, 0x7ac46a81, 0x6b3424e3 );
  TEST_FPRED_VV_OP_131( 1808,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006b3424e3, 0x7ac46a81, 0x6b3424e3 );
  TEST_FPRED_VV_OP_rd1( 1809,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78c7be0, 0x6b3424e3, 0xf78c7be0 );
  TEST_FPRED_VV_OP_11( 1810,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78c7be0, 0x6b3424e3, 0xf78c7be0 );
  TEST_FPRED_VV_OP_rd2( 1811,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000225c9001, 0xf78c7be0, 0x225c9001 );
  TEST_FPRED_VV_OP_12( 1812,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000225c9001, 0xf78c7be0, 0x225c9001 );
  TEST_FPRED_VV_OP_rd3( 1813,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000716f74e5, 0x225c9001, 0x716f74e5 );
  TEST_FPRED_VV_OP_13( 1814,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000716f74e5, 0x225c9001, 0x716f74e5 );
  TEST_FPRED_VV_OP_rd4( 1815,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ea07308, 0x716f74e5, 0x5ea07308 );
  TEST_FPRED_VV_OP_14( 1816,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ea07308, 0x716f74e5, 0x5ea07308 );
  TEST_FPRED_VV_OP_rd5( 1817,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009cb1f841, 0x5ea07308, 0x9cb1f841 );
  TEST_FPRED_VV_OP_15( 1818,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009cb1f841, 0x5ea07308, 0x9cb1f841 );
  TEST_FPRED_VV_OP_rd6( 1819,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069773182, 0x9cb1f841, 0x69773182 );
  TEST_FPRED_VV_OP_16( 1820,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069773182, 0x9cb1f841, 0x69773182 );
  TEST_FPRED_VV_OP_rd7( 1821,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba7c2bc1, 0x69773182, 0xba7c2bc1 );
  TEST_FPRED_VV_OP_17( 1822,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ba7c2bc1, 0x69773182, 0xba7c2bc1 );
  TEST_FPRED_VV_OP_rd9( 1823,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7cbdb1c, 0x3615b6cd, 0xb7cbdb1c );
  TEST_FPRED_VV_OP_19( 1824,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7cbdb1c, 0x3615b6cd, 0xb7cbdb1c );
  TEST_FPRED_VV_OP_rd10( 1825,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057503bd7, 0xb7cbdb1c, 0x57503bd7 );
  TEST_FPRED_VV_OP_110( 1826,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057503bd7, 0xb7cbdb1c, 0x57503bd7 );
  TEST_FPRED_VV_OP_rd11( 1827,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d9043f, 0x57503bd7, 0x08d9043f );
  TEST_FPRED_VV_OP_111( 1828,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d9043f, 0x57503bd7, 0x08d9043f );
  TEST_FPRED_VV_OP_rd12( 1829,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de4c459d, 0x08d9043f, 0xde4c459d );
  TEST_FPRED_VV_OP_112( 1830,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de4c459d, 0x08d9043f, 0xde4c459d );
  TEST_FPRED_VV_OP_rd13( 1831,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a26c712, 0xde4c459d, 0x7a26c712 );
  TEST_FPRED_VV_OP_113( 1832,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a26c712, 0xde4c459d, 0x7a26c712 );
  TEST_FPRED_VV_OP_rd14( 1833,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000563028c3, 0x7a26c712, 0x563028c3 );
  TEST_FPRED_VV_OP_114( 1834,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000563028c3, 0x7a26c712, 0x563028c3 );
  TEST_FPRED_VV_OP_rd15( 1835,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000795e33bf, 0x563028c3, 0x795e33bf );
  TEST_FPRED_VV_OP_115( 1836,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000795e33bf, 0x563028c3, 0x795e33bf );
  TEST_FPRED_VV_OP_rd17( 1837,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f20bed88, 0xf2d19a38, 0xf20bed88 );
  TEST_FPRED_VV_OP_117( 1838,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f20bed88, 0xf2d19a38, 0xf20bed88 );
  TEST_FPRED_VV_OP_rd18( 1839,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007e91e990, 0xf20bed88, 0x7e91e990 );
  TEST_FPRED_VV_OP_118( 1840,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007e91e990, 0xf20bed88, 0x7e91e990 );
  TEST_FPRED_VV_OP_rd19( 1841,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028403d8f, 0x7e91e990, 0x28403d8f );
  TEST_FPRED_VV_OP_119( 1842,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028403d8f, 0x7e91e990, 0x28403d8f );
  TEST_FPRED_VV_OP_rd20( 1843,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e451d935, 0x28403d8f, 0xe451d935 );
  TEST_FPRED_VV_OP_120( 1844,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e451d935, 0x28403d8f, 0xe451d935 );
  TEST_FPRED_VV_OP_rd21( 1845,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006cbd6936, 0xe451d935, 0x6cbd6936 );
  TEST_FPRED_VV_OP_121( 1846,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006cbd6936, 0xe451d935, 0x6cbd6936 );
  TEST_FPRED_VV_OP_rd22( 1847,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bb4197f, 0x6cbd6936, 0x4bb4197f );
  TEST_FPRED_VV_OP_122( 1848,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004bb4197f, 0x6cbd6936, 0x4bb4197f );
  TEST_FPRED_VV_OP_rd23( 1849,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b2301f0d, 0x4bb4197f, 0xb2301f0d );
  TEST_FPRED_VV_OP_123( 1850,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b2301f0d, 0x4bb4197f, 0xb2301f0d );
  TEST_FPRED_VV_OP_rd25( 1851,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016598049, 0xc0fe2faf, 0x16598049 );
  TEST_FPRED_VV_OP_125( 1852,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016598049, 0xc0fe2faf, 0x16598049 );
  TEST_FPRED_VV_OP_rd26( 1853,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008b074d85, 0x16598049, 0x8b074d85 );
  TEST_FPRED_VV_OP_126( 1854,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008b074d85, 0x16598049, 0x8b074d85 );
  TEST_FPRED_VV_OP_rd27( 1855,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3044c5f, 0x8b074d85, 0xb3044c5f );
  TEST_FPRED_VV_OP_127( 1856,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3044c5f, 0x8b074d85, 0xb3044c5f );
  TEST_FPRED_VV_OP_rd28( 1857,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052e624b8, 0xb3044c5f, 0x52e624b8 );
  TEST_FPRED_VV_OP_128( 1858,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052e624b8, 0xb3044c5f, 0x52e624b8 );
  TEST_FPRED_VV_OP_rd29( 1859,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4b5a3ae, 0x52e624b8, 0xe4b5a3ae );
  TEST_FPRED_VV_OP_129( 1860,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4b5a3ae, 0x52e624b8, 0xe4b5a3ae );
  TEST_FPRED_VV_OP_rd30( 1861,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000223b3100, 0xe4b5a3ae, 0x223b3100 );
  TEST_FPRED_VV_OP_130( 1862,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000223b3100, 0xe4b5a3ae, 0x223b3100 );
  TEST_FPRED_VV_OP_rd31( 1863,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000060e69e76, 0x223b3100, 0x60e69e76 );
  TEST_FPRED_VV_OP_131( 1864,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000060e69e76, 0x223b3100, 0x60e69e76 );
  TEST_FPRED_VV_OP_rd1( 1865,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b1ae2f0, 0x60e69e76, 0x7b1ae2f0 );
  TEST_FPRED_VV_OP_11( 1866,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b1ae2f0, 0x60e69e76, 0x7b1ae2f0 );
  TEST_FPRED_VV_OP_rd2( 1867,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008837caa2, 0x7b1ae2f0, 0x8837caa2 );
  TEST_FPRED_VV_OP_12( 1868,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008837caa2, 0x7b1ae2f0, 0x8837caa2 );
  TEST_FPRED_VV_OP_rd3( 1869,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64768d4, 0x8837caa2, 0xa64768d4 );
  TEST_FPRED_VV_OP_13( 1870,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64768d4, 0x8837caa2, 0xa64768d4 );
  TEST_FPRED_VV_OP_rd4( 1871,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3cafbaa, 0xa64768d4, 0xe3cafbaa );
  TEST_FPRED_VV_OP_14( 1872,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3cafbaa, 0xa64768d4, 0xe3cafbaa );
  TEST_FPRED_VV_OP_rd5( 1873,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000409e0a27, 0xe3cafbaa, 0x409e0a27 );
  TEST_FPRED_VV_OP_15( 1874,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000409e0a27, 0xe3cafbaa, 0x409e0a27 );
  TEST_FPRED_VV_OP_rd6( 1875,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008bca7953, 0x409e0a27, 0x8bca7953 );
  TEST_FPRED_VV_OP_16( 1876,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008bca7953, 0x409e0a27, 0x8bca7953 );
  TEST_FPRED_VV_OP_rd7( 1877,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000054110db1, 0x8bca7953, 0x54110db1 );
  TEST_FPRED_VV_OP_17( 1878,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000054110db1, 0x8bca7953, 0x54110db1 );
  TEST_FPRED_VV_OP_rd9( 1879,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082997f29, 0xdd376b5e, 0x82997f29 );
  TEST_FPRED_VV_OP_19( 1880,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082997f29, 0xdd376b5e, 0x82997f29 );
  TEST_FPRED_VV_OP_rd10( 1881,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000355719f2, 0x82997f29, 0x355719f2 );
  TEST_FPRED_VV_OP_110( 1882,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000355719f2, 0x82997f29, 0x355719f2 );
  TEST_FPRED_VV_OP_rd11( 1883,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000409cf5f2, 0x355719f2, 0x409cf5f2 );
  TEST_FPRED_VV_OP_111( 1884,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000409cf5f2, 0x355719f2, 0x409cf5f2 );
  TEST_FPRED_VV_OP_rd12( 1885,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0f04044, 0x409cf5f2, 0xd0f04044 );
  TEST_FPRED_VV_OP_112( 1886,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0f04044, 0x409cf5f2, 0xd0f04044 );
  TEST_FPRED_VV_OP_rd13( 1887,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b1f11cd7, 0xd0f04044, 0xb1f11cd7 );
  TEST_FPRED_VV_OP_113( 1888,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b1f11cd7, 0xd0f04044, 0xb1f11cd7 );
  TEST_FPRED_VV_OP_rd14( 1889,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de5e4fa6, 0xb1f11cd7, 0xde5e4fa6 );
  TEST_FPRED_VV_OP_114( 1890,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de5e4fa6, 0xb1f11cd7, 0xde5e4fa6 );
  TEST_FPRED_VV_OP_rd15( 1891,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d82dd4fd, 0xde5e4fa6, 0xd82dd4fd );
  TEST_FPRED_VV_OP_115( 1892,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d82dd4fd, 0xde5e4fa6, 0xd82dd4fd );
  TEST_FPRED_VV_OP_rd17( 1893,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004949dc26, 0xe58d530d, 0x4949dc26 );
  TEST_FPRED_VV_OP_117( 1894,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004949dc26, 0xe58d530d, 0x4949dc26 );
  TEST_FPRED_VV_OP_rd18( 1895,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e5f9ede, 0x4949dc26, 0x8e5f9ede );
  TEST_FPRED_VV_OP_118( 1896,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e5f9ede, 0x4949dc26, 0x8e5f9ede );
  TEST_FPRED_VV_OP_rd19( 1897,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e4a63c9, 0x8e5f9ede, 0x8e4a63c9 );
  TEST_FPRED_VV_OP_119( 1898,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e4a63c9, 0x8e5f9ede, 0x8e4a63c9 );
  TEST_FPRED_VV_OP_rd20( 1899,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003e0b7f6a, 0x8e4a63c9, 0x3e0b7f6a );
  TEST_FPRED_VV_OP_120( 1900,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003e0b7f6a, 0x8e4a63c9, 0x3e0b7f6a );
  TEST_FPRED_VV_OP_rd21( 1901,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000721e2d49, 0x3e0b7f6a, 0x721e2d49 );
  TEST_FPRED_VV_OP_121( 1902,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000721e2d49, 0x3e0b7f6a, 0x721e2d49 );
  TEST_FPRED_VV_OP_rd22( 1903,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b9420e82, 0x721e2d49, 0xb9420e82 );
  TEST_FPRED_VV_OP_122( 1904,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b9420e82, 0x721e2d49, 0xb9420e82 );
  TEST_FPRED_VV_OP_rd23( 1905,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f300bb4, 0xb9420e82, 0x9f300bb4 );
  TEST_FPRED_VV_OP_123( 1906,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f300bb4, 0xb9420e82, 0x9f300bb4 );
  TEST_FPRED_VV_OP_rd25( 1907,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033939602, 0xdaf09bbc, 0x33939602 );
  TEST_FPRED_VV_OP_125( 1908,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033939602, 0xdaf09bbc, 0x33939602 );
  TEST_FPRED_VV_OP_rd26( 1909,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022d815c2, 0x33939602, 0x22d815c2 );
  TEST_FPRED_VV_OP_126( 1910,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022d815c2, 0x33939602, 0x22d815c2 );
  TEST_FPRED_VV_OP_rd27( 1911,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd6461b8, 0x22d815c2, 0xdd6461b8 );
  TEST_FPRED_VV_OP_127( 1912,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dd6461b8, 0x22d815c2, 0xdd6461b8 );
  TEST_FPRED_VV_OP_rd28( 1913,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a0c1de71, 0xdd6461b8, 0xa0c1de71 );
  TEST_FPRED_VV_OP_128( 1914,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a0c1de71, 0xdd6461b8, 0xa0c1de71 );
  TEST_FPRED_VV_OP_rd29( 1915,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008412c769, 0xa0c1de71, 0x8412c769 );
  TEST_FPRED_VV_OP_129( 1916,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008412c769, 0xa0c1de71, 0x8412c769 );
  TEST_FPRED_VV_OP_rd30( 1917,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e03a03d1, 0x8412c769, 0xe03a03d1 );
  TEST_FPRED_VV_OP_130( 1918,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e03a03d1, 0x8412c769, 0xe03a03d1 );
  TEST_FPRED_VV_OP_rd31( 1919,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001d7e0df1, 0xe03a03d1, 0x1d7e0df1 );
  TEST_FPRED_VV_OP_131( 1920,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001d7e0df1, 0xe03a03d1, 0x1d7e0df1 );
  TEST_FPRED_VV_OP_rd1( 1921,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa1ba77a, 0x1d7e0df1, 0xaa1ba77a );
  TEST_FPRED_VV_OP_11( 1922,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa1ba77a, 0x1d7e0df1, 0xaa1ba77a );
  TEST_FPRED_VV_OP_rd2( 1923,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fd16c33, 0xaa1ba77a, 0x1fd16c33 );
  TEST_FPRED_VV_OP_12( 1924,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fd16c33, 0xaa1ba77a, 0x1fd16c33 );
  TEST_FPRED_VV_OP_rd3( 1925,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e6b2620f, 0x1fd16c33, 0xe6b2620f );
  TEST_FPRED_VV_OP_13( 1926,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e6b2620f, 0x1fd16c33, 0xe6b2620f );
  TEST_FPRED_VV_OP_rd4( 1927,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d80b4e8d, 0xe6b2620f, 0xd80b4e8d );
  TEST_FPRED_VV_OP_14( 1928,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d80b4e8d, 0xe6b2620f, 0xd80b4e8d );
  TEST_FPRED_VV_OP_rd5( 1929,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c57dfcc, 0xd80b4e8d, 0x8c57dfcc );
  TEST_FPRED_VV_OP_15( 1930,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c57dfcc, 0xd80b4e8d, 0x8c57dfcc );
  TEST_FPRED_VV_OP_rd6( 1931,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072d00ff0, 0x8c57dfcc, 0x72d00ff0 );
  TEST_FPRED_VV_OP_16( 1932,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072d00ff0, 0x8c57dfcc, 0x72d00ff0 );
  TEST_FPRED_VV_OP_rd7( 1933,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d71f3bd, 0x72d00ff0, 0x8d71f3bd );
  TEST_FPRED_VV_OP_17( 1934,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d71f3bd, 0x72d00ff0, 0x8d71f3bd );
  TEST_FPRED_VV_OP_rd9( 1935,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065e2e213, 0x90df5366, 0x65e2e213 );
  TEST_FPRED_VV_OP_19( 1936,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065e2e213, 0x90df5366, 0x65e2e213 );
  TEST_FPRED_VV_OP_rd10( 1937,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d4af903f, 0x65e2e213, 0xd4af903f );
  TEST_FPRED_VV_OP_110( 1938,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d4af903f, 0x65e2e213, 0xd4af903f );
  TEST_FPRED_VV_OP_rd11( 1939,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b402769, 0xd4af903f, 0x0b402769 );
  TEST_FPRED_VV_OP_111( 1940,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b402769, 0xd4af903f, 0x0b402769 );
  TEST_FPRED_VV_OP_rd12( 1941,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e520a1a5, 0x0b402769, 0xe520a1a5 );
  TEST_FPRED_VV_OP_112( 1942,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e520a1a5, 0x0b402769, 0xe520a1a5 );
  TEST_FPRED_VV_OP_rd13( 1943,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002fd98a32, 0xe520a1a5, 0x2fd98a32 );
  TEST_FPRED_VV_OP_113( 1944,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002fd98a32, 0xe520a1a5, 0x2fd98a32 );
  TEST_FPRED_VV_OP_rd14( 1945,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d31c277, 0x2fd98a32, 0x8d31c277 );
  TEST_FPRED_VV_OP_114( 1946,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d31c277, 0x2fd98a32, 0x8d31c277 );
  TEST_FPRED_VV_OP_rd15( 1947,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000431be53f, 0x8d31c277, 0x431be53f );
  TEST_FPRED_VV_OP_115( 1948,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000431be53f, 0x8d31c277, 0x431be53f );
  TEST_FPRED_VV_OP_rd17( 1949,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x163af993, 0x00000000 );
  TEST_FPRED_VV_OP_117( 1950,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x163af993, 0x00000000 );
  TEST_FPRED_VV_OP_rd18( 1951,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x62d5fe2f, 0xBF800000 );
  TEST_FPRED_VV_OP_118( 1952,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x62d5fe2f, 0xBF800000 );
  TEST_FPRED_VV_OP_rd19( 1953,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0xbbbfcaf3, 0x3F800000 );
  TEST_FPRED_VV_OP_119( 1954,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0xbbbfcaf3, 0x3F800000 );
  TEST_FPRED_VV_OP_rd20( 1955,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x8ad27026, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_120( 1956,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x8ad27026, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd21( 1957,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x599ec422, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_121( 1958,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x599ec422, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd22( 1959,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xd0e57884, 0x80855555 );
  TEST_FPRED_VV_OP_122( 1960,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xd0e57884, 0x80855555 );
  TEST_FPRED_VV_OP_rd23( 1961,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x315858ad, 0x00800001 );
  TEST_FPRED_VV_OP_123( 1962,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x315858ad, 0x00800001 );
  TEST_FPRED_VV_OP_rd25( 1963,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x80c7fec6, 0x00800000 );
  TEST_FPRED_VV_OP_125( 1964,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x80c7fec6, 0x00800000 );
  TEST_FPRED_VV_OP_rd26( 1965,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0xb8a4eaba, 0x807FFFFF );
  TEST_FPRED_VV_OP_126( 1966,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0xb8a4eaba, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd27( 1967,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x893e4f51, 0x007FFFFF );
  TEST_FPRED_VV_OP_127( 1968,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x893e4f51, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd28( 1969,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xa204c639, 0x807FFFFE );
  TEST_FPRED_VV_OP_128( 1970,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xa204c639, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd29( 1971,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x092d4ba0, 0x00000002 );
  TEST_FPRED_VV_OP_129( 1972,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x092d4ba0, 0x00000002 );
  TEST_FPRED_VV_OP_rd30( 1973,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x8787ab14, 0x80000001 );
  TEST_FPRED_VV_OP_130( 1974,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x8787ab14, 0x80000001 );
  TEST_FPRED_VV_OP_rd31( 1975,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x61ce2443, 0x00000001 );
  TEST_FPRED_VV_OP_131( 1976,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x61ce2443, 0x00000001 );
  TEST_FPRED_VV_OP_rd1( 1977,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x8ac8c0d1, 0x80000000 );
  TEST_FPRED_VV_OP_11( 1978,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x8ac8c0d1, 0x80000000 );
  TEST_FPRED_VV_OP_rd2( 1979,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x2a519200, 0x00000000 );
  TEST_FPRED_VV_OP_12( 1980,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x2a519200, 0x00000000 );
  TEST_FPRED_VV_OP_rd3( 1981,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x156dd6bc, 0xBF800000 );
  TEST_FPRED_VV_OP_13( 1982,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x156dd6bc, 0xBF800000 );
  TEST_FPRED_VV_OP_rd4( 1983,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x35ceb876, 0x3F800000 );
  TEST_FPRED_VV_OP_14( 1984,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x35ceb876, 0x3F800000 );
  TEST_FPRED_VV_OP_rd5( 1985,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x766125a9, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_15( 1986,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x766125a9, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd6( 1987,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x05269d43, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_16( 1988,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x05269d43, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd7( 1989,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x1591c3bb, 0x80855555 );
  TEST_FPRED_VV_OP_17( 1990,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x1591c3bb, 0x80855555 );
  TEST_FPRED_VV_OP_rd9( 1991,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xb68e62d5, 0x80800000 );
  TEST_FPRED_VV_OP_19( 1992,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xb68e62d5, 0x80800000 );
  TEST_FPRED_VV_OP_rd10( 1993,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x98c5df64, 0x00800000 );
  TEST_FPRED_VV_OP_110( 1994,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x98c5df64, 0x00800000 );
  TEST_FPRED_VV_OP_rd11( 1995,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x58a4f5f8, 0x807FFFFF );
  TEST_FPRED_VV_OP_111( 1996,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x58a4f5f8, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd12( 1997,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x1b5d4991, 0x007FFFFF );
  TEST_FPRED_VV_OP_112( 1998,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x1b5d4991, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd13( 1999,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x02046b89, 0x807FFFFE );
  TEST_FPRED_VV_OP_113( 2000,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x02046b89, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd14( 2001,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xf4223dde, 0x00000002 );
  TEST_FPRED_VV_OP_114( 2002,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xf4223dde, 0x00000002 );
  TEST_FPRED_VV_OP_rd15( 2003,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xcf05164e, 0x80000001 );
  TEST_FPRED_VV_OP_115( 2004,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xcf05164e, 0x80000001 );
  TEST_FPRED_VV_OP_rd17( 2005,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x5e100e5a, 0x80000000 );
  TEST_FPRED_VV_OP_117( 2006,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x5e100e5a, 0x80000000 );
  TEST_FPRED_VV_OP_rd18( 2007,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8f51944a, 0x00000000 );
  TEST_FPRED_VV_OP_118( 2008,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8f51944a, 0x00000000 );
  TEST_FPRED_VV_OP_rd19( 2009,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x01d283cd, 0xBF800000 );
  TEST_FPRED_VV_OP_119( 2010,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x01d283cd, 0xBF800000 );
  TEST_FPRED_VV_OP_rd20( 2011,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x19ea57fc, 0x3F800000 );
  TEST_FPRED_VV_OP_120( 2012,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x19ea57fc, 0x3F800000 );
  TEST_FPRED_VV_OP_rd21( 2013,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xe246d9c3, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_121( 2014,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xe246d9c3, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd22( 2015,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xb3ede2cf, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_122( 2016,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xb3ede2cf, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd23( 2017,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x661a98bb, 0x80855555 );
  TEST_FPRED_VV_OP_123( 2018,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x661a98bb, 0x80855555 );
  TEST_FPRED_VV_OP_rd25( 2019,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xb54c779c, 0x80800000 );
  TEST_FPRED_VV_OP_125( 2020,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xb54c779c, 0x80800000 );
  TEST_FPRED_VV_OP_rd26( 2021,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x8b890ead, 0x00800000 );
  TEST_FPRED_VV_OP_126( 2022,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x8b890ead, 0x00800000 );
  TEST_FPRED_VV_OP_rd27( 2023,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x6f6d8ebb, 0x807FFFFF );
  TEST_FPRED_VV_OP_127( 2024,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x6f6d8ebb, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd28( 2025,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x701a72e3, 0x007FFFFF );
  TEST_FPRED_VV_OP_128( 2026,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x701a72e3, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd29( 2027,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x18854a53, 0x807FFFFE );
  TEST_FPRED_VV_OP_129( 2028,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x18854a53, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd30( 2029,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xd8b646c3, 0x00000002 );
  TEST_FPRED_VV_OP_130( 2030,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xd8b646c3, 0x00000002 );
  TEST_FPRED_VV_OP_rd31( 2031,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x7a859a9b, 0x80000001 );
  TEST_FPRED_VV_OP_131( 2032,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x7a859a9b, 0x80000001 );
  TEST_FPRED_VV_OP_rd1( 2033,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x99fb1285, 0x00000001 );
  TEST_FPRED_VV_OP_11( 2034,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x99fb1285, 0x00000001 );
  TEST_FPRED_VV_OP_rd2( 2035,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x6a49fdb6, 0x80000000 );
  TEST_FPRED_VV_OP_12( 2036,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x6a49fdb6, 0x80000000 );
  TEST_FPRED_VV_OP_rd3( 2037,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xe54c4797, 0x00000000 );
  TEST_FPRED_VV_OP_13( 2038,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xe54c4797, 0x00000000 );
  TEST_FPRED_VV_OP_rd4( 2039,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0xa13e91a2, 0xBF800000 );
  TEST_FPRED_VV_OP_14( 2040,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0xa13e91a2, 0xBF800000 );
  TEST_FPRED_VV_OP_rd5( 2041,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x56a16ea4, 0x3F800000 );
  TEST_FPRED_VV_OP_15( 2042,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x56a16ea4, 0x3F800000 );
  TEST_FPRED_VV_OP_rd6( 2043,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x8dc0e4ff, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_16( 2044,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x8dc0e4ff, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd7( 2045,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x267eb8c3, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_17( 2046,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x267eb8c3, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd9( 2047,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xd18cf677, 0x00800001 );
  TEST_FPRED_VV_OP_19( 2048,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xd18cf677, 0x00800001 );
  TEST_FPRED_VV_OP_rd10( 2049,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xc592af51, 0x80800000 );
  TEST_FPRED_VV_OP_110( 2050,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xc592af51, 0x80800000 );
  TEST_FPRED_VV_OP_rd11( 2051,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x639952be, 0x00800000 );
  TEST_FPRED_VV_OP_111( 2052,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x639952be, 0x00800000 );
  TEST_FPRED_VV_OP_rd12( 2053,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x5ecc40d7, 0x807FFFFF );
  TEST_FPRED_VV_OP_112( 2054,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x5ecc40d7, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd13( 2055,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x08e1872a, 0x007FFFFF );
  TEST_FPRED_VV_OP_113( 2056,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x08e1872a, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd14( 2057,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x699b0430, 0x807FFFFE );
  TEST_FPRED_VV_OP_114( 2058,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x699b0430, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd15( 2059,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x515deb63, 0x00000002 );
  TEST_FPRED_VV_OP_115( 2060,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x515deb63, 0x00000002 );
  TEST_FPRED_VV_OP_rd17( 2061,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x5ed38442, 0x00000001 );
  TEST_FPRED_VV_OP_117( 2062,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x5ed38442, 0x00000001 );
  TEST_FPRED_VV_OP_rd18( 2063,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x9444a8cf, 0x80000000 );
  TEST_FPRED_VV_OP_118( 2064,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x9444a8cf, 0x80000000 );
  TEST_FPRED_VV_OP_rd19( 2065,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x3b6f020e, 0x00000000 );
  TEST_FPRED_VV_OP_119( 2066,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x3b6f020e, 0x00000000 );
  TEST_FPRED_VV_OP_rd20( 2067,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x3d7a2c1a, 0xBF800000 );
  TEST_FPRED_VV_OP_120( 2068,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x3d7a2c1a, 0xBF800000 );
  TEST_FPRED_VV_OP_rd21( 2069,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0xe12d2042, 0x3F800000 );
  TEST_FPRED_VV_OP_121( 2070,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0xe12d2042, 0x3F800000 );
  TEST_FPRED_VV_OP_rd22( 2071,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xddc02bcf, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_122( 2072,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xddc02bcf, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd23( 2073,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xd793ec85, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_123( 2074,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xd793ec85, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd25( 2075,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x7b5bb683, 0x00800001 );
  TEST_FPRED_VV_OP_125( 2076,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x7b5bb683, 0x00800001 );
  TEST_FPRED_VV_OP_rd26( 2077,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xf3060550, 0x80800000 );
  TEST_FPRED_VV_OP_126( 2078,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xf3060550, 0x80800000 );
  TEST_FPRED_VV_OP_rd27( 2079,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xeb6622a3, 0x00800000 );
  TEST_FPRED_VV_OP_127( 2080,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xeb6622a3, 0x00800000 );
  TEST_FPRED_VV_OP_rd28( 2081,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x370df4fd, 0x807FFFFF );
  TEST_FPRED_VV_OP_128( 2082,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x370df4fd, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd29( 2083,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xe7026d7d, 0x007FFFFF );
  TEST_FPRED_VV_OP_129( 2084,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xe7026d7d, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd30( 2085,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xa7ef2bad, 0x807FFFFE );
  TEST_FPRED_VV_OP_130( 2086,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xa7ef2bad, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd31( 2087,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x5d994fff, 0x00000002 );
  TEST_FPRED_VV_OP_131( 2088,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x5d994fff, 0x00000002 );
  TEST_FPRED_VV_OP_rd1( 2089,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x6ab30fe4, 0x80000001 );
  TEST_FPRED_VV_OP_11( 2090,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x6ab30fe4, 0x80000001 );
  TEST_FPRED_VV_OP_rd2( 2091,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x72d35639, 0x00000001 );
  TEST_FPRED_VV_OP_12( 2092,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x72d35639, 0x00000001 );
  TEST_FPRED_VV_OP_rd3( 2093,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x27c70109, 0x80000000 );
  TEST_FPRED_VV_OP_13( 2094,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x27c70109, 0x80000000 );
  TEST_FPRED_VV_OP_rd4( 2095,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xf283b49c, 0x00000000 );
  TEST_FPRED_VV_OP_14( 2096,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xf283b49c, 0x00000000 );
  TEST_FPRED_VV_OP_rd5( 2097,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x3c70fd0b, 0xBF800000 );
  TEST_FPRED_VV_OP_15( 2098,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x3c70fd0b, 0xBF800000 );
  TEST_FPRED_VV_OP_rd6( 2099,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x1f46077b, 0x3F800000 );
  TEST_FPRED_VV_OP_16( 2100,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x1f46077b, 0x3F800000 );
  TEST_FPRED_VV_OP_rd7( 2101,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xc626d7b5, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_17( 2102,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xc626d7b5, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd9( 2103,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xa37e6d45, 0x80855555 );
  TEST_FPRED_VV_OP_19( 2104,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xa37e6d45, 0x80855555 );
  TEST_FPRED_VV_OP_rd10( 2105,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x69155a81, 0x00800001 );
  TEST_FPRED_VV_OP_110( 2106,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x69155a81, 0x00800001 );
  TEST_FPRED_VV_OP_rd11( 2107,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xe78f6b83, 0x80800000 );
  TEST_FPRED_VV_OP_111( 2108,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xe78f6b83, 0x80800000 );
  TEST_FPRED_VV_OP_rd12( 2109,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x9aba564b, 0x00800000 );
  TEST_FPRED_VV_OP_112( 2110,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x9aba564b, 0x00800000 );
  TEST_FPRED_VV_OP_rd13( 2111,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x3616aeda, 0x807FFFFF );
  TEST_FPRED_VV_OP_113( 2112,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x3616aeda, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd14( 2113,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xb6b43b38, 0x007FFFFF );
  TEST_FPRED_VV_OP_114( 2114,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xb6b43b38, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd15( 2115,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x48363fc9, 0x807FFFFE );
  TEST_FPRED_VV_OP_115( 2116,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x48363fc9, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd17( 2117,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x4f1f58ba, 0x80000001 );
  TEST_FPRED_VV_OP_117( 2118,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x4f1f58ba, 0x80000001 );
  TEST_FPRED_VV_OP_rd18( 2119,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x19e51db5, 0x00000001 );
  TEST_FPRED_VV_OP_118( 2120,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x19e51db5, 0x00000001 );
  TEST_FPRED_VV_OP_rd19( 2121,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xe0c53c63, 0x80000000 );
  TEST_FPRED_VV_OP_119( 2122,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xe0c53c63, 0x80000000 );
  TEST_FPRED_VV_OP_rd20( 2123,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x192352ad, 0x00000000 );
  TEST_FPRED_VV_OP_120( 2124,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x192352ad, 0x00000000 );
  TEST_FPRED_VV_OP_rd21( 2125,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x5639134a, 0xBF800000 );
  TEST_FPRED_VV_OP_121( 2126,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x5639134a, 0xBF800000 );
  TEST_FPRED_VV_OP_rd22( 2127,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x3b3c24ec, 0x3F800000 );
  TEST_FPRED_VV_OP_122( 2128,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x3b3c24ec, 0x3F800000 );
  TEST_FPRED_VV_OP_rd23( 2129,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x8376196a, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_123( 2130,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x8376196a, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd25( 2131,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x2cd12f68, 0x80855555 );
  TEST_FPRED_VV_OP_125( 2132,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x2cd12f68, 0x80855555 );
  TEST_FPRED_VV_OP_rd26( 2133,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x5b91a296, 0x00800001 );
  TEST_FPRED_VV_OP_126( 2134,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x5b91a296, 0x00800001 );
  TEST_FPRED_VV_OP_rd27( 2135,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x0a9edbe9, 0x80800000 );
  TEST_FPRED_VV_OP_127( 2136,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x0a9edbe9, 0x80800000 );
  TEST_FPRED_VV_OP_rd28( 2137,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xbc4fb8ab, 0x00800000 );
  TEST_FPRED_VV_OP_128( 2138,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xbc4fb8ab, 0x00800000 );
  TEST_FPRED_VV_OP_rd29( 2139,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x68714601, 0x807FFFFF );
  TEST_FPRED_VV_OP_129( 2140,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x68714601, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd30( 2141,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xf6077257, 0x007FFFFF );
  TEST_FPRED_VV_OP_130( 2142,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xf6077257, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd31( 2143,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x6baa10f2, 0x807FFFFE );
  TEST_FPRED_VV_OP_131( 2144,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x6baa10f2, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd1( 2145,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x210eee6d, 0x00000002 );
  TEST_FPRED_VV_OP_11( 2146,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x210eee6d, 0x00000002 );
  TEST_FPRED_VV_OP_rd2( 2147,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x9d9d1deb, 0x80000001 );
  TEST_FPRED_VV_OP_12( 2148,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x9d9d1deb, 0x80000001 );
  TEST_FPRED_VV_OP_rd3( 2149,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x52a2c944, 0x00000001 );
  TEST_FPRED_VV_OP_13( 2150,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x52a2c944, 0x00000001 );
  TEST_FPRED_VV_OP_rd4( 2151,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x69da5807, 0x80000000 );
  TEST_FPRED_VV_OP_14( 2152,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x69da5807, 0x80000000 );
  TEST_FPRED_VV_OP_rd5( 2153,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x5643827a, 0x00000000 );
  TEST_FPRED_VV_OP_15( 2154,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x5643827a, 0x00000000 );
  TEST_FPRED_VV_OP_rd6( 2155,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x548fa17d, 0xBF800000 );
  TEST_FPRED_VV_OP_16( 2156,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x548fa17d, 0xBF800000 );
  TEST_FPRED_VV_OP_rd7( 2157,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x0125e3bc, 0x3F800000 );
  TEST_FPRED_VV_OP_17( 2158,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x0125e3bc, 0x3F800000 );
  TEST_FPRED_VV_OP_rd9( 2159,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xd612accc, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_19( 2160,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xd612accc, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd10( 2161,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x7c624102, 0x80855555 );
  TEST_FPRED_VV_OP_110( 2162,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x7c624102, 0x80855555 );
  TEST_FPRED_VV_OP_rd11( 2163,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x81457ac4, 0x00800001 );
  TEST_FPRED_VV_OP_111( 2164,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x81457ac4, 0x00800001 );
  TEST_FPRED_VV_OP_rd12( 2165,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x169e8d7e, 0x80800000 );
  TEST_FPRED_VV_OP_112( 2166,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x169e8d7e, 0x80800000 );
  TEST_FPRED_VV_OP_rd13( 2167,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x82d5d8cc, 0x00800000 );
  TEST_FPRED_VV_OP_113( 2168,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x82d5d8cc, 0x00800000 );
  TEST_FPRED_VV_OP_rd14( 2169,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x2afa1e78, 0x807FFFFF );
  TEST_FPRED_VV_OP_114( 2170,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x2afa1e78, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd15( 2171,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xdb9ca373, 0x007FFFFF );
  TEST_FPRED_VV_OP_115( 2172,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xdb9ca373, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd17( 2173,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xb686377f, 0x00000002 );
  TEST_FPRED_VV_OP_117( 2174,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xb686377f, 0x00000002 );
  TEST_FPRED_VV_OP_rd18( 2175,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xc0570d1e, 0x80000001 );
  TEST_FPRED_VV_OP_118( 2176,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xc0570d1e, 0x80000001 );
  TEST_FPRED_VV_OP_rd19( 2177,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x6682aa99, 0x00000001 );
  TEST_FPRED_VV_OP_119( 2178,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x6682aa99, 0x00000001 );
  TEST_FPRED_VV_OP_rd20( 2179,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xd3ab2b5b, 0x80000000 );
  TEST_FPRED_VV_OP_120( 2180,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xd3ab2b5b, 0x80000000 );
  TEST_FPRED_VV_OP_rd21( 2181,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x32ce890a, 0x00000000 );
  TEST_FPRED_VV_OP_121( 2182,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x32ce890a, 0x00000000 );
  TEST_FPRED_VV_OP_rd22( 2183,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x50408aba, 0xBF800000 );
  TEST_FPRED_VV_OP_122( 2184,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x50408aba, 0xBF800000 );
  TEST_FPRED_VV_OP_rd23( 2185,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0xb4ea3655, 0x3F800000 );
  TEST_FPRED_VV_OP_123( 2186,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0xb4ea3655, 0x3F800000 );
  TEST_FPRED_VV_OP_rd25( 2187,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xeef03e8d, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_125( 2188,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xeef03e8d, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd26( 2189,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xde17d645, 0x80855555 );
  TEST_FPRED_VV_OP_126( 2190,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xde17d645, 0x80855555 );
  TEST_FPRED_VV_OP_rd27( 2191,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x0e7f9a32, 0x00800001 );
  TEST_FPRED_VV_OP_127( 2192,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x0e7f9a32, 0x00800001 );
  TEST_FPRED_VV_OP_rd28( 2193,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xeeca2f3b, 0x80800000 );
  TEST_FPRED_VV_OP_128( 2194,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xeeca2f3b, 0x80800000 );
  TEST_FPRED_VV_OP_rd29( 2195,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xf14f95f4, 0x00800000 );
  TEST_FPRED_VV_OP_129( 2196,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xf14f95f4, 0x00800000 );
  TEST_FPRED_VV_OP_rd30( 2197,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x63b7a76e, 0x807FFFFF );
  TEST_FPRED_VV_OP_130( 2198,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x63b7a76e, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd31( 2199,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xbcc9ab43, 0x007FFFFF );
  TEST_FPRED_VV_OP_131( 2200,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xbcc9ab43, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd1( 2201,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xdfeeae1d, 0x807FFFFE );
  TEST_FPRED_VV_OP_11( 2202,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xdfeeae1d, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd2( 2203,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x65eed45a, 0x00000002 );
  TEST_FPRED_VV_OP_12( 2204,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x65eed45a, 0x00000002 );
  TEST_FPRED_VV_OP_rd3( 2205,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xc8e4911e, 0x80000001 );
  TEST_FPRED_VV_OP_13( 2206,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xc8e4911e, 0x80000001 );
  TEST_FPRED_VV_OP_rd4( 2207,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x61bee6e3, 0x00000001 );
  TEST_FPRED_VV_OP_14( 2208,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x61bee6e3, 0x00000001 );
  TEST_FPRED_VV_OP_rd5( 2209,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x5a888b0b, 0x80000000 );
  TEST_FPRED_VV_OP_15( 2210,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x5a888b0b, 0x80000000 );
  TEST_FPRED_VV_OP_rd6( 2211,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xe8b9b2cd, 0x00000000 );
  TEST_FPRED_VV_OP_16( 2212,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xe8b9b2cd, 0x00000000 );
  TEST_FPRED_VV_OP_rd7( 2213,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x1bc3cb1f, 0xBF800000 );
  TEST_FPRED_VV_OP_17( 2214,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x1bc3cb1f, 0xBF800000 );
  TEST_FPRED_VV_OP_rd9( 2215,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x94518e9b, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_19( 2216,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x94518e9b, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd10( 2217,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x89b67375, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_110( 2218,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x89b67375, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd11( 2219,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xd4bea2c1, 0x80855555 );
  TEST_FPRED_VV_OP_111( 2220,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xd4bea2c1, 0x80855555 );
  TEST_FPRED_VV_OP_rd12( 2221,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xd7ac95f6, 0x00800001 );
  TEST_FPRED_VV_OP_112( 2222,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xd7ac95f6, 0x00800001 );
  TEST_FPRED_VV_OP_rd13( 2223,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xb4fe5b7c, 0x80800000 );
  TEST_FPRED_VV_OP_113( 2224,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xb4fe5b7c, 0x80800000 );
  TEST_FPRED_VV_OP_rd14( 2225,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x59dac688, 0x00800000 );
  TEST_FPRED_VV_OP_114( 2226,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x59dac688, 0x00800000 );
  TEST_FPRED_VV_OP_rd15( 2227,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0xd864b555, 0x807FFFFF );
  TEST_FPRED_VV_OP_115( 2228,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0xd864b555, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd17( 2229,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x8debdd64, 0x807FFFFE );
  TEST_FPRED_VV_OP_117( 2230,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x8debdd64, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd18( 2231,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x78f0b6be, 0x00000002 );
  TEST_FPRED_VV_OP_118( 2232,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x78f0b6be, 0x00000002 );
  TEST_FPRED_VV_OP_rd19( 2233,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xea5bd793, 0x80000001 );
  TEST_FPRED_VV_OP_119( 2234,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xea5bd793, 0x80000001 );
  TEST_FPRED_VV_OP_rd20( 2235,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x837bb1b9, 0x00000001 );
  TEST_FPRED_VV_OP_120( 2236,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x837bb1b9, 0x00000001 );
  TEST_FPRED_VV_OP_rd21( 2237,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xb8879ad6, 0x80000000 );
  TEST_FPRED_VV_OP_121( 2238,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xb8879ad6, 0x80000000 );
  TEST_FPRED_VV_OP_rd22( 2239,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xa62bf1a5, 0x00000000 );
  TEST_FPRED_VV_OP_122( 2240,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xa62bf1a5, 0x00000000 );
  TEST_FPRED_VV_OP_rd23( 2241,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x27457e6e, 0xBF800000 );
  TEST_FPRED_VV_OP_123( 2242,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x27457e6e, 0xBF800000 );
  TEST_FPRED_VV_OP_rd25( 2243,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xbc0e79b9, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_125( 2244,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xbc0e79b9, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd26( 2245,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x72ae0ac9, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_126( 2246,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x72ae0ac9, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd27( 2247,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xe29df404, 0x80855555 );
  TEST_FPRED_VV_OP_127( 2248,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0xe29df404, 0x80855555 );
  TEST_FPRED_VV_OP_rd28( 2249,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xb117f9b7, 0x00800001 );
  TEST_FPRED_VV_OP_128( 2250,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xb117f9b7, 0x00800001 );
  TEST_FPRED_VV_OP_rd29( 2251,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xf0abe8ea, 0x80800000 );
  TEST_FPRED_VV_OP_129( 2252,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0xf0abe8ea, 0x80800000 );
  TEST_FPRED_VV_OP_rd30( 2253,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x5b82f781, 0x00800000 );
  TEST_FPRED_VV_OP_130( 2254,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x5b82f781, 0x00800000 );
  TEST_FPRED_VV_OP_rd31( 2255,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x3aba4a26, 0x807FFFFF );
  TEST_FPRED_VV_OP_131( 2256,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x3aba4a26, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd1( 2257,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xefea5e67, 0x007FFFFF );
  TEST_FPRED_VV_OP_11( 2258,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xefea5e67, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd2( 2259,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x688be24b, 0x807FFFFE );
  TEST_FPRED_VV_OP_12( 2260,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x688be24b, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd3( 2261,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x21ad1582, 0x00000002 );
  TEST_FPRED_VV_OP_13( 2262,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x21ad1582, 0x00000002 );
  TEST_FPRED_VV_OP_rd4( 2263,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xa294f0b8, 0x80000001 );
  TEST_FPRED_VV_OP_14( 2264,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xa294f0b8, 0x80000001 );
  TEST_FPRED_VV_OP_rd5( 2265,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xa6440f97, 0x00000001 );
  TEST_FPRED_VV_OP_15( 2266,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xa6440f97, 0x00000001 );
  TEST_FPRED_VV_OP_rd6( 2267,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x5ea2d0b9, 0x80000000 );
  TEST_FPRED_VV_OP_16( 2268,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x5ea2d0b9, 0x80000000 );
  TEST_FPRED_VV_OP_rd7( 2269,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xbdc0571c, 0x00000000 );
  TEST_FPRED_VV_OP_17( 2270,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xbdc0571c, 0x00000000 );
  TEST_FPRED_VV_OP_rd9( 2271,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x0c377326, 0x3F800000 );
  TEST_FPRED_VV_OP_19( 2272,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x0c377326, 0x3F800000 );
  TEST_FPRED_VV_OP_rd10( 2273,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x533c8dfe, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_110( 2274,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x533c8dfe, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd11( 2275,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xe21ef6aa, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_111( 2276,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xe21ef6aa, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd12( 2277,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x919fa67d, 0x80855555 );
  TEST_FPRED_VV_OP_112( 2278,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x919fa67d, 0x80855555 );
  TEST_FPRED_VV_OP_rd13( 2279,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x873f1671, 0x00800001 );
  TEST_FPRED_VV_OP_113( 2280,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x873f1671, 0x00800001 );
  TEST_FPRED_VV_OP_rd14( 2281,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x2a9f2e23, 0x80800000 );
  TEST_FPRED_VV_OP_114( 2282,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x2a9f2e23, 0x80800000 );
  TEST_FPRED_VV_OP_rd15( 2283,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xbe22927b, 0x00800000 );
  TEST_FPRED_VV_OP_115( 2284,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0xbe22927b, 0x00800000 );
  TEST_FPRED_VV_OP_rd17( 2285,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x75ce1220, 0x007FFFFF );
  TEST_FPRED_VV_OP_117( 2286,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x75ce1220, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd18( 2287,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x4447a68d, 0x807FFFFE );
  TEST_FPRED_VV_OP_118( 2288,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x4447a68d, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd19( 2289,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x3f78b414, 0x00000002 );
  TEST_FPRED_VV_OP_119( 2290,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x3f78b414, 0x00000002 );
  TEST_FPRED_VV_OP_rd20( 2291,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xbd72133e, 0x80000001 );
  TEST_FPRED_VV_OP_120( 2292,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xbd72133e, 0x80000001 );
  TEST_FPRED_VV_OP_rd21( 2293,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x0cee6997, 0x00000001 );
  TEST_FPRED_VV_OP_121( 2294,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x0cee6997, 0x00000001 );
  TEST_FPRED_VV_OP_rd22( 2295,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x1a1b49f6, 0x80000000 );
  TEST_FPRED_VV_OP_122( 2296,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x1a1b49f6, 0x80000000 );
  TEST_FPRED_VV_OP_rd23( 2297,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x74cefef0, 0x00000000 );
  TEST_FPRED_VV_OP_123( 2298,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x74cefef0, 0x00000000 );
  TEST_FPRED_VV_OP_rd25( 2299,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x4b329421, 0x3F800000 );
  TEST_FPRED_VV_OP_125( 2300,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x4b329421, 0x3F800000 );
  TEST_FPRED_VV_OP_rd26( 2301,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x3a31ab60, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_126( 2302,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x3a31ab60, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd27( 2303,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xe953c01f, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_127( 2304,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xe953c01f, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd28( 2305,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x0f147ddf, 0x80855555 );
  TEST_FPRED_VV_OP_128( 2306,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x0f147ddf, 0x80855555 );
  TEST_FPRED_VV_OP_rd29( 2307,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xcf457330, 0x00800001 );
  TEST_FPRED_VV_OP_129( 2308,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0xcf457330, 0x00800001 );
  TEST_FPRED_VV_OP_rd30( 2309,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x19f95636, 0x80800000 );
  TEST_FPRED_VV_OP_130( 2310,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x19f95636, 0x80800000 );
  TEST_FPRED_VV_OP_rd31( 2311,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x30610d6c, 0x00800000 );
  TEST_FPRED_VV_OP_131( 2312,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x30610d6c, 0x00800000 );
  TEST_FPRED_VV_OP_rd1( 2313,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x7cfe6ad7, 0x807FFFFF );
  TEST_FPRED_VV_OP_11( 2314,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x7cfe6ad7, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd2( 2315,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x51a59b6f, 0x007FFFFF );
  TEST_FPRED_VV_OP_12( 2316,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x51a59b6f, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd3( 2317,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xbe384770, 0x807FFFFE );
  TEST_FPRED_VV_OP_13( 2318,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0xbe384770, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd4( 2319,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x336dc41b, 0x00000002 );
  TEST_FPRED_VV_OP_14( 2320,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x336dc41b, 0x00000002 );
  TEST_FPRED_VV_OP_rd5( 2321,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xa87f271a, 0x80000001 );
  TEST_FPRED_VV_OP_15( 2322,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xa87f271a, 0x80000001 );
  TEST_FPRED_VV_OP_rd6( 2323,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x6c9121e1, 0x00000001 );
  TEST_FPRED_VV_OP_16( 2324,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x6c9121e1, 0x00000001 );
  TEST_FPRED_VV_OP_rd7( 2325,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xa73c95c4, 0x80000000 );
  TEST_FPRED_VV_OP_17( 2326,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xa73c95c4, 0x80000000 );
  TEST_FPRED_VV_OP_rd9( 2327,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x46f5a171, 0xBF800000 );
  TEST_FPRED_VV_OP_19( 2328,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x46f5a171, 0xBF800000 );
  TEST_FPRED_VV_OP_rd10( 2329,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x251c1e00, 0x3F800000 );
  TEST_FPRED_VV_OP_110( 2330,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x251c1e00, 0x3F800000 );
  TEST_FPRED_VV_OP_rd11( 2331,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xac7c3863, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_111( 2332,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xac7c3863, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd12( 2333,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x8f02a18c, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_112( 2334,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x8f02a18c, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd13( 2335,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x91fd21c8, 0x80855555 );
  TEST_FPRED_VV_OP_113( 2336,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x91fd21c8, 0x80855555 );
  TEST_FPRED_VV_OP_rd14( 2337,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x4453aa24, 0x00800001 );
  TEST_FPRED_VV_OP_114( 2338,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x4453aa24, 0x00800001 );
  TEST_FPRED_VV_OP_rd15( 2339,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x8cc4c438, 0x80800000 );
  TEST_FPRED_VV_OP_115( 2340,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x8cc4c438, 0x80800000 );
  TEST_FPRED_VV_OP_rd17( 2341,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x767634b8, 0x807FFFFF );
  TEST_FPRED_VV_OP_117( 2342,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x767634b8, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd18( 2343,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x177434a8, 0x007FFFFF );
  TEST_FPRED_VV_OP_118( 2344,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0x177434a8, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd19( 2345,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x4602bb95, 0x807FFFFE );
  TEST_FPRED_VV_OP_119( 2346,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x4602bb95, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd20( 2347,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xbb2a44f6, 0x00000002 );
  TEST_FPRED_VV_OP_120( 2348,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xbb2a44f6, 0x00000002 );
  TEST_FPRED_VV_OP_rd21( 2349,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xe1cd9683, 0x80000001 );
  TEST_FPRED_VV_OP_121( 2350,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xe1cd9683, 0x80000001 );
  TEST_FPRED_VV_OP_rd22( 2351,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xc649858c, 0x00000001 );
  TEST_FPRED_VV_OP_122( 2352,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xc649858c, 0x00000001 );
  TEST_FPRED_VV_OP_rd23( 2353,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x834794d4, 0x80000000 );
  TEST_FPRED_VV_OP_123( 2354,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x834794d4, 0x80000000 );
  TEST_FPRED_VV_OP_rd25( 2355,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x3bbf119a, 0xBF800000 );
  TEST_FPRED_VV_OP_125( 2356,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x3bbf119a, 0xBF800000 );
  TEST_FPRED_VV_OP_rd26( 2357,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x0aeac265, 0x3F800000 );
  TEST_FPRED_VV_OP_126( 2358,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x0aeac265, 0x3F800000 );
  TEST_FPRED_VV_OP_rd27( 2359,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x41649ded, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_127( 2360,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0x41649ded, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd28( 2361,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x54d909fd, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_128( 2362,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0x54d909fd, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd29( 2363,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x82c44d2b, 0x80855555 );
  TEST_FPRED_VV_OP_129( 2364,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x82c44d2b, 0x80855555 );
  TEST_FPRED_VV_OP_rd30( 2365,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x85371e54, 0x00800001 );
  TEST_FPRED_VV_OP_130( 2366,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x85371e54, 0x00800001 );
  TEST_FPRED_VV_OP_rd31( 2367,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x91074282, 0x80800000 );
  TEST_FPRED_VV_OP_131( 2368,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080800000, 0x91074282, 0x80800000 );
  TEST_FPRED_VV_OP_rd1( 2369,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x61ae58b5, 0x00800000 );
  TEST_FPRED_VV_OP_11( 2370,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x61ae58b5, 0x00800000 );
  TEST_FPRED_VV_OP_rd2( 2371,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0xc611ba41, 0x807FFFFF );
  TEST_FPRED_VV_OP_12( 2372,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0xc611ba41, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd3( 2373,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xd0fb779f, 0x007FFFFF );
  TEST_FPRED_VV_OP_13( 2374,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xd0fb779f, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd4( 2375,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x999f8b26, 0x807FFFFE );
  TEST_FPRED_VV_OP_14( 2376,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x999f8b26, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd5( 2377,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xa113808e, 0x00000002 );
  TEST_FPRED_VV_OP_15( 2378,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xa113808e, 0x00000002 );
  TEST_FPRED_VV_OP_rd6( 2379,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x675a54fd, 0x80000001 );
  TEST_FPRED_VV_OP_16( 2380,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0x675a54fd, 0x80000001 );
  TEST_FPRED_VV_OP_rd7( 2381,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8864b1ab, 0x00000001 );
  TEST_FPRED_VV_OP_17( 2382,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8864b1ab, 0x00000001 );
  TEST_FPRED_VV_OP_rd9( 2383,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xecdb94a3, 0x00000000 );
  TEST_FPRED_VV_OP_19( 2384,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xecdb94a3, 0x00000000 );
  TEST_FPRED_VV_OP_rd10( 2385,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x50fb73b8, 0xBF800000 );
  TEST_FPRED_VV_OP_110( 2386,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf800000, 0x50fb73b8, 0xBF800000 );
  TEST_FPRED_VV_OP_rd11( 2387,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x1566303a, 0x3F800000 );
  TEST_FPRED_VV_OP_111( 2388,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f800000, 0x1566303a, 0x3F800000 );
  TEST_FPRED_VV_OP_rd12( 2389,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xf77c3228, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_112( 2390,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xf77c3228, 0xFF7FFFFF );
  TEST_FPRED_VV_OP_rd13( 2391,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xde7da192, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_113( 2392,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f7fffff, 0xde7da192, 0x7F7FFFFF );
  TEST_FPRED_VV_OP_rd14( 2393,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x1a2510c7, 0x80855555 );
  TEST_FPRED_VV_OP_114( 2394,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080855555, 0x1a2510c7, 0x80855555 );
  TEST_FPRED_VV_OP_rd15( 2395,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x8c4f914e, 0x00800001 );
  TEST_FPRED_VV_OP_115( 2396,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001, 0x8c4f914e, 0x00800001 );
  TEST_FPRED_VV_OP_rd17( 2397,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x269ca43a, 0x00800000 );
  TEST_FPRED_VV_OP_117( 2398,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x269ca43a, 0x00800000 );
  TEST_FPRED_VV_OP_rd18( 2399,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x112bfa6f, 0x807FFFFF );
  TEST_FPRED_VV_OP_118( 2400,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807fffff, 0x112bfa6f, 0x807FFFFF );
  TEST_FPRED_VV_OP_rd19( 2401,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xe6388e69, 0x007FFFFF );
  TEST_FPRED_VV_OP_119( 2402,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffff, 0xe6388e69, 0x007FFFFF );
  TEST_FPRED_VV_OP_rd20( 2403,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x9f9c2d14, 0x807FFFFE );
  TEST_FPRED_VV_OP_120( 2404,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000807ffffe, 0x9f9c2d14, 0x807FFFFE );
  TEST_FPRED_VV_OP_rd21( 2405,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x85d763a6, 0x00000002 );
  TEST_FPRED_VV_OP_121( 2406,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x85d763a6, 0x00000002 );
  TEST_FPRED_VV_OP_rd22( 2407,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xac497736, 0x80000001 );
  TEST_FPRED_VV_OP_122( 2408,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000001, 0xac497736, 0x80000001 );
  TEST_FPRED_VV_OP_rd23( 2409,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8a462146, 0x00000001 );
  TEST_FPRED_VV_OP_123( 2410,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8a462146, 0x00000001 );
  TEST_FPRED_VV_OP_rd25( 2411,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062d5fe2f, 0xab04b597, 0x62d5fe2f );
  TEST_FPRED_VV_OP_125( 2412,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062d5fe2f, 0xab04b597, 0x62d5fe2f );
  TEST_FPRED_VV_OP_rd26( 2413,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbfcaf3, 0xd5173d3b, 0xbbbfcaf3 );
  TEST_FPRED_VV_OP_126( 2414,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbfcaf3, 0xd5173d3b, 0xbbbfcaf3 );
  TEST_FPRED_VV_OP_rd27( 2415,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ad27026, 0x1c954c88, 0x8ad27026 );
  TEST_FPRED_VV_OP_127( 2416,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008ad27026, 0x1c954c88, 0x8ad27026 );
  TEST_FPRED_VV_OP_rd28( 2417,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000599ec422, 0xae8f2f8a, 0x599ec422 );
  TEST_FPRED_VV_OP_128( 2418,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000599ec422, 0xae8f2f8a, 0x599ec422 );
  TEST_FPRED_VV_OP_rd29( 2419,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0e57884, 0xe18cd6d3, 0xd0e57884 );
  TEST_FPRED_VV_OP_129( 2420,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0e57884, 0xe18cd6d3, 0xd0e57884 );
  TEST_FPRED_VV_OP_rd30( 2421,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000315858ad, 0xe7128ead, 0x315858ad );
  TEST_FPRED_VV_OP_130( 2422,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000315858ad, 0xe7128ead, 0x315858ad );
  TEST_FPRED_VV_OP_rd31( 2423,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb79a22b, 0x430c45f2, 0xbb79a22b );
  TEST_FPRED_VV_OP_131( 2424,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb79a22b, 0x430c45f2, 0xbb79a22b );
  TEST_FPRED_VV_OP_rd1( 2425,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080c7fec6, 0x1fece821, 0x80c7fec6 );
  TEST_FPRED_VV_OP_11( 2426,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080c7fec6, 0x1fece821, 0x80c7fec6 );
  TEST_FPRED_VV_OP_rd2( 2427,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8a4eaba, 0xdbe8db2f, 0xb8a4eaba );
  TEST_FPRED_VV_OP_12( 2428,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8a4eaba, 0xdbe8db2f, 0xb8a4eaba );
  TEST_FPRED_VV_OP_rd3( 2429,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000893e4f51, 0x9deac411, 0x893e4f51 );
  TEST_FPRED_VV_OP_13( 2430,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000893e4f51, 0x9deac411, 0x893e4f51 );
  TEST_FPRED_VV_OP_rd4( 2431,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a204c639, 0xd578536b, 0xa204c639 );
  TEST_FPRED_VV_OP_14( 2432,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a204c639, 0xd578536b, 0xa204c639 );
  TEST_FPRED_VV_OP_rd5( 2433,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092d4ba0, 0x5a2112c5, 0x092d4ba0 );
  TEST_FPRED_VV_OP_15( 2434,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092d4ba0, 0x5a2112c5, 0x092d4ba0 );
  TEST_FPRED_VV_OP_rd6( 2435,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008787ab14, 0x33755502, 0x8787ab14 );
  TEST_FPRED_VV_OP_16( 2436,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008787ab14, 0x33755502, 0x8787ab14 );
  TEST_FPRED_VV_OP_rd7( 2437,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061ce2443, 0x41f512c8, 0x61ce2443 );
  TEST_FPRED_VV_OP_17( 2438,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061ce2443, 0x41f512c8, 0x61ce2443 );
  TEST_FPRED_VV_OP_rd9( 2439,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a519200, 0x30e95eba, 0x2a519200 );
  TEST_FPRED_VV_OP_19( 2440,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a519200, 0x30e95eba, 0x2a519200 );
  TEST_FPRED_VV_OP_rd10( 2441,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000156dd6bc, 0xdc43d0d7, 0x156dd6bc );
  TEST_FPRED_VV_OP_110( 2442,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000156dd6bc, 0xdc43d0d7, 0x156dd6bc );
  TEST_FPRED_VV_OP_rd11( 2443,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000035ceb876, 0xce250988, 0x35ceb876 );
  TEST_FPRED_VV_OP_111( 2444,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000035ceb876, 0xce250988, 0x35ceb876 );
  TEST_FPRED_VV_OP_rd12( 2445,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000766125a9, 0x546ef0b9, 0x766125a9 );
  TEST_FPRED_VV_OP_112( 2446,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000766125a9, 0x546ef0b9, 0x766125a9 );
  TEST_FPRED_VV_OP_rd13( 2447,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005269d43, 0x7c69a228, 0x05269d43 );
  TEST_FPRED_VV_OP_113( 2448,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005269d43, 0x7c69a228, 0x05269d43 );
  TEST_FPRED_VV_OP_rd14( 2449,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001591c3bb, 0x540da0bc, 0x1591c3bb );
  TEST_FPRED_VV_OP_114( 2450,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001591c3bb, 0x540da0bc, 0x1591c3bb );
  TEST_FPRED_VV_OP_rd15( 2451,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f19aaaa, 0xb917bde6, 0x7f19aaaa );
  TEST_FPRED_VV_OP_115( 2452,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f19aaaa, 0xb917bde6, 0x7f19aaaa );
  TEST_FPRED_VV_OP_rd17( 2453,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000098c5df64, 0x5c51c72f, 0x98c5df64 );
  TEST_FPRED_VV_OP_117( 2454,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000098c5df64, 0x5c51c72f, 0x98c5df64 );
  TEST_FPRED_VV_OP_rd18( 2455,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058a4f5f8, 0xe66cd16e, 0x58a4f5f8 );
  TEST_FPRED_VV_OP_118( 2456,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058a4f5f8, 0xe66cd16e, 0x58a4f5f8 );
  TEST_FPRED_VV_OP_rd19( 2457,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b5d4991, 0xf8e67fb0, 0x1b5d4991 );
  TEST_FPRED_VV_OP_119( 2458,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b5d4991, 0xf8e67fb0, 0x1b5d4991 );
  TEST_FPRED_VV_OP_rd20( 2459,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002046b89, 0x45b5c5f1, 0x02046b89 );
  TEST_FPRED_VV_OP_120( 2460,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002046b89, 0x45b5c5f1, 0x02046b89 );
  TEST_FPRED_VV_OP_rd21( 2461,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f4223dde, 0x6bd9ba9a, 0xf4223dde );
  TEST_FPRED_VV_OP_121( 2462,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f4223dde, 0x6bd9ba9a, 0xf4223dde );
  TEST_FPRED_VV_OP_rd22( 2463,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf05164e, 0x9c1e8667, 0xcf05164e );
  TEST_FPRED_VV_OP_122( 2464,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf05164e, 0x9c1e8667, 0xcf05164e );
  TEST_FPRED_VV_OP_rd23( 2465,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa67f476, 0x8a2c7d45, 0xaa67f476 );
  TEST_FPRED_VV_OP_123( 2466,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aa67f476, 0x8a2c7d45, 0xaa67f476 );
  TEST_FPRED_VV_OP_rd25( 2467,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f51944a, 0xcc06f22d, 0x8f51944a );
  TEST_FPRED_VV_OP_125( 2468,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f51944a, 0xcc06f22d, 0x8f51944a );
  TEST_FPRED_VV_OP_rd26( 2469,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001d283cd, 0x6ac84f04, 0x01d283cd );
  TEST_FPRED_VV_OP_126( 2470,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001d283cd, 0x6ac84f04, 0x01d283cd );
  TEST_FPRED_VV_OP_rd27( 2471,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019ea57fc, 0x581f3afc, 0x19ea57fc );
  TEST_FPRED_VV_OP_127( 2472,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019ea57fc, 0x581f3afc, 0x19ea57fc );
  TEST_FPRED_VV_OP_rd28( 2473,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e246d9c3, 0x6122b26e, 0xe246d9c3 );
  TEST_FPRED_VV_OP_128( 2474,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e246d9c3, 0x6122b26e, 0xe246d9c3 );
  TEST_FPRED_VV_OP_rd29( 2475,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3ede2cf, 0xff4914a8, 0xb3ede2cf );
  TEST_FPRED_VV_OP_129( 2476,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3ede2cf, 0xff4914a8, 0xb3ede2cf );
  TEST_FPRED_VV_OP_rd30( 2477,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000661a98bb, 0xf0a80a4a, 0x661a98bb );
  TEST_FPRED_VV_OP_130( 2478,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000661a98bb, 0xf0a80a4a, 0x661a98bb );
  TEST_FPRED_VV_OP_rd31( 2479,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2e52100, 0x44577dfa, 0xd2e52100 );
  TEST_FPRED_VV_OP_131( 2480,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2e52100, 0x44577dfa, 0xd2e52100 );
  TEST_FPRED_VV_OP_rd1( 2481,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b54c779c, 0xe31172b1, 0xb54c779c );
  TEST_FPRED_VV_OP_11( 2482,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b54c779c, 0xe31172b1, 0xb54c779c );
  TEST_FPRED_VV_OP_rd2( 2483,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008b890ead, 0x30b00f6c, 0x8b890ead );
  TEST_FPRED_VV_OP_12( 2484,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008b890ead, 0x30b00f6c, 0x8b890ead );
  TEST_FPRED_VV_OP_rd3( 2485,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f6d8ebb, 0x9cd4367e, 0x6f6d8ebb );
  TEST_FPRED_VV_OP_13( 2486,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006f6d8ebb, 0x9cd4367e, 0x6f6d8ebb );
  TEST_FPRED_VV_OP_rd4( 2487,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000701a72e3, 0x53266571, 0x701a72e3 );
  TEST_FPRED_VV_OP_14( 2488,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000701a72e3, 0x53266571, 0x701a72e3 );
  TEST_FPRED_VV_OP_rd5( 2489,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018854a53, 0x39a2b9a9, 0x18854a53 );
  TEST_FPRED_VV_OP_15( 2490,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018854a53, 0x39a2b9a9, 0x18854a53 );
  TEST_FPRED_VV_OP_rd6( 2491,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d8b646c3, 0xf628feb7, 0xd8b646c3 );
  TEST_FPRED_VV_OP_16( 2492,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d8b646c3, 0xf628feb7, 0xd8b646c3 );
  TEST_FPRED_VV_OP_rd7( 2493,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a859a9b, 0x519a8397, 0x7a859a9b );
  TEST_FPRED_VV_OP_17( 2494,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a859a9b, 0x519a8397, 0x7a859a9b );
  TEST_FPRED_VV_OP_rd9( 2495,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006a49fdb6, 0xfe0b7d68, 0x6a49fdb6 );
  TEST_FPRED_VV_OP_19( 2496,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006a49fdb6, 0xfe0b7d68, 0x6a49fdb6 );
  TEST_FPRED_VV_OP_rd10( 2497,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e54c4797, 0xd2ec6f9d, 0xe54c4797 );
  TEST_FPRED_VV_OP_110( 2498,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e54c4797, 0xd2ec6f9d, 0xe54c4797 );
  TEST_FPRED_VV_OP_rd11( 2499,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a13e91a2, 0x7b9f0a06, 0xa13e91a2 );
  TEST_FPRED_VV_OP_111( 2500,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a13e91a2, 0x7b9f0a06, 0xa13e91a2 );
  TEST_FPRED_VV_OP_rd12( 2501,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056a16ea4, 0xe25828a9, 0x56a16ea4 );
  TEST_FPRED_VV_OP_112( 2502,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056a16ea4, 0xe25828a9, 0x56a16ea4 );
  TEST_FPRED_VV_OP_rd13( 2503,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008dc0e4ff, 0x6ff72e08, 0x8dc0e4ff );
  TEST_FPRED_VV_OP_113( 2504,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008dc0e4ff, 0x6ff72e08, 0x8dc0e4ff );
  TEST_FPRED_VV_OP_rd14( 2505,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000267eb8c3, 0xae72d34d, 0x267eb8c3 );
  TEST_FPRED_VV_OP_114( 2506,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000267eb8c3, 0xae72d34d, 0x267eb8c3 );
  TEST_FPRED_VV_OP_rd15( 2507,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcdd3109, 0xf61fde3e, 0xbcdd3109 );
  TEST_FPRED_VV_OP_115( 2508,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcdd3109, 0xf61fde3e, 0xbcdd3109 );
  TEST_FPRED_VV_OP_rd17( 2509,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c592af51, 0x3bb5e465, 0xc592af51 );
  TEST_FPRED_VV_OP_117( 2510,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c592af51, 0x3bb5e465, 0xc592af51 );
  TEST_FPRED_VV_OP_rd18( 2511,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000639952be, 0x89b4574b, 0x639952be );
  TEST_FPRED_VV_OP_118( 2512,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000639952be, 0x89b4574b, 0x639952be );
  TEST_FPRED_VV_OP_rd19( 2513,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ecc40d7, 0xae23f858, 0x5ecc40d7 );
  TEST_FPRED_VV_OP_119( 2514,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ecc40d7, 0xae23f858, 0x5ecc40d7 );
  TEST_FPRED_VV_OP_rd20( 2515,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e1872a, 0x32b4b342, 0x08e1872a );
  TEST_FPRED_VV_OP_120( 2516,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e1872a, 0x32b4b342, 0x08e1872a );
  TEST_FPRED_VV_OP_rd21( 2517,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000699b0430, 0x9c5034c7, 0x699b0430 );
  TEST_FPRED_VV_OP_121( 2518,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000699b0430, 0x9c5034c7, 0x699b0430 );
  TEST_FPRED_VV_OP_rd22( 2519,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000515deb63, 0x6129cabb, 0x515deb63 );
  TEST_FPRED_VV_OP_122( 2520,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000515deb63, 0x6129cabb, 0x515deb63 );
  TEST_FPRED_VV_OP_rd23( 2521,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055107f38, 0x9af4bc9a, 0x55107f38 );
  TEST_FPRED_VV_OP_123( 2522,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055107f38, 0x9af4bc9a, 0x55107f38 );
  TEST_FPRED_VV_OP_rd25( 2523,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009444a8cf, 0x7d485219, 0x9444a8cf );
  TEST_FPRED_VV_OP_125( 2524,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009444a8cf, 0x7d485219, 0x9444a8cf );
  TEST_FPRED_VV_OP_rd26( 2525,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b6f020e, 0x4a3b445a, 0x3b6f020e );
  TEST_FPRED_VV_OP_126( 2526,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b6f020e, 0x4a3b445a, 0x3b6f020e );
  TEST_FPRED_VV_OP_rd27( 2527,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d7a2c1a, 0x276f4a82, 0x3d7a2c1a );
  TEST_FPRED_VV_OP_127( 2528,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d7a2c1a, 0x276f4a82, 0x3d7a2c1a );
  TEST_FPRED_VV_OP_rd28( 2529,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e12d2042, 0xdd7bf9fc, 0xe12d2042 );
  TEST_FPRED_VV_OP_128( 2530,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e12d2042, 0xdd7bf9fc, 0xe12d2042 );
  TEST_FPRED_VV_OP_rd29( 2531,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ddc02bcf, 0x6797c5aa, 0xddc02bcf );
  TEST_FPRED_VV_OP_129( 2532,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ddc02bcf, 0x6797c5aa, 0xddc02bcf );
  TEST_FPRED_VV_OP_rd30( 2533,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d793ec85, 0x9c739bc0, 0xd793ec85 );
  TEST_FPRED_VV_OP_130( 2534,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d793ec85, 0x9c739bc0, 0xd793ec85 );
  TEST_FPRED_VV_OP_rd31( 2535,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089179c2a, 0x37e6587a, 0x89179c2a );
  TEST_FPRED_VV_OP_131( 2536,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089179c2a, 0x37e6587a, 0x89179c2a );
  TEST_FPRED_VV_OP_rd1( 2537,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b5bb683, 0x292fa2d6, 0x7b5bb683 );
  TEST_FPRED_VV_OP_11( 2538,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007b5bb683, 0x292fa2d6, 0x7b5bb683 );
  TEST_FPRED_VV_OP_rd2( 2539,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3060550, 0x57b6f48d, 0xf3060550 );
  TEST_FPRED_VV_OP_12( 2540,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3060550, 0x57b6f48d, 0xf3060550 );
  TEST_FPRED_VV_OP_rd3( 2541,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eb6622a3, 0xa87ebd39, 0xeb6622a3 );
  TEST_FPRED_VV_OP_13( 2542,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eb6622a3, 0xa87ebd39, 0xeb6622a3 );
  TEST_FPRED_VV_OP_rd4( 2543,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000370df4fd, 0xda3b9803, 0x370df4fd );
  TEST_FPRED_VV_OP_14( 2544,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000370df4fd, 0xda3b9803, 0x370df4fd );
  TEST_FPRED_VV_OP_rd5( 2545,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7026d7d, 0xcf98db80, 0xe7026d7d );
  TEST_FPRED_VV_OP_15( 2546,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7026d7d, 0xcf98db80, 0xe7026d7d );
  TEST_FPRED_VV_OP_rd6( 2547,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a7ef2bad, 0xa1993841, 0xa7ef2bad );
  TEST_FPRED_VV_OP_16( 2548,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a7ef2bad, 0xa1993841, 0xa7ef2bad );
  TEST_FPRED_VV_OP_rd7( 2549,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d994fff, 0x214c72b3, 0x5d994fff );
  TEST_FPRED_VV_OP_17( 2550,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d994fff, 0x214c72b3, 0x5d994fff );
  TEST_FPRED_VV_OP_rd9( 2551,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072d35639, 0x3d7777d1, 0x72d35639 );
  TEST_FPRED_VV_OP_19( 2552,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072d35639, 0x3d7777d1, 0x72d35639 );
  TEST_FPRED_VV_OP_rd10( 2553,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027c70109, 0x579e0114, 0x27c70109 );
  TEST_FPRED_VV_OP_110( 2554,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027c70109, 0x579e0114, 0x27c70109 );
  TEST_FPRED_VV_OP_rd11( 2555,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f283b49c, 0x13d30cfc, 0xf283b49c );
  TEST_FPRED_VV_OP_111( 2556,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f283b49c, 0x13d30cfc, 0xf283b49c );
  TEST_FPRED_VV_OP_rd12( 2557,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003c70fd0b, 0x8a19a62b, 0x3c70fd0b );
  TEST_FPRED_VV_OP_112( 2558,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003c70fd0b, 0x8a19a62b, 0x3c70fd0b );
  TEST_FPRED_VV_OP_rd13( 2559,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001f46077b, 0x07041e7d, 0x1f46077b );
  TEST_FPRED_VV_OP_113( 2560,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001f46077b, 0x07041e7d, 0x1f46077b );
  TEST_FPRED_VV_OP_rd14( 2561,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c626d7b5, 0x3b192289, 0xc626d7b5 );
  TEST_FPRED_VV_OP_114( 2562,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c626d7b5, 0x3b192289, 0xc626d7b5 );
  TEST_FPRED_VV_OP_rd15( 2563,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d8664806, 0xb8f72c52, 0xd8664806 );
  TEST_FPRED_VV_OP_115( 2564,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d8664806, 0xb8f72c52, 0xd8664806 );
  TEST_FPRED_VV_OP_rd17( 2565,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069155a81, 0x2eadf0ac, 0x69155a81 );
  TEST_FPRED_VV_OP_117( 2566,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069155a81, 0x2eadf0ac, 0x69155a81 );
  TEST_FPRED_VV_OP_rd18( 2567,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e78f6b83, 0xdbfec094, 0xe78f6b83 );
  TEST_FPRED_VV_OP_118( 2568,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e78f6b83, 0xdbfec094, 0xe78f6b83 );
  TEST_FPRED_VV_OP_rd19( 2569,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009aba564b, 0x8c1ae516, 0x9aba564b );
  TEST_FPRED_VV_OP_119( 2570,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009aba564b, 0x8c1ae516, 0x9aba564b );
  TEST_FPRED_VV_OP_rd20( 2571,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003616aeda, 0xbb97f344, 0x3616aeda );
  TEST_FPRED_VV_OP_120( 2572,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003616aeda, 0xbb97f344, 0x3616aeda );
  TEST_FPRED_VV_OP_rd21( 2573,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b6b43b38, 0x2d614a74, 0xb6b43b38 );
  TEST_FPRED_VV_OP_121( 2574,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b6b43b38, 0x2d614a74, 0xb6b43b38 );
  TEST_FPRED_VV_OP_rd22( 2575,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048363fc9, 0xdbb7bc69, 0x48363fc9 );
  TEST_FPRED_VV_OP_122( 2576,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048363fc9, 0xdbb7bc69, 0x48363fc9 );
  TEST_FPRED_VV_OP_rd23( 2577,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018fd8be4, 0x75160c80, 0x18fd8be4 );
  TEST_FPRED_VV_OP_123( 2578,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018fd8be4, 0x75160c80, 0x18fd8be4 );
  TEST_FPRED_VV_OP_rd25( 2579,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019e51db5, 0xb3301eb1, 0x19e51db5 );
  TEST_FPRED_VV_OP_125( 2580,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019e51db5, 0xb3301eb1, 0x19e51db5 );
  TEST_FPRED_VV_OP_rd26( 2581,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e0c53c63, 0x513b24cd, 0xe0c53c63 );
  TEST_FPRED_VV_OP_126( 2582,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e0c53c63, 0x513b24cd, 0xe0c53c63 );
  TEST_FPRED_VV_OP_rd27( 2583,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000192352ad, 0xd2d18754, 0x192352ad );
  TEST_FPRED_VV_OP_127( 2584,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000192352ad, 0xd2d18754, 0x192352ad );
  TEST_FPRED_VV_OP_rd28( 2585,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005639134a, 0x0fccea6a, 0x5639134a );
  TEST_FPRED_VV_OP_128( 2586,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005639134a, 0x0fccea6a, 0x5639134a );
  TEST_FPRED_VV_OP_rd29( 2587,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b3c24ec, 0xb4e15b15, 0x3b3c24ec );
  TEST_FPRED_VV_OP_129( 2588,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003b3c24ec, 0xb4e15b15, 0x3b3c24ec );
  TEST_FPRED_VV_OP_rd30( 2589,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008376196a, 0xb546b05b, 0x8376196a );
  TEST_FPRED_VV_OP_130( 2590,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008376196a, 0xb546b05b, 0x8376196a );
  TEST_FPRED_VV_OP_rd31( 2591,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000024fcba35, 0x0f952852, 0x24fcba35 );
  TEST_FPRED_VV_OP_131( 2592,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000024fcba35, 0x0f952852, 0x24fcba35 );
  TEST_FPRED_VV_OP_rd1( 2593,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002cd12f68, 0x7dbe9d89, 0x2cd12f68 );
  TEST_FPRED_VV_OP_11( 2594,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002cd12f68, 0x7dbe9d89, 0x2cd12f68 );
  TEST_FPRED_VV_OP_rd2( 2595,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b91a296, 0xf8791ac8, 0x5b91a296 );
  TEST_FPRED_VV_OP_12( 2596,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b91a296, 0xf8791ac8, 0x5b91a296 );
  TEST_FPRED_VV_OP_rd3( 2597,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9edbe9, 0xd924a386, 0x0a9edbe9 );
  TEST_FPRED_VV_OP_13( 2598,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a9edbe9, 0xd924a386, 0x0a9edbe9 );
  TEST_FPRED_VV_OP_rd4( 2599,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bc4fb8ab, 0xdf5f99f4, 0xbc4fb8ab );
  TEST_FPRED_VV_OP_14( 2600,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bc4fb8ab, 0xdf5f99f4, 0xbc4fb8ab );
  TEST_FPRED_VV_OP_rd5( 2601,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000068714601, 0x6618d504, 0x68714601 );
  TEST_FPRED_VV_OP_15( 2602,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000068714601, 0x6618d504, 0x68714601 );
  TEST_FPRED_VV_OP_rd6( 2603,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f6077257, 0x8849a498, 0xf6077257 );
  TEST_FPRED_VV_OP_16( 2604,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f6077257, 0x8849a498, 0xf6077257 );
  TEST_FPRED_VV_OP_rd7( 2605,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006baa10f2, 0xf2961261, 0x6baa10f2 );
  TEST_FPRED_VV_OP_17( 2606,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006baa10f2, 0xf2961261, 0x6baa10f2 );
  TEST_FPRED_VV_OP_rd9( 2607,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009d9d1deb, 0xd9d90f64, 0x9d9d1deb );
  TEST_FPRED_VV_OP_19( 2608,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009d9d1deb, 0xd9d90f64, 0x9d9d1deb );
  TEST_FPRED_VV_OP_rd10( 2609,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052a2c944, 0x9ceb7bc1, 0x52a2c944 );
  TEST_FPRED_VV_OP_110( 2610,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052a2c944, 0x9ceb7bc1, 0x52a2c944 );
  TEST_FPRED_VV_OP_rd11( 2611,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069da5807, 0x07b60686, 0x69da5807 );
  TEST_FPRED_VV_OP_111( 2612,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069da5807, 0x07b60686, 0x69da5807 );
  TEST_FPRED_VV_OP_rd12( 2613,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005643827a, 0x92dc0a8a, 0x5643827a );
  TEST_FPRED_VV_OP_112( 2614,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005643827a, 0x92dc0a8a, 0x5643827a );
  TEST_FPRED_VV_OP_rd13( 2615,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000548fa17d, 0x93997373, 0x548fa17d );
  TEST_FPRED_VV_OP_113( 2616,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000548fa17d, 0x93997373, 0x548fa17d );
  TEST_FPRED_VV_OP_rd14( 2617,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000125e3bc, 0xe19d8f2e, 0x0125e3bc );
  TEST_FPRED_VV_OP_114( 2618,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000125e3bc, 0xe19d8f2e, 0x0125e3bc );
  TEST_FPRED_VV_OP_rd15( 2619,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000034294c82, 0xdd4ad4c7, 0x34294c82 );
  TEST_FPRED_VV_OP_115( 2620,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000034294c82, 0xdd4ad4c7, 0x34294c82 );
  TEST_FPRED_VV_OP_rd17( 2621,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c624102, 0x46365e84, 0x7c624102 );
  TEST_FPRED_VV_OP_117( 2622,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007c624102, 0x46365e84, 0x7c624102 );
  TEST_FPRED_VV_OP_rd18( 2623,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081457ac4, 0x92db17e9, 0x81457ac4 );
  TEST_FPRED_VV_OP_118( 2624,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081457ac4, 0x92db17e9, 0x81457ac4 );
  TEST_FPRED_VV_OP_rd19( 2625,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000169e8d7e, 0x65cdd905, 0x169e8d7e );
  TEST_FPRED_VV_OP_119( 2626,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000169e8d7e, 0x65cdd905, 0x169e8d7e );
  TEST_FPRED_VV_OP_rd20( 2627,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082d5d8cc, 0xdd60629d, 0x82d5d8cc );
  TEST_FPRED_VV_OP_120( 2628,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082d5d8cc, 0xdd60629d, 0x82d5d8cc );
  TEST_FPRED_VV_OP_rd21( 2629,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002afa1e78, 0x16478c58, 0x2afa1e78 );
  TEST_FPRED_VV_OP_121( 2630,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002afa1e78, 0x16478c58, 0x2afa1e78 );
  TEST_FPRED_VV_OP_rd22( 2631,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db9ca373, 0xd11c290e, 0xdb9ca373 );
  TEST_FPRED_VV_OP_122( 2632,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db9ca373, 0xd11c290e, 0xdb9ca373 );
  TEST_FPRED_VV_OP_rd23( 2633,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a002b93, 0x0d899e08, 0x8a002b93 );
  TEST_FPRED_VV_OP_123( 2634,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a002b93, 0x0d899e08, 0x8a002b93 );
  TEST_FPRED_VV_OP_rd25( 2635,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0570d1e, 0xac39d155, 0xc0570d1e );
  TEST_FPRED_VV_OP_125( 2636,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0570d1e, 0xac39d155, 0xc0570d1e );
  TEST_FPRED_VV_OP_rd26( 2637,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006682aa99, 0x0f7a7733, 0x6682aa99 );
  TEST_FPRED_VV_OP_126( 2638,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006682aa99, 0x0f7a7733, 0x6682aa99 );
  TEST_FPRED_VV_OP_rd27( 2639,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d3ab2b5b, 0xa946bce1, 0xd3ab2b5b );
  TEST_FPRED_VV_OP_127( 2640,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d3ab2b5b, 0xa946bce1, 0xd3ab2b5b );
  TEST_FPRED_VV_OP_rd28( 2641,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032ce890a, 0x4e00d0f3, 0x32ce890a );
  TEST_FPRED_VV_OP_128( 2642,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000032ce890a, 0x4e00d0f3, 0x32ce890a );
  TEST_FPRED_VV_OP_rd29( 2643,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050408aba, 0x3aa41dc4, 0x50408aba );
  TEST_FPRED_VV_OP_129( 2644,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050408aba, 0x3aa41dc4, 0x50408aba );
  TEST_FPRED_VV_OP_rd30( 2645,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4ea3655, 0x0a9f9511, 0xb4ea3655 );
  TEST_FPRED_VV_OP_130( 2646,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4ea3655, 0x0a9f9511, 0xb4ea3655 );
  TEST_FPRED_VV_OP_rd31( 2647,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057385489, 0x5398487b, 0x57385489 );
  TEST_FPRED_VV_OP_131( 2648,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057385489, 0x5398487b, 0x57385489 );
  TEST_FPRED_VV_OP_rd1( 2649,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eef03e8d, 0xf3782028, 0xeef03e8d );
  TEST_FPRED_VV_OP_11( 2650,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eef03e8d, 0xf3782028, 0xeef03e8d );
  TEST_FPRED_VV_OP_rd2( 2651,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de17d645, 0x69b76600, 0xde17d645 );
  TEST_FPRED_VV_OP_12( 2652,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de17d645, 0x69b76600, 0xde17d645 );
  TEST_FPRED_VV_OP_rd3( 2653,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7f9a32, 0x8ca3efb3, 0x0e7f9a32 );
  TEST_FPRED_VV_OP_13( 2654,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e7f9a32, 0x8ca3efb3, 0x0e7f9a32 );
  TEST_FPRED_VV_OP_rd4( 2655,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeca2f3b, 0xcb7da0de, 0xeeca2f3b );
  TEST_FPRED_VV_OP_14( 2656,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeca2f3b, 0xcb7da0de, 0xeeca2f3b );
  TEST_FPRED_VV_OP_rd5( 2657,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f14f95f4, 0x552d23d2, 0xf14f95f4 );
  TEST_FPRED_VV_OP_15( 2658,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f14f95f4, 0x552d23d2, 0xf14f95f4 );
  TEST_FPRED_VV_OP_rd6( 2659,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000063b7a76e, 0x3436f14c, 0x63b7a76e );
  TEST_FPRED_VV_OP_16( 2660,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000063b7a76e, 0x3436f14c, 0x63b7a76e );
  TEST_FPRED_VV_OP_rd7( 2661,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcc9ab43, 0x6f5f3f35, 0xbcc9ab43 );
  TEST_FPRED_VV_OP_17( 2662,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcc9ab43, 0x6f5f3f35, 0xbcc9ab43 );
  TEST_FPRED_VV_OP_rd9( 2663,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065eed45a, 0xd20dfb9f, 0x65eed45a );
  TEST_FPRED_VV_OP_19( 2664,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065eed45a, 0xd20dfb9f, 0x65eed45a );
  TEST_FPRED_VV_OP_rd10( 2665,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c8e4911e, 0x8723b674, 0xc8e4911e );
  TEST_FPRED_VV_OP_110( 2666,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c8e4911e, 0x8723b674, 0xc8e4911e );
  TEST_FPRED_VV_OP_rd11( 2667,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061bee6e3, 0x0f348d99, 0x61bee6e3 );
  TEST_FPRED_VV_OP_111( 2668,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061bee6e3, 0x0f348d99, 0x61bee6e3 );
  TEST_FPRED_VV_OP_rd12( 2669,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a888b0b, 0x3886ab90, 0x5a888b0b );
  TEST_FPRED_VV_OP_112( 2670,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a888b0b, 0x3886ab90, 0x5a888b0b );
  TEST_FPRED_VV_OP_rd13( 2671,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e8b9b2cd, 0x0334f85a, 0xe8b9b2cd );
  TEST_FPRED_VV_OP_113( 2672,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e8b9b2cd, 0x0334f85a, 0xe8b9b2cd );
  TEST_FPRED_VV_OP_rd14( 2673,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001bc3cb1f, 0xea1670df, 0x1bc3cb1f );
  TEST_FPRED_VV_OP_114( 2674,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001bc3cb1f, 0xea1670df, 0x1bc3cb1f );
  TEST_FPRED_VV_OP_rd15( 2675,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c9a9490, 0xd13744b3, 0x6c9a9490 );
  TEST_FPRED_VV_OP_115( 2676,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c9a9490, 0xd13744b3, 0x6c9a9490 );
  TEST_FPRED_VV_OP_rd17( 2677,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089b67375, 0x1daf3b01, 0x89b67375 );
  TEST_FPRED_VV_OP_117( 2678,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089b67375, 0x1daf3b01, 0x89b67375 );
  TEST_FPRED_VV_OP_rd18( 2679,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d4bea2c1, 0xa9c63a58, 0xd4bea2c1 );
  TEST_FPRED_VV_OP_118( 2680,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d4bea2c1, 0xa9c63a58, 0xd4bea2c1 );
  TEST_FPRED_VV_OP_rd19( 2681,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d7ac95f6, 0xec747b1c, 0xd7ac95f6 );
  TEST_FPRED_VV_OP_119( 2682,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d7ac95f6, 0xec747b1c, 0xd7ac95f6 );
  TEST_FPRED_VV_OP_rd20( 2683,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4fe5b7c, 0x0c6eccf7, 0xb4fe5b7c );
  TEST_FPRED_VV_OP_120( 2684,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b4fe5b7c, 0x0c6eccf7, 0xb4fe5b7c );
  TEST_FPRED_VV_OP_rd21( 2685,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000059dac688, 0x4cad30bc, 0x59dac688 );
  TEST_FPRED_VV_OP_121( 2686,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000059dac688, 0x4cad30bc, 0x59dac688 );
  TEST_FPRED_VV_OP_rd22( 2687,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d864b555, 0x477b3771, 0xd864b555 );
  TEST_FPRED_VV_OP_122( 2688,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d864b555, 0x477b3771, 0xd864b555 );
  TEST_FPRED_VV_OP_rd23( 2689,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0a45c48, 0xaeef6b3d, 0xf0a45c48 );
  TEST_FPRED_VV_OP_123( 2690,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0a45c48, 0xaeef6b3d, 0xf0a45c48 );
  TEST_FPRED_VV_OP_rd25( 2691,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000078f0b6be, 0xb7e378a2, 0x78f0b6be );
  TEST_FPRED_VV_OP_125( 2692,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000078f0b6be, 0xb7e378a2, 0x78f0b6be );
  TEST_FPRED_VV_OP_rd26( 2693,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea5bd793, 0xb602bd3e, 0xea5bd793 );
  TEST_FPRED_VV_OP_126( 2694,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ea5bd793, 0xb602bd3e, 0xea5bd793 );
  TEST_FPRED_VV_OP_rd27( 2695,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000837bb1b9, 0xaf130fb6, 0x837bb1b9 );
  TEST_FPRED_VV_OP_127( 2696,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000837bb1b9, 0xaf130fb6, 0x837bb1b9 );
  TEST_FPRED_VV_OP_rd28( 2697,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8879ad6, 0x31a4314a, 0xb8879ad6 );
  TEST_FPRED_VV_OP_128( 2698,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8879ad6, 0x31a4314a, 0xb8879ad6 );
  TEST_FPRED_VV_OP_rd29( 2699,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a62bf1a5, 0xc723b3d7, 0xa62bf1a5 );
  TEST_FPRED_VV_OP_129( 2700,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a62bf1a5, 0xc723b3d7, 0xa62bf1a5 );
  TEST_FPRED_VV_OP_rd30( 2701,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027457e6e, 0x7015aa42, 0x27457e6e );
  TEST_FPRED_VV_OP_130( 2702,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027457e6e, 0x7015aa42, 0x27457e6e );
  TEST_FPRED_VV_OP_rd31( 2703,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c42dea11, 0x0928aa3e, 0xc42dea11 );
  TEST_FPRED_VV_OP_131( 2704,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c42dea11, 0x0928aa3e, 0xc42dea11 );
  TEST_FPRED_VV_OP_rd1( 2705,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bc0e79b9, 0x22ef3704, 0xbc0e79b9 );
  TEST_FPRED_VV_OP_11( 2706,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bc0e79b9, 0x22ef3704, 0xbc0e79b9 );
  TEST_FPRED_VV_OP_rd2( 2707,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072ae0ac9, 0xf352256b, 0x72ae0ac9 );
  TEST_FPRED_VV_OP_12( 2708,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072ae0ac9, 0xf352256b, 0x72ae0ac9 );
  TEST_FPRED_VV_OP_rd3( 2709,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e29df404, 0x4da52bc4, 0xe29df404 );
  TEST_FPRED_VV_OP_13( 2710,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e29df404, 0x4da52bc4, 0xe29df404 );
  TEST_FPRED_VV_OP_rd4( 2711,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b117f9b7, 0x546d8880, 0xb117f9b7 );
  TEST_FPRED_VV_OP_14( 2712,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b117f9b7, 0x546d8880, 0xb117f9b7 );
  TEST_FPRED_VV_OP_rd5( 2713,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0abe8ea, 0xf78ee9c7, 0xf0abe8ea );
  TEST_FPRED_VV_OP_15( 2714,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0abe8ea, 0xf78ee9c7, 0xf0abe8ea );
  TEST_FPRED_VV_OP_rd6( 2715,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b82f781, 0xc95bd691, 0x5b82f781 );
  TEST_FPRED_VV_OP_16( 2716,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005b82f781, 0xc95bd691, 0x5b82f781 );
  TEST_FPRED_VV_OP_rd7( 2717,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003aba4a26, 0x5239bc94, 0x3aba4a26 );
  TEST_FPRED_VV_OP_17( 2718,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003aba4a26, 0x5239bc94, 0x3aba4a26 );
  TEST_FPRED_VV_OP_rd9( 2719,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000688be24b, 0x67e301b5, 0x688be24b );
  TEST_FPRED_VV_OP_19( 2720,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000688be24b, 0x67e301b5, 0x688be24b );
  TEST_FPRED_VV_OP_rd10( 2721,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021ad1582, 0x240451c9, 0x21ad1582 );
  TEST_FPRED_VV_OP_110( 2722,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021ad1582, 0x240451c9, 0x21ad1582 );
  TEST_FPRED_VV_OP_rd11( 2723,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a294f0b8, 0x27c6864f, 0xa294f0b8 );
  TEST_FPRED_VV_OP_111( 2724,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a294f0b8, 0x27c6864f, 0xa294f0b8 );
  TEST_FPRED_VV_OP_rd12( 2725,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a6440f97, 0x26c6f274, 0xa6440f97 );
  TEST_FPRED_VV_OP_112( 2726,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a6440f97, 0x26c6f274, 0xa6440f97 );
  TEST_FPRED_VV_OP_rd13( 2727,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ea2d0b9, 0x25f55d4e, 0x5ea2d0b9 );
  TEST_FPRED_VV_OP_113( 2728,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ea2d0b9, 0x25f55d4e, 0x5ea2d0b9 );
  TEST_FPRED_VV_OP_rd14( 2729,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bdc0571c, 0x5d2eb86f, 0xbdc0571c );
  TEST_FPRED_VV_OP_114( 2730,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bdc0571c, 0x5d2eb86f, 0xbdc0571c );
  TEST_FPRED_VV_OP_rd15( 2731,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002442a91b, 0x828a97e7, 0x2442a91b );
  TEST_FPRED_VV_OP_115( 2732,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002442a91b, 0x828a97e7, 0x2442a91b );
  TEST_FPRED_VV_OP_rd17( 2733,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000533c8dfe, 0x3d4617ee, 0x533c8dfe );
  TEST_FPRED_VV_OP_117( 2734,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000533c8dfe, 0x3d4617ee, 0x533c8dfe );
  TEST_FPRED_VV_OP_rd18( 2735,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e21ef6aa, 0x09322d7d, 0xe21ef6aa );
  TEST_FPRED_VV_OP_118( 2736,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e21ef6aa, 0x09322d7d, 0xe21ef6aa );
  TEST_FPRED_VV_OP_rd19( 2737,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000919fa67d, 0x1eca00ff, 0x919fa67d );
  TEST_FPRED_VV_OP_119( 2738,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000919fa67d, 0x1eca00ff, 0x919fa67d );
  TEST_FPRED_VV_OP_rd20( 2739,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000873f1671, 0x2ecc47d2, 0x873f1671 );
  TEST_FPRED_VV_OP_120( 2740,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000873f1671, 0x2ecc47d2, 0x873f1671 );
  TEST_FPRED_VV_OP_rd21( 2741,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a9f2e23, 0xf3bb23d6, 0x2a9f2e23 );
  TEST_FPRED_VV_OP_121( 2742,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a9f2e23, 0xf3bb23d6, 0x2a9f2e23 );
  TEST_FPRED_VV_OP_rd22( 2743,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be22927b, 0xab05bda1, 0xbe22927b );
  TEST_FPRED_VV_OP_122( 2744,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be22927b, 0xab05bda1, 0xbe22927b );
  TEST_FPRED_VV_OP_rd23( 2745,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a992efc3, 0xbebbadd8, 0xa992efc3 );
  TEST_FPRED_VV_OP_123( 2746,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a992efc3, 0xbebbadd8, 0xa992efc3 );
  TEST_FPRED_VV_OP_rd25( 2747,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004447a68d, 0x2b20cd36, 0x4447a68d );
  TEST_FPRED_VV_OP_125( 2748,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004447a68d, 0x2b20cd36, 0x4447a68d );
  TEST_FPRED_VV_OP_rd26( 2749,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f78b414, 0x524f229d, 0x3f78b414 );
  TEST_FPRED_VV_OP_126( 2750,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003f78b414, 0x524f229d, 0x3f78b414 );
  TEST_FPRED_VV_OP_rd27( 2751,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bd72133e, 0x5254e959, 0xbd72133e );
  TEST_FPRED_VV_OP_127( 2752,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bd72133e, 0x5254e959, 0xbd72133e );
  TEST_FPRED_VV_OP_rd28( 2753,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cee6997, 0x2aef92ad, 0x0cee6997 );
  TEST_FPRED_VV_OP_128( 2754,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cee6997, 0x2aef92ad, 0x0cee6997 );
  TEST_FPRED_VV_OP_rd29( 2755,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a1b49f6, 0x31229858, 0x1a1b49f6 );
  TEST_FPRED_VV_OP_129( 2756,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a1b49f6, 0x31229858, 0x1a1b49f6 );
  TEST_FPRED_VV_OP_rd30( 2757,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074cefef0, 0xb06bc8f6, 0x74cefef0 );
  TEST_FPRED_VV_OP_130( 2758,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074cefef0, 0xb06bc8f6, 0x74cefef0 );
  TEST_FPRED_VV_OP_rd31( 2759,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db8a3bd9, 0x5dcce032, 0xdb8a3bd9 );
  TEST_FPRED_VV_OP_131( 2760,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db8a3bd9, 0x5dcce032, 0xdb8a3bd9 );
  TEST_FPRED_VV_OP_rd1( 2761,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004b329421, 0x310e5031, 0x4b329421 );
  TEST_FPRED_VV_OP_11( 2762,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004b329421, 0x310e5031, 0x4b329421 );
  TEST_FPRED_VV_OP_rd2( 2763,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a31ab60, 0xf2069096, 0x3a31ab60 );
  TEST_FPRED_VV_OP_12( 2764,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003a31ab60, 0xf2069096, 0x3a31ab60 );
  TEST_FPRED_VV_OP_rd3( 2765,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e953c01f, 0x072a3060, 0xe953c01f );
  TEST_FPRED_VV_OP_13( 2766,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e953c01f, 0x072a3060, 0xe953c01f );
  TEST_FPRED_VV_OP_rd4( 2767,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f147ddf, 0x9c33042c, 0x0f147ddf );
  TEST_FPRED_VV_OP_14( 2768,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f147ddf, 0x9c33042c, 0x0f147ddf );
  TEST_FPRED_VV_OP_rd5( 2769,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf457330, 0x06dd7d38, 0xcf457330 );
  TEST_FPRED_VV_OP_15( 2770,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cf457330, 0x06dd7d38, 0xcf457330 );
  TEST_FPRED_VV_OP_rd6( 2771,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019f95636, 0xe4b100b8, 0x19f95636 );
  TEST_FPRED_VV_OP_16( 2772,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019f95636, 0xe4b100b8, 0x19f95636 );
  TEST_FPRED_VV_OP_rd7( 2773,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030610d6c, 0x04c5e517, 0x30610d6c );
  TEST_FPRED_VV_OP_17( 2774,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030610d6c, 0x04c5e517, 0x30610d6c );
  TEST_FPRED_VV_OP_rd9( 2775,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000051a59b6f, 0x6f0086f2, 0x51a59b6f );
  TEST_FPRED_VV_OP_19( 2776,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000051a59b6f, 0x6f0086f2, 0x51a59b6f );
  TEST_FPRED_VV_OP_rd10( 2777,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be384770, 0xc583b3da, 0xbe384770 );
  TEST_FPRED_VV_OP_110( 2778,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000be384770, 0xc583b3da, 0xbe384770 );
  TEST_FPRED_VV_OP_rd11( 2779,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000336dc41b, 0xae6ff135, 0x336dc41b );
  TEST_FPRED_VV_OP_111( 2780,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000336dc41b, 0xae6ff135, 0x336dc41b );
  TEST_FPRED_VV_OP_rd12( 2781,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a87f271a, 0x7815f9b0, 0xa87f271a );
  TEST_FPRED_VV_OP_112( 2782,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a87f271a, 0x7815f9b0, 0xa87f271a );
  TEST_FPRED_VV_OP_rd13( 2783,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c9121e1, 0x5cc84607, 0x6c9121e1 );
  TEST_FPRED_VV_OP_113( 2784,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c9121e1, 0x5cc84607, 0x6c9121e1 );
  TEST_FPRED_VV_OP_rd14( 2785,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a73c95c4, 0x754bced3, 0xa73c95c4 );
  TEST_FPRED_VV_OP_114( 2786,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a73c95c4, 0x754bced3, 0xa73c95c4 );
  TEST_FPRED_VV_OP_rd15( 2787,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000caf0a32c, 0xaec59a2a, 0xcaf0a32c );
  TEST_FPRED_VV_OP_115( 2788,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000caf0a32c, 0xaec59a2a, 0xcaf0a32c );
  TEST_FPRED_VV_OP_rd17( 2789,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000251c1e00, 0x3af43c9d, 0x251c1e00 );
  TEST_FPRED_VV_OP_117( 2790,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000251c1e00, 0x3af43c9d, 0x251c1e00 );
  TEST_FPRED_VV_OP_rd18( 2791,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac7c3863, 0xae8c12b8, 0xac7c3863 );
  TEST_FPRED_VV_OP_118( 2792,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac7c3863, 0xae8c12b8, 0xac7c3863 );
  TEST_FPRED_VV_OP_rd19( 2793,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f02a18c, 0x67be397d, 0x8f02a18c );
  TEST_FPRED_VV_OP_119( 2794,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f02a18c, 0x67be397d, 0x8f02a18c );
  TEST_FPRED_VV_OP_rd20( 2795,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091fd21c8, 0x8758cfc4, 0x91fd21c8 );
  TEST_FPRED_VV_OP_120( 2796,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091fd21c8, 0x8758cfc4, 0x91fd21c8 );
  TEST_FPRED_VV_OP_rd21( 2797,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004453aa24, 0x1de4f6af, 0x4453aa24 );
  TEST_FPRED_VV_OP_121( 2798,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004453aa24, 0x1de4f6af, 0x4453aa24 );
  TEST_FPRED_VV_OP_rd22( 2799,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008cc4c438, 0x1a455288, 0x8cc4c438 );
  TEST_FPRED_VV_OP_122( 2800,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008cc4c438, 0x1a455288, 0x8cc4c438 );
  TEST_FPRED_VV_OP_rd23( 2801,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcafd1ca, 0x88db7d8c, 0xbcafd1ca );
  TEST_FPRED_VV_OP_123( 2802,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcafd1ca, 0x88db7d8c, 0xbcafd1ca );
  TEST_FPRED_VV_OP_rd25( 2803,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000177434a8, 0xca3650e2, 0x177434a8 );
  TEST_FPRED_VV_OP_125( 2804,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000177434a8, 0xca3650e2, 0x177434a8 );
  TEST_FPRED_VV_OP_rd26( 2805,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004602bb95, 0xc7044eb3, 0x4602bb95 );
  TEST_FPRED_VV_OP_126( 2806,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004602bb95, 0xc7044eb3, 0x4602bb95 );
  TEST_FPRED_VV_OP_rd27( 2807,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb2a44f6, 0x58933db0, 0xbb2a44f6 );
  TEST_FPRED_VV_OP_127( 2808,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb2a44f6, 0x58933db0, 0xbb2a44f6 );
  TEST_FPRED_VV_OP_rd28( 2809,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e1cd9683, 0x0545acbb, 0xe1cd9683 );
  TEST_FPRED_VV_OP_128( 2810,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e1cd9683, 0x0545acbb, 0xe1cd9683 );
  TEST_FPRED_VV_OP_rd29( 2811,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c649858c, 0xb379a614, 0xc649858c );
  TEST_FPRED_VV_OP_129( 2812,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c649858c, 0xb379a614, 0xc649858c );
  TEST_FPRED_VV_OP_rd30( 2813,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000834794d4, 0x9b3eb4cc, 0x834794d4 );
  TEST_FPRED_VV_OP_130( 2814,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000834794d4, 0x9b3eb4cc, 0x834794d4 );
  TEST_FPRED_VV_OP_rd31( 2815,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e226001f, 0xe9519192, 0xe226001f );
  TEST_FPRED_VV_OP_131( 2816,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e226001f, 0xe9519192, 0xe226001f );
  TEST_FPRED_VV_OP_rd1( 2817,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bbf119a, 0x2eb0d339, 0x3bbf119a );
  TEST_FPRED_VV_OP_11( 2818,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bbf119a, 0x2eb0d339, 0x3bbf119a );
  TEST_FPRED_VV_OP_rd2( 2819,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aeac265, 0xf575e7bb, 0x0aeac265 );
  TEST_FPRED_VV_OP_12( 2820,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aeac265, 0xf575e7bb, 0x0aeac265 );
  TEST_FPRED_VV_OP_rd3( 2821,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041649ded, 0xee907664, 0x41649ded );
  TEST_FPRED_VV_OP_13( 2822,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041649ded, 0xee907664, 0x41649ded );
  TEST_FPRED_VV_OP_rd4( 2823,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000054d909fd, 0x53960a4c, 0x54d909fd );
  TEST_FPRED_VV_OP_14( 2824,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000054d909fd, 0x53960a4c, 0x54d909fd );
  TEST_FPRED_VV_OP_rd5( 2825,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082c44d2b, 0x87973a27, 0x82c44d2b );
  TEST_FPRED_VV_OP_15( 2826,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082c44d2b, 0x87973a27, 0x82c44d2b );
  TEST_FPRED_VV_OP_rd6( 2827,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085371e54, 0xa925b817, 0x85371e54 );
  TEST_FPRED_VV_OP_16( 2828,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085371e54, 0xa925b817, 0x85371e54 );
  TEST_FPRED_VV_OP_rd7( 2829,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091074282, 0x1c1a1e45, 0x91074282 );
  TEST_FPRED_VV_OP_17( 2830,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000091074282, 0x1c1a1e45, 0x91074282 );
  TEST_FPRED_VV_OP_rd9( 2831,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c611ba41, 0x2d3e0667, 0xc611ba41 );
  TEST_FPRED_VV_OP_19( 2832,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c611ba41, 0x2d3e0667, 0xc611ba41 );
  TEST_FPRED_VV_OP_rd10( 2833,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0fb779f, 0x53d05d72, 0xd0fb779f );
  TEST_FPRED_VV_OP_110( 2834,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0fb779f, 0x53d05d72, 0xd0fb779f );
  TEST_FPRED_VV_OP_rd11( 2835,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000999f8b26, 0xb822ad39, 0x999f8b26 );
  TEST_FPRED_VV_OP_111( 2836,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000999f8b26, 0xb822ad39, 0x999f8b26 );
  TEST_FPRED_VV_OP_rd12( 2837,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a113808e, 0x4ffe6390, 0xa113808e );
  TEST_FPRED_VV_OP_112( 2838,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a113808e, 0x4ffe6390, 0xa113808e );
  TEST_FPRED_VV_OP_rd13( 2839,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000675a54fd, 0x9ef29035, 0x675a54fd );
  TEST_FPRED_VV_OP_113( 2840,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000675a54fd, 0x9ef29035, 0x675a54fd );
  TEST_FPRED_VV_OP_rd14( 2841,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008864b1ab, 0xd0450fa2, 0x8864b1ab );
  TEST_FPRED_VV_OP_114( 2842,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008864b1ab, 0xd0450fa2, 0x8864b1ab );
  TEST_FPRED_VV_OP_rd15( 2843,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cd9e4966, 0x0d89744e, 0xcd9e4966 );
  TEST_FPRED_VV_OP_115( 2844,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cd9e4966, 0x0d89744e, 0xcd9e4966 );
  TEST_FPRED_VV_OP_rd17( 2845,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050fb73b8, 0xd48dd733, 0x50fb73b8 );
  TEST_FPRED_VV_OP_117( 2846,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050fb73b8, 0xd48dd733, 0x50fb73b8 );
  TEST_FPRED_VV_OP_rd18( 2847,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001566303a, 0x5d857c31, 0x1566303a );
  TEST_FPRED_VV_OP_118( 2848,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001566303a, 0x5d857c31, 0x1566303a );
  TEST_FPRED_VV_OP_rd19( 2849,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f77c3228, 0x9b185404, 0xf77c3228 );
  TEST_FPRED_VV_OP_119( 2850,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f77c3228, 0x9b185404, 0xf77c3228 );
  TEST_FPRED_VV_OP_rd20( 2851,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de7da192, 0x41059de4, 0xde7da192 );
  TEST_FPRED_VV_OP_120( 2852,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de7da192, 0x41059de4, 0xde7da192 );
  TEST_FPRED_VV_OP_rd21( 2853,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a2510c7, 0x12d11883, 0x1a2510c7 );
  TEST_FPRED_VV_OP_121( 2854,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001a2510c7, 0x12d11883, 0x1a2510c7 );
  TEST_FPRED_VV_OP_rd22( 2855,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c4f914e, 0xa647e794, 0x8c4f914e );
  TEST_FPRED_VV_OP_122( 2856,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c4f914e, 0xa647e794, 0x8c4f914e );
  TEST_FPRED_VV_OP_rd23( 2857,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae52acb6, 0xd5710481, 0xae52acb6 );
  TEST_FPRED_VV_OP_123( 2858,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ae52acb6, 0xd5710481, 0xae52acb6 );
  TEST_FPRED_VV_OP_rd25( 2859,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000112bfa6f, 0x28ea8990, 0x112bfa6f );
  TEST_FPRED_VV_OP_125( 2860,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000112bfa6f, 0x28ea8990, 0x112bfa6f );
  TEST_FPRED_VV_OP_rd26( 2861,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e6388e69, 0x4914fd85, 0xe6388e69 );
  TEST_FPRED_VV_OP_126( 2862,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e6388e69, 0x4914fd85, 0xe6388e69 );
  TEST_FPRED_VV_OP_rd27( 2863,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f9c2d14, 0x9edd447a, 0x9f9c2d14 );
  TEST_FPRED_VV_OP_127( 2864,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009f9c2d14, 0x9edd447a, 0x9f9c2d14 );
  TEST_FPRED_VV_OP_rd28( 2865,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085d763a6, 0x1a012a8e, 0x85d763a6 );
  TEST_FPRED_VV_OP_128( 2866,  vfredmin.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000085d763a6, 0x1a012a8e, 0x85d763a6 );
  TEST_FPRED_VV_OP_rd29( 2867,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac497736, 0x697d2a85, 0xac497736 );
  TEST_FPRED_VV_OP_129( 2868,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac497736, 0x697d2a85, 0xac497736 );
  TEST_FPRED_VV_OP_rd30( 2869,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a462146, 0x0e3deb9d, 0x8a462146 );
  TEST_FPRED_VV_OP_130( 2870,  vfredmin.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008a462146, 0x0e3deb9d, 0x8a462146 );
  TEST_FPRED_VV_OP_rd31( 2871,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2300ca6, 0x9da1bcd6, 0xd2300ca6 );
  TEST_FPRED_VV_OP_131( 2872,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d2300ca6, 0x9da1bcd6, 0xd2300ca6 );
  TEST_FPRED_VV_OP_rd1( 2873,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab04b597, 0x5254ddf9, 0xab04b597 );
  TEST_FPRED_VV_OP_11( 2874,  vfredmin.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab04b597, 0x5254ddf9, 0xab04b597 );
  RVTEST_SIGBASE( x20,signature_x20_2)
    
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    
fdat_rs1:
fdat_rs1_0:  .word 0x7F800000
fdat_rs1_1:  .word 0x00000000
fdat_rs1_2:  .word 0xBF800000
fdat_rs1_3:  .word 0xBF800000
fdat_rs1_4:  .word 0xBF800000
fdat_rs1_5:  .word 0xBF800000
fdat_rs1_6:  .word 0xBF800000
fdat_rs1_7:  .word 0xBF800000
fdat_rs1_8:  .word 0xBF800000
fdat_rs1_9:  .word 0xBF800000
fdat_rs1_10:  .word 0xBF800000
fdat_rs1_11:  .word 0xBF800000
fdat_rs1_12:  .word 0xBF800000
fdat_rs1_13:  .word 0xBF800000
fdat_rs1_14:  .word 0xBF800000
fdat_rs1_15:  .word 0xBF800000
fdat_rs1_16:  .word 0xBF800000
fdat_rs1_17:  .word 0xBF800000
fdat_rs1_18:  .word 0x3F800000
fdat_rs1_19:  .word 0x3F800000
fdat_rs1_20:  .word 0x3F800000
fdat_rs1_21:  .word 0x3F800000
fdat_rs1_22:  .word 0x3F800000
fdat_rs1_23:  .word 0x3F800000
fdat_rs1_24:  .word 0x3F800000
fdat_rs1_25:  .word 0x3F800000
fdat_rs1_26:  .word 0x3F800000
fdat_rs1_27:  .word 0x3F800000
fdat_rs1_28:  .word 0x3F800000
fdat_rs1_29:  .word 0x3F800000
fdat_rs1_30:  .word 0x3F800000
fdat_rs1_31:  .word 0x3F800000
fdat_rs1_32:  .word 0x3F800000
fdat_rs1_33:  .word 0x3F800000
fdat_rs1_34:  .word 0xFF7FFFFF
fdat_rs1_35:  .word 0xFF7FFFFF
fdat_rs1_36:  .word 0xFF7FFFFF
fdat_rs1_37:  .word 0xFF7FFFFF
fdat_rs1_38:  .word 0xFF7FFFFF
fdat_rs1_39:  .word 0xFF7FFFFF
fdat_rs1_40:  .word 0xFF7FFFFF
fdat_rs1_41:  .word 0xFF7FFFFF
fdat_rs1_42:  .word 0xFF7FFFFF
fdat_rs1_43:  .word 0xFF7FFFFF
fdat_rs1_44:  .word 0xFF7FFFFF
fdat_rs1_45:  .word 0xFF7FFFFF
fdat_rs1_46:  .word 0xFF7FFFFF
fdat_rs1_47:  .word 0xFF7FFFFF
fdat_rs1_48:  .word 0xFF7FFFFF
fdat_rs1_49:  .word 0xFF7FFFFF
fdat_rs1_50:  .word 0x7F7FFFFF
fdat_rs1_51:  .word 0x7F7FFFFF
fdat_rs1_52:  .word 0x7F7FFFFF
fdat_rs1_53:  .word 0x7F7FFFFF
fdat_rs1_54:  .word 0x7F7FFFFF
fdat_rs1_55:  .word 0x7F7FFFFF
fdat_rs1_56:  .word 0x7F7FFFFF
fdat_rs1_57:  .word 0x7F7FFFFF
fdat_rs1_58:  .word 0x7F7FFFFF
fdat_rs1_59:  .word 0x7F7FFFFF
fdat_rs1_60:  .word 0x7F7FFFFF
fdat_rs1_61:  .word 0x7F7FFFFF
fdat_rs1_62:  .word 0x7F7FFFFF
fdat_rs1_63:  .word 0x7F7FFFFF
fdat_rs1_64:  .word 0x7F7FFFFF
fdat_rs1_65:  .word 0x7F7FFFFF
fdat_rs1_66:  .word 0x80855555
fdat_rs1_67:  .word 0x80855555
fdat_rs1_68:  .word 0x80855555
fdat_rs1_69:  .word 0x80855555
fdat_rs1_70:  .word 0x80855555
fdat_rs1_71:  .word 0x80855555
fdat_rs1_72:  .word 0x80855555
fdat_rs1_73:  .word 0x80855555
fdat_rs1_74:  .word 0x80855555
fdat_rs1_75:  .word 0x80855555
fdat_rs1_76:  .word 0x80855555
fdat_rs1_77:  .word 0x80855555
fdat_rs1_78:  .word 0x80855555
fdat_rs1_79:  .word 0x80855555
fdat_rs1_80:  .word 0x80855555
fdat_rs1_81:  .word 0x80855555
fdat_rs1_82:  .word 0x00800001
fdat_rs1_83:  .word 0x00800001
fdat_rs1_84:  .word 0x00800001
fdat_rs1_85:  .word 0x00800001
fdat_rs1_86:  .word 0x00800001
fdat_rs1_87:  .word 0x00800001
fdat_rs1_88:  .word 0x00800001
fdat_rs1_89:  .word 0x00800001
fdat_rs1_90:  .word 0x00800001
fdat_rs1_91:  .word 0x00800001
fdat_rs1_92:  .word 0x00800001
fdat_rs1_93:  .word 0x00800001
fdat_rs1_94:  .word 0x00800001
fdat_rs1_95:  .word 0x00800001
fdat_rs1_96:  .word 0x00800001
fdat_rs1_97:  .word 0x00800001
fdat_rs1_98:  .word 0x80800000
fdat_rs1_99:  .word 0x80800000
fdat_rs1_100:  .word 0x80800000
fdat_rs1_101:  .word 0x80800000
fdat_rs1_102:  .word 0x80800000
fdat_rs1_103:  .word 0x80800000
fdat_rs1_104:  .word 0x80800000
fdat_rs1_105:  .word 0x80800000
fdat_rs1_106:  .word 0x80800000
fdat_rs1_107:  .word 0x80800000
fdat_rs1_108:  .word 0x80800000
fdat_rs1_109:  .word 0x80800000
fdat_rs1_110:  .word 0x80800000
fdat_rs1_111:  .word 0x80800000
fdat_rs1_112:  .word 0x80800000
fdat_rs1_113:  .word 0x80800000
fdat_rs1_114:  .word 0x00800000
fdat_rs1_115:  .word 0x00800000
fdat_rs1_116:  .word 0x00800000
fdat_rs1_117:  .word 0x00800000
fdat_rs1_118:  .word 0x00800000
fdat_rs1_119:  .word 0x00800000
fdat_rs1_120:  .word 0x00800000
fdat_rs1_121:  .word 0x00800000
fdat_rs1_122:  .word 0x00800000
fdat_rs1_123:  .word 0x00800000
fdat_rs1_124:  .word 0x00800000
fdat_rs1_125:  .word 0x00800000
fdat_rs1_126:  .word 0x00800000
fdat_rs1_127:  .word 0x00800000
fdat_rs1_128:  .word 0x00800000
fdat_rs1_129:  .word 0x00800000
fdat_rs1_130:  .word 0x807FFFFF
fdat_rs1_131:  .word 0x807FFFFF
fdat_rs1_132:  .word 0x807FFFFF
fdat_rs1_133:  .word 0x807FFFFF
fdat_rs1_134:  .word 0x807FFFFF
fdat_rs1_135:  .word 0x807FFFFF
fdat_rs1_136:  .word 0x807FFFFF
fdat_rs1_137:  .word 0x807FFFFF
fdat_rs1_138:  .word 0x807FFFFF
fdat_rs1_139:  .word 0x807FFFFF
fdat_rs1_140:  .word 0x807FFFFF
fdat_rs1_141:  .word 0x807FFFFF
fdat_rs1_142:  .word 0x807FFFFF
fdat_rs1_143:  .word 0x807FFFFF
fdat_rs1_144:  .word 0x807FFFFF
fdat_rs1_145:  .word 0x807FFFFF
fdat_rs1_146:  .word 0x007FFFFF
fdat_rs1_147:  .word 0x007FFFFF
fdat_rs1_148:  .word 0x007FFFFF
fdat_rs1_149:  .word 0x007FFFFF
fdat_rs1_150:  .word 0x007FFFFF
fdat_rs1_151:  .word 0x007FFFFF
fdat_rs1_152:  .word 0x007FFFFF
fdat_rs1_153:  .word 0x007FFFFF
fdat_rs1_154:  .word 0x007FFFFF
fdat_rs1_155:  .word 0x007FFFFF
fdat_rs1_156:  .word 0x007FFFFF
fdat_rs1_157:  .word 0x007FFFFF
fdat_rs1_158:  .word 0x007FFFFF
fdat_rs1_159:  .word 0x007FFFFF
fdat_rs1_160:  .word 0x007FFFFF
fdat_rs1_161:  .word 0x007FFFFF
fdat_rs1_162:  .word 0x807FFFFE
fdat_rs1_163:  .word 0x807FFFFE
fdat_rs1_164:  .word 0x807FFFFE
fdat_rs1_165:  .word 0x807FFFFE
fdat_rs1_166:  .word 0x807FFFFE
fdat_rs1_167:  .word 0x807FFFFE
fdat_rs1_168:  .word 0x807FFFFE
fdat_rs1_169:  .word 0x807FFFFE
fdat_rs1_170:  .word 0x807FFFFE
fdat_rs1_171:  .word 0x807FFFFE
fdat_rs1_172:  .word 0x807FFFFE
fdat_rs1_173:  .word 0x807FFFFE
fdat_rs1_174:  .word 0x807FFFFE
fdat_rs1_175:  .word 0x807FFFFE
fdat_rs1_176:  .word 0x807FFFFE
fdat_rs1_177:  .word 0x807FFFFE
fdat_rs1_178:  .word 0x00000002
fdat_rs1_179:  .word 0x00000002
fdat_rs1_180:  .word 0x00000002
fdat_rs1_181:  .word 0x00000002
fdat_rs1_182:  .word 0x00000002
fdat_rs1_183:  .word 0x00000002
fdat_rs1_184:  .word 0x00000002
fdat_rs1_185:  .word 0x00000002
fdat_rs1_186:  .word 0x00000002
fdat_rs1_187:  .word 0x00000002
fdat_rs1_188:  .word 0x00000002
fdat_rs1_189:  .word 0x00000002
fdat_rs1_190:  .word 0x00000002
fdat_rs1_191:  .word 0x00000002
fdat_rs1_192:  .word 0x00000002
fdat_rs1_193:  .word 0x00000002
fdat_rs1_194:  .word 0x80000001
fdat_rs1_195:  .word 0x80000001
fdat_rs1_196:  .word 0x80000001
fdat_rs1_197:  .word 0x80000001
fdat_rs1_198:  .word 0x80000001
fdat_rs1_199:  .word 0x80000001
fdat_rs1_200:  .word 0x80000001
fdat_rs1_201:  .word 0x80000001
fdat_rs1_202:  .word 0x80000001
fdat_rs1_203:  .word 0x80000001
fdat_rs1_204:  .word 0x80000001
fdat_rs1_205:  .word 0x80000001
fdat_rs1_206:  .word 0x80000001
fdat_rs1_207:  .word 0x80000001
fdat_rs1_208:  .word 0x80000001
fdat_rs1_209:  .word 0x80000001
fdat_rs1_210:  .word 0x00000001
fdat_rs1_211:  .word 0x00000001
fdat_rs1_212:  .word 0x00000001
fdat_rs1_213:  .word 0x00000001
fdat_rs1_214:  .word 0x00000001
fdat_rs1_215:  .word 0x00000001
fdat_rs1_216:  .word 0x00000001
fdat_rs1_217:  .word 0x00000001
fdat_rs1_218:  .word 0x00000001
fdat_rs1_219:  .word 0x00000001
fdat_rs1_220:  .word 0x00000001
fdat_rs1_221:  .word 0x00000001
fdat_rs1_222:  .word 0x00000001
fdat_rs1_223:  .word 0x00000001
fdat_rs1_224:  .word 0x00000001
fdat_rs1_225:  .word 0x00000001
fdat_rs1_226:  .word 0x80000000
fdat_rs1_227:  .word 0x80000000
fdat_rs1_228:  .word 0x80000000
fdat_rs1_229:  .word 0x80000000
fdat_rs1_230:  .word 0x80000000
fdat_rs1_231:  .word 0x80000000
fdat_rs1_232:  .word 0x80000000
fdat_rs1_233:  .word 0x80000000
fdat_rs1_234:  .word 0x80000000
fdat_rs1_235:  .word 0x80000000
fdat_rs1_236:  .word 0x80000000
fdat_rs1_237:  .word 0x80000000
fdat_rs1_238:  .word 0x80000000
fdat_rs1_239:  .word 0x80000000
fdat_rs1_240:  .word 0x80000000
fdat_rs1_241:  .word 0x80000000
fdat_rs1_242:  .word 0x00000000
fdat_rs1_243:  .word 0x00000000
fdat_rs1_244:  .word 0x00000000
fdat_rs1_245:  .word 0x00000000
fdat_rs1_246:  .word 0x00000000
fdat_rs1_247:  .word 0x00000000
fdat_rs1_248:  .word 0x00000000
fdat_rs1_249:  .word 0x00000000
fdat_rs1_250:  .word 0x00000000
fdat_rs1_251:  .word 0x00000000
fdat_rs1_252:  .word 0x00000000
fdat_rs1_253:  .word 0x00000000
fdat_rs1_254:  .word 0x00000000
fdat_rs1_255:  .word 0x00000000
fdat_rs1_256:  .word 0x00000000
fdat_rs1_257:  .word 0x16b77bce
fdat_rs1_258:  .word 0x85a8a33c
fdat_rs1_259:  .word 0xbe82002a
fdat_rs1_260:  .word 0x6b4eed81
fdat_rs1_261:  .word 0xfcf2b7b2
fdat_rs1_262:  .word 0xb1a3f397
fdat_rs1_263:  .word 0x81815039
fdat_rs1_264:  .word 0x7df4c24f
fdat_rs1_265:  .word 0x0827c929
fdat_rs1_266:  .word 0xe1f1c6ec
fdat_rs1_267:  .word 0x9b111081
fdat_rs1_268:  .word 0x08c53c5a
fdat_rs1_269:  .word 0x16e35174
fdat_rs1_270:  .word 0x20553b83
fdat_rs1_271:  .word 0xf4ed3db2
fdat_rs1_272:  .word 0x5879b2ca
fdat_rs1_273:  .word 0xf80d83b9
fdat_rs1_274:  .word 0x7b48384f
fdat_rs1_275:  .word 0x89a6c1a0
fdat_rs1_276:  .word 0x31fe5439
fdat_rs1_277:  .word 0x6ee2f5aa
fdat_rs1_278:  .word 0x330f5715
fdat_rs1_279:  .word 0x9f46020f
fdat_rs1_280:  .word 0xb697e1c3
fdat_rs1_281:  .word 0xf518acf6
fdat_rs1_282:  .word 0x3958ea56
fdat_rs1_283:  .word 0x56a29c95
fdat_rs1_284:  .word 0xef286e01
fdat_rs1_285:  .word 0xf6cad350
fdat_rs1_286:  .word 0xe95400f6
fdat_rs1_287:  .word 0x0b2ac811
fdat_rs1_288:  .word 0x3ced78db
fdat_rs1_289:  .word 0x75809524
fdat_rs1_290:  .word 0xc5e59fb2
fdat_rs1_291:  .word 0xdd81fa0a
fdat_rs1_292:  .word 0xec9fb18d
fdat_rs1_293:  .word 0x30e1830a
fdat_rs1_294:  .word 0x21d2bbb0
fdat_rs1_295:  .word 0x731a1760
fdat_rs1_296:  .word 0x19167ebd
fdat_rs1_297:  .word 0x7e537a04
fdat_rs1_298:  .word 0xcf9dc475
fdat_rs1_299:  .word 0x17f847a1
fdat_rs1_300:  .word 0x5f4e2f05
fdat_rs1_301:  .word 0x11065906
fdat_rs1_302:  .word 0xa9663dbb
fdat_rs1_303:  .word 0xb6d5707b
fdat_rs1_304:  .word 0xef201e7b
fdat_rs1_305:  .word 0xb4a84974
fdat_rs1_306:  .word 0xc9feb8d1
fdat_rs1_307:  .word 0xba38c7b1
fdat_rs1_308:  .word 0x1877b042
fdat_rs1_309:  .word 0x91778cbb
fdat_rs1_310:  .word 0x2e715ec9
fdat_rs1_311:  .word 0xebc88fd7
fdat_rs1_312:  .word 0x6947de05
fdat_rs1_313:  .word 0xaec12b86
fdat_rs1_314:  .word 0x6164c29e
fdat_rs1_315:  .word 0xba68fa1d
fdat_rs1_316:  .word 0x17a54142
fdat_rs1_317:  .word 0xbb7b049e
fdat_rs1_318:  .word 0x08fab1e5
fdat_rs1_319:  .word 0x1af6bb18
fdat_rs1_320:  .word 0x74348a1d
fdat_rs1_321:  .word 0xf41f5f9b
fdat_rs1_322:  .word 0x604f267a
fdat_rs1_323:  .word 0x8543a485
fdat_rs1_324:  .word 0x17fca002
fdat_rs1_325:  .word 0x3777625d
fdat_rs1_326:  .word 0xca42df1f
fdat_rs1_327:  .word 0xe9591298
fdat_rs1_328:  .word 0x655428d1
fdat_rs1_329:  .word 0x678995cf
fdat_rs1_330:  .word 0x7ea84660
fdat_rs1_331:  .word 0x049f1faf
fdat_rs1_332:  .word 0x9a6ccdab
fdat_rs1_333:  .word 0xf75264e4
fdat_rs1_334:  .word 0x5b832e4f
fdat_rs1_335:  .word 0x047e6b3b
fdat_rs1_336:  .word 0xc18c4e25
fdat_rs1_337:  .word 0x6676bf0e
fdat_rs1_338:  .word 0x86738089
fdat_rs1_339:  .word 0x1ee4a5ed
fdat_rs1_340:  .word 0xb9545c29
fdat_rs1_341:  .word 0x2c7cb95f
fdat_rs1_342:  .word 0x8ab6881d
fdat_rs1_343:  .word 0x32dc44c0
fdat_rs1_344:  .word 0x7915e449
fdat_rs1_345:  .word 0xb68216c7
fdat_rs1_346:  .word 0x53c4ffc4
fdat_rs1_347:  .word 0xc01a2b07
fdat_rs1_348:  .word 0x6d56c00d
fdat_rs1_349:  .word 0x231896cb
fdat_rs1_350:  .word 0x3a6c685c
fdat_rs1_351:  .word 0xe57e27bd
fdat_rs1_352:  .word 0x3e6f7cbe
fdat_rs1_353:  .word 0x8e74e2da
fdat_rs1_354:  .word 0xfcea6243
fdat_rs1_355:  .word 0x80eedc35
fdat_rs1_356:  .word 0x048d92fb
fdat_rs1_357:  .word 0xe8e803f4
fdat_rs1_358:  .word 0x12c54b7b
fdat_rs1_359:  .word 0x2d633cae
fdat_rs1_360:  .word 0xbe8c5af3
fdat_rs1_361:  .word 0x379def6c
fdat_rs1_362:  .word 0xe298ae9a
fdat_rs1_363:  .word 0x626b7cc5
fdat_rs1_364:  .word 0x8f61b3a5
fdat_rs1_365:  .word 0xe4219193
fdat_rs1_366:  .word 0x01b8cfcd
fdat_rs1_367:  .word 0x04bfcdf8
fdat_rs1_368:  .word 0xd6cbbf81
fdat_rs1_369:  .word 0x4bd075af
fdat_rs1_370:  .word 0xe291d09b
fdat_rs1_371:  .word 0xf0503b64
fdat_rs1_372:  .word 0x21124d60
fdat_rs1_373:  .word 0x17d5856b
fdat_rs1_374:  .word 0x7989bf32
fdat_rs1_375:  .word 0x6b84a91f
fdat_rs1_376:  .word 0x3019a087
fdat_rs1_377:  .word 0x01c79214
fdat_rs1_378:  .word 0xea939be7
fdat_rs1_379:  .word 0xc375122d
fdat_rs1_380:  .word 0x116ec3d2
fdat_rs1_381:  .word 0x2d7eeffe
fdat_rs1_382:  .word 0xe013be07
fdat_rs1_383:  .word 0xb45484fc
fdat_rs1_384:  .word 0x2dcda7f1
fdat_rs1_385:  .word 0x2e2151fa
fdat_rs1_386:  .word 0x500c5f17
fdat_rs1_387:  .word 0x984b6942
fdat_rs1_388:  .word 0x9960c98a
fdat_rs1_389:  .word 0xc0c7c26a
fdat_rs1_390:  .word 0xc714bae1
fdat_rs1_391:  .word 0x7c086243
fdat_rs1_392:  .word 0x9a4397f5
fdat_rs1_393:  .word 0xb02b37fb
fdat_rs1_394:  .word 0xec0ac4f0
fdat_rs1_395:  .word 0xabb5045d
fdat_rs1_396:  .word 0x4de1938f
fdat_rs1_397:  .word 0x4ef87036
fdat_rs1_398:  .word 0x477553ed
fdat_rs1_399:  .word 0xdf884a52
fdat_rs1_400:  .word 0xe364a2c3
fdat_rs1_401:  .word 0x5e3d04d3
fdat_rs1_402:  .word 0xa37172c6
fdat_rs1_403:  .word 0x39c33e1d
fdat_rs1_404:  .word 0x5fa55642
fdat_rs1_405:  .word 0xc6588c96
fdat_rs1_406:  .word 0x57aa9ec7
fdat_rs1_407:  .word 0x52a373c8
fdat_rs1_408:  .word 0x868a5027
fdat_rs1_409:  .word 0xafc3fa5e
fdat_rs1_410:  .word 0x804beeba
fdat_rs1_411:  .word 0xbf812338
fdat_rs1_412:  .word 0x53cf2324
fdat_rs1_413:  .word 0x1c2a2099
fdat_rs1_414:  .word 0x77275ab3
fdat_rs1_415:  .word 0x8f53143f
fdat_rs1_416:  .word 0x7868d163
fdat_rs1_417:  .word 0x3362ef56
fdat_rs1_418:  .word 0xf5c4c30d
fdat_rs1_419:  .word 0x3413c9a6
fdat_rs1_420:  .word 0xbae49486
fdat_rs1_421:  .word 0x4d195ecf
fdat_rs1_422:  .word 0x55085e69
fdat_rs1_423:  .word 0x497af66c
fdat_rs1_424:  .word 0x776d41f0
fdat_rs1_425:  .word 0x6b06fcef
fdat_rs1_426:  .word 0xec9c3cae
fdat_rs1_427:  .word 0xbbcdcd90
fdat_rs1_428:  .word 0xa78b9e5d
fdat_rs1_429:  .word 0xb517d569
fdat_rs1_430:  .word 0x58ecb82f
fdat_rs1_431:  .word 0x897683b0
fdat_rs1_432:  .word 0x017fed42
fdat_rs1_433:  .word 0x7ac46a81
fdat_rs1_434:  .word 0x6b3424e3
fdat_rs1_435:  .word 0xf78c7be0
fdat_rs1_436:  .word 0x225c9001
fdat_rs1_437:  .word 0x716f74e5
fdat_rs1_438:  .word 0x5ea07308
fdat_rs1_439:  .word 0x9cb1f841
fdat_rs1_440:  .word 0x69773182
fdat_rs1_441:  .word 0xba7c2bc1
fdat_rs1_442:  .word 0x3615b6cd
fdat_rs1_443:  .word 0xb7cbdb1c
fdat_rs1_444:  .word 0x57503bd7
fdat_rs1_445:  .word 0x08d9043f
fdat_rs1_446:  .word 0xde4c459d
fdat_rs1_447:  .word 0x7a26c712
fdat_rs1_448:  .word 0x563028c3
fdat_rs1_449:  .word 0x795e33bf
fdat_rs1_450:  .word 0xf2d19a38
fdat_rs1_451:  .word 0xf20bed88
fdat_rs1_452:  .word 0x7e91e990
fdat_rs1_453:  .word 0x28403d8f
fdat_rs1_454:  .word 0xe451d935
fdat_rs1_455:  .word 0x6cbd6936
fdat_rs1_456:  .word 0x4bb4197f
fdat_rs1_457:  .word 0xb2301f0d
fdat_rs1_458:  .word 0xc0fe2faf
fdat_rs1_459:  .word 0x16598049
fdat_rs1_460:  .word 0x8b074d85
fdat_rs1_461:  .word 0xb3044c5f
fdat_rs1_462:  .word 0x52e624b8
fdat_rs1_463:  .word 0xe4b5a3ae
fdat_rs1_464:  .word 0x223b3100
fdat_rs1_465:  .word 0x60e69e76
fdat_rs1_466:  .word 0x7b1ae2f0
fdat_rs1_467:  .word 0x8837caa2
fdat_rs1_468:  .word 0xa64768d4
fdat_rs1_469:  .word 0xe3cafbaa
fdat_rs1_470:  .word 0x409e0a27
fdat_rs1_471:  .word 0x8bca7953
fdat_rs1_472:  .word 0x54110db1
fdat_rs1_473:  .word 0xdd376b5e
fdat_rs1_474:  .word 0x82997f29
fdat_rs1_475:  .word 0x355719f2
fdat_rs1_476:  .word 0x409cf5f2
fdat_rs1_477:  .word 0xd0f04044
fdat_rs1_478:  .word 0xb1f11cd7
fdat_rs1_479:  .word 0xde5e4fa6
fdat_rs1_480:  .word 0xd82dd4fd
fdat_rs1_481:  .word 0xe58d530d
fdat_rs1_482:  .word 0x4949dc26
fdat_rs1_483:  .word 0x8e5f9ede
fdat_rs1_484:  .word 0x8e4a63c9
fdat_rs1_485:  .word 0x3e0b7f6a
fdat_rs1_486:  .word 0x721e2d49
fdat_rs1_487:  .word 0xb9420e82
fdat_rs1_488:  .word 0x9f300bb4
fdat_rs1_489:  .word 0xdaf09bbc
fdat_rs1_490:  .word 0x33939602
fdat_rs1_491:  .word 0x22d815c2
fdat_rs1_492:  .word 0xdd6461b8
fdat_rs1_493:  .word 0xa0c1de71
fdat_rs1_494:  .word 0x8412c769
fdat_rs1_495:  .word 0xe03a03d1
fdat_rs1_496:  .word 0x1d7e0df1
fdat_rs1_497:  .word 0xaa1ba77a
fdat_rs1_498:  .word 0x1fd16c33
fdat_rs1_499:  .word 0xe6b2620f
fdat_rs1_500:  .word 0xd80b4e8d
fdat_rs1_501:  .word 0x8c57dfcc
fdat_rs1_502:  .word 0x72d00ff0
fdat_rs1_503:  .word 0x8d71f3bd
fdat_rs1_504:  .word 0x90df5366
fdat_rs1_505:  .word 0x65e2e213
fdat_rs1_506:  .word 0xd4af903f
fdat_rs1_507:  .word 0x0b402769
fdat_rs1_508:  .word 0xe520a1a5
fdat_rs1_509:  .word 0x2fd98a32
fdat_rs1_510:  .word 0x8d31c277
fdat_rs1_511:  .word 0x431be53f
fdat_rs1_512:  .word 0x163af993
fdat_rs1_513:  .word 0x62d5fe2f
fdat_rs1_514:  .word 0xbbbfcaf3
fdat_rs1_515:  .word 0x8ad27026
fdat_rs1_516:  .word 0x599ec422
fdat_rs1_517:  .word 0xd0e57884
fdat_rs1_518:  .word 0x315858ad
fdat_rs1_519:  .word 0xbb79a22b
fdat_rs1_520:  .word 0x80c7fec6
fdat_rs1_521:  .word 0xb8a4eaba
fdat_rs1_522:  .word 0x893e4f51
fdat_rs1_523:  .word 0xa204c639
fdat_rs1_524:  .word 0x092d4ba0
fdat_rs1_525:  .word 0x8787ab14
fdat_rs1_526:  .word 0x61ce2443
fdat_rs1_527:  .word 0x8ac8c0d1
fdat_rs1_528:  .word 0x2a519200
fdat_rs1_529:  .word 0x156dd6bc
fdat_rs1_530:  .word 0x35ceb876
fdat_rs1_531:  .word 0x766125a9
fdat_rs1_532:  .word 0x05269d43
fdat_rs1_533:  .word 0x1591c3bb
fdat_rs1_534:  .word 0x7f19aaaa
fdat_rs1_535:  .word 0xb68e62d5
fdat_rs1_536:  .word 0x98c5df64
fdat_rs1_537:  .word 0x58a4f5f8
fdat_rs1_538:  .word 0x1b5d4991
fdat_rs1_539:  .word 0x02046b89
fdat_rs1_540:  .word 0xf4223dde
fdat_rs1_541:  .word 0xcf05164e
fdat_rs1_542:  .word 0xaa67f476
fdat_rs1_543:  .word 0x5e100e5a
fdat_rs1_544:  .word 0x8f51944a
fdat_rs1_545:  .word 0x01d283cd
fdat_rs1_546:  .word 0x19ea57fc
fdat_rs1_547:  .word 0xe246d9c3
fdat_rs1_548:  .word 0xb3ede2cf
fdat_rs1_549:  .word 0x661a98bb
fdat_rs1_550:  .word 0xd2e52100
fdat_rs1_551:  .word 0xb54c779c
fdat_rs1_552:  .word 0x8b890ead
fdat_rs1_553:  .word 0x6f6d8ebb
fdat_rs1_554:  .word 0x701a72e3
fdat_rs1_555:  .word 0x18854a53
fdat_rs1_556:  .word 0xd8b646c3
fdat_rs1_557:  .word 0x7a859a9b
fdat_rs1_558:  .word 0x99fb1285
fdat_rs1_559:  .word 0x6a49fdb6
fdat_rs1_560:  .word 0xe54c4797
fdat_rs1_561:  .word 0xa13e91a2
fdat_rs1_562:  .word 0x56a16ea4
fdat_rs1_563:  .word 0x8dc0e4ff
fdat_rs1_564:  .word 0x267eb8c3
fdat_rs1_565:  .word 0xbcdd3109
fdat_rs1_566:  .word 0xd18cf677
fdat_rs1_567:  .word 0xc592af51
fdat_rs1_568:  .word 0x639952be
fdat_rs1_569:  .word 0x5ecc40d7
fdat_rs1_570:  .word 0x08e1872a
fdat_rs1_571:  .word 0x699b0430
fdat_rs1_572:  .word 0x515deb63
fdat_rs1_573:  .word 0x55107f38
fdat_rs1_574:  .word 0x5ed38442
fdat_rs1_575:  .word 0x9444a8cf
fdat_rs1_576:  .word 0x3b6f020e
fdat_rs1_577:  .word 0x3d7a2c1a
fdat_rs1_578:  .word 0xe12d2042
fdat_rs1_579:  .word 0xddc02bcf
fdat_rs1_580:  .word 0xd793ec85
fdat_rs1_581:  .word 0x89179c2a
fdat_rs1_582:  .word 0x7b5bb683
fdat_rs1_583:  .word 0xf3060550
fdat_rs1_584:  .word 0xeb6622a3
fdat_rs1_585:  .word 0x370df4fd
fdat_rs1_586:  .word 0xe7026d7d
fdat_rs1_587:  .word 0xa7ef2bad
fdat_rs1_588:  .word 0x5d994fff
fdat_rs1_589:  .word 0x6ab30fe4
fdat_rs1_590:  .word 0x72d35639
fdat_rs1_591:  .word 0x27c70109
fdat_rs1_592:  .word 0xf283b49c
fdat_rs1_593:  .word 0x3c70fd0b
fdat_rs1_594:  .word 0x1f46077b
fdat_rs1_595:  .word 0xc626d7b5
fdat_rs1_596:  .word 0xd8664806
fdat_rs1_597:  .word 0xa37e6d45
fdat_rs1_598:  .word 0x69155a81
fdat_rs1_599:  .word 0xe78f6b83
fdat_rs1_600:  .word 0x9aba564b
fdat_rs1_601:  .word 0x3616aeda
fdat_rs1_602:  .word 0xb6b43b38
fdat_rs1_603:  .word 0x48363fc9
fdat_rs1_604:  .word 0x18fd8be4
fdat_rs1_605:  .word 0x4f1f58ba
fdat_rs1_606:  .word 0x19e51db5
fdat_rs1_607:  .word 0xe0c53c63
fdat_rs1_608:  .word 0x192352ad
fdat_rs1_609:  .word 0x5639134a
fdat_rs1_610:  .word 0x3b3c24ec
fdat_rs1_611:  .word 0x8376196a
fdat_rs1_612:  .word 0x24fcba35
fdat_rs1_613:  .word 0x2cd12f68
fdat_rs1_614:  .word 0x5b91a296
fdat_rs1_615:  .word 0x0a9edbe9
fdat_rs1_616:  .word 0xbc4fb8ab
fdat_rs1_617:  .word 0x68714601
fdat_rs1_618:  .word 0xf6077257
fdat_rs1_619:  .word 0x6baa10f2
fdat_rs1_620:  .word 0x210eee6d
fdat_rs1_621:  .word 0x9d9d1deb
fdat_rs1_622:  .word 0x52a2c944
fdat_rs1_623:  .word 0x69da5807
fdat_rs1_624:  .word 0x5643827a
fdat_rs1_625:  .word 0x548fa17d
fdat_rs1_626:  .word 0x0125e3bc
fdat_rs1_627:  .word 0x34294c82
fdat_rs1_628:  .word 0xd612accc
fdat_rs1_629:  .word 0x7c624102
fdat_rs1_630:  .word 0x81457ac4
fdat_rs1_631:  .word 0x169e8d7e
fdat_rs1_632:  .word 0x82d5d8cc
fdat_rs1_633:  .word 0x2afa1e78
fdat_rs1_634:  .word 0xdb9ca373
fdat_rs1_635:  .word 0x8a002b93
fdat_rs1_636:  .word 0xb686377f
fdat_rs1_637:  .word 0xc0570d1e
fdat_rs1_638:  .word 0x6682aa99
fdat_rs1_639:  .word 0xd3ab2b5b
fdat_rs1_640:  .word 0x32ce890a
fdat_rs1_641:  .word 0x50408aba
fdat_rs1_642:  .word 0xb4ea3655
fdat_rs1_643:  .word 0x57385489
fdat_rs1_644:  .word 0xeef03e8d
fdat_rs1_645:  .word 0xde17d645
fdat_rs1_646:  .word 0x0e7f9a32
fdat_rs1_647:  .word 0xeeca2f3b
fdat_rs1_648:  .word 0xf14f95f4
fdat_rs1_649:  .word 0x63b7a76e
fdat_rs1_650:  .word 0xbcc9ab43
fdat_rs1_651:  .word 0xdfeeae1d
fdat_rs1_652:  .word 0x65eed45a
fdat_rs1_653:  .word 0xc8e4911e
fdat_rs1_654:  .word 0x61bee6e3
fdat_rs1_655:  .word 0x5a888b0b
fdat_rs1_656:  .word 0xe8b9b2cd
fdat_rs1_657:  .word 0x1bc3cb1f
fdat_rs1_658:  .word 0x6c9a9490
fdat_rs1_659:  .word 0x94518e9b
fdat_rs1_660:  .word 0x89b67375
fdat_rs1_661:  .word 0xd4bea2c1
fdat_rs1_662:  .word 0xd7ac95f6
fdat_rs1_663:  .word 0xb4fe5b7c
fdat_rs1_664:  .word 0x59dac688
fdat_rs1_665:  .word 0xd864b555
fdat_rs1_666:  .word 0xf0a45c48
fdat_rs1_667:  .word 0x8debdd64
fdat_rs1_668:  .word 0x78f0b6be
fdat_rs1_669:  .word 0xea5bd793
fdat_rs1_670:  .word 0x837bb1b9
fdat_rs1_671:  .word 0xb8879ad6
fdat_rs1_672:  .word 0xa62bf1a5
fdat_rs1_673:  .word 0x27457e6e
fdat_rs1_674:  .word 0xc42dea11
fdat_rs1_675:  .word 0xbc0e79b9
fdat_rs1_676:  .word 0x72ae0ac9
fdat_rs1_677:  .word 0xe29df404
fdat_rs1_678:  .word 0xb117f9b7
fdat_rs1_679:  .word 0xf0abe8ea
fdat_rs1_680:  .word 0x5b82f781
fdat_rs1_681:  .word 0x3aba4a26
fdat_rs1_682:  .word 0xefea5e67
fdat_rs1_683:  .word 0x688be24b
fdat_rs1_684:  .word 0x21ad1582
fdat_rs1_685:  .word 0xa294f0b8
fdat_rs1_686:  .word 0xa6440f97
fdat_rs1_687:  .word 0x5ea2d0b9
fdat_rs1_688:  .word 0xbdc0571c
fdat_rs1_689:  .word 0x2442a91b
fdat_rs1_690:  .word 0x0c377326
fdat_rs1_691:  .word 0x533c8dfe
fdat_rs1_692:  .word 0xe21ef6aa
fdat_rs1_693:  .word 0x919fa67d
fdat_rs1_694:  .word 0x873f1671
fdat_rs1_695:  .word 0x2a9f2e23
fdat_rs1_696:  .word 0xbe22927b
fdat_rs1_697:  .word 0xa992efc3
fdat_rs1_698:  .word 0x75ce1220
fdat_rs1_699:  .word 0x4447a68d
fdat_rs1_700:  .word 0x3f78b414
fdat_rs1_701:  .word 0xbd72133e
fdat_rs1_702:  .word 0x0cee6997
fdat_rs1_703:  .word 0x1a1b49f6
fdat_rs1_704:  .word 0x74cefef0
fdat_rs1_705:  .word 0xdb8a3bd9
fdat_rs1_706:  .word 0x4b329421
fdat_rs1_707:  .word 0x3a31ab60
fdat_rs1_708:  .word 0xe953c01f
fdat_rs1_709:  .word 0x0f147ddf
fdat_rs1_710:  .word 0xcf457330
fdat_rs1_711:  .word 0x19f95636
fdat_rs1_712:  .word 0x30610d6c
fdat_rs1_713:  .word 0x7cfe6ad7
fdat_rs1_714:  .word 0x51a59b6f
fdat_rs1_715:  .word 0xbe384770
fdat_rs1_716:  .word 0x336dc41b
fdat_rs1_717:  .word 0xa87f271a
fdat_rs1_718:  .word 0x6c9121e1
fdat_rs1_719:  .word 0xa73c95c4
fdat_rs1_720:  .word 0xcaf0a32c
fdat_rs1_721:  .word 0x46f5a171
fdat_rs1_722:  .word 0x251c1e00
fdat_rs1_723:  .word 0xac7c3863
fdat_rs1_724:  .word 0x8f02a18c
fdat_rs1_725:  .word 0x91fd21c8
fdat_rs1_726:  .word 0x4453aa24
fdat_rs1_727:  .word 0x8cc4c438
fdat_rs1_728:  .word 0xbcafd1ca
fdat_rs1_729:  .word 0x767634b8
fdat_rs1_730:  .word 0x177434a8
fdat_rs1_731:  .word 0x4602bb95
fdat_rs1_732:  .word 0xbb2a44f6
fdat_rs1_733:  .word 0xe1cd9683
fdat_rs1_734:  .word 0xc649858c
fdat_rs1_735:  .word 0x834794d4
fdat_rs1_736:  .word 0xe226001f
fdat_rs1_737:  .word 0x3bbf119a
fdat_rs1_738:  .word 0x0aeac265
fdat_rs1_739:  .word 0x41649ded
fdat_rs1_740:  .word 0x54d909fd
fdat_rs1_741:  .word 0x82c44d2b
fdat_rs1_742:  .word 0x85371e54
fdat_rs1_743:  .word 0x91074282
fdat_rs1_744:  .word 0x61ae58b5
fdat_rs1_745:  .word 0xc611ba41
fdat_rs1_746:  .word 0xd0fb779f
fdat_rs1_747:  .word 0x999f8b26
fdat_rs1_748:  .word 0xa113808e
fdat_rs1_749:  .word 0x675a54fd
fdat_rs1_750:  .word 0x8864b1ab
fdat_rs1_751:  .word 0xcd9e4966
fdat_rs1_752:  .word 0xecdb94a3
fdat_rs1_753:  .word 0x50fb73b8
fdat_rs1_754:  .word 0x1566303a
fdat_rs1_755:  .word 0xf77c3228
fdat_rs1_756:  .word 0xde7da192
fdat_rs1_757:  .word 0x1a2510c7
fdat_rs1_758:  .word 0x8c4f914e
fdat_rs1_759:  .word 0xae52acb6
fdat_rs1_760:  .word 0x269ca43a
fdat_rs1_761:  .word 0x112bfa6f
fdat_rs1_762:  .word 0xe6388e69
fdat_rs1_763:  .word 0x9f9c2d14
fdat_rs1_764:  .word 0x85d763a6
fdat_rs1_765:  .word 0xac497736
fdat_rs1_766:  .word 0x8a462146
fdat_rs1_767:  .word 0xd2300ca6
fdat_rs1_768:  .word 0xab04b597
fdat_rs1_769:  .word 0xd5173d3b
fdat_rs1_770:  .word 0x1c954c88
fdat_rs1_771:  .word 0xae8f2f8a
fdat_rs1_772:  .word 0xe18cd6d3
fdat_rs1_773:  .word 0xe7128ead
fdat_rs1_774:  .word 0x430c45f2
fdat_rs1_775:  .word 0x1fece821
fdat_rs1_776:  .word 0xdbe8db2f
fdat_rs1_777:  .word 0x9deac411
fdat_rs1_778:  .word 0xd578536b
fdat_rs1_779:  .word 0x5a2112c5
fdat_rs1_780:  .word 0x33755502
fdat_rs1_781:  .word 0x41f512c8
fdat_rs1_782:  .word 0x5b07c90e
fdat_rs1_783:  .word 0x30e95eba
fdat_rs1_784:  .word 0xdc43d0d7
fdat_rs1_785:  .word 0xce250988
fdat_rs1_786:  .word 0x546ef0b9
fdat_rs1_787:  .word 0x7c69a228
fdat_rs1_788:  .word 0x540da0bc
fdat_rs1_789:  .word 0xb917bde6
fdat_rs1_790:  .word 0x2b14a548
fdat_rs1_791:  .word 0x5c51c72f
fdat_rs1_792:  .word 0xe66cd16e
fdat_rs1_793:  .word 0xf8e67fb0
fdat_rs1_794:  .word 0x45b5c5f1
fdat_rs1_795:  .word 0x6bd9ba9a
fdat_rs1_796:  .word 0x9c1e8667
fdat_rs1_797:  .word 0x8a2c7d45
fdat_rs1_798:  .word 0xaf61ac13
fdat_rs1_799:  .word 0xcc06f22d
fdat_rs1_800:  .word 0x6ac84f04
fdat_rs1_801:  .word 0x581f3afc
fdat_rs1_802:  .word 0x6122b26e
fdat_rs1_803:  .word 0xff4914a8
fdat_rs1_804:  .word 0xf0a80a4a
fdat_rs1_805:  .word 0x44577dfa
fdat_rs1_806:  .word 0xe31172b1
fdat_rs1_807:  .word 0x30b00f6c
fdat_rs1_808:  .word 0x9cd4367e
fdat_rs1_809:  .word 0x53266571
fdat_rs1_810:  .word 0x39a2b9a9
fdat_rs1_811:  .word 0xf628feb7
fdat_rs1_812:  .word 0x519a8397
fdat_rs1_813:  .word 0xd949e747
fdat_rs1_814:  .word 0xfe0b7d68
fdat_rs1_815:  .word 0xd2ec6f9d
fdat_rs1_816:  .word 0x7b9f0a06
fdat_rs1_817:  .word 0xe25828a9
fdat_rs1_818:  .word 0x6ff72e08
fdat_rs1_819:  .word 0xae72d34d
fdat_rs1_820:  .word 0xf61fde3e
fdat_rs1_821:  .word 0x1cb57d88
fdat_rs1_822:  .word 0x3bb5e465
fdat_rs1_823:  .word 0x89b4574b
fdat_rs1_824:  .word 0xae23f858
fdat_rs1_825:  .word 0x32b4b342
fdat_rs1_826:  .word 0x9c5034c7
fdat_rs1_827:  .word 0x6129cabb
fdat_rs1_828:  .word 0x9af4bc9a
fdat_rs1_829:  .word 0xc729acef
fdat_rs1_830:  .word 0x7d485219
fdat_rs1_831:  .word 0x4a3b445a
fdat_rs1_832:  .word 0x276f4a82
fdat_rs1_833:  .word 0xdd7bf9fc
fdat_rs1_834:  .word 0x6797c5aa
fdat_rs1_835:  .word 0x9c739bc0
fdat_rs1_836:  .word 0x37e6587a
fdat_rs1_837:  .word 0x292fa2d6
fdat_rs1_838:  .word 0x57b6f48d
fdat_rs1_839:  .word 0xa87ebd39
fdat_rs1_840:  .word 0xda3b9803
fdat_rs1_841:  .word 0xcf98db80
fdat_rs1_842:  .word 0xa1993841
fdat_rs1_843:  .word 0x214c72b3
fdat_rs1_844:  .word 0x4a289aa8
fdat_rs1_845:  .word 0x3d7777d1
fdat_rs1_846:  .word 0x579e0114
fdat_rs1_847:  .word 0x13d30cfc
fdat_rs1_848:  .word 0x8a19a62b
fdat_rs1_849:  .word 0x07041e7d
fdat_rs1_850:  .word 0x3b192289
fdat_rs1_851:  .word 0xb8f72c52
fdat_rs1_852:  .word 0x3a7c4f91
fdat_rs1_853:  .word 0x2eadf0ac
fdat_rs1_854:  .word 0xdbfec094
fdat_rs1_855:  .word 0x8c1ae516
fdat_rs1_856:  .word 0xbb97f344
fdat_rs1_857:  .word 0x2d614a74
fdat_rs1_858:  .word 0xdbb7bc69
fdat_rs1_859:  .word 0x75160c80
fdat_rs1_860:  .word 0x026513b2
fdat_rs1_861:  .word 0xb3301eb1
fdat_rs1_862:  .word 0x513b24cd
fdat_rs1_863:  .word 0xd2d18754
fdat_rs1_864:  .word 0x0fccea6a
fdat_rs1_865:  .word 0xb4e15b15
fdat_rs1_866:  .word 0xb546b05b
fdat_rs1_867:  .word 0x0f952852
fdat_rs1_868:  .word 0x7dbe9d89
fdat_rs1_869:  .word 0xf8791ac8
fdat_rs1_870:  .word 0xd924a386
fdat_rs1_871:  .word 0xdf5f99f4
fdat_rs1_872:  .word 0x6618d504
fdat_rs1_873:  .word 0x8849a498
fdat_rs1_874:  .word 0xf2961261
fdat_rs1_875:  .word 0xe303d466
fdat_rs1_876:  .word 0xd9d90f64
fdat_rs1_877:  .word 0x9ceb7bc1
fdat_rs1_878:  .word 0x07b60686
fdat_rs1_879:  .word 0x92dc0a8a
fdat_rs1_880:  .word 0x93997373
fdat_rs1_881:  .word 0xe19d8f2e
fdat_rs1_882:  .word 0xdd4ad4c7
fdat_rs1_883:  .word 0x0b3419eb
fdat_rs1_884:  .word 0x46365e84
fdat_rs1_885:  .word 0x92db17e9
fdat_rs1_886:  .word 0x65cdd905
fdat_rs1_887:  .word 0xdd60629d
fdat_rs1_888:  .word 0x16478c58
fdat_rs1_889:  .word 0xd11c290e
fdat_rs1_890:  .word 0x0d899e08
fdat_rs1_891:  .word 0xc9770a1f
fdat_rs1_892:  .word 0xac39d155
fdat_rs1_893:  .word 0x0f7a7733
fdat_rs1_894:  .word 0xa946bce1
fdat_rs1_895:  .word 0x4e00d0f3
fdat_rs1_896:  .word 0x3aa41dc4
fdat_rs1_897:  .word 0x0a9f9511
fdat_rs1_898:  .word 0x5398487b
fdat_rs1_899:  .word 0xf3782028
fdat_rs1_900:  .word 0x69b76600
fdat_rs1_901:  .word 0x8ca3efb3
fdat_rs1_902:  .word 0xcb7da0de
fdat_rs1_903:  .word 0x552d23d2
fdat_rs1_904:  .word 0x3436f14c
fdat_rs1_905:  .word 0x6f5f3f35
fdat_rs1_906:  .word 0x53b5a207
fdat_rs1_907:  .word 0xd20dfb9f
fdat_rs1_908:  .word 0x8723b674
fdat_rs1_909:  .word 0x0f348d99
fdat_rs1_910:  .word 0x3886ab90
fdat_rs1_911:  .word 0x0334f85a
fdat_rs1_912:  .word 0xea1670df
fdat_rs1_913:  .word 0xd13744b3
fdat_rs1_914:  .word 0x883fe017
fdat_rs1_915:  .word 0x1daf3b01
fdat_rs1_916:  .word 0xa9c63a58
fdat_rs1_917:  .word 0xec747b1c
fdat_rs1_918:  .word 0x0c6eccf7
fdat_rs1_919:  .word 0x4cad30bc
fdat_rs1_920:  .word 0x477b3771
fdat_rs1_921:  .word 0xaeef6b3d
fdat_rs1_922:  .word 0x1555f68c
fdat_rs1_923:  .word 0xb7e378a2
fdat_rs1_924:  .word 0xb602bd3e
fdat_rs1_925:  .word 0xaf130fb6
fdat_rs1_926:  .word 0x31a4314a
fdat_rs1_927:  .word 0xc723b3d7
fdat_rs1_928:  .word 0x7015aa42
fdat_rs1_929:  .word 0x0928aa3e
fdat_rs1_930:  .word 0x22ef3704
fdat_rs1_931:  .word 0xf352256b
fdat_rs1_932:  .word 0x4da52bc4
fdat_rs1_933:  .word 0x546d8880
fdat_rs1_934:  .word 0xf78ee9c7
fdat_rs1_935:  .word 0xc95bd691
fdat_rs1_936:  .word 0x5239bc94
fdat_rs1_937:  .word 0xb48c2fbf
fdat_rs1_938:  .word 0x67e301b5
fdat_rs1_939:  .word 0x240451c9
fdat_rs1_940:  .word 0x27c6864f
fdat_rs1_941:  .word 0x26c6f274
fdat_rs1_942:  .word 0x25f55d4e
fdat_rs1_943:  .word 0x5d2eb86f
fdat_rs1_944:  .word 0x828a97e7
fdat_rs1_945:  .word 0x67e912e1
fdat_rs1_946:  .word 0x3d4617ee
fdat_rs1_947:  .word 0x09322d7d
fdat_rs1_948:  .word 0x1eca00ff
fdat_rs1_949:  .word 0x2ecc47d2
fdat_rs1_950:  .word 0xf3bb23d6
fdat_rs1_951:  .word 0xab05bda1
fdat_rs1_952:  .word 0xbebbadd8
fdat_rs1_953:  .word 0x76ca2ed2
fdat_rs1_954:  .word 0x2b20cd36
fdat_rs1_955:  .word 0x524f229d
fdat_rs1_956:  .word 0x5254e959
fdat_rs1_957:  .word 0x2aef92ad
fdat_rs1_958:  .word 0x31229858
fdat_rs1_959:  .word 0xb06bc8f6
fdat_rs1_960:  .word 0x5dcce032
fdat_rs1_961:  .word 0x310e5031
fdat_rs1_962:  .word 0xf2069096
fdat_rs1_963:  .word 0x072a3060
fdat_rs1_964:  .word 0x9c33042c
fdat_rs1_965:  .word 0x06dd7d38
fdat_rs1_966:  .word 0xe4b100b8
fdat_rs1_967:  .word 0x04c5e517
fdat_rs1_968:  .word 0x3b50cc02
fdat_rs1_969:  .word 0x6f0086f2
fdat_rs1_970:  .word 0xc583b3da
fdat_rs1_971:  .word 0xae6ff135
fdat_rs1_972:  .word 0x7815f9b0
fdat_rs1_973:  .word 0x5cc84607
fdat_rs1_974:  .word 0x754bced3
fdat_rs1_975:  .word 0xaec59a2a
fdat_rs1_976:  .word 0x8542dc85
fdat_rs1_977:  .word 0x3af43c9d
fdat_rs1_978:  .word 0xae8c12b8
fdat_rs1_979:  .word 0x67be397d
fdat_rs1_980:  .word 0x8758cfc4
fdat_rs1_981:  .word 0x1de4f6af
fdat_rs1_982:  .word 0x1a455288
fdat_rs1_983:  .word 0x88db7d8c
fdat_rs1_984:  .word 0xf937aafa
fdat_rs1_985:  .word 0xca3650e2
fdat_rs1_986:  .word 0xc7044eb3
fdat_rs1_987:  .word 0x58933db0
fdat_rs1_988:  .word 0x0545acbb
fdat_rs1_989:  .word 0xb379a614
fdat_rs1_990:  .word 0x9b3eb4cc
fdat_rs1_991:  .word 0xe9519192
fdat_rs1_992:  .word 0x2eb0d339
fdat_rs1_993:  .word 0xf575e7bb
fdat_rs1_994:  .word 0xee907664
fdat_rs1_995:  .word 0x53960a4c
fdat_rs1_996:  .word 0x87973a27
fdat_rs1_997:  .word 0xa925b817
fdat_rs1_998:  .word 0x1c1a1e45
fdat_rs1_999:  .word 0x20dcdbeb
fdat_rs1_1000:  .word 0x2d3e0667
fdat_rs1_1001:  .word 0x53d05d72
fdat_rs1_1002:  .word 0xb822ad39
fdat_rs1_1003:  .word 0x4ffe6390
fdat_rs1_1004:  .word 0x9ef29035
fdat_rs1_1005:  .word 0xd0450fa2
fdat_rs1_1006:  .word 0x0d89744e
fdat_rs1_1007:  .word 0x346489f5
fdat_rs1_1008:  .word 0xd48dd733
fdat_rs1_1009:  .word 0x5d857c31
fdat_rs1_1010:  .word 0x9b185404
fdat_rs1_1011:  .word 0x41059de4
fdat_rs1_1012:  .word 0x12d11883
fdat_rs1_1013:  .word 0xa647e794
fdat_rs1_1014:  .word 0xd5710481
fdat_rs1_1015:  .word 0xcca75bc9
fdat_rs1_1016:  .word 0x28ea8990
fdat_rs1_1017:  .word 0x4914fd85
fdat_rs1_1018:  .word 0x9edd447a
fdat_rs1_1019:  .word 0x1a012a8e
fdat_rs1_1020:  .word 0x697d2a85
fdat_rs1_1021:  .word 0x0e3deb9d
fdat_rs1_1022:  .word 0x9da1bcd6
fdat_rs1_1023:  .word 0x5254ddf9
fdat_rs1_1024:  .word 0x0c3eab36

fdat_rs2:
fdat_rs2_0:  .word 0xd5173d3b
fdat_rs2_1:  .word 0x1c954c88
fdat_rs2_2:  .word 0xae8f2f8a
fdat_rs2_3:  .word 0xe18cd6d3
fdat_rs2_4:  .word 0xe7128ead
fdat_rs2_5:  .word 0x430c45f2
fdat_rs2_6:  .word 0x1fece821
fdat_rs2_7:  .word 0xdbe8db2f
fdat_rs2_8:  .word 0x9deac411
fdat_rs2_9:  .word 0xd578536b
fdat_rs2_10:  .word 0x5a2112c5
fdat_rs2_11:  .word 0x33755502
fdat_rs2_12:  .word 0x41f512c8
fdat_rs2_13:  .word 0x5b07c90e
fdat_rs2_14:  .word 0x30e95eba
fdat_rs2_15:  .word 0xdc43d0d7
fdat_rs2_16:  .word 0xce250988
fdat_rs2_17:  .word 0x546ef0b9
fdat_rs2_18:  .word 0x7c69a228
fdat_rs2_19:  .word 0x540da0bc
fdat_rs2_20:  .word 0xb917bde6
fdat_rs2_21:  .word 0x2b14a548
fdat_rs2_22:  .word 0x5c51c72f
fdat_rs2_23:  .word 0xe66cd16e
fdat_rs2_24:  .word 0xf8e67fb0
fdat_rs2_25:  .word 0x45b5c5f1
fdat_rs2_26:  .word 0x6bd9ba9a
fdat_rs2_27:  .word 0x9c1e8667
fdat_rs2_28:  .word 0x8a2c7d45
fdat_rs2_29:  .word 0xaf61ac13
fdat_rs2_30:  .word 0xcc06f22d
fdat_rs2_31:  .word 0x6ac84f04
fdat_rs2_32:  .word 0x581f3afc
fdat_rs2_33:  .word 0x6122b26e
fdat_rs2_34:  .word 0xff4914a8
fdat_rs2_35:  .word 0xf0a80a4a
fdat_rs2_36:  .word 0x44577dfa
fdat_rs2_37:  .word 0xe31172b1
fdat_rs2_38:  .word 0x30b00f6c
fdat_rs2_39:  .word 0x9cd4367e
fdat_rs2_40:  .word 0x53266571
fdat_rs2_41:  .word 0x39a2b9a9
fdat_rs2_42:  .word 0xf628feb7
fdat_rs2_43:  .word 0x519a8397
fdat_rs2_44:  .word 0xd949e747
fdat_rs2_45:  .word 0xfe0b7d68
fdat_rs2_46:  .word 0xd2ec6f9d
fdat_rs2_47:  .word 0x7b9f0a06
fdat_rs2_48:  .word 0xe25828a9
fdat_rs2_49:  .word 0x6ff72e08
fdat_rs2_50:  .word 0xae72d34d
fdat_rs2_51:  .word 0xf61fde3e
fdat_rs2_52:  .word 0x1cb57d88
fdat_rs2_53:  .word 0x3bb5e465
fdat_rs2_54:  .word 0x89b4574b
fdat_rs2_55:  .word 0xae23f858
fdat_rs2_56:  .word 0x32b4b342
fdat_rs2_57:  .word 0x9c5034c7
fdat_rs2_58:  .word 0x6129cabb
fdat_rs2_59:  .word 0x9af4bc9a
fdat_rs2_60:  .word 0xc729acef
fdat_rs2_61:  .word 0x7d485219
fdat_rs2_62:  .word 0x4a3b445a
fdat_rs2_63:  .word 0x276f4a82
fdat_rs2_64:  .word 0xdd7bf9fc
fdat_rs2_65:  .word 0x6797c5aa
fdat_rs2_66:  .word 0x9c739bc0
fdat_rs2_67:  .word 0x37e6587a
fdat_rs2_68:  .word 0x292fa2d6
fdat_rs2_69:  .word 0x57b6f48d
fdat_rs2_70:  .word 0xa87ebd39
fdat_rs2_71:  .word 0xda3b9803
fdat_rs2_72:  .word 0xcf98db80
fdat_rs2_73:  .word 0xa1993841
fdat_rs2_74:  .word 0x214c72b3
fdat_rs2_75:  .word 0x4a289aa8
fdat_rs2_76:  .word 0x3d7777d1
fdat_rs2_77:  .word 0x579e0114
fdat_rs2_78:  .word 0x13d30cfc
fdat_rs2_79:  .word 0x8a19a62b
fdat_rs2_80:  .word 0x07041e7d
fdat_rs2_81:  .word 0x3b192289
fdat_rs2_82:  .word 0xb8f72c52
fdat_rs2_83:  .word 0x3a7c4f91
fdat_rs2_84:  .word 0x2eadf0ac
fdat_rs2_85:  .word 0xdbfec094
fdat_rs2_86:  .word 0x8c1ae516
fdat_rs2_87:  .word 0xbb97f344
fdat_rs2_88:  .word 0x2d614a74
fdat_rs2_89:  .word 0xdbb7bc69
fdat_rs2_90:  .word 0x75160c80
fdat_rs2_91:  .word 0x026513b2
fdat_rs2_92:  .word 0xb3301eb1
fdat_rs2_93:  .word 0x513b24cd
fdat_rs2_94:  .word 0xd2d18754
fdat_rs2_95:  .word 0x0fccea6a
fdat_rs2_96:  .word 0xb4e15b15
fdat_rs2_97:  .word 0xb546b05b
fdat_rs2_98:  .word 0x0f952852
fdat_rs2_99:  .word 0x7dbe9d89
fdat_rs2_100:  .word 0xf8791ac8
fdat_rs2_101:  .word 0xd924a386
fdat_rs2_102:  .word 0xdf5f99f4
fdat_rs2_103:  .word 0x6618d504
fdat_rs2_104:  .word 0x8849a498
fdat_rs2_105:  .word 0xf2961261
fdat_rs2_106:  .word 0xe303d466
fdat_rs2_107:  .word 0xd9d90f64
fdat_rs2_108:  .word 0x9ceb7bc1
fdat_rs2_109:  .word 0x07b60686
fdat_rs2_110:  .word 0x92dc0a8a
fdat_rs2_111:  .word 0x93997373
fdat_rs2_112:  .word 0xe19d8f2e
fdat_rs2_113:  .word 0xdd4ad4c7
fdat_rs2_114:  .word 0x0b3419eb
fdat_rs2_115:  .word 0x46365e84
fdat_rs2_116:  .word 0x92db17e9
fdat_rs2_117:  .word 0x65cdd905
fdat_rs2_118:  .word 0xdd60629d
fdat_rs2_119:  .word 0x16478c58
fdat_rs2_120:  .word 0xd11c290e
fdat_rs2_121:  .word 0x0d899e08
fdat_rs2_122:  .word 0xc9770a1f
fdat_rs2_123:  .word 0xac39d155
fdat_rs2_124:  .word 0x0f7a7733
fdat_rs2_125:  .word 0xa946bce1
fdat_rs2_126:  .word 0x4e00d0f3
fdat_rs2_127:  .word 0x3aa41dc4
fdat_rs2_128:  .word 0x0a9f9511
fdat_rs2_129:  .word 0x5398487b
fdat_rs2_130:  .word 0xf3782028
fdat_rs2_131:  .word 0x69b76600
fdat_rs2_132:  .word 0x8ca3efb3
fdat_rs2_133:  .word 0xcb7da0de
fdat_rs2_134:  .word 0x552d23d2
fdat_rs2_135:  .word 0x3436f14c
fdat_rs2_136:  .word 0x6f5f3f35
fdat_rs2_137:  .word 0x53b5a207
fdat_rs2_138:  .word 0xd20dfb9f
fdat_rs2_139:  .word 0x8723b674
fdat_rs2_140:  .word 0x0f348d99
fdat_rs2_141:  .word 0x3886ab90
fdat_rs2_142:  .word 0x0334f85a
fdat_rs2_143:  .word 0xea1670df
fdat_rs2_144:  .word 0xd13744b3
fdat_rs2_145:  .word 0x883fe017
fdat_rs2_146:  .word 0x1daf3b01
fdat_rs2_147:  .word 0xa9c63a58
fdat_rs2_148:  .word 0xec747b1c
fdat_rs2_149:  .word 0x0c6eccf7
fdat_rs2_150:  .word 0x4cad30bc
fdat_rs2_151:  .word 0x477b3771
fdat_rs2_152:  .word 0xaeef6b3d
fdat_rs2_153:  .word 0x1555f68c
fdat_rs2_154:  .word 0xb7e378a2
fdat_rs2_155:  .word 0xb602bd3e
fdat_rs2_156:  .word 0xaf130fb6
fdat_rs2_157:  .word 0x31a4314a
fdat_rs2_158:  .word 0xc723b3d7
fdat_rs2_159:  .word 0x7015aa42
fdat_rs2_160:  .word 0x0928aa3e
fdat_rs2_161:  .word 0x22ef3704
fdat_rs2_162:  .word 0xf352256b
fdat_rs2_163:  .word 0x4da52bc4
fdat_rs2_164:  .word 0x546d8880
fdat_rs2_165:  .word 0xf78ee9c7
fdat_rs2_166:  .word 0xc95bd691
fdat_rs2_167:  .word 0x5239bc94
fdat_rs2_168:  .word 0xb48c2fbf
fdat_rs2_169:  .word 0x67e301b5
fdat_rs2_170:  .word 0x240451c9
fdat_rs2_171:  .word 0x27c6864f
fdat_rs2_172:  .word 0x26c6f274
fdat_rs2_173:  .word 0x25f55d4e
fdat_rs2_174:  .word 0x5d2eb86f
fdat_rs2_175:  .word 0x828a97e7
fdat_rs2_176:  .word 0x67e912e1
fdat_rs2_177:  .word 0x3d4617ee
fdat_rs2_178:  .word 0x09322d7d
fdat_rs2_179:  .word 0x1eca00ff
fdat_rs2_180:  .word 0x2ecc47d2
fdat_rs2_181:  .word 0xf3bb23d6
fdat_rs2_182:  .word 0xab05bda1
fdat_rs2_183:  .word 0xbebbadd8
fdat_rs2_184:  .word 0x76ca2ed2
fdat_rs2_185:  .word 0x2b20cd36
fdat_rs2_186:  .word 0x524f229d
fdat_rs2_187:  .word 0x5254e959
fdat_rs2_188:  .word 0x2aef92ad
fdat_rs2_189:  .word 0x31229858
fdat_rs2_190:  .word 0xb06bc8f6
fdat_rs2_191:  .word 0x5dcce032
fdat_rs2_192:  .word 0x310e5031
fdat_rs2_193:  .word 0xf2069096
fdat_rs2_194:  .word 0x072a3060
fdat_rs2_195:  .word 0x9c33042c
fdat_rs2_196:  .word 0x06dd7d38
fdat_rs2_197:  .word 0xe4b100b8
fdat_rs2_198:  .word 0x04c5e517
fdat_rs2_199:  .word 0x3b50cc02
fdat_rs2_200:  .word 0x6f0086f2
fdat_rs2_201:  .word 0xc583b3da
fdat_rs2_202:  .word 0xae6ff135
fdat_rs2_203:  .word 0x7815f9b0
fdat_rs2_204:  .word 0x5cc84607
fdat_rs2_205:  .word 0x754bced3
fdat_rs2_206:  .word 0xaec59a2a
fdat_rs2_207:  .word 0x8542dc85
fdat_rs2_208:  .word 0x3af43c9d
fdat_rs2_209:  .word 0xae8c12b8
fdat_rs2_210:  .word 0x67be397d
fdat_rs2_211:  .word 0x8758cfc4
fdat_rs2_212:  .word 0x1de4f6af
fdat_rs2_213:  .word 0x1a455288
fdat_rs2_214:  .word 0x88db7d8c
fdat_rs2_215:  .word 0xf937aafa
fdat_rs2_216:  .word 0xca3650e2
fdat_rs2_217:  .word 0xc7044eb3
fdat_rs2_218:  .word 0x58933db0
fdat_rs2_219:  .word 0x0545acbb
fdat_rs2_220:  .word 0xb379a614
fdat_rs2_221:  .word 0x9b3eb4cc
fdat_rs2_222:  .word 0xe9519192
fdat_rs2_223:  .word 0x2eb0d339
fdat_rs2_224:  .word 0xf575e7bb
fdat_rs2_225:  .word 0xee907664
fdat_rs2_226:  .word 0x53960a4c
fdat_rs2_227:  .word 0x87973a27
fdat_rs2_228:  .word 0xa925b817
fdat_rs2_229:  .word 0x1c1a1e45
fdat_rs2_230:  .word 0x20dcdbeb
fdat_rs2_231:  .word 0x2d3e0667
fdat_rs2_232:  .word 0x53d05d72
fdat_rs2_233:  .word 0xb822ad39
fdat_rs2_234:  .word 0x4ffe6390
fdat_rs2_235:  .word 0x9ef29035
fdat_rs2_236:  .word 0xd0450fa2
fdat_rs2_237:  .word 0x0d89744e
fdat_rs2_238:  .word 0x346489f5
fdat_rs2_239:  .word 0xd48dd733
fdat_rs2_240:  .word 0x5d857c31
fdat_rs2_241:  .word 0x9b185404
fdat_rs2_242:  .word 0x41059de4
fdat_rs2_243:  .word 0x12d11883
fdat_rs2_244:  .word 0xa647e794
fdat_rs2_245:  .word 0xd5710481
fdat_rs2_246:  .word 0xcca75bc9
fdat_rs2_247:  .word 0x28ea8990
fdat_rs2_248:  .word 0x4914fd85
fdat_rs2_249:  .word 0x9edd447a
fdat_rs2_250:  .word 0x1a012a8e
fdat_rs2_251:  .word 0x697d2a85
fdat_rs2_252:  .word 0x0e3deb9d
fdat_rs2_253:  .word 0x9da1bcd6
fdat_rs2_254:  .word 0x5254ddf9
fdat_rs2_255:  .word 0x0c3eab36
fdat_rs2_256:  .word 0x16b77bce
fdat_rs2_257:  .word 0x85a8a33c
fdat_rs2_258:  .word 0xbe82002a
fdat_rs2_259:  .word 0x6b4eed81
fdat_rs2_260:  .word 0xfcf2b7b2
fdat_rs2_261:  .word 0xb1a3f397
fdat_rs2_262:  .word 0x81815039
fdat_rs2_263:  .word 0x7df4c24f
fdat_rs2_264:  .word 0x0827c929
fdat_rs2_265:  .word 0xe1f1c6ec
fdat_rs2_266:  .word 0x9b111081
fdat_rs2_267:  .word 0x08c53c5a
fdat_rs2_268:  .word 0x16e35174
fdat_rs2_269:  .word 0x20553b83
fdat_rs2_270:  .word 0xf4ed3db2
fdat_rs2_271:  .word 0x5879b2ca
fdat_rs2_272:  .word 0xf80d83b9
fdat_rs2_273:  .word 0x7b48384f
fdat_rs2_274:  .word 0x89a6c1a0
fdat_rs2_275:  .word 0x31fe5439
fdat_rs2_276:  .word 0x6ee2f5aa
fdat_rs2_277:  .word 0x330f5715
fdat_rs2_278:  .word 0x9f46020f
fdat_rs2_279:  .word 0xb697e1c3
fdat_rs2_280:  .word 0xf518acf6
fdat_rs2_281:  .word 0x3958ea56
fdat_rs2_282:  .word 0x56a29c95
fdat_rs2_283:  .word 0xef286e01
fdat_rs2_284:  .word 0xf6cad350
fdat_rs2_285:  .word 0xe95400f6
fdat_rs2_286:  .word 0x0b2ac811
fdat_rs2_287:  .word 0x3ced78db
fdat_rs2_288:  .word 0x75809524
fdat_rs2_289:  .word 0xc5e59fb2
fdat_rs2_290:  .word 0xdd81fa0a
fdat_rs2_291:  .word 0xec9fb18d
fdat_rs2_292:  .word 0x30e1830a
fdat_rs2_293:  .word 0x21d2bbb0
fdat_rs2_294:  .word 0x731a1760
fdat_rs2_295:  .word 0x19167ebd
fdat_rs2_296:  .word 0x7e537a04
fdat_rs2_297:  .word 0xcf9dc475
fdat_rs2_298:  .word 0x17f847a1
fdat_rs2_299:  .word 0x5f4e2f05
fdat_rs2_300:  .word 0x11065906
fdat_rs2_301:  .word 0xa9663dbb
fdat_rs2_302:  .word 0xb6d5707b
fdat_rs2_303:  .word 0xef201e7b
fdat_rs2_304:  .word 0xb4a84974
fdat_rs2_305:  .word 0xc9feb8d1
fdat_rs2_306:  .word 0xba38c7b1
fdat_rs2_307:  .word 0x1877b042
fdat_rs2_308:  .word 0x91778cbb
fdat_rs2_309:  .word 0x2e715ec9
fdat_rs2_310:  .word 0xebc88fd7
fdat_rs2_311:  .word 0x6947de05
fdat_rs2_312:  .word 0xaec12b86
fdat_rs2_313:  .word 0x6164c29e
fdat_rs2_314:  .word 0xba68fa1d
fdat_rs2_315:  .word 0x17a54142
fdat_rs2_316:  .word 0xbb7b049e
fdat_rs2_317:  .word 0x08fab1e5
fdat_rs2_318:  .word 0x1af6bb18
fdat_rs2_319:  .word 0x74348a1d
fdat_rs2_320:  .word 0xf41f5f9b
fdat_rs2_321:  .word 0x604f267a
fdat_rs2_322:  .word 0x8543a485
fdat_rs2_323:  .word 0x17fca002
fdat_rs2_324:  .word 0x3777625d
fdat_rs2_325:  .word 0xca42df1f
fdat_rs2_326:  .word 0xe9591298
fdat_rs2_327:  .word 0x655428d1
fdat_rs2_328:  .word 0x678995cf
fdat_rs2_329:  .word 0x7ea84660
fdat_rs2_330:  .word 0x049f1faf
fdat_rs2_331:  .word 0x9a6ccdab
fdat_rs2_332:  .word 0xf75264e4
fdat_rs2_333:  .word 0x5b832e4f
fdat_rs2_334:  .word 0x047e6b3b
fdat_rs2_335:  .word 0xc18c4e25
fdat_rs2_336:  .word 0x6676bf0e
fdat_rs2_337:  .word 0x86738089
fdat_rs2_338:  .word 0x1ee4a5ed
fdat_rs2_339:  .word 0xb9545c29
fdat_rs2_340:  .word 0x2c7cb95f
fdat_rs2_341:  .word 0x8ab6881d
fdat_rs2_342:  .word 0x32dc44c0
fdat_rs2_343:  .word 0x7915e449
fdat_rs2_344:  .word 0xb68216c7
fdat_rs2_345:  .word 0x53c4ffc4
fdat_rs2_346:  .word 0xc01a2b07
fdat_rs2_347:  .word 0x6d56c00d
fdat_rs2_348:  .word 0x231896cb
fdat_rs2_349:  .word 0x3a6c685c
fdat_rs2_350:  .word 0xe57e27bd
fdat_rs2_351:  .word 0x3e6f7cbe
fdat_rs2_352:  .word 0x8e74e2da
fdat_rs2_353:  .word 0xfcea6243
fdat_rs2_354:  .word 0x80eedc35
fdat_rs2_355:  .word 0x048d92fb
fdat_rs2_356:  .word 0xe8e803f4
fdat_rs2_357:  .word 0x12c54b7b
fdat_rs2_358:  .word 0x2d633cae
fdat_rs2_359:  .word 0xbe8c5af3
fdat_rs2_360:  .word 0x379def6c
fdat_rs2_361:  .word 0xe298ae9a
fdat_rs2_362:  .word 0x626b7cc5
fdat_rs2_363:  .word 0x8f61b3a5
fdat_rs2_364:  .word 0xe4219193
fdat_rs2_365:  .word 0x01b8cfcd
fdat_rs2_366:  .word 0x04bfcdf8
fdat_rs2_367:  .word 0xd6cbbf81
fdat_rs2_368:  .word 0x4bd075af
fdat_rs2_369:  .word 0xe291d09b
fdat_rs2_370:  .word 0xf0503b64
fdat_rs2_371:  .word 0x21124d60
fdat_rs2_372:  .word 0x17d5856b
fdat_rs2_373:  .word 0x7989bf32
fdat_rs2_374:  .word 0x6b84a91f
fdat_rs2_375:  .word 0x3019a087
fdat_rs2_376:  .word 0x01c79214
fdat_rs2_377:  .word 0xea939be7
fdat_rs2_378:  .word 0xc375122d
fdat_rs2_379:  .word 0x116ec3d2
fdat_rs2_380:  .word 0x2d7eeffe
fdat_rs2_381:  .word 0xe013be07
fdat_rs2_382:  .word 0xb45484fc
fdat_rs2_383:  .word 0x2dcda7f1
fdat_rs2_384:  .word 0x2e2151fa
fdat_rs2_385:  .word 0x500c5f17
fdat_rs2_386:  .word 0x984b6942
fdat_rs2_387:  .word 0x9960c98a
fdat_rs2_388:  .word 0xc0c7c26a
fdat_rs2_389:  .word 0xc714bae1
fdat_rs2_390:  .word 0x7c086243
fdat_rs2_391:  .word 0x9a4397f5
fdat_rs2_392:  .word 0xb02b37fb
fdat_rs2_393:  .word 0xec0ac4f0
fdat_rs2_394:  .word 0xabb5045d
fdat_rs2_395:  .word 0x4de1938f
fdat_rs2_396:  .word 0x4ef87036
fdat_rs2_397:  .word 0x477553ed
fdat_rs2_398:  .word 0xdf884a52
fdat_rs2_399:  .word 0xe364a2c3
fdat_rs2_400:  .word 0x5e3d04d3
fdat_rs2_401:  .word 0xa37172c6
fdat_rs2_402:  .word 0x39c33e1d
fdat_rs2_403:  .word 0x5fa55642
fdat_rs2_404:  .word 0xc6588c96
fdat_rs2_405:  .word 0x57aa9ec7
fdat_rs2_406:  .word 0x52a373c8
fdat_rs2_407:  .word 0x868a5027
fdat_rs2_408:  .word 0xafc3fa5e
fdat_rs2_409:  .word 0x804beeba
fdat_rs2_410:  .word 0xbf812338
fdat_rs2_411:  .word 0x53cf2324
fdat_rs2_412:  .word 0x1c2a2099
fdat_rs2_413:  .word 0x77275ab3
fdat_rs2_414:  .word 0x8f53143f
fdat_rs2_415:  .word 0x7868d163
fdat_rs2_416:  .word 0x3362ef56
fdat_rs2_417:  .word 0xf5c4c30d
fdat_rs2_418:  .word 0x3413c9a6
fdat_rs2_419:  .word 0xbae49486
fdat_rs2_420:  .word 0x4d195ecf
fdat_rs2_421:  .word 0x55085e69
fdat_rs2_422:  .word 0x497af66c
fdat_rs2_423:  .word 0x776d41f0
fdat_rs2_424:  .word 0x6b06fcef
fdat_rs2_425:  .word 0xec9c3cae
fdat_rs2_426:  .word 0xbbcdcd90
fdat_rs2_427:  .word 0xa78b9e5d
fdat_rs2_428:  .word 0xb517d569
fdat_rs2_429:  .word 0x58ecb82f
fdat_rs2_430:  .word 0x897683b0
fdat_rs2_431:  .word 0x017fed42
fdat_rs2_432:  .word 0x7ac46a81
fdat_rs2_433:  .word 0x6b3424e3
fdat_rs2_434:  .word 0xf78c7be0
fdat_rs2_435:  .word 0x225c9001
fdat_rs2_436:  .word 0x716f74e5
fdat_rs2_437:  .word 0x5ea07308
fdat_rs2_438:  .word 0x9cb1f841
fdat_rs2_439:  .word 0x69773182
fdat_rs2_440:  .word 0xba7c2bc1
fdat_rs2_441:  .word 0x3615b6cd
fdat_rs2_442:  .word 0xb7cbdb1c
fdat_rs2_443:  .word 0x57503bd7
fdat_rs2_444:  .word 0x08d9043f
fdat_rs2_445:  .word 0xde4c459d
fdat_rs2_446:  .word 0x7a26c712
fdat_rs2_447:  .word 0x563028c3
fdat_rs2_448:  .word 0x795e33bf
fdat_rs2_449:  .word 0xf2d19a38
fdat_rs2_450:  .word 0xf20bed88
fdat_rs2_451:  .word 0x7e91e990
fdat_rs2_452:  .word 0x28403d8f
fdat_rs2_453:  .word 0xe451d935
fdat_rs2_454:  .word 0x6cbd6936
fdat_rs2_455:  .word 0x4bb4197f
fdat_rs2_456:  .word 0xb2301f0d
fdat_rs2_457:  .word 0xc0fe2faf
fdat_rs2_458:  .word 0x16598049
fdat_rs2_459:  .word 0x8b074d85
fdat_rs2_460:  .word 0xb3044c5f
fdat_rs2_461:  .word 0x52e624b8
fdat_rs2_462:  .word 0xe4b5a3ae
fdat_rs2_463:  .word 0x223b3100
fdat_rs2_464:  .word 0x60e69e76
fdat_rs2_465:  .word 0x7b1ae2f0
fdat_rs2_466:  .word 0x8837caa2
fdat_rs2_467:  .word 0xa64768d4
fdat_rs2_468:  .word 0xe3cafbaa
fdat_rs2_469:  .word 0x409e0a27
fdat_rs2_470:  .word 0x8bca7953
fdat_rs2_471:  .word 0x54110db1
fdat_rs2_472:  .word 0xdd376b5e
fdat_rs2_473:  .word 0x82997f29
fdat_rs2_474:  .word 0x355719f2
fdat_rs2_475:  .word 0x409cf5f2
fdat_rs2_476:  .word 0xd0f04044
fdat_rs2_477:  .word 0xb1f11cd7
fdat_rs2_478:  .word 0xde5e4fa6
fdat_rs2_479:  .word 0xd82dd4fd
fdat_rs2_480:  .word 0xe58d530d
fdat_rs2_481:  .word 0x4949dc26
fdat_rs2_482:  .word 0x8e5f9ede
fdat_rs2_483:  .word 0x8e4a63c9
fdat_rs2_484:  .word 0x3e0b7f6a
fdat_rs2_485:  .word 0x721e2d49
fdat_rs2_486:  .word 0xb9420e82
fdat_rs2_487:  .word 0x9f300bb4
fdat_rs2_488:  .word 0xdaf09bbc
fdat_rs2_489:  .word 0x33939602
fdat_rs2_490:  .word 0x22d815c2
fdat_rs2_491:  .word 0xdd6461b8
fdat_rs2_492:  .word 0xa0c1de71
fdat_rs2_493:  .word 0x8412c769
fdat_rs2_494:  .word 0xe03a03d1
fdat_rs2_495:  .word 0x1d7e0df1
fdat_rs2_496:  .word 0xaa1ba77a
fdat_rs2_497:  .word 0x1fd16c33
fdat_rs2_498:  .word 0xe6b2620f
fdat_rs2_499:  .word 0xd80b4e8d
fdat_rs2_500:  .word 0x8c57dfcc
fdat_rs2_501:  .word 0x72d00ff0
fdat_rs2_502:  .word 0x8d71f3bd
fdat_rs2_503:  .word 0x90df5366
fdat_rs2_504:  .word 0x65e2e213
fdat_rs2_505:  .word 0xd4af903f
fdat_rs2_506:  .word 0x0b402769
fdat_rs2_507:  .word 0xe520a1a5
fdat_rs2_508:  .word 0x2fd98a32
fdat_rs2_509:  .word 0x8d31c277
fdat_rs2_510:  .word 0x431be53f
fdat_rs2_511:  .word 0x163af993
fdat_rs2_512:  .word 0x00000000
fdat_rs2_513:  .word 0xBF800000
fdat_rs2_514:  .word 0x3F800000
fdat_rs2_515:  .word 0xFF7FFFFF
fdat_rs2_516:  .word 0x7F7FFFFF
fdat_rs2_517:  .word 0x80855555
fdat_rs2_518:  .word 0x00800001
fdat_rs2_519:  .word 0x80800000
fdat_rs2_520:  .word 0x00800000
fdat_rs2_521:  .word 0x807FFFFF
fdat_rs2_522:  .word 0x007FFFFF
fdat_rs2_523:  .word 0x807FFFFE
fdat_rs2_524:  .word 0x00000002
fdat_rs2_525:  .word 0x80000001
fdat_rs2_526:  .word 0x00000001
fdat_rs2_527:  .word 0x80000000
fdat_rs2_528:  .word 0x00000000
fdat_rs2_529:  .word 0xBF800000
fdat_rs2_530:  .word 0x3F800000
fdat_rs2_531:  .word 0xFF7FFFFF
fdat_rs2_532:  .word 0x7F7FFFFF
fdat_rs2_533:  .word 0x80855555
fdat_rs2_534:  .word 0x00800001
fdat_rs2_535:  .word 0x80800000
fdat_rs2_536:  .word 0x00800000
fdat_rs2_537:  .word 0x807FFFFF
fdat_rs2_538:  .word 0x007FFFFF
fdat_rs2_539:  .word 0x807FFFFE
fdat_rs2_540:  .word 0x00000002
fdat_rs2_541:  .word 0x80000001
fdat_rs2_542:  .word 0x00000001
fdat_rs2_543:  .word 0x80000000
fdat_rs2_544:  .word 0x00000000
fdat_rs2_545:  .word 0xBF800000
fdat_rs2_546:  .word 0x3F800000
fdat_rs2_547:  .word 0xFF7FFFFF
fdat_rs2_548:  .word 0x7F7FFFFF
fdat_rs2_549:  .word 0x80855555
fdat_rs2_550:  .word 0x00800001
fdat_rs2_551:  .word 0x80800000
fdat_rs2_552:  .word 0x00800000
fdat_rs2_553:  .word 0x807FFFFF
fdat_rs2_554:  .word 0x007FFFFF
fdat_rs2_555:  .word 0x807FFFFE
fdat_rs2_556:  .word 0x00000002
fdat_rs2_557:  .word 0x80000001
fdat_rs2_558:  .word 0x00000001
fdat_rs2_559:  .word 0x80000000
fdat_rs2_560:  .word 0x00000000
fdat_rs2_561:  .word 0xBF800000
fdat_rs2_562:  .word 0x3F800000
fdat_rs2_563:  .word 0xFF7FFFFF
fdat_rs2_564:  .word 0x7F7FFFFF
fdat_rs2_565:  .word 0x80855555
fdat_rs2_566:  .word 0x00800001
fdat_rs2_567:  .word 0x80800000
fdat_rs2_568:  .word 0x00800000
fdat_rs2_569:  .word 0x807FFFFF
fdat_rs2_570:  .word 0x007FFFFF
fdat_rs2_571:  .word 0x807FFFFE
fdat_rs2_572:  .word 0x00000002
fdat_rs2_573:  .word 0x80000001
fdat_rs2_574:  .word 0x00000001
fdat_rs2_575:  .word 0x80000000
fdat_rs2_576:  .word 0x00000000
fdat_rs2_577:  .word 0xBF800000
fdat_rs2_578:  .word 0x3F800000
fdat_rs2_579:  .word 0xFF7FFFFF
fdat_rs2_580:  .word 0x7F7FFFFF
fdat_rs2_581:  .word 0x80855555
fdat_rs2_582:  .word 0x00800001
fdat_rs2_583:  .word 0x80800000
fdat_rs2_584:  .word 0x00800000
fdat_rs2_585:  .word 0x807FFFFF
fdat_rs2_586:  .word 0x007FFFFF
fdat_rs2_587:  .word 0x807FFFFE
fdat_rs2_588:  .word 0x00000002
fdat_rs2_589:  .word 0x80000001
fdat_rs2_590:  .word 0x00000001
fdat_rs2_591:  .word 0x80000000
fdat_rs2_592:  .word 0x00000000
fdat_rs2_593:  .word 0xBF800000
fdat_rs2_594:  .word 0x3F800000
fdat_rs2_595:  .word 0xFF7FFFFF
fdat_rs2_596:  .word 0x7F7FFFFF
fdat_rs2_597:  .word 0x80855555
fdat_rs2_598:  .word 0x00800001
fdat_rs2_599:  .word 0x80800000
fdat_rs2_600:  .word 0x00800000
fdat_rs2_601:  .word 0x807FFFFF
fdat_rs2_602:  .word 0x007FFFFF
fdat_rs2_603:  .word 0x807FFFFE
fdat_rs2_604:  .word 0x00000002
fdat_rs2_605:  .word 0x80000001
fdat_rs2_606:  .word 0x00000001
fdat_rs2_607:  .word 0x80000000
fdat_rs2_608:  .word 0x00000000
fdat_rs2_609:  .word 0xBF800000
fdat_rs2_610:  .word 0x3F800000
fdat_rs2_611:  .word 0xFF7FFFFF
fdat_rs2_612:  .word 0x7F7FFFFF
fdat_rs2_613:  .word 0x80855555
fdat_rs2_614:  .word 0x00800001
fdat_rs2_615:  .word 0x80800000
fdat_rs2_616:  .word 0x00800000
fdat_rs2_617:  .word 0x807FFFFF
fdat_rs2_618:  .word 0x007FFFFF
fdat_rs2_619:  .word 0x807FFFFE
fdat_rs2_620:  .word 0x00000002
fdat_rs2_621:  .word 0x80000001
fdat_rs2_622:  .word 0x00000001
fdat_rs2_623:  .word 0x80000000
fdat_rs2_624:  .word 0x00000000
fdat_rs2_625:  .word 0xBF800000
fdat_rs2_626:  .word 0x3F800000
fdat_rs2_627:  .word 0xFF7FFFFF
fdat_rs2_628:  .word 0x7F7FFFFF
fdat_rs2_629:  .word 0x80855555
fdat_rs2_630:  .word 0x00800001
fdat_rs2_631:  .word 0x80800000
fdat_rs2_632:  .word 0x00800000
fdat_rs2_633:  .word 0x807FFFFF
fdat_rs2_634:  .word 0x007FFFFF
fdat_rs2_635:  .word 0x807FFFFE
fdat_rs2_636:  .word 0x00000002
fdat_rs2_637:  .word 0x80000001
fdat_rs2_638:  .word 0x00000001
fdat_rs2_639:  .word 0x80000000
fdat_rs2_640:  .word 0x00000000
fdat_rs2_641:  .word 0xBF800000
fdat_rs2_642:  .word 0x3F800000
fdat_rs2_643:  .word 0xFF7FFFFF
fdat_rs2_644:  .word 0x7F7FFFFF
fdat_rs2_645:  .word 0x80855555
fdat_rs2_646:  .word 0x00800001
fdat_rs2_647:  .word 0x80800000
fdat_rs2_648:  .word 0x00800000
fdat_rs2_649:  .word 0x807FFFFF
fdat_rs2_650:  .word 0x007FFFFF
fdat_rs2_651:  .word 0x807FFFFE
fdat_rs2_652:  .word 0x00000002
fdat_rs2_653:  .word 0x80000001
fdat_rs2_654:  .word 0x00000001
fdat_rs2_655:  .word 0x80000000
fdat_rs2_656:  .word 0x00000000
fdat_rs2_657:  .word 0xBF800000
fdat_rs2_658:  .word 0x3F800000
fdat_rs2_659:  .word 0xFF7FFFFF
fdat_rs2_660:  .word 0x7F7FFFFF
fdat_rs2_661:  .word 0x80855555
fdat_rs2_662:  .word 0x00800001
fdat_rs2_663:  .word 0x80800000
fdat_rs2_664:  .word 0x00800000
fdat_rs2_665:  .word 0x807FFFFF
fdat_rs2_666:  .word 0x007FFFFF
fdat_rs2_667:  .word 0x807FFFFE
fdat_rs2_668:  .word 0x00000002
fdat_rs2_669:  .word 0x80000001
fdat_rs2_670:  .word 0x00000001
fdat_rs2_671:  .word 0x80000000
fdat_rs2_672:  .word 0x00000000
fdat_rs2_673:  .word 0xBF800000
fdat_rs2_674:  .word 0x3F800000
fdat_rs2_675:  .word 0xFF7FFFFF
fdat_rs2_676:  .word 0x7F7FFFFF
fdat_rs2_677:  .word 0x80855555
fdat_rs2_678:  .word 0x00800001
fdat_rs2_679:  .word 0x80800000
fdat_rs2_680:  .word 0x00800000
fdat_rs2_681:  .word 0x807FFFFF
fdat_rs2_682:  .word 0x007FFFFF
fdat_rs2_683:  .word 0x807FFFFE
fdat_rs2_684:  .word 0x00000002
fdat_rs2_685:  .word 0x80000001
fdat_rs2_686:  .word 0x00000001
fdat_rs2_687:  .word 0x80000000
fdat_rs2_688:  .word 0x00000000
fdat_rs2_689:  .word 0xBF800000
fdat_rs2_690:  .word 0x3F800000
fdat_rs2_691:  .word 0xFF7FFFFF
fdat_rs2_692:  .word 0x7F7FFFFF
fdat_rs2_693:  .word 0x80855555
fdat_rs2_694:  .word 0x00800001
fdat_rs2_695:  .word 0x80800000
fdat_rs2_696:  .word 0x00800000
fdat_rs2_697:  .word 0x807FFFFF
fdat_rs2_698:  .word 0x007FFFFF
fdat_rs2_699:  .word 0x807FFFFE
fdat_rs2_700:  .word 0x00000002
fdat_rs2_701:  .word 0x80000001
fdat_rs2_702:  .word 0x00000001
fdat_rs2_703:  .word 0x80000000
fdat_rs2_704:  .word 0x00000000
fdat_rs2_705:  .word 0xBF800000
fdat_rs2_706:  .word 0x3F800000
fdat_rs2_707:  .word 0xFF7FFFFF
fdat_rs2_708:  .word 0x7F7FFFFF
fdat_rs2_709:  .word 0x80855555
fdat_rs2_710:  .word 0x00800001
fdat_rs2_711:  .word 0x80800000
fdat_rs2_712:  .word 0x00800000
fdat_rs2_713:  .word 0x807FFFFF
fdat_rs2_714:  .word 0x007FFFFF
fdat_rs2_715:  .word 0x807FFFFE
fdat_rs2_716:  .word 0x00000002
fdat_rs2_717:  .word 0x80000001
fdat_rs2_718:  .word 0x00000001
fdat_rs2_719:  .word 0x80000000
fdat_rs2_720:  .word 0x00000000
fdat_rs2_721:  .word 0xBF800000
fdat_rs2_722:  .word 0x3F800000
fdat_rs2_723:  .word 0xFF7FFFFF
fdat_rs2_724:  .word 0x7F7FFFFF
fdat_rs2_725:  .word 0x80855555
fdat_rs2_726:  .word 0x00800001
fdat_rs2_727:  .word 0x80800000
fdat_rs2_728:  .word 0x00800000
fdat_rs2_729:  .word 0x807FFFFF
fdat_rs2_730:  .word 0x007FFFFF
fdat_rs2_731:  .word 0x807FFFFE
fdat_rs2_732:  .word 0x00000002
fdat_rs2_733:  .word 0x80000001
fdat_rs2_734:  .word 0x00000001
fdat_rs2_735:  .word 0x80000000
fdat_rs2_736:  .word 0x00000000
fdat_rs2_737:  .word 0xBF800000
fdat_rs2_738:  .word 0x3F800000
fdat_rs2_739:  .word 0xFF7FFFFF
fdat_rs2_740:  .word 0x7F7FFFFF
fdat_rs2_741:  .word 0x80855555
fdat_rs2_742:  .word 0x00800001
fdat_rs2_743:  .word 0x80800000
fdat_rs2_744:  .word 0x00800000
fdat_rs2_745:  .word 0x807FFFFF
fdat_rs2_746:  .word 0x007FFFFF
fdat_rs2_747:  .word 0x807FFFFE
fdat_rs2_748:  .word 0x00000002
fdat_rs2_749:  .word 0x80000001
fdat_rs2_750:  .word 0x00000001
fdat_rs2_751:  .word 0x80000000
fdat_rs2_752:  .word 0x00000000
fdat_rs2_753:  .word 0xBF800000
fdat_rs2_754:  .word 0x3F800000
fdat_rs2_755:  .word 0xFF7FFFFF
fdat_rs2_756:  .word 0x7F7FFFFF
fdat_rs2_757:  .word 0x80855555
fdat_rs2_758:  .word 0x00800001
fdat_rs2_759:  .word 0x80800000
fdat_rs2_760:  .word 0x00800000
fdat_rs2_761:  .word 0x807FFFFF
fdat_rs2_762:  .word 0x007FFFFF
fdat_rs2_763:  .word 0x807FFFFE
fdat_rs2_764:  .word 0x00000002
fdat_rs2_765:  .word 0x80000001
fdat_rs2_766:  .word 0x00000001
fdat_rs2_767:  .word 0x80000000
fdat_rs2_768:  .word 0x62d5fe2f
fdat_rs2_769:  .word 0xbbbfcaf3
fdat_rs2_770:  .word 0x8ad27026
fdat_rs2_771:  .word 0x599ec422
fdat_rs2_772:  .word 0xd0e57884
fdat_rs2_773:  .word 0x315858ad
fdat_rs2_774:  .word 0xbb79a22b
fdat_rs2_775:  .word 0x80c7fec6
fdat_rs2_776:  .word 0xb8a4eaba
fdat_rs2_777:  .word 0x893e4f51
fdat_rs2_778:  .word 0xa204c639
fdat_rs2_779:  .word 0x092d4ba0
fdat_rs2_780:  .word 0x8787ab14
fdat_rs2_781:  .word 0x61ce2443
fdat_rs2_782:  .word 0x8ac8c0d1
fdat_rs2_783:  .word 0x2a519200
fdat_rs2_784:  .word 0x156dd6bc
fdat_rs2_785:  .word 0x35ceb876
fdat_rs2_786:  .word 0x766125a9
fdat_rs2_787:  .word 0x05269d43
fdat_rs2_788:  .word 0x1591c3bb
fdat_rs2_789:  .word 0x7f19aaaa
fdat_rs2_790:  .word 0xb68e62d5
fdat_rs2_791:  .word 0x98c5df64
fdat_rs2_792:  .word 0x58a4f5f8
fdat_rs2_793:  .word 0x1b5d4991
fdat_rs2_794:  .word 0x02046b89
fdat_rs2_795:  .word 0xf4223dde
fdat_rs2_796:  .word 0xcf05164e
fdat_rs2_797:  .word 0xaa67f476
fdat_rs2_798:  .word 0x5e100e5a
fdat_rs2_799:  .word 0x8f51944a
fdat_rs2_800:  .word 0x01d283cd
fdat_rs2_801:  .word 0x19ea57fc
fdat_rs2_802:  .word 0xe246d9c3
fdat_rs2_803:  .word 0xb3ede2cf
fdat_rs2_804:  .word 0x661a98bb
fdat_rs2_805:  .word 0xd2e52100
fdat_rs2_806:  .word 0xb54c779c
fdat_rs2_807:  .word 0x8b890ead
fdat_rs2_808:  .word 0x6f6d8ebb
fdat_rs2_809:  .word 0x701a72e3
fdat_rs2_810:  .word 0x18854a53
fdat_rs2_811:  .word 0xd8b646c3
fdat_rs2_812:  .word 0x7a859a9b
fdat_rs2_813:  .word 0x99fb1285
fdat_rs2_814:  .word 0x6a49fdb6
fdat_rs2_815:  .word 0xe54c4797
fdat_rs2_816:  .word 0xa13e91a2
fdat_rs2_817:  .word 0x56a16ea4
fdat_rs2_818:  .word 0x8dc0e4ff
fdat_rs2_819:  .word 0x267eb8c3
fdat_rs2_820:  .word 0xbcdd3109
fdat_rs2_821:  .word 0xd18cf677
fdat_rs2_822:  .word 0xc592af51
fdat_rs2_823:  .word 0x639952be
fdat_rs2_824:  .word 0x5ecc40d7
fdat_rs2_825:  .word 0x08e1872a
fdat_rs2_826:  .word 0x699b0430
fdat_rs2_827:  .word 0x515deb63
fdat_rs2_828:  .word 0x55107f38
fdat_rs2_829:  .word 0x5ed38442
fdat_rs2_830:  .word 0x9444a8cf
fdat_rs2_831:  .word 0x3b6f020e
fdat_rs2_832:  .word 0x3d7a2c1a
fdat_rs2_833:  .word 0xe12d2042
fdat_rs2_834:  .word 0xddc02bcf
fdat_rs2_835:  .word 0xd793ec85
fdat_rs2_836:  .word 0x89179c2a
fdat_rs2_837:  .word 0x7b5bb683
fdat_rs2_838:  .word 0xf3060550
fdat_rs2_839:  .word 0xeb6622a3
fdat_rs2_840:  .word 0x370df4fd
fdat_rs2_841:  .word 0xe7026d7d
fdat_rs2_842:  .word 0xa7ef2bad
fdat_rs2_843:  .word 0x5d994fff
fdat_rs2_844:  .word 0x6ab30fe4
fdat_rs2_845:  .word 0x72d35639
fdat_rs2_846:  .word 0x27c70109
fdat_rs2_847:  .word 0xf283b49c
fdat_rs2_848:  .word 0x3c70fd0b
fdat_rs2_849:  .word 0x1f46077b
fdat_rs2_850:  .word 0xc626d7b5
fdat_rs2_851:  .word 0xd8664806
fdat_rs2_852:  .word 0xa37e6d45
fdat_rs2_853:  .word 0x69155a81
fdat_rs2_854:  .word 0xe78f6b83
fdat_rs2_855:  .word 0x9aba564b
fdat_rs2_856:  .word 0x3616aeda
fdat_rs2_857:  .word 0xb6b43b38
fdat_rs2_858:  .word 0x48363fc9
fdat_rs2_859:  .word 0x18fd8be4
fdat_rs2_860:  .word 0x4f1f58ba
fdat_rs2_861:  .word 0x19e51db5
fdat_rs2_862:  .word 0xe0c53c63
fdat_rs2_863:  .word 0x192352ad
fdat_rs2_864:  .word 0x5639134a
fdat_rs2_865:  .word 0x3b3c24ec
fdat_rs2_866:  .word 0x8376196a
fdat_rs2_867:  .word 0x24fcba35
fdat_rs2_868:  .word 0x2cd12f68
fdat_rs2_869:  .word 0x5b91a296
fdat_rs2_870:  .word 0x0a9edbe9
fdat_rs2_871:  .word 0xbc4fb8ab
fdat_rs2_872:  .word 0x68714601
fdat_rs2_873:  .word 0xf6077257
fdat_rs2_874:  .word 0x6baa10f2
fdat_rs2_875:  .word 0x210eee6d
fdat_rs2_876:  .word 0x9d9d1deb
fdat_rs2_877:  .word 0x52a2c944
fdat_rs2_878:  .word 0x69da5807
fdat_rs2_879:  .word 0x5643827a
fdat_rs2_880:  .word 0x548fa17d
fdat_rs2_881:  .word 0x0125e3bc
fdat_rs2_882:  .word 0x34294c82
fdat_rs2_883:  .word 0xd612accc
fdat_rs2_884:  .word 0x7c624102
fdat_rs2_885:  .word 0x81457ac4
fdat_rs2_886:  .word 0x169e8d7e
fdat_rs2_887:  .word 0x82d5d8cc
fdat_rs2_888:  .word 0x2afa1e78
fdat_rs2_889:  .word 0xdb9ca373
fdat_rs2_890:  .word 0x8a002b93
fdat_rs2_891:  .word 0xb686377f
fdat_rs2_892:  .word 0xc0570d1e
fdat_rs2_893:  .word 0x6682aa99
fdat_rs2_894:  .word 0xd3ab2b5b
fdat_rs2_895:  .word 0x32ce890a
fdat_rs2_896:  .word 0x50408aba
fdat_rs2_897:  .word 0xb4ea3655
fdat_rs2_898:  .word 0x57385489
fdat_rs2_899:  .word 0xeef03e8d
fdat_rs2_900:  .word 0xde17d645
fdat_rs2_901:  .word 0x0e7f9a32
fdat_rs2_902:  .word 0xeeca2f3b
fdat_rs2_903:  .word 0xf14f95f4
fdat_rs2_904:  .word 0x63b7a76e
fdat_rs2_905:  .word 0xbcc9ab43
fdat_rs2_906:  .word 0xdfeeae1d
fdat_rs2_907:  .word 0x65eed45a
fdat_rs2_908:  .word 0xc8e4911e
fdat_rs2_909:  .word 0x61bee6e3
fdat_rs2_910:  .word 0x5a888b0b
fdat_rs2_911:  .word 0xe8b9b2cd
fdat_rs2_912:  .word 0x1bc3cb1f
fdat_rs2_913:  .word 0x6c9a9490
fdat_rs2_914:  .word 0x94518e9b
fdat_rs2_915:  .word 0x89b67375
fdat_rs2_916:  .word 0xd4bea2c1
fdat_rs2_917:  .word 0xd7ac95f6
fdat_rs2_918:  .word 0xb4fe5b7c
fdat_rs2_919:  .word 0x59dac688
fdat_rs2_920:  .word 0xd864b555
fdat_rs2_921:  .word 0xf0a45c48
fdat_rs2_922:  .word 0x8debdd64
fdat_rs2_923:  .word 0x78f0b6be
fdat_rs2_924:  .word 0xea5bd793
fdat_rs2_925:  .word 0x837bb1b9
fdat_rs2_926:  .word 0xb8879ad6
fdat_rs2_927:  .word 0xa62bf1a5
fdat_rs2_928:  .word 0x27457e6e
fdat_rs2_929:  .word 0xc42dea11
fdat_rs2_930:  .word 0xbc0e79b9
fdat_rs2_931:  .word 0x72ae0ac9
fdat_rs2_932:  .word 0xe29df404
fdat_rs2_933:  .word 0xb117f9b7
fdat_rs2_934:  .word 0xf0abe8ea
fdat_rs2_935:  .word 0x5b82f781
fdat_rs2_936:  .word 0x3aba4a26
fdat_rs2_937:  .word 0xefea5e67
fdat_rs2_938:  .word 0x688be24b
fdat_rs2_939:  .word 0x21ad1582
fdat_rs2_940:  .word 0xa294f0b8
fdat_rs2_941:  .word 0xa6440f97
fdat_rs2_942:  .word 0x5ea2d0b9
fdat_rs2_943:  .word 0xbdc0571c
fdat_rs2_944:  .word 0x2442a91b
fdat_rs2_945:  .word 0x0c377326
fdat_rs2_946:  .word 0x533c8dfe
fdat_rs2_947:  .word 0xe21ef6aa
fdat_rs2_948:  .word 0x919fa67d
fdat_rs2_949:  .word 0x873f1671
fdat_rs2_950:  .word 0x2a9f2e23
fdat_rs2_951:  .word 0xbe22927b
fdat_rs2_952:  .word 0xa992efc3
fdat_rs2_953:  .word 0x75ce1220
fdat_rs2_954:  .word 0x4447a68d
fdat_rs2_955:  .word 0x3f78b414
fdat_rs2_956:  .word 0xbd72133e
fdat_rs2_957:  .word 0x0cee6997
fdat_rs2_958:  .word 0x1a1b49f6
fdat_rs2_959:  .word 0x74cefef0
fdat_rs2_960:  .word 0xdb8a3bd9
fdat_rs2_961:  .word 0x4b329421
fdat_rs2_962:  .word 0x3a31ab60
fdat_rs2_963:  .word 0xe953c01f
fdat_rs2_964:  .word 0x0f147ddf
fdat_rs2_965:  .word 0xcf457330
fdat_rs2_966:  .word 0x19f95636
fdat_rs2_967:  .word 0x30610d6c
fdat_rs2_968:  .word 0x7cfe6ad7
fdat_rs2_969:  .word 0x51a59b6f
fdat_rs2_970:  .word 0xbe384770
fdat_rs2_971:  .word 0x336dc41b
fdat_rs2_972:  .word 0xa87f271a
fdat_rs2_973:  .word 0x6c9121e1
fdat_rs2_974:  .word 0xa73c95c4
fdat_rs2_975:  .word 0xcaf0a32c
fdat_rs2_976:  .word 0x46f5a171
fdat_rs2_977:  .word 0x251c1e00
fdat_rs2_978:  .word 0xac7c3863
fdat_rs2_979:  .word 0x8f02a18c
fdat_rs2_980:  .word 0x91fd21c8
fdat_rs2_981:  .word 0x4453aa24
fdat_rs2_982:  .word 0x8cc4c438
fdat_rs2_983:  .word 0xbcafd1ca
fdat_rs2_984:  .word 0x767634b8
fdat_rs2_985:  .word 0x177434a8
fdat_rs2_986:  .word 0x4602bb95
fdat_rs2_987:  .word 0xbb2a44f6
fdat_rs2_988:  .word 0xe1cd9683
fdat_rs2_989:  .word 0xc649858c
fdat_rs2_990:  .word 0x834794d4
fdat_rs2_991:  .word 0xe226001f
fdat_rs2_992:  .word 0x3bbf119a
fdat_rs2_993:  .word 0x0aeac265
fdat_rs2_994:  .word 0x41649ded
fdat_rs2_995:  .word 0x54d909fd
fdat_rs2_996:  .word 0x82c44d2b
fdat_rs2_997:  .word 0x85371e54
fdat_rs2_998:  .word 0x91074282
fdat_rs2_999:  .word 0x61ae58b5
fdat_rs2_1000:  .word 0xc611ba41
fdat_rs2_1001:  .word 0xd0fb779f
fdat_rs2_1002:  .word 0x999f8b26
fdat_rs2_1003:  .word 0xa113808e
fdat_rs2_1004:  .word 0x675a54fd
fdat_rs2_1005:  .word 0x8864b1ab
fdat_rs2_1006:  .word 0xcd9e4966
fdat_rs2_1007:  .word 0xecdb94a3
fdat_rs2_1008:  .word 0x50fb73b8
fdat_rs2_1009:  .word 0x1566303a
fdat_rs2_1010:  .word 0xf77c3228
fdat_rs2_1011:  .word 0xde7da192
fdat_rs2_1012:  .word 0x1a2510c7
fdat_rs2_1013:  .word 0x8c4f914e
fdat_rs2_1014:  .word 0xae52acb6
fdat_rs2_1015:  .word 0x269ca43a
fdat_rs2_1016:  .word 0x112bfa6f
fdat_rs2_1017:  .word 0xe6388e69
fdat_rs2_1018:  .word 0x9f9c2d14
fdat_rs2_1019:  .word 0x85d763a6
fdat_rs2_1020:  .word 0xac497736
fdat_rs2_1021:  .word 0x8a462146
fdat_rs2_1022:  .word 0xd2300ca6
fdat_rs2_1023:  .word 0xab04b597
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
    

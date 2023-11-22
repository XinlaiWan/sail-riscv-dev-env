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
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_FPRED_VV_OP( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_FP( testnum, v24, flags, result, val1, val2,    \
            fld f0, 0(a0); \
            fld f1, 8(a0); \
            vfmv.s.f v8, f0; \
            vfmv.s.f v16, f1; \
            fld f2, 16(a0); \
            inst v24, v8, v16, v0.t; \
        )
#define TEST_FPRED_VF_OP( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_FP( testnum, v24, flags, result, val1, val2,    \
            fld f0, 0(a0); \
            fld f1, 8(a0); \
            vfmv.s.f v8, f0; \
            fld f2, 16(a0);  \
            inst v24, v8, f1, v0.t; \
        )
#define TEST_FPRED_VV_OP_11( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v1, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v1, v0.t; \
            )
#define TEST_FPRED_VV_OP_12( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v2, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v2, v0.t; \
            )
#define TEST_FPRED_VV_OP_13( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v3, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v3, v0.t; \
            )
#define TEST_FPRED_VV_OP_14( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v4, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v4, v0.t; \
            )
#define TEST_FPRED_VV_OP_15( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v5, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v5, v0.t; \
            )
#define TEST_FPRED_VV_OP_16( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v6, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v6, v0.t; \
            )
#define TEST_FPRED_VV_OP_17( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v7, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v7, v0.t; \
            )
#define TEST_FPRED_VV_OP_18( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v24, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_19( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v9, f1; \
                fld f2, 16(a0); \
                inst v24, v16, v9, v0.t; \
            )
#define TEST_FPRED_VV_OP_110( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v10, f1; \
                fld f2, 16(a0); \
                inst v24, v16, v10, v0.t; \
            )
#define TEST_FPRED_VV_OP_111( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v11, f1; \
                fld f2, 16(a0); \
                inst v24, v16, v11, v0.t; \
            )
#define TEST_FPRED_VV_OP_112( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v12, f1; \
                fld f2, 16(a0); \
                inst v24, v16, v12, v0.t; \
            )
#define TEST_FPRED_VV_OP_113( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v13, f1; \
                fld f2, 16(a0); \
                inst v24, v16, v13, v0.t; \
            )
#define TEST_FPRED_VV_OP_114( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v14, f1; \
                fld f2, 16(a0); \
                inst v24, v16, v14, v0.t; \
            )
#define TEST_FPRED_VV_OP_115( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v15, f1; \
                fld f2, 16(a0); \
                inst v24, v16, v15, v0.t; \
            )
#define TEST_FPRED_VV_OP_116( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                fld f2, 16(a0); \
                inst v8, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_117( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v17, f1; \
                fld f2, 16(a0); \
                inst v8, v24, v17, v0.t; \
            )
#define TEST_FPRED_VV_OP_118( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v18, f1; \
                fld f2, 16(a0); \
                inst v8, v24, v18, v0.t; \
            )
#define TEST_FPRED_VV_OP_119( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v19, f1; \
                fld f2, 16(a0); \
                inst v8, v24, v19, v0.t; \
            )
#define TEST_FPRED_VV_OP_120( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v20, f1; \
                fld f2, 16(a0); \
                inst v8, v24, v20, v0.t; \
            )
#define TEST_FPRED_VV_OP_121( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v21, f1; \
                fld f2, 16(a0); \
                inst v8, v24, v21, v0.t; \
            )
#define TEST_FPRED_VV_OP_122( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v22, f1; \
                fld f2, 16(a0); \
                inst v8, v24, v22, v0.t; \
            )
#define TEST_FPRED_VV_OP_123( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v23, f1; \
                fld f2, 16(a0); \
                inst v8, v24, v23, v0.t; \
            )
#define TEST_FPRED_VV_OP_124( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_125( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v25, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v25, v0.t; \
            )
#define TEST_FPRED_VV_OP_126( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v26, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v26, v0.t; \
            )
#define TEST_FPRED_VV_OP_127( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v27, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v27, v0.t; \
            )
#define TEST_FPRED_VV_OP_128( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v28, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v28, v0.t; \
            )
#define TEST_FPRED_VV_OP_129( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v29, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v29, v0.t; \
            )
#define TEST_FPRED_VV_OP_130( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v30, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v30, v0.t; \
            )
#define TEST_FPRED_VV_OP_131( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v31, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v31, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd1( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v1, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v1, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd2( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v2, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v2, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd3( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v3, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v3, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd4( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v4, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v4, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd5( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v5, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v5, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd6( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v6, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v6, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd7( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v7, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v7, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd8( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v8, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                fld f2, 16(a0); \
                inst v8, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd9( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v9, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                fld f2, 16(a0); \
                inst v9, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd10( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v10, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                fld f2, 16(a0); \
                inst v10, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd11( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v11, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                fld f2, 16(a0); \
                inst v11, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd12( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v12, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                fld f2, 16(a0); \
                inst v12, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd13( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v13, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                fld f2, 16(a0); \
                inst v13, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd14( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v14, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                fld f2, 16(a0); \
                inst v14, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd15( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v15, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v24, f0; \
                vfmv.s.f v16, f1; \
                fld f2, 16(a0); \
                inst v15, v24, v16, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd16( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v16, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                fld f2, 16(a0); \
                inst v16, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd17( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v17, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                fld f2, 16(a0); \
                inst v17, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd18( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v18, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                fld f2, 16(a0); \
                inst v18, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd19( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v19, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                fld f2, 16(a0); \
                inst v19, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd20( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v20, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                fld f2, 16(a0); \
                inst v20, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd21( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v21, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                fld f2, 16(a0); \
                inst v21, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd22( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v22, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                fld f2, 16(a0); \
                inst v22, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd23( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v23, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v8, f0; \
                vfmv.s.f v24, f1; \
                fld f2, 16(a0); \
                inst v23, v8, v24, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd24( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v24, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v24, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd25( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v25, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v25, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd26( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v26, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v26, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd27( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v27, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v27, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd28( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v28, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v28, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd29( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v29, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v29, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd30( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v30, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v30, v16, v8, v0.t; \
            )
#define TEST_FPRED_VV_OP_rd31( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_FP( testnum, v31, flags, result, val1, val2, \
                fld f0, 0(a0); \
                fld f1, 8(a0); \
                vfmv.s.f v16, f0; \
                vfmv.s.f v8, f1; \
                fld f2, 16(a0); \
                inst v31, v16, v8, v0.t; \
            )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_FPRED_VV_OP( 1,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x0000000000000000,        0x0000000000000000 );
TEST_FPRED_VV_OP( 2,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x0000000000000000,        0x8000000000000000 );
TEST_FPRED_VV_OP( 3,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x0000000000000000,        0x0000000000000001 );
TEST_FPRED_VV_OP( 4,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x0000000000000000,        0x8000000000000001 );
TEST_FPRED_VV_OP( 5,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x0000000000000000,        0x0000000000000002 );
TEST_FPRED_VV_OP( 6,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x0000000000000000,        0x8000000000000002 );
TEST_FPRED_VV_OP( 7,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x0000000000000000,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 8,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x0000000000000000,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 9,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x0000000000000000,        0x0010000000000000 );
TEST_FPRED_VV_OP( 10,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x0000000000000000,        0x8010000000000000 );
TEST_FPRED_VV_OP( 11,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x0000000000000000,        0x0010000000000002 );
TEST_FPRED_VV_OP( 12,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x0000000000000000,        0x8010000000000002 );
TEST_FPRED_VV_OP( 13,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x0000000000000000,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 14,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x0000000000000000,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 15,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x0000000000000000,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 16,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x0000000000000000,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 17,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x8000000000000000,        0x0000000000000000 );
TEST_FPRED_VV_OP( 18,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x8000000000000000,        0x8000000000000000 );
TEST_FPRED_VV_OP( 19,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x8000000000000000,        0x0000000000000001 );
TEST_FPRED_VV_OP( 20,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x8000000000000000,        0x8000000000000001 );
TEST_FPRED_VV_OP( 21,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x8000000000000000,        0x0000000000000002 );
TEST_FPRED_VV_OP( 22,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x8000000000000000,        0x8000000000000002 );
TEST_FPRED_VV_OP( 23,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x8000000000000000,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 24,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x8000000000000000,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 25,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x8000000000000000,        0x0010000000000000 );
TEST_FPRED_VV_OP( 26,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x8000000000000000,        0x8010000000000000 );
TEST_FPRED_VV_OP( 27,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x8000000000000000,        0x0010000000000002 );
TEST_FPRED_VV_OP( 28,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x8000000000000000,        0x8010000000000002 );
TEST_FPRED_VV_OP( 29,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x8000000000000000,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 30,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x8000000000000000,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 31,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x8000000000000000,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 32,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x8000000000000000,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 33,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x0000000000000001,        0x0000000000000000 );
TEST_FPRED_VV_OP( 34,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x0000000000000001,        0x8000000000000000 );
TEST_FPRED_VV_OP( 35,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x0000000000000001,        0x0000000000000001 );
TEST_FPRED_VV_OP( 36,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x0000000000000001,        0x8000000000000001 );
TEST_FPRED_VV_OP( 37,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x0000000000000001,        0x0000000000000002 );
TEST_FPRED_VV_OP( 38,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x0000000000000001,        0x8000000000000002 );
TEST_FPRED_VV_OP( 39,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x0000000000000001,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 40,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x0000000000000001,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 41,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x0000000000000001,        0x0010000000000000 );
TEST_FPRED_VV_OP( 42,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x0000000000000001,        0x8010000000000000 );
TEST_FPRED_VV_OP( 43,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x0000000000000001,        0x0010000000000002 );
TEST_FPRED_VV_OP( 44,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x0000000000000001,        0x8010000000000002 );
TEST_FPRED_VV_OP( 45,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x0000000000000001,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 46,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x0000000000000001,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 47,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x0000000000000001,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 48,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x0000000000000001,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 49,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x8000000000000001,        0x0000000000000000 );
TEST_FPRED_VV_OP( 50,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x8000000000000001,        0x8000000000000000 );
TEST_FPRED_VV_OP( 51,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x8000000000000001,        0x0000000000000001 );
TEST_FPRED_VV_OP( 52,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x8000000000000001,        0x8000000000000001 );
TEST_FPRED_VV_OP( 53,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x8000000000000001,        0x0000000000000002 );
TEST_FPRED_VV_OP( 54,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x8000000000000001,        0x8000000000000002 );
TEST_FPRED_VV_OP( 55,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x8000000000000001,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 56,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x8000000000000001,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 57,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x8000000000000001,        0x0010000000000000 );
TEST_FPRED_VV_OP( 58,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x8000000000000001,        0x8010000000000000 );
TEST_FPRED_VV_OP( 59,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x8000000000000001,        0x0010000000000002 );
TEST_FPRED_VV_OP( 60,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x8000000000000001,        0x8010000000000002 );
TEST_FPRED_VV_OP( 61,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x8000000000000001,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 62,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x8000000000000001,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 63,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x8000000000000001,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 64,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x8000000000000001,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 65,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x0000000000000002,        0x0000000000000000 );
TEST_FPRED_VV_OP( 66,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x0000000000000002,        0x8000000000000000 );
TEST_FPRED_VV_OP( 67,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x0000000000000002,        0x0000000000000001 );
TEST_FPRED_VV_OP( 68,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x0000000000000002,        0x8000000000000001 );
TEST_FPRED_VV_OP( 69,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x0000000000000002,        0x0000000000000002 );
TEST_FPRED_VV_OP( 70,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x0000000000000002,        0x8000000000000002 );
TEST_FPRED_VV_OP( 71,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x0000000000000002,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 72,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x0000000000000002,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 73,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x0000000000000002,        0x0010000000000000 );
TEST_FPRED_VV_OP( 74,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x0000000000000002,        0x8010000000000000 );
TEST_FPRED_VV_OP( 75,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x0000000000000002,        0x0010000000000002 );
TEST_FPRED_VV_OP( 76,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x0000000000000002,        0x8010000000000002 );
TEST_FPRED_VV_OP( 77,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x0000000000000002,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 78,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x0000000000000002,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 79,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x0000000000000002,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 80,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x0000000000000002,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 81,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x8000000000000002,        0x0000000000000000 );
TEST_FPRED_VV_OP( 82,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x8000000000000002,        0x8000000000000000 );
TEST_FPRED_VV_OP( 83,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x8000000000000002,        0x0000000000000001 );
TEST_FPRED_VV_OP( 84,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x8000000000000002,        0x8000000000000001 );
TEST_FPRED_VV_OP( 85,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x8000000000000002,        0x0000000000000002 );
TEST_FPRED_VV_OP( 86,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x8000000000000002,        0x8000000000000002 );
TEST_FPRED_VV_OP( 87,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x8000000000000002,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 88,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x8000000000000002,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 89,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x8000000000000002,        0x0010000000000000 );
TEST_FPRED_VV_OP( 90,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x8000000000000002,        0x8010000000000000 );
TEST_FPRED_VV_OP( 91,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x8000000000000002,        0x0010000000000002 );
TEST_FPRED_VV_OP( 92,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x8000000000000002,        0x8010000000000002 );
TEST_FPRED_VV_OP( 93,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x8000000000000002,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 94,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x8000000000000002,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 95,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x8000000000000002,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 96,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x8000000000000002,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 97,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x000FFFFFFFFFFFFF,        0x0000000000000000 );
TEST_FPRED_VV_OP( 98,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x000FFFFFFFFFFFFF,        0x8000000000000000 );
TEST_FPRED_VV_OP( 99,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x000FFFFFFFFFFFFF,        0x0000000000000001 );
TEST_FPRED_VV_OP( 100,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x000FFFFFFFFFFFFF,        0x8000000000000001 );
TEST_FPRED_VV_OP( 101,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x000FFFFFFFFFFFFF,        0x0000000000000002 );
TEST_FPRED_VV_OP( 102,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x000FFFFFFFFFFFFF,        0x8000000000000002 );
TEST_FPRED_VV_OP( 103,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x000FFFFFFFFFFFFF,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 104,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x000FFFFFFFFFFFFF,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 105,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x000FFFFFFFFFFFFF,        0x0010000000000000 );
TEST_FPRED_VV_OP( 106,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x000FFFFFFFFFFFFF,        0x8010000000000000 );
TEST_FPRED_VV_OP( 107,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x000FFFFFFFFFFFFF,        0x0010000000000002 );
TEST_FPRED_VV_OP( 108,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x000FFFFFFFFFFFFF,        0x8010000000000002 );
TEST_FPRED_VV_OP( 109,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x000FFFFFFFFFFFFF,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 110,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x000FFFFFFFFFFFFF,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 111,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x000FFFFFFFFFFFFF,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 112,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x000FFFFFFFFFFFFF,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 113,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x800FFFFFFFFFFFFF,        0x0000000000000000 );
TEST_FPRED_VV_OP( 114,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x800FFFFFFFFFFFFF,        0x8000000000000000 );
TEST_FPRED_VV_OP( 115,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x800FFFFFFFFFFFFF,        0x0000000000000001 );
TEST_FPRED_VV_OP( 116,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x800FFFFFFFFFFFFF,        0x8000000000000001 );
TEST_FPRED_VV_OP( 117,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x800FFFFFFFFFFFFF,        0x0000000000000002 );
TEST_FPRED_VV_OP( 118,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x800FFFFFFFFFFFFF,        0x8000000000000002 );
TEST_FPRED_VV_OP( 119,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x800FFFFFFFFFFFFF,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 120,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x800FFFFFFFFFFFFF,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 121,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x800FFFFFFFFFFFFF,        0x0010000000000000 );
TEST_FPRED_VV_OP( 122,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x800FFFFFFFFFFFFF,        0x8010000000000000 );
TEST_FPRED_VV_OP( 123,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x800FFFFFFFFFFFFF,        0x0010000000000002 );
TEST_FPRED_VV_OP( 124,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x800FFFFFFFFFFFFF,        0x8010000000000002 );
TEST_FPRED_VV_OP( 125,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x800FFFFFFFFFFFFF,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 126,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x800FFFFFFFFFFFFF,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 127,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x800FFFFFFFFFFFFF,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 128,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x800FFFFFFFFFFFFF,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 129,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x0010000000000000,        0x0000000000000000 );
TEST_FPRED_VV_OP( 130,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x0010000000000000,        0x8000000000000000 );
TEST_FPRED_VV_OP( 131,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x0010000000000000,        0x0000000000000001 );
TEST_FPRED_VV_OP( 132,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x0010000000000000,        0x8000000000000001 );
TEST_FPRED_VV_OP( 133,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x0010000000000000,        0x0000000000000002 );
TEST_FPRED_VV_OP( 134,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x0010000000000000,        0x8000000000000002 );
TEST_FPRED_VV_OP( 135,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x0010000000000000,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 136,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x0010000000000000,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 137,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x0010000000000000,        0x0010000000000000 );
TEST_FPRED_VV_OP( 138,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x0010000000000000,        0x8010000000000000 );
TEST_FPRED_VV_OP( 139,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x0010000000000000,        0x0010000000000002 );
TEST_FPRED_VV_OP( 140,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x0010000000000000,        0x8010000000000002 );
TEST_FPRED_VV_OP( 141,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x0010000000000000,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 142,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x0010000000000000,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 143,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x0010000000000000,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 144,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x0010000000000000,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 145,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x8010000000000000,        0x0000000000000000 );
TEST_FPRED_VV_OP( 146,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x8010000000000000,        0x8000000000000000 );
TEST_FPRED_VV_OP( 147,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x8010000000000000,        0x0000000000000001 );
TEST_FPRED_VV_OP( 148,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x8010000000000000,        0x8000000000000001 );
TEST_FPRED_VV_OP( 149,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x8010000000000000,        0x0000000000000002 );
TEST_FPRED_VV_OP( 150,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x8010000000000000,        0x8000000000000002 );
TEST_FPRED_VV_OP( 151,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x8010000000000000,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 152,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x8010000000000000,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 153,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x8010000000000000,        0x0010000000000000 );
TEST_FPRED_VV_OP( 154,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x8010000000000000,        0x8010000000000000 );
TEST_FPRED_VV_OP( 155,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x8010000000000000,        0x0010000000000002 );
TEST_FPRED_VV_OP( 156,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x8010000000000000,        0x8010000000000002 );
TEST_FPRED_VV_OP( 157,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x8010000000000000,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 158,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x8010000000000000,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 159,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x8010000000000000,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 160,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x8010000000000000,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 161,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x0010000000000002,        0x0000000000000000 );
TEST_FPRED_VV_OP( 162,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x0010000000000002,        0x8000000000000000 );
TEST_FPRED_VV_OP( 163,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x0010000000000002,        0x0000000000000001 );
TEST_FPRED_VV_OP( 164,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x0010000000000002,        0x8000000000000001 );
TEST_FPRED_VV_OP( 165,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x0010000000000002,        0x0000000000000002 );
TEST_FPRED_VV_OP( 166,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x0010000000000002,        0x8000000000000002 );
TEST_FPRED_VV_OP( 167,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x0010000000000002,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 168,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x0010000000000002,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 169,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x0010000000000002,        0x0010000000000000 );
TEST_FPRED_VV_OP( 170,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x0010000000000002,        0x8010000000000000 );
TEST_FPRED_VV_OP( 171,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x0010000000000002,        0x0010000000000002 );
TEST_FPRED_VV_OP( 172,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x0010000000000002,        0x8010000000000002 );
TEST_FPRED_VV_OP( 173,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x0010000000000002,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 174,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x0010000000000002,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 175,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x0010000000000002,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 176,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x0010000000000002,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 177,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x8010000000000002,        0x0000000000000000 );
TEST_FPRED_VV_OP( 178,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x8010000000000002,        0x8000000000000000 );
TEST_FPRED_VV_OP( 179,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x8010000000000002,        0x0000000000000001 );
TEST_FPRED_VV_OP( 180,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x8010000000000002,        0x8000000000000001 );
TEST_FPRED_VV_OP( 181,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x8010000000000002,        0x0000000000000002 );
TEST_FPRED_VV_OP( 182,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x8010000000000002,        0x8000000000000002 );
TEST_FPRED_VV_OP( 183,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x8010000000000002,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 184,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x8010000000000002,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 185,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x8010000000000002,        0x0010000000000000 );
TEST_FPRED_VV_OP( 186,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x8010000000000002,        0x8010000000000000 );
TEST_FPRED_VV_OP( 187,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x8010000000000002,        0x0010000000000002 );
TEST_FPRED_VV_OP( 188,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x8010000000000002,        0x8010000000000002 );
TEST_FPRED_VV_OP( 189,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x8010000000000002,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 190,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x8010000000000002,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 191,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x8010000000000002,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 192,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x8010000000000002,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 193,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x7FEFFFFFFFFFFFFF,        0x0000000000000000 );
TEST_FPRED_VV_OP( 194,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x7FEFFFFFFFFFFFFF,        0x8000000000000000 );
TEST_FPRED_VV_OP( 195,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x7FEFFFFFFFFFFFFF,        0x0000000000000001 );
TEST_FPRED_VV_OP( 196,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x7FEFFFFFFFFFFFFF,        0x8000000000000001 );
TEST_FPRED_VV_OP( 197,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x7FEFFFFFFFFFFFFF,        0x0000000000000002 );
TEST_FPRED_VV_OP( 198,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x7FEFFFFFFFFFFFFF,        0x8000000000000002 );
TEST_FPRED_VV_OP( 199,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x7FEFFFFFFFFFFFFF,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 200,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x7FEFFFFFFFFFFFFF,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 201,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x7FEFFFFFFFFFFFFF,        0x0010000000000000 );
TEST_FPRED_VV_OP( 202,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x7FEFFFFFFFFFFFFF,        0x8010000000000000 );
TEST_FPRED_VV_OP( 203,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x7FEFFFFFFFFFFFFF,        0x0010000000000002 );
TEST_FPRED_VV_OP( 204,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x7FEFFFFFFFFFFFFF,        0x8010000000000002 );
TEST_FPRED_VV_OP( 205,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x7FEFFFFFFFFFFFFF,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 206,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x7FEFFFFFFFFFFFFF,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 207,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x7FEFFFFFFFFFFFFF,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 208,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x7FEFFFFFFFFFFFFF,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 209,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xFFEFFFFFFFFFFFFF,        0x0000000000000000 );
TEST_FPRED_VV_OP( 210,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0xFFEFFFFFFFFFFFFF,        0x8000000000000000 );
TEST_FPRED_VV_OP( 211,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0xFFEFFFFFFFFFFFFF,        0x0000000000000001 );
TEST_FPRED_VV_OP( 212,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0xFFEFFFFFFFFFFFFF,        0x8000000000000001 );
TEST_FPRED_VV_OP( 213,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0xFFEFFFFFFFFFFFFF,        0x0000000000000002 );
TEST_FPRED_VV_OP( 214,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0xFFEFFFFFFFFFFFFF,        0x8000000000000002 );
TEST_FPRED_VV_OP( 215,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0xFFEFFFFFFFFFFFFF,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 216,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0xFFEFFFFFFFFFFFFF,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 217,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0xFFEFFFFFFFFFFFFF,        0x0010000000000000 );
TEST_FPRED_VV_OP( 218,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0xFFEFFFFFFFFFFFFF,        0x8010000000000000 );
TEST_FPRED_VV_OP( 219,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0xFFEFFFFFFFFFFFFF,        0x0010000000000002 );
TEST_FPRED_VV_OP( 220,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0xFFEFFFFFFFFFFFFF,        0x8010000000000002 );
TEST_FPRED_VV_OP( 221,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0xFFEFFFFFFFFFFFFF,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 222,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0xFFEFFFFFFFFFFFFF,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 223,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0xFFEFFFFFFFFFFFFF,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 224,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0xFFEFFFFFFFFFFFFF,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 225,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0x3FF0000000000000,        0x0000000000000000 );
TEST_FPRED_VV_OP( 226,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0x3FF0000000000000,        0x8000000000000000 );
TEST_FPRED_VV_OP( 227,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0x3FF0000000000000,        0x0000000000000001 );
TEST_FPRED_VV_OP( 228,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0x3FF0000000000000,        0x8000000000000001 );
TEST_FPRED_VV_OP( 229,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0x3FF0000000000000,        0x0000000000000002 );
TEST_FPRED_VV_OP( 230,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0x3FF0000000000000,        0x8000000000000002 );
TEST_FPRED_VV_OP( 231,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0x3FF0000000000000,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 232,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0x3FF0000000000000,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 233,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0x3FF0000000000000,        0x0010000000000000 );
TEST_FPRED_VV_OP( 234,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0x3FF0000000000000,        0x8010000000000000 );
TEST_FPRED_VV_OP( 235,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0x3FF0000000000000,        0x0010000000000002 );
TEST_FPRED_VV_OP( 236,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0x3FF0000000000000,        0x8010000000000002 );
TEST_FPRED_VV_OP( 237,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0x3FF0000000000000,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 238,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0x3FF0000000000000,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 239,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0x3FF0000000000000,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 240,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0x3FF0000000000000,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 241,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,        0xBF80000000000000,        0x0000000000000000 );
TEST_FPRED_VV_OP( 242,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000,        0xBF80000000000000,        0x8000000000000000 );
TEST_FPRED_VV_OP( 243,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,        0xBF80000000000000,        0x0000000000000001 );
TEST_FPRED_VV_OP( 244,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001,        0xBF80000000000000,        0x8000000000000001 );
TEST_FPRED_VV_OP( 245,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002,        0xBF80000000000000,        0x0000000000000002 );
TEST_FPRED_VV_OP( 246,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002,        0xBF80000000000000,        0x8000000000000002 );
TEST_FPRED_VV_OP( 247,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff,        0xBF80000000000000,        0x000FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 248,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff,        0xBF80000000000000,        0x800FFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 249,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000,        0xBF80000000000000,        0x0010000000000000 );
TEST_FPRED_VV_OP( 250,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000,        0xBF80000000000000,        0x8010000000000000 );
TEST_FPRED_VV_OP( 251,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002,        0xBF80000000000000,        0x0010000000000002 );
TEST_FPRED_VV_OP( 252,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002,        0xBF80000000000000,        0x8010000000000002 );
TEST_FPRED_VV_OP( 253,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff,        0xBF80000000000000,        0x7FEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 254,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff,        0xBF80000000000000,        0xFFEFFFFFFFFFFFFF );
TEST_FPRED_VV_OP( 255,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000,        0xBF80000000000000,        0x3FF0000000000000 );
TEST_FPRED_VV_OP( 256,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000,        0xBF80000000000000,        0xBF80000000000000 );
TEST_FPRED_VV_OP( 257,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c5fb19bc11df6bf,        0x287d8c15f97aadc9,        0x8c5fb19bc11df6bf );
TEST_FPRED_VV_OP( 258,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000513c9cc3a6d05c60,        0x44b8289eee0b08d4,        0x513c9cc3a6d05c60 );
TEST_FPRED_VV_OP( 259,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c1e50ea1c4c0904,        0x32374a299b3ac7af,        0x6c1e50ea1c4c0904 );
TEST_FPRED_VV_OP( 260,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcce36a4ea2e073c,        0xd18bd69c3d9ffea1,        0xbcce36a4ea2e073c );
TEST_FPRED_VV_OP( 261,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e93686ad573ac3ea,        0xf2f31dae7be377b4,        0xe93686ad573ac3ea );
TEST_FPRED_VV_OP( 262,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab23e40ff9b44f35,        0xf9c63a355a3a8772,        0xab23e40ff9b44f35 );
TEST_FPRED_VV_OP( 263,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088345d514f0ed9b1,        0xbde5879669cd8e4b,        0x88345d514f0ed9b1 );
TEST_FPRED_VV_OP( 264,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e398452da7a322ce,        0xcdfc6fdabb706ded,        0xe398452da7a322ce );
TEST_FPRED_VV_OP( 265,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d9eace733df87393,        0xbad2a80d351a6d23,        0xd9eace733df87393 );
TEST_FPRED_VV_OP( 266,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c81593dad9a0d54e,        0x2e12df04b2caacd1,        0xc81593dad9a0d54e );
TEST_FPRED_VV_OP( 267,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b809cf6332b2845,        0x4a200fb3148c5fe2,        0x1b809cf6332b2845 );
TEST_FPRED_VV_OP( 268,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069d97d5e8bcff755,        0x655e624ed7c37ed4,        0x69d97d5e8bcff755 );
TEST_FPRED_VV_OP( 269,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000898622dcfff2d599,        0x352badbc7cfe54db,        0x898622dcfff2d599 );
TEST_FPRED_VV_OP( 270,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000070f978be54ed7687,        0x6207b7935a22fba2,        0x70f978be54ed7687 );
TEST_FPRED_VV_OP( 271,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000076b51fb5288a87c1,        0x6a96cbf27b3a0572,        0x76b51fb5288a87c1 );
TEST_FPRED_VV_OP( 272,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aca8aba5b6787f82,        0x4b65fd0a17bd3219,        0xaca8aba5b6787f82 );
TEST_FPRED_VV_OP( 273,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000872ad316864f6302,        0x23df8a084bd80ea3,        0x872ad316864f6302 );
TEST_FPRED_VV_OP( 274,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f55b187ec3d34a2,        0x38067c5dfce0c534,        0x7f55b187ec3d34a2 );
TEST_FPRED_VV_OP( 275,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9ba75a7a3204dd7,        0x50b384c812f63a4f,        0xc9ba75a7a3204dd7 );
TEST_FPRED_VV_OP( 276,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ae296496e39c63e,        0xd708334b155cb31e,        0x6ae296496e39c63e );
TEST_FPRED_VV_OP( 277,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000693a26c4c15f26ff,        0x5110acded39aafec,        0x693a26c4c15f26ff );
TEST_FPRED_VV_OP( 278,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000096df12c2783db4a2,        0x4ec9780717ace8d5,        0x96df12c2783db4a2 );
TEST_FPRED_VV_OP( 279,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004c0d6288959ec61e,        0x1f738ac4f533d238,        0x4c0d6288959ec61e );
TEST_FPRED_VV_OP( 280,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7bdcda44267bf4b,        0xf61eda23a016dda0,        0xf7bdcda44267bf4b );
TEST_FPRED_VV_OP( 281,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7704960b18a128a,        0x0bab3447fb4e6cce,        0xb7704960b18a128a );
TEST_FPRED_VV_OP( 282,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9eb305ad26d0ec9,        0x49b2fd00d0dc615d,        0xc9eb305ad26d0ec9 );
TEST_FPRED_VV_OP( 283,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9ecc64ef8ccbcc4,        0x6ec815a873d565c0,        0xc9ecc64ef8ccbcc4 );
TEST_FPRED_VV_OP( 284,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010d37eb2301af9a5,        0xd369ea28f3ceadde,        0x10d37eb2301af9a5 );
TEST_FPRED_VV_OP( 285,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006e1646940216d165,        0xbecdf4b751bd2e47,        0x6e1646940216d165 );
TEST_FPRED_VV_OP( 286,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001637d7cc103f5daa,        0xbfd4a5a6a160eed7,        0x1637d7cc103f5daa );
TEST_FPRED_VV_OP( 287,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000423b04bf9347445e,        0xc6270e3086c30969,        0x423b04bf9347445e );
TEST_FPRED_VV_OP( 288,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000487a9e340ecf662f,        0xd025bc3393035915,        0x487a9e340ecf662f );
TEST_FPRED_VV_OP( 289,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bd11c2a06c01b4a,        0x8862c0202789f9f7,        0x3bd11c2a06c01b4a );
TEST_FPRED_VV_OP( 290,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000042a9731f38a94368,        0xaf748dcb2185d65f,        0x42a9731f38a94368 );
TEST_FPRED_VV_OP( 291,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004cc0a65525bf4b48,        0x39c3983a0aca4c12,        0x4cc0a65525bf4b48 );
TEST_FPRED_VV_OP( 292,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f95d58ef93c687a8,        0x7d60d873f0f436f0,        0xf95d58ef93c687a8 );
TEST_FPRED_VV_OP( 293,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ac8ef3fbe104ff0,        0xc756fb6e9bdaa61a,        0x7ac8ef3fbe104ff0 );
TEST_FPRED_VV_OP( 294,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fa1f01c3e96acc82,        0xe8813727ffcc96c6,        0xfa1f01c3e96acc82 );
TEST_FPRED_VV_OP( 295,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001f84c8b875692896,        0x8886824904e7f3f8,        0x1f84c8b875692896 );
TEST_FPRED_VV_OP( 296,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039510d7797590b51,        0xb8cff1c60f6c4556,        0x39510d7797590b51 );
TEST_FPRED_VV_OP( 297,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0dae30a0a277839,        0xd5485ef1cc713427,        0xc0dae30a0a277839 );
TEST_FPRED_VV_OP( 298,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3772df99dafebd3,        0x1cc81cbf71411edb,        0xb3772df99dafebd3 );
TEST_FPRED_VV_OP( 299,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df0a6b16c24390b3,        0xe385347f10a7b5ed,        0xdf0a6b16c24390b3 );
TEST_FPRED_VV_OP( 300,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eed32ac19bd6e20,        0x24c3474548f5fb3f,        0x0eed32ac19bd6e20 );
TEST_FPRED_VV_OP( 301,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a4516ecbe25b3735,        0xb6048afbec8d1642,        0xa4516ecbe25b3735 );
TEST_FPRED_VV_OP( 302,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000513613798e408f9,        0xfec9fafae2ad486a,        0x0513613798e408f9 );
TEST_FPRED_VV_OP( 303,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000077c20ff03d74d279,        0xf3add264ffc754bd,        0x77c20ff03d74d279 );
TEST_FPRED_VV_OP( 304,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000063495ea1c2b94cc0,        0x689da73dca199361,        0x63495ea1c2b94cc0 );
TEST_FPRED_VV_OP( 305,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b0dde1fdc6d7d612,        0xb48ea93363550db9,        0xb0dde1fdc6d7d612 );
TEST_FPRED_VV_OP( 306,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004e933f72952c76f,        0xf1d8822a449e806e,        0x04e933f72952c76f );
TEST_FPRED_VV_OP( 307,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a016d951e41a8ae3,        0x7add0a7a31afc247,        0xa016d951e41a8ae3 );
TEST_FPRED_VV_OP( 308,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b022688fe3db5627,        0x5149f4e187992503,        0xb022688fe3db5627 );
TEST_FPRED_VV_OP( 309,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004f1569df0334d2b,        0x9af729c3443ffe86,        0x04f1569df0334d2b );
TEST_FPRED_VV_OP( 310,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78fea873d54d8c9,        0x25d12d059e08f51b,        0xf78fea873d54d8c9 );
TEST_FPRED_VV_OP( 311,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048a6d6799ed158ae,        0xd8a10962933e15bd,        0x48a6d6799ed158ae );
TEST_FPRED_VV_OP( 312,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0d56957c1f989ec,        0x5d67baf8fe198daf,        0xd0d56957c1f989ec );
TEST_FPRED_VV_OP( 313,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000507d42579f1b30c1,        0x95b563a995fb5ba7,        0x507d42579f1b30c1 );
TEST_FPRED_VV_OP( 314,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bec601e6ac77700b,        0x0b32b9372fe0bce9,        0xbec601e6ac77700b );
TEST_FPRED_VV_OP( 315,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005190cae6f85a8d23,        0xeb337923a729e30f,        0x5190cae6f85a8d23 );
TEST_FPRED_VV_OP( 316,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e800b8886570168,        0xe9f053fcc032b1d6,        0x2e800b8886570168 );
TEST_FPRED_VV_OP( 317,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000989ad11a146fa261,        0x0c110ae733010d25,        0x989ad11a146fa261 );
TEST_FPRED_VV_OP( 318,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007728f4a1abc957e1,        0x0cd18f0969a599b1,        0x7728f4a1abc957e1 );
TEST_FPRED_VV_OP( 319,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000762d77aeca8aa81a,        0x6d565e6b565b2ad1,        0x762d77aeca8aa81a );
TEST_FPRED_VV_OP( 320,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018c4c857050e7a94,        0xd892bfcd7ba31f17,        0x18c4c857050e7a94 );
TEST_FPRED_VV_OP( 321,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4683ee0be29f1e8,        0x029d713335ad1fae,        0xe4683ee0be29f1e8 );
TEST_FPRED_VV_OP( 322,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a618026503b9801e,        0x969db08e119eeecd,        0xa618026503b9801e );
TEST_FPRED_VV_OP( 323,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d839aa2f24d575d6,        0x47070d7289cb99e7,        0xd839aa2f24d575d6 );
TEST_FPRED_VV_OP( 324,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0a0733ac0bb11c6,        0x128c793bf944f040,        0xc0a0733ac0bb11c6 );
TEST_FPRED_VV_OP( 325,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dde5f8d6229c1737,        0x366744c816113f1b,        0xdde5f8d6229c1737 );
TEST_FPRED_VV_OP( 326,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005151e912e7aae4c,        0xf96029c769dd8c75,        0x05151e912e7aae4c );
TEST_FPRED_VV_OP( 327,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b463146f6d2a49d6,        0x9c5e141a77a6ceab,        0xb463146f6d2a49d6 );
TEST_FPRED_VV_OP( 328,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7da8ace0e0305fe,        0x73430efab67794c9,        0xf7da8ace0e0305fe );
TEST_FPRED_VV_OP( 329,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab350651865a1ca5,        0xa4ee1fe7cd8bb7de,        0xab350651865a1ca5 );
TEST_FPRED_VV_OP( 330,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000064a57112602ffde4,        0x05185cdfe7c14986,        0x64a57112602ffde4 );
TEST_FPRED_VV_OP( 331,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027d5f04b71e61194,        0x059c0f7c28036c22,        0x27d5f04b71e61194 );
TEST_FPRED_VV_OP( 332,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f175ddae40ef0ceb,        0x76c2ed076f96b993,        0xf175ddae40ef0ceb );
TEST_FPRED_VV_OP( 333,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028f9386871cc9153,        0xdfbd9b8ac0d0381b,        0x28f9386871cc9153 );
TEST_FPRED_VV_OP( 334,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a8e15e18bf63141,        0x03df4a7f82c2a875,        0x5a8e15e18bf63141 );
TEST_FPRED_VV_OP( 335,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017873cd77d5839f8,        0x2e56d77270ffade7,        0x17873cd77d5839f8 );
TEST_FPRED_VV_OP( 336,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002221aee03035d74,        0x71130ee0978174ac,        0x02221aee03035d74 );
TEST_FPRED_VV_OP( 337,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b6d73f969db55bb,        0x243033c7baaedaa1,        0x0b6d73f969db55bb );
TEST_FPRED_VV_OP( 338,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082e3f55d6fbbcc8b,        0xfdbf3d43027bf014,        0x82e3f55d6fbbcc8b );
TEST_FPRED_VV_OP( 339,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d93277512dd02ed3,        0xdb3c9eb36f5fcab5,        0xd93277512dd02ed3 );
TEST_FPRED_VV_OP( 340,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c55060831648976a,        0xa8de8618c219791a,        0xc55060831648976a );
TEST_FPRED_VV_OP( 341,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db4e496419d7ee82,        0xa96a7e2de60004f0,        0xdb4e496419d7ee82 );
TEST_FPRED_VV_OP( 342,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005f03d45f6fd1691a,        0x01c76e77de85b197,        0x5f03d45f6fd1691a );
TEST_FPRED_VV_OP( 343,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d93c9b276b4bb61,        0x35dcc7648b63b812,        0x8d93c9b276b4bb61 );
TEST_FPRED_VV_OP( 344,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a989cce975309325,        0x21114400c7c40593,        0xa989cce975309325 );
TEST_FPRED_VV_OP( 345,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f99609771cf8d5,        0xb8ec9e24ef7ccb27,        0x00f99609771cf8d5 );
TEST_FPRED_VV_OP( 346,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002da6c11b9ec12bb7,        0xa55587f3dcede08b,        0x2da6c11b9ec12bb7 );
TEST_FPRED_VV_OP( 347,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d087129a3f858e45,        0xb26002aa1c740295,        0xd087129a3f858e45 );
TEST_FPRED_VV_OP( 348,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8556e88bc783450,        0x57f573b19289946c,        0xb8556e88bc783450 );
TEST_FPRED_VV_OP( 349,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a6c75cfe369b8fa,        0xc60c7f7301d69015,        0x5a6c75cfe369b8fa );
TEST_FPRED_VV_OP( 350,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ddfdf6e75b0a91e,        0xf4b39b7e483fae55,        0x5ddfdf6e75b0a91e );
TEST_FPRED_VV_OP( 351,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ecea8ee0bae841,        0x41cedfb82bf16bc9,        0x06ecea8ee0bae841 );
TEST_FPRED_VV_OP( 352,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088498de5aaf179c1,        0xa17d9ea138fcfe1a,        0x88498de5aaf179c1 );
TEST_FPRED_VV_OP( 353,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005abc5eac3031916e,        0x1de6fc9e2ea32f49,        0x5abc5eac3031916e );
TEST_FPRED_VV_OP( 354,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a161a79678c0adae,        0x73d57af1656e0ec7,        0xa161a79678c0adae );
TEST_FPRED_VV_OP( 355,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000097b9051bdb40772,        0xe43b887d3732bf98,        0x097b9051bdb40772 );
TEST_FPRED_VV_OP( 356,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fc766f0c976b653a,        0x9e382ec65643810b,        0xfc766f0c976b653a );
TEST_FPRED_VV_OP( 357,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028b20ff760740be0,        0x6dd32d73e1801926,        0x28b20ff760740be0 );
TEST_FPRED_VV_OP( 358,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057df4467c61fb6dd,        0xbebebd75835ccdc9,        0x57df4467c61fb6dd );
TEST_FPRED_VV_OP( 359,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081e417514b3deeff,        0xbd5c9ef131730499,        0x81e417514b3deeff );
TEST_FPRED_VV_OP( 360,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005974407dddc651a0,        0xd83f14c8bf8a2e1a,        0x5974407dddc651a0 );
TEST_FPRED_VV_OP( 361,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000071cf238d90e9b6f5,        0xc8715c308da43ea6,        0x71cf238d90e9b6f5 );
TEST_FPRED_VV_OP( 362,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015b65c6f606a80eb,        0xab756d97d2740439,        0x15b65c6f606a80eb );
TEST_FPRED_VV_OP( 363,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d67891686486deb9,        0x0f95997b18ff7989,        0xd67891686486deb9 );
TEST_FPRED_VV_OP( 364,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3b44ac722626d16,        0x086523549822ebd9,        0xf3b44ac722626d16 );
TEST_FPRED_VV_OP( 365,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052a44ef6bcfea4e9,        0x9786199c71ffae32,        0x52a44ef6bcfea4e9 );
TEST_FPRED_VV_OP( 366,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e183fdb8df660210,        0xf8e9ea0f5ce6e606,        0xe183fdb8df660210 );
TEST_FPRED_VV_OP( 367,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000042039f18e91b73ca,        0xee4af8d45560c83f,        0x42039f18e91b73ca );
TEST_FPRED_VV_OP( 368,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a6003940f4e05aa6,        0x16db150c008ede0f,        0xa6003940f4e05aa6 );
TEST_FPRED_VV_OP( 369,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000545fc4995e5d9392,        0x44fae17fc3a3f94f,        0x545fc4995e5d9392 );
TEST_FPRED_VV_OP( 370,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d7fe8a88618dd57e,        0x4a121a27b290c0bc,        0xd7fe8a88618dd57e );
TEST_FPRED_VV_OP( 371,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003cf73fd1210a504c,        0xac4034571caeec15,        0x3cf73fd1210a504c );
TEST_FPRED_VV_OP( 372,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a36dcbab729d65,        0x7045093f14d2fa9a,        0x00a36dcbab729d65 );
TEST_FPRED_VV_OP( 373,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a78605ec8eb2a29,        0xbd98cba38abc05fe,        0x4a78605ec8eb2a29 );
TEST_FPRED_VV_OP( 374,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ad3df02237202a35,        0xe3df0d85f8ef40df,        0xad3df02237202a35 );
TEST_FPRED_VV_OP( 375,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f9e6c24f1e1a7e4,        0x9d21173e2d4717bd,        0x8f9e6c24f1e1a7e4 );
TEST_FPRED_VV_OP( 376,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3bb750487e8962a,        0xc1884643063c00b9,        0xe3bb750487e8962a );
TEST_FPRED_VV_OP( 377,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f06abb22fdabd911,        0x90ec89cbde233beb,        0xf06abb22fdabd911 );
TEST_FPRED_VV_OP( 378,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cea4b7ea01d1083e,        0xf18915693a6713df,        0xcea4b7ea01d1083e );
TEST_FPRED_VV_OP( 379,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002af8c695b7ce6de6,        0xf3d65eeaed55d53d,        0x2af8c695b7ce6de6 );
TEST_FPRED_VV_OP( 380,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac11211c7677137b,        0xace7c6059b620bd7,        0xac11211c7677137b );
TEST_FPRED_VV_OP( 381,  vfredusum.vs, 0x0000000000000000,               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000598a363a1141ce6,        0x6942fc94e9909bb3,        0x0598a363a1141ce6 );
TEST_FPRED_VV_OP( 382,  vfredusum.vs, 0x0000000000000000,               0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcf7ec2f3b95f492,        0xd4d32cf62ea33ff8,        0xfcf7ec2f3b95f492 );
TEST_FPRED_VV_OP( 383,  vfredusum.vs, 0x0000000000000000,               0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010a995e3f56bbe06,        0x2a6876bc4ea19485,        0x10a995e3f56bbe06 );
  #-------------------------------------------------------------
  # VV Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_FPRED_VV_OP_rd1( 384,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000000, 0x0000000000000000 );
  TEST_FPRED_VV_OP_11( 385,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000000, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd2( 386,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x0000000000000000, 0x8000000000000000 );
  TEST_FPRED_VV_OP_12( 387,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x0000000000000000, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd3( 388,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x0000000000000000, 0x0000000000000001 );
  TEST_FPRED_VV_OP_13( 389,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x0000000000000000, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd4( 390,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x0000000000000000, 0x8000000000000001 );
  TEST_FPRED_VV_OP_14( 391,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x0000000000000000, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd5( 392,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x0000000000000000, 0x0000000000000002 );
  TEST_FPRED_VV_OP_15( 393,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x0000000000000000, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd6( 394,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x0000000000000000, 0x8000000000000002 );
  TEST_FPRED_VV_OP_16( 395,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x0000000000000000, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd7( 396,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x0000000000000000, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_17( 397,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x0000000000000000, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd9( 398,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x0000000000000000, 0x0010000000000000 );
  TEST_FPRED_VV_OP_19( 399,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x0000000000000000, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd10( 400,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x0000000000000000, 0x8010000000000000 );
  TEST_FPRED_VV_OP_110( 401,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x0000000000000000, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd11( 402,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x0000000000000000, 0x0010000000000002 );
  TEST_FPRED_VV_OP_111( 403,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x0000000000000000, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd12( 404,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x0000000000000000, 0x8010000000000002 );
  TEST_FPRED_VV_OP_112( 405,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x0000000000000000, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd13( 406,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x0000000000000000, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_113( 407,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x0000000000000000, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd14( 408,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x0000000000000000, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_114( 409,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x0000000000000000, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd15( 410,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x0000000000000000, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_115( 411,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x0000000000000000, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd17( 412,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8000000000000000, 0x0000000000000000 );
  TEST_FPRED_VV_OP_117( 413,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8000000000000000, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd18( 414,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x8000000000000000, 0x8000000000000000 );
  TEST_FPRED_VV_OP_118( 415,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x8000000000000000, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd19( 416,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8000000000000000, 0x0000000000000001 );
  TEST_FPRED_VV_OP_119( 417,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8000000000000000, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd20( 418,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x8000000000000000, 0x8000000000000001 );
  TEST_FPRED_VV_OP_120( 419,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x8000000000000000, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd21( 420,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x8000000000000000, 0x0000000000000002 );
  TEST_FPRED_VV_OP_121( 421,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x8000000000000000, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd22( 422,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x8000000000000000, 0x8000000000000002 );
  TEST_FPRED_VV_OP_122( 423,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x8000000000000000, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd23( 424,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x8000000000000000, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_123( 425,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x8000000000000000, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd25( 426,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x8000000000000000, 0x0010000000000000 );
  TEST_FPRED_VV_OP_125( 427,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x8000000000000000, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd26( 428,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x8000000000000000, 0x8010000000000000 );
  TEST_FPRED_VV_OP_126( 429,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x8000000000000000, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd27( 430,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x8000000000000000, 0x0010000000000002 );
  TEST_FPRED_VV_OP_127( 431,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x8000000000000000, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd28( 432,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x8000000000000000, 0x8010000000000002 );
  TEST_FPRED_VV_OP_128( 433,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x8000000000000000, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd29( 434,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x8000000000000000, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_129( 435,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x8000000000000000, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd30( 436,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x8000000000000000, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_130( 437,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x8000000000000000, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd31( 438,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x8000000000000000, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_131( 439,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x8000000000000000, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd1( 440,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x8000000000000000, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_11( 441,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x8000000000000000, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd2( 442,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000001, 0x0000000000000000 );
  TEST_FPRED_VV_OP_12( 443,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000001, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd3( 444,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x0000000000000001, 0x8000000000000000 );
  TEST_FPRED_VV_OP_13( 445,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x0000000000000001, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd4( 446,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x0000000000000001, 0x0000000000000001 );
  TEST_FPRED_VV_OP_14( 447,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x0000000000000001, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd5( 448,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x0000000000000001, 0x8000000000000001 );
  TEST_FPRED_VV_OP_15( 449,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x0000000000000001, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd6( 450,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x0000000000000001, 0x0000000000000002 );
  TEST_FPRED_VV_OP_16( 451,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x0000000000000001, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd7( 452,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x0000000000000001, 0x8000000000000002 );
  TEST_FPRED_VV_OP_17( 453,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x0000000000000001, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd9( 454,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x0000000000000001, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_19( 455,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x0000000000000001, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd10( 456,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x0000000000000001, 0x0010000000000000 );
  TEST_FPRED_VV_OP_110( 457,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x0000000000000001, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd11( 458,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x0000000000000001, 0x8010000000000000 );
  TEST_FPRED_VV_OP_111( 459,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x0000000000000001, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd12( 460,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x0000000000000001, 0x0010000000000002 );
  TEST_FPRED_VV_OP_112( 461,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x0000000000000001, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd13( 462,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x0000000000000001, 0x8010000000000002 );
  TEST_FPRED_VV_OP_113( 463,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x0000000000000001, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd14( 464,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x0000000000000001, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_114( 465,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x0000000000000001, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd15( 466,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x0000000000000001, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_115( 467,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x0000000000000001, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd17( 468,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x0000000000000001, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_117( 469,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x0000000000000001, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd18( 470,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8000000000000001, 0x0000000000000000 );
  TEST_FPRED_VV_OP_118( 471,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8000000000000001, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd19( 472,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x8000000000000001, 0x8000000000000000 );
  TEST_FPRED_VV_OP_119( 473,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x8000000000000001, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd20( 474,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8000000000000001, 0x0000000000000001 );
  TEST_FPRED_VV_OP_120( 475,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8000000000000001, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd21( 476,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x8000000000000001, 0x8000000000000001 );
  TEST_FPRED_VV_OP_121( 477,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x8000000000000001, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd22( 478,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x8000000000000001, 0x0000000000000002 );
  TEST_FPRED_VV_OP_122( 479,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x8000000000000001, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd23( 480,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x8000000000000001, 0x8000000000000002 );
  TEST_FPRED_VV_OP_123( 481,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x8000000000000001, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd25( 482,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x8000000000000001, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_125( 483,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x8000000000000001, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd26( 484,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x8000000000000001, 0x0010000000000000 );
  TEST_FPRED_VV_OP_126( 485,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x8000000000000001, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd27( 486,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x8000000000000001, 0x8010000000000000 );
  TEST_FPRED_VV_OP_127( 487,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x8000000000000001, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd28( 488,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x8000000000000001, 0x0010000000000002 );
  TEST_FPRED_VV_OP_128( 489,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x8000000000000001, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd29( 490,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x8000000000000001, 0x8010000000000002 );
  TEST_FPRED_VV_OP_129( 491,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x8000000000000001, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd30( 492,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x8000000000000001, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_130( 493,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x8000000000000001, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd31( 494,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x8000000000000001, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_131( 495,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x8000000000000001, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd1( 496,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x8000000000000001, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_11( 497,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x8000000000000001, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd2( 498,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x8000000000000001, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_12( 499,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x8000000000000001, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd3( 500,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000002, 0x0000000000000000 );
  TEST_FPRED_VV_OP_13( 501,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000002, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd4( 502,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x0000000000000002, 0x8000000000000000 );
  TEST_FPRED_VV_OP_14( 503,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x0000000000000002, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd5( 504,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x0000000000000002, 0x0000000000000001 );
  TEST_FPRED_VV_OP_15( 505,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x0000000000000002, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd6( 506,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x0000000000000002, 0x8000000000000001 );
  TEST_FPRED_VV_OP_16( 507,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x0000000000000002, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd7( 508,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x0000000000000002, 0x0000000000000002 );
  TEST_FPRED_VV_OP_17( 509,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x0000000000000002, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd9( 510,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x0000000000000002, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_19( 511,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x0000000000000002, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd10( 512,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x0000000000000002, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_110( 513,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x0000000000000002, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd11( 514,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x0000000000000002, 0x0010000000000000 );
  TEST_FPRED_VV_OP_111( 515,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x0000000000000002, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd12( 516,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x0000000000000002, 0x8010000000000000 );
  TEST_FPRED_VV_OP_112( 517,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x0000000000000002, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd13( 518,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x0000000000000002, 0x0010000000000002 );
  TEST_FPRED_VV_OP_113( 519,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x0000000000000002, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd14( 520,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x0000000000000002, 0x8010000000000002 );
  TEST_FPRED_VV_OP_114( 521,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x0000000000000002, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd15( 522,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x0000000000000002, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_115( 523,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x0000000000000002, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd17( 524,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x0000000000000002, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_117( 525,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x0000000000000002, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd18( 526,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x0000000000000002, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_118( 527,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x0000000000000002, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd19( 528,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8000000000000002, 0x0000000000000000 );
  TEST_FPRED_VV_OP_119( 529,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8000000000000002, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd20( 530,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x8000000000000002, 0x8000000000000000 );
  TEST_FPRED_VV_OP_120( 531,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x8000000000000002, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd21( 532,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8000000000000002, 0x0000000000000001 );
  TEST_FPRED_VV_OP_121( 533,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8000000000000002, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd22( 534,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x8000000000000002, 0x8000000000000001 );
  TEST_FPRED_VV_OP_122( 535,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x8000000000000002, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd23( 536,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x8000000000000002, 0x0000000000000002 );
  TEST_FPRED_VV_OP_123( 537,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x8000000000000002, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd25( 538,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x8000000000000002, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_125( 539,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x8000000000000002, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd26( 540,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x8000000000000002, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_126( 541,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x8000000000000002, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd27( 542,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x8000000000000002, 0x0010000000000000 );
  TEST_FPRED_VV_OP_127( 543,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x8000000000000002, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd28( 544,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x8000000000000002, 0x8010000000000000 );
  TEST_FPRED_VV_OP_128( 545,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x8000000000000002, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd29( 546,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x8000000000000002, 0x0010000000000002 );
  TEST_FPRED_VV_OP_129( 547,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x8000000000000002, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd30( 548,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x8000000000000002, 0x8010000000000002 );
  TEST_FPRED_VV_OP_130( 549,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x8000000000000002, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd31( 550,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x8000000000000002, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_131( 551,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x8000000000000002, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd1( 552,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x8000000000000002, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_11( 553,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x8000000000000002, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd2( 554,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x8000000000000002, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_12( 555,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x8000000000000002, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd3( 556,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x8000000000000002, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_13( 557,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x8000000000000002, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd4( 558,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x000FFFFFFFFFFFFF, 0x0000000000000000 );
  TEST_FPRED_VV_OP_14( 559,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x000FFFFFFFFFFFFF, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd5( 560,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x000FFFFFFFFFFFFF, 0x8000000000000000 );
  TEST_FPRED_VV_OP_15( 561,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x000FFFFFFFFFFFFF, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd6( 562,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x000FFFFFFFFFFFFF, 0x0000000000000001 );
  TEST_FPRED_VV_OP_16( 563,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x000FFFFFFFFFFFFF, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd7( 564,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x000FFFFFFFFFFFFF, 0x8000000000000001 );
  TEST_FPRED_VV_OP_17( 565,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x000FFFFFFFFFFFFF, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd9( 566,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x000FFFFFFFFFFFFF, 0x8000000000000002 );
  TEST_FPRED_VV_OP_19( 567,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x000FFFFFFFFFFFFF, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd10( 568,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x000FFFFFFFFFFFFF, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_110( 569,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x000FFFFFFFFFFFFF, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd11( 570,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x000FFFFFFFFFFFFF, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_111( 571,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x000FFFFFFFFFFFFF, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd12( 572,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x000FFFFFFFFFFFFF, 0x0010000000000000 );
  TEST_FPRED_VV_OP_112( 573,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x000FFFFFFFFFFFFF, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd13( 574,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x000FFFFFFFFFFFFF, 0x8010000000000000 );
  TEST_FPRED_VV_OP_113( 575,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x000FFFFFFFFFFFFF, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd14( 576,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x000FFFFFFFFFFFFF, 0x0010000000000002 );
  TEST_FPRED_VV_OP_114( 577,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x000FFFFFFFFFFFFF, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd15( 578,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x000FFFFFFFFFFFFF, 0x8010000000000002 );
  TEST_FPRED_VV_OP_115( 579,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x000FFFFFFFFFFFFF, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd17( 580,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x000FFFFFFFFFFFFF, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_117( 581,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x000FFFFFFFFFFFFF, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd18( 582,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x000FFFFFFFFFFFFF, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_118( 583,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x000FFFFFFFFFFFFF, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd19( 584,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x000FFFFFFFFFFFFF, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_119( 585,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x000FFFFFFFFFFFFF, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd20( 586,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x800FFFFFFFFFFFFF, 0x0000000000000000 );
  TEST_FPRED_VV_OP_120( 587,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x800FFFFFFFFFFFFF, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd21( 588,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x800FFFFFFFFFFFFF, 0x8000000000000000 );
  TEST_FPRED_VV_OP_121( 589,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x800FFFFFFFFFFFFF, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd22( 590,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x800FFFFFFFFFFFFF, 0x0000000000000001 );
  TEST_FPRED_VV_OP_122( 591,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x800FFFFFFFFFFFFF, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd23( 592,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x800FFFFFFFFFFFFF, 0x8000000000000001 );
  TEST_FPRED_VV_OP_123( 593,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x800FFFFFFFFFFFFF, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd25( 594,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x800FFFFFFFFFFFFF, 0x8000000000000002 );
  TEST_FPRED_VV_OP_125( 595,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x800FFFFFFFFFFFFF, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd26( 596,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x800FFFFFFFFFFFFF, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_126( 597,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x800FFFFFFFFFFFFF, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd27( 598,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x800FFFFFFFFFFFFF, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_127( 599,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x800FFFFFFFFFFFFF, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd28( 600,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x800FFFFFFFFFFFFF, 0x0010000000000000 );
  TEST_FPRED_VV_OP_128( 601,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x800FFFFFFFFFFFFF, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd29( 602,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x800FFFFFFFFFFFFF, 0x8010000000000000 );
  TEST_FPRED_VV_OP_129( 603,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x800FFFFFFFFFFFFF, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd30( 604,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x800FFFFFFFFFFFFF, 0x0010000000000002 );
  TEST_FPRED_VV_OP_130( 605,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x800FFFFFFFFFFFFF, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd31( 606,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x800FFFFFFFFFFFFF, 0x8010000000000002 );
  TEST_FPRED_VV_OP_131( 607,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x800FFFFFFFFFFFFF, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd1( 608,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x800FFFFFFFFFFFFF, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_11( 609,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x800FFFFFFFFFFFFF, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd2( 610,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x800FFFFFFFFFFFFF, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_12( 611,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x800FFFFFFFFFFFFF, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd3( 612,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x800FFFFFFFFFFFFF, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_13( 613,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x800FFFFFFFFFFFFF, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd4( 614,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x800FFFFFFFFFFFFF, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_14( 615,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x800FFFFFFFFFFFFF, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd5( 616,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0010000000000000, 0x0000000000000000 );
  TEST_FPRED_VV_OP_15( 617,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0010000000000000, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd6( 618,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x0010000000000000, 0x8000000000000000 );
  TEST_FPRED_VV_OP_16( 619,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x0010000000000000, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd7( 620,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x0010000000000000, 0x0000000000000001 );
  TEST_FPRED_VV_OP_17( 621,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x0010000000000000, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd9( 622,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x0010000000000000, 0x0000000000000002 );
  TEST_FPRED_VV_OP_19( 623,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x0010000000000000, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd10( 624,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x0010000000000000, 0x8000000000000002 );
  TEST_FPRED_VV_OP_110( 625,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x0010000000000000, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd11( 626,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x0010000000000000, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_111( 627,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x0010000000000000, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd12( 628,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x0010000000000000, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_112( 629,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x0010000000000000, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd13( 630,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x0010000000000000, 0x0010000000000000 );
  TEST_FPRED_VV_OP_113( 631,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x0010000000000000, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd14( 632,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x0010000000000000, 0x8010000000000000 );
  TEST_FPRED_VV_OP_114( 633,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x0010000000000000, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd15( 634,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x0010000000000000, 0x0010000000000002 );
  TEST_FPRED_VV_OP_115( 635,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x0010000000000000, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd17( 636,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x0010000000000000, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_117( 637,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x0010000000000000, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd18( 638,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x0010000000000000, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_118( 639,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x0010000000000000, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd19( 640,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x0010000000000000, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_119( 641,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x0010000000000000, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd20( 642,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x0010000000000000, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_120( 643,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x0010000000000000, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd21( 644,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8010000000000000, 0x0000000000000000 );
  TEST_FPRED_VV_OP_121( 645,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8010000000000000, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd22( 646,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x8010000000000000, 0x8000000000000000 );
  TEST_FPRED_VV_OP_122( 647,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x8010000000000000, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd23( 648,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8010000000000000, 0x0000000000000001 );
  TEST_FPRED_VV_OP_123( 649,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x8010000000000000, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd25( 650,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x8010000000000000, 0x0000000000000002 );
  TEST_FPRED_VV_OP_125( 651,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x8010000000000000, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd26( 652,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x8010000000000000, 0x8000000000000002 );
  TEST_FPRED_VV_OP_126( 653,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x8010000000000000, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd27( 654,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x8010000000000000, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_127( 655,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x8010000000000000, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd28( 656,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x8010000000000000, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_128( 657,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x8010000000000000, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd29( 658,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x8010000000000000, 0x0010000000000000 );
  TEST_FPRED_VV_OP_129( 659,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x8010000000000000, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd30( 660,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x8010000000000000, 0x8010000000000000 );
  TEST_FPRED_VV_OP_130( 661,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x8010000000000000, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd31( 662,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x8010000000000000, 0x0010000000000002 );
  TEST_FPRED_VV_OP_131( 663,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x8010000000000000, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd1( 664,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x8010000000000000, 0x8010000000000002 );
  TEST_FPRED_VV_OP_11( 665,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x8010000000000000, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd2( 666,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x8010000000000000, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_12( 667,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x8010000000000000, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd3( 668,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x8010000000000000, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_13( 669,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x8010000000000000, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd4( 670,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x8010000000000000, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_14( 671,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x8010000000000000, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd5( 672,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x8010000000000000, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_15( 673,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x8010000000000000, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd6( 674,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0010000000000002, 0x0000000000000000 );
  TEST_FPRED_VV_OP_16( 675,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0010000000000002, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd7( 676,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x0010000000000002, 0x8000000000000000 );
  TEST_FPRED_VV_OP_17( 677,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x0010000000000002, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd9( 678,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x0010000000000002, 0x8000000000000001 );
  TEST_FPRED_VV_OP_19( 679,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x0010000000000002, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd10( 680,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x0010000000000002, 0x0000000000000002 );
  TEST_FPRED_VV_OP_110( 681,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x0010000000000002, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd11( 682,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x0010000000000002, 0x8000000000000002 );
  TEST_FPRED_VV_OP_111( 683,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x0010000000000002, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd12( 684,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x0010000000000002, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_112( 685,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x0010000000000002, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd13( 686,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x0010000000000002, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_113( 687,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x0010000000000002, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd14( 688,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x0010000000000002, 0x0010000000000000 );
  TEST_FPRED_VV_OP_114( 689,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x0010000000000002, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd15( 690,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x0010000000000002, 0x8010000000000000 );
  TEST_FPRED_VV_OP_115( 691,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x0010000000000002, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd17( 692,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x0010000000000002, 0x8010000000000002 );
  TEST_FPRED_VV_OP_117( 693,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x0010000000000002, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd18( 694,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x0010000000000002, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_118( 695,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x0010000000000002, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd19( 696,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x0010000000000002, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_119( 697,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x0010000000000002, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd20( 698,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x0010000000000002, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_120( 699,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x0010000000000002, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd21( 700,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x0010000000000002, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_121( 701,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x0010000000000002, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd22( 702,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8010000000000002, 0x0000000000000000 );
  TEST_FPRED_VV_OP_122( 703,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x8010000000000002, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd23( 704,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x8010000000000002, 0x8000000000000000 );
  TEST_FPRED_VV_OP_123( 705,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x8010000000000002, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd25( 706,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x8010000000000002, 0x8000000000000001 );
  TEST_FPRED_VV_OP_125( 707,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x8010000000000002, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd26( 708,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x8010000000000002, 0x0000000000000002 );
  TEST_FPRED_VV_OP_126( 709,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x8010000000000002, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd27( 710,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x8010000000000002, 0x8000000000000002 );
  TEST_FPRED_VV_OP_127( 711,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x8010000000000002, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd28( 712,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x8010000000000002, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_128( 713,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x8010000000000002, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd29( 714,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x8010000000000002, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_129( 715,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x8010000000000002, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd30( 716,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x8010000000000002, 0x0010000000000000 );
  TEST_FPRED_VV_OP_130( 717,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x8010000000000002, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd31( 718,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x8010000000000002, 0x8010000000000000 );
  TEST_FPRED_VV_OP_131( 719,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x8010000000000002, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd1( 720,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x8010000000000002, 0x0010000000000002 );
  TEST_FPRED_VV_OP_11( 721,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x8010000000000002, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd2( 722,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x8010000000000002, 0x8010000000000002 );
  TEST_FPRED_VV_OP_12( 723,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x8010000000000002, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd3( 724,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x8010000000000002, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_13( 725,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x8010000000000002, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd4( 726,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x8010000000000002, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_14( 727,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x8010000000000002, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd5( 728,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x8010000000000002, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_15( 729,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x8010000000000002, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd6( 730,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x8010000000000002, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_16( 731,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x8010000000000002, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd7( 732,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x7FEFFFFFFFFFFFFF, 0x0000000000000000 );
  TEST_FPRED_VV_OP_17( 733,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x7FEFFFFFFFFFFFFF, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd9( 734,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x7FEFFFFFFFFFFFFF, 0x0000000000000001 );
  TEST_FPRED_VV_OP_19( 735,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x7FEFFFFFFFFFFFFF, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd10( 736,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x7FEFFFFFFFFFFFFF, 0x8000000000000001 );
  TEST_FPRED_VV_OP_110( 737,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x7FEFFFFFFFFFFFFF, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd11( 738,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x7FEFFFFFFFFFFFFF, 0x0000000000000002 );
  TEST_FPRED_VV_OP_111( 739,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x7FEFFFFFFFFFFFFF, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd12( 740,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x7FEFFFFFFFFFFFFF, 0x8000000000000002 );
  TEST_FPRED_VV_OP_112( 741,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x7FEFFFFFFFFFFFFF, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd13( 742,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x7FEFFFFFFFFFFFFF, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_113( 743,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x7FEFFFFFFFFFFFFF, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd14( 744,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x7FEFFFFFFFFFFFFF, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_114( 745,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x7FEFFFFFFFFFFFFF, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd15( 746,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x7FEFFFFFFFFFFFFF, 0x0010000000000000 );
  TEST_FPRED_VV_OP_115( 747,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x7FEFFFFFFFFFFFFF, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd17( 748,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x7FEFFFFFFFFFFFFF, 0x0010000000000002 );
  TEST_FPRED_VV_OP_117( 749,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x7FEFFFFFFFFFFFFF, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd18( 750,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x7FEFFFFFFFFFFFFF, 0x8010000000000002 );
  TEST_FPRED_VV_OP_118( 751,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x7FEFFFFFFFFFFFFF, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd19( 752,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x7FEFFFFFFFFFFFFF, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_119( 753,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x7FEFFFFFFFFFFFFF, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd20( 754,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x7FEFFFFFFFFFFFFF, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_120( 755,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x7FEFFFFFFFFFFFFF, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd21( 756,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x7FEFFFFFFFFFFFFF, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_121( 757,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x7FEFFFFFFFFFFFFF, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd22( 758,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x7FEFFFFFFFFFFFFF, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_122( 759,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x7FEFFFFFFFFFFFFF, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd23( 760,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xFFEFFFFFFFFFFFFF, 0x0000000000000000 );
  TEST_FPRED_VV_OP_123( 761,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xFFEFFFFFFFFFFFFF, 0x0000000000000000 );
  TEST_FPRED_VV_OP_rd25( 762,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xFFEFFFFFFFFFFFFF, 0x0000000000000001 );
  TEST_FPRED_VV_OP_125( 763,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xFFEFFFFFFFFFFFFF, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd26( 764,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0xFFEFFFFFFFFFFFFF, 0x8000000000000001 );
  TEST_FPRED_VV_OP_126( 765,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0xFFEFFFFFFFFFFFFF, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd27( 766,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xFFEFFFFFFFFFFFFF, 0x0000000000000002 );
  TEST_FPRED_VV_OP_127( 767,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xFFEFFFFFFFFFFFFF, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd28( 768,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0xFFEFFFFFFFFFFFFF, 0x8000000000000002 );
  TEST_FPRED_VV_OP_128( 769,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0xFFEFFFFFFFFFFFFF, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd29( 770,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0xFFEFFFFFFFFFFFFF, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_129( 771,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0xFFEFFFFFFFFFFFFF, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd30( 772,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0xFFEFFFFFFFFFFFFF, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_130( 773,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0xFFEFFFFFFFFFFFFF, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd31( 774,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0xFFEFFFFFFFFFFFFF, 0x0010000000000000 );
  TEST_FPRED_VV_OP_131( 775,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0xFFEFFFFFFFFFFFFF, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd1( 776,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0xFFEFFFFFFFFFFFFF, 0x8010000000000000 );
  TEST_FPRED_VV_OP_11( 777,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0xFFEFFFFFFFFFFFFF, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd2( 778,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0xFFEFFFFFFFFFFFFF, 0x0010000000000002 );
  TEST_FPRED_VV_OP_12( 779,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0xFFEFFFFFFFFFFFFF, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd3( 780,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0xFFEFFFFFFFFFFFFF, 0x8010000000000002 );
  TEST_FPRED_VV_OP_13( 781,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0xFFEFFFFFFFFFFFFF, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd4( 782,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0xFFEFFFFFFFFFFFFF, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_14( 783,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0xFFEFFFFFFFFFFFFF, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd5( 784,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0xFFEFFFFFFFFFFFFF, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_15( 785,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0xFFEFFFFFFFFFFFFF, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd6( 786,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0xFFEFFFFFFFFFFFFF, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_16( 787,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0xFFEFFFFFFFFFFFFF, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd7( 788,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0xFFEFFFFFFFFFFFFF, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_17( 789,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0xFFEFFFFFFFFFFFFF, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd9( 790,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x3FF0000000000000, 0x8000000000000000 );
  TEST_FPRED_VV_OP_19( 791,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x3FF0000000000000, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd10( 792,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x3FF0000000000000, 0x0000000000000001 );
  TEST_FPRED_VV_OP_110( 793,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x3FF0000000000000, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd11( 794,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x3FF0000000000000, 0x8000000000000001 );
  TEST_FPRED_VV_OP_111( 795,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0x3FF0000000000000, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd12( 796,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x3FF0000000000000, 0x0000000000000002 );
  TEST_FPRED_VV_OP_112( 797,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x3FF0000000000000, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd13( 798,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x3FF0000000000000, 0x8000000000000002 );
  TEST_FPRED_VV_OP_113( 799,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0x3FF0000000000000, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd14( 800,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x3FF0000000000000, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_114( 801,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0x3FF0000000000000, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd15( 802,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x3FF0000000000000, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_115( 803,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0x3FF0000000000000, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd17( 804,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x3FF0000000000000, 0x8010000000000000 );
  TEST_FPRED_VV_OP_117( 805,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0x3FF0000000000000, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd18( 806,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x3FF0000000000000, 0x0010000000000002 );
  TEST_FPRED_VV_OP_118( 807,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0x3FF0000000000000, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd19( 808,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x3FF0000000000000, 0x8010000000000002 );
  TEST_FPRED_VV_OP_119( 809,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0x3FF0000000000000, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd20( 810,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x3FF0000000000000, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_120( 811,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0x3FF0000000000000, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd21( 812,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x3FF0000000000000, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_121( 813,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0x3FF0000000000000, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd22( 814,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x3FF0000000000000, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_122( 815,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0x3FF0000000000000, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd23( 816,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x3FF0000000000000, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_123( 817,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bf80000000000000, 0x3FF0000000000000, 0xBF80000000000000 );
  TEST_FPRED_VV_OP_rd25( 818,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0xBF80000000000000, 0x8000000000000000 );
  TEST_FPRED_VV_OP_125( 819,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0xBF80000000000000, 0x8000000000000000 );
  TEST_FPRED_VV_OP_rd26( 820,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xBF80000000000000, 0x0000000000000001 );
  TEST_FPRED_VV_OP_126( 821,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xBF80000000000000, 0x0000000000000001 );
  TEST_FPRED_VV_OP_rd27( 822,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0xBF80000000000000, 0x8000000000000001 );
  TEST_FPRED_VV_OP_127( 823,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000001, 0xBF80000000000000, 0x8000000000000001 );
  TEST_FPRED_VV_OP_rd28( 824,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xBF80000000000000, 0x0000000000000002 );
  TEST_FPRED_VV_OP_128( 825,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xBF80000000000000, 0x0000000000000002 );
  TEST_FPRED_VV_OP_rd29( 826,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0xBF80000000000000, 0x8000000000000002 );
  TEST_FPRED_VV_OP_129( 827,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000002, 0xBF80000000000000, 0x8000000000000002 );
  TEST_FPRED_VV_OP_rd30( 828,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0xBF80000000000000, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_130( 829,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff, 0xBF80000000000000, 0x000FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd31( 830,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0xBF80000000000000, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_131( 831,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800fffffffffffff, 0xBF80000000000000, 0x800FFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd1( 832,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0xBF80000000000000, 0x0010000000000000 );
  TEST_FPRED_VV_OP_11( 833,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0xBF80000000000000, 0x0010000000000000 );
  TEST_FPRED_VV_OP_rd2( 834,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0xBF80000000000000, 0x8010000000000000 );
  TEST_FPRED_VV_OP_12( 835,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000000, 0xBF80000000000000, 0x8010000000000000 );
  TEST_FPRED_VV_OP_rd3( 836,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0xBF80000000000000, 0x0010000000000002 );
  TEST_FPRED_VV_OP_13( 837,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000002, 0xBF80000000000000, 0x0010000000000002 );
  TEST_FPRED_VV_OP_rd4( 838,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0xBF80000000000000, 0x8010000000000002 );
  TEST_FPRED_VV_OP_14( 839,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010000000000002, 0xBF80000000000000, 0x8010000000000002 );
  TEST_FPRED_VV_OP_rd5( 840,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0xBF80000000000000, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_15( 841,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fefffffffffffff, 0xBF80000000000000, 0x7FEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd6( 842,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0xBF80000000000000, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_16( 843,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0xBF80000000000000, 0xFFEFFFFFFFFFFFFF );
  TEST_FPRED_VV_OP_rd7( 844,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0xBF80000000000000, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_17( 845,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ff0000000000000, 0xBF80000000000000, 0x3FF0000000000000 );
  TEST_FPRED_VV_OP_rd9( 846,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c5fb19bc11df6bf, 0x287d8c15f97aadc9, 0x8c5fb19bc11df6bf );
  TEST_FPRED_VV_OP_19( 847,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c5fb19bc11df6bf, 0x287d8c15f97aadc9, 0x8c5fb19bc11df6bf );
  TEST_FPRED_VV_OP_rd10( 848,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000513c9cc3a6d05c60, 0x44b8289eee0b08d4, 0x513c9cc3a6d05c60 );
  TEST_FPRED_VV_OP_110( 849,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000513c9cc3a6d05c60, 0x44b8289eee0b08d4, 0x513c9cc3a6d05c60 );
  TEST_FPRED_VV_OP_rd11( 850,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c1e50ea1c4c0904, 0x32374a299b3ac7af, 0x6c1e50ea1c4c0904 );
  TEST_FPRED_VV_OP_111( 851,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006c1e50ea1c4c0904, 0x32374a299b3ac7af, 0x6c1e50ea1c4c0904 );
  TEST_FPRED_VV_OP_rd12( 852,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcce36a4ea2e073c, 0xd18bd69c3d9ffea1, 0xbcce36a4ea2e073c );
  TEST_FPRED_VV_OP_112( 853,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bcce36a4ea2e073c, 0xd18bd69c3d9ffea1, 0xbcce36a4ea2e073c );
  TEST_FPRED_VV_OP_rd13( 854,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e93686ad573ac3ea, 0xf2f31dae7be377b4, 0xe93686ad573ac3ea );
  TEST_FPRED_VV_OP_113( 855,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e93686ad573ac3ea, 0xf2f31dae7be377b4, 0xe93686ad573ac3ea );
  TEST_FPRED_VV_OP_rd14( 856,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab23e40ff9b44f35, 0xf9c63a355a3a8772, 0xab23e40ff9b44f35 );
  TEST_FPRED_VV_OP_114( 857,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab23e40ff9b44f35, 0xf9c63a355a3a8772, 0xab23e40ff9b44f35 );
  TEST_FPRED_VV_OP_rd15( 858,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088345d514f0ed9b1, 0xbde5879669cd8e4b, 0x88345d514f0ed9b1 );
  TEST_FPRED_VV_OP_115( 859,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088345d514f0ed9b1, 0xbde5879669cd8e4b, 0x88345d514f0ed9b1 );
  TEST_FPRED_VV_OP_rd17( 860,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d9eace733df87393, 0xbad2a80d351a6d23, 0xd9eace733df87393 );
  TEST_FPRED_VV_OP_117( 861,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d9eace733df87393, 0xbad2a80d351a6d23, 0xd9eace733df87393 );
  TEST_FPRED_VV_OP_rd18( 862,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c81593dad9a0d54e, 0x2e12df04b2caacd1, 0xc81593dad9a0d54e );
  TEST_FPRED_VV_OP_118( 863,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c81593dad9a0d54e, 0x2e12df04b2caacd1, 0xc81593dad9a0d54e );
  TEST_FPRED_VV_OP_rd19( 864,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b809cf6332b2845, 0x4a200fb3148c5fe2, 0x1b809cf6332b2845 );
  TEST_FPRED_VV_OP_119( 865,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b809cf6332b2845, 0x4a200fb3148c5fe2, 0x1b809cf6332b2845 );
  TEST_FPRED_VV_OP_rd20( 866,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069d97d5e8bcff755, 0x655e624ed7c37ed4, 0x69d97d5e8bcff755 );
  TEST_FPRED_VV_OP_120( 867,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069d97d5e8bcff755, 0x655e624ed7c37ed4, 0x69d97d5e8bcff755 );
  TEST_FPRED_VV_OP_rd21( 868,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000898622dcfff2d599, 0x352badbc7cfe54db, 0x898622dcfff2d599 );
  TEST_FPRED_VV_OP_121( 869,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000898622dcfff2d599, 0x352badbc7cfe54db, 0x898622dcfff2d599 );
  TEST_FPRED_VV_OP_rd22( 870,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000070f978be54ed7687, 0x6207b7935a22fba2, 0x70f978be54ed7687 );
  TEST_FPRED_VV_OP_122( 871,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000070f978be54ed7687, 0x6207b7935a22fba2, 0x70f978be54ed7687 );
  TEST_FPRED_VV_OP_rd23( 872,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000076b51fb5288a87c1, 0x6a96cbf27b3a0572, 0x76b51fb5288a87c1 );
  TEST_FPRED_VV_OP_123( 873,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000076b51fb5288a87c1, 0x6a96cbf27b3a0572, 0x76b51fb5288a87c1 );
  TEST_FPRED_VV_OP_rd25( 874,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000872ad316864f6302, 0x23df8a084bd80ea3, 0x872ad316864f6302 );
  TEST_FPRED_VV_OP_125( 875,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000872ad316864f6302, 0x23df8a084bd80ea3, 0x872ad316864f6302 );
  TEST_FPRED_VV_OP_rd26( 876,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f55b187ec3d34a2, 0x38067c5dfce0c534, 0x7f55b187ec3d34a2 );
  TEST_FPRED_VV_OP_126( 877,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007f55b187ec3d34a2, 0x38067c5dfce0c534, 0x7f55b187ec3d34a2 );
  TEST_FPRED_VV_OP_rd27( 878,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9ba75a7a3204dd7, 0x50b384c812f63a4f, 0xc9ba75a7a3204dd7 );
  TEST_FPRED_VV_OP_127( 879,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9ba75a7a3204dd7, 0x50b384c812f63a4f, 0xc9ba75a7a3204dd7 );
  TEST_FPRED_VV_OP_rd28( 880,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ae296496e39c63e, 0xd708334b155cb31e, 0x6ae296496e39c63e );
  TEST_FPRED_VV_OP_128( 881,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ae296496e39c63e, 0xd708334b155cb31e, 0x6ae296496e39c63e );
  TEST_FPRED_VV_OP_rd29( 882,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000693a26c4c15f26ff, 0x5110acded39aafec, 0x693a26c4c15f26ff );
  TEST_FPRED_VV_OP_129( 883,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000693a26c4c15f26ff, 0x5110acded39aafec, 0x693a26c4c15f26ff );
  TEST_FPRED_VV_OP_rd30( 884,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000096df12c2783db4a2, 0x4ec9780717ace8d5, 0x96df12c2783db4a2 );
  TEST_FPRED_VV_OP_130( 885,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000096df12c2783db4a2, 0x4ec9780717ace8d5, 0x96df12c2783db4a2 );
  TEST_FPRED_VV_OP_rd31( 886,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004c0d6288959ec61e, 0x1f738ac4f533d238, 0x4c0d6288959ec61e );
  TEST_FPRED_VV_OP_131( 887,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004c0d6288959ec61e, 0x1f738ac4f533d238, 0x4c0d6288959ec61e );
  TEST_FPRED_VV_OP_rd1( 888,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7bdcda44267bf4b, 0xf61eda23a016dda0, 0xf7bdcda44267bf4b );
  TEST_FPRED_VV_OP_11( 889,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7bdcda44267bf4b, 0xf61eda23a016dda0, 0xf7bdcda44267bf4b );
  TEST_FPRED_VV_OP_rd2( 890,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7704960b18a128a, 0x0bab3447fb4e6cce, 0xb7704960b18a128a );
  TEST_FPRED_VV_OP_12( 891,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7704960b18a128a, 0x0bab3447fb4e6cce, 0xb7704960b18a128a );
  TEST_FPRED_VV_OP_rd3( 892,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9eb305ad26d0ec9, 0x49b2fd00d0dc615d, 0xc9eb305ad26d0ec9 );
  TEST_FPRED_VV_OP_13( 893,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9eb305ad26d0ec9, 0x49b2fd00d0dc615d, 0xc9eb305ad26d0ec9 );
  TEST_FPRED_VV_OP_rd4( 894,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9ecc64ef8ccbcc4, 0x6ec815a873d565c0, 0xc9ecc64ef8ccbcc4 );
  TEST_FPRED_VV_OP_14( 895,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c9ecc64ef8ccbcc4, 0x6ec815a873d565c0, 0xc9ecc64ef8ccbcc4 );
  TEST_FPRED_VV_OP_rd5( 896,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010d37eb2301af9a5, 0xd369ea28f3ceadde, 0x10d37eb2301af9a5 );
  TEST_FPRED_VV_OP_15( 897,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010d37eb2301af9a5, 0xd369ea28f3ceadde, 0x10d37eb2301af9a5 );
  TEST_FPRED_VV_OP_rd6( 898,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006e1646940216d165, 0xbecdf4b751bd2e47, 0x6e1646940216d165 );
  TEST_FPRED_VV_OP_16( 899,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006e1646940216d165, 0xbecdf4b751bd2e47, 0x6e1646940216d165 );
  TEST_FPRED_VV_OP_rd7( 900,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001637d7cc103f5daa, 0xbfd4a5a6a160eed7, 0x1637d7cc103f5daa );
  TEST_FPRED_VV_OP_17( 901,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001637d7cc103f5daa, 0xbfd4a5a6a160eed7, 0x1637d7cc103f5daa );
  TEST_FPRED_VV_OP_rd9( 902,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000487a9e340ecf662f, 0xd025bc3393035915, 0x487a9e340ecf662f );
  TEST_FPRED_VV_OP_19( 903,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000487a9e340ecf662f, 0xd025bc3393035915, 0x487a9e340ecf662f );
  TEST_FPRED_VV_OP_rd10( 904,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bd11c2a06c01b4a, 0x8862c0202789f9f7, 0x3bd11c2a06c01b4a );
  TEST_FPRED_VV_OP_110( 905,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003bd11c2a06c01b4a, 0x8862c0202789f9f7, 0x3bd11c2a06c01b4a );
  TEST_FPRED_VV_OP_rd11( 906,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000042a9731f38a94368, 0xaf748dcb2185d65f, 0x42a9731f38a94368 );
  TEST_FPRED_VV_OP_111( 907,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000042a9731f38a94368, 0xaf748dcb2185d65f, 0x42a9731f38a94368 );
  TEST_FPRED_VV_OP_rd12( 908,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004cc0a65525bf4b48, 0x39c3983a0aca4c12, 0x4cc0a65525bf4b48 );
  TEST_FPRED_VV_OP_112( 909,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004cc0a65525bf4b48, 0x39c3983a0aca4c12, 0x4cc0a65525bf4b48 );
  TEST_FPRED_VV_OP_rd13( 910,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f95d58ef93c687a8, 0x7d60d873f0f436f0, 0xf95d58ef93c687a8 );
  TEST_FPRED_VV_OP_113( 911,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f95d58ef93c687a8, 0x7d60d873f0f436f0, 0xf95d58ef93c687a8 );
  TEST_FPRED_VV_OP_rd14( 912,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ac8ef3fbe104ff0, 0xc756fb6e9bdaa61a, 0x7ac8ef3fbe104ff0 );
  TEST_FPRED_VV_OP_114( 913,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ac8ef3fbe104ff0, 0xc756fb6e9bdaa61a, 0x7ac8ef3fbe104ff0 );
  TEST_FPRED_VV_OP_rd15( 914,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fa1f01c3e96acc82, 0xe8813727ffcc96c6, 0xfa1f01c3e96acc82 );
  TEST_FPRED_VV_OP_115( 915,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fa1f01c3e96acc82, 0xe8813727ffcc96c6, 0xfa1f01c3e96acc82 );
  TEST_FPRED_VV_OP_rd17( 916,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039510d7797590b51, 0xb8cff1c60f6c4556, 0x39510d7797590b51 );
  TEST_FPRED_VV_OP_117( 917,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039510d7797590b51, 0xb8cff1c60f6c4556, 0x39510d7797590b51 );
  TEST_FPRED_VV_OP_rd18( 918,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0dae30a0a277839, 0xd5485ef1cc713427, 0xc0dae30a0a277839 );
  TEST_FPRED_VV_OP_118( 919,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0dae30a0a277839, 0xd5485ef1cc713427, 0xc0dae30a0a277839 );
  TEST_FPRED_VV_OP_rd19( 920,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3772df99dafebd3, 0x1cc81cbf71411edb, 0xb3772df99dafebd3 );
  TEST_FPRED_VV_OP_119( 921,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b3772df99dafebd3, 0x1cc81cbf71411edb, 0xb3772df99dafebd3 );
  TEST_FPRED_VV_OP_rd20( 922,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df0a6b16c24390b3, 0xe385347f10a7b5ed, 0xdf0a6b16c24390b3 );
  TEST_FPRED_VV_OP_120( 923,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000df0a6b16c24390b3, 0xe385347f10a7b5ed, 0xdf0a6b16c24390b3 );
  TEST_FPRED_VV_OP_rd21( 924,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eed32ac19bd6e20, 0x24c3474548f5fb3f, 0x0eed32ac19bd6e20 );
  TEST_FPRED_VV_OP_121( 925,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eed32ac19bd6e20, 0x24c3474548f5fb3f, 0x0eed32ac19bd6e20 );
  TEST_FPRED_VV_OP_rd22( 926,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a4516ecbe25b3735, 0xb6048afbec8d1642, 0xa4516ecbe25b3735 );
  TEST_FPRED_VV_OP_122( 927,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a4516ecbe25b3735, 0xb6048afbec8d1642, 0xa4516ecbe25b3735 );
  TEST_FPRED_VV_OP_rd23( 928,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000513613798e408f9, 0xfec9fafae2ad486a, 0x0513613798e408f9 );
  TEST_FPRED_VV_OP_123( 929,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000513613798e408f9, 0xfec9fafae2ad486a, 0x0513613798e408f9 );
  TEST_FPRED_VV_OP_rd25( 930,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000063495ea1c2b94cc0, 0x689da73dca199361, 0x63495ea1c2b94cc0 );
  TEST_FPRED_VV_OP_125( 931,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000063495ea1c2b94cc0, 0x689da73dca199361, 0x63495ea1c2b94cc0 );
  TEST_FPRED_VV_OP_rd26( 932,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b0dde1fdc6d7d612, 0xb48ea93363550db9, 0xb0dde1fdc6d7d612 );
  TEST_FPRED_VV_OP_126( 933,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b0dde1fdc6d7d612, 0xb48ea93363550db9, 0xb0dde1fdc6d7d612 );
  TEST_FPRED_VV_OP_rd27( 934,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004e933f72952c76f, 0xf1d8822a449e806e, 0x04e933f72952c76f );
  TEST_FPRED_VV_OP_127( 935,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004e933f72952c76f, 0xf1d8822a449e806e, 0x04e933f72952c76f );
  TEST_FPRED_VV_OP_rd28( 936,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a016d951e41a8ae3, 0x7add0a7a31afc247, 0xa016d951e41a8ae3 );
  TEST_FPRED_VV_OP_128( 937,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a016d951e41a8ae3, 0x7add0a7a31afc247, 0xa016d951e41a8ae3 );
  TEST_FPRED_VV_OP_rd29( 938,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b022688fe3db5627, 0x5149f4e187992503, 0xb022688fe3db5627 );
  TEST_FPRED_VV_OP_129( 939,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b022688fe3db5627, 0x5149f4e187992503, 0xb022688fe3db5627 );
  TEST_FPRED_VV_OP_rd30( 940,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004f1569df0334d2b, 0x9af729c3443ffe86, 0x04f1569df0334d2b );
  TEST_FPRED_VV_OP_130( 941,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004f1569df0334d2b, 0x9af729c3443ffe86, 0x04f1569df0334d2b );
  TEST_FPRED_VV_OP_rd31( 942,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78fea873d54d8c9, 0x25d12d059e08f51b, 0xf78fea873d54d8c9 );
  TEST_FPRED_VV_OP_131( 943,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f78fea873d54d8c9, 0x25d12d059e08f51b, 0xf78fea873d54d8c9 );
  TEST_FPRED_VV_OP_rd1( 944,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048a6d6799ed158ae, 0xd8a10962933e15bd, 0x48a6d6799ed158ae );
  TEST_FPRED_VV_OP_11( 945,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048a6d6799ed158ae, 0xd8a10962933e15bd, 0x48a6d6799ed158ae );
  TEST_FPRED_VV_OP_rd2( 946,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0d56957c1f989ec, 0x5d67baf8fe198daf, 0xd0d56957c1f989ec );
  TEST_FPRED_VV_OP_12( 947,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d0d56957c1f989ec, 0x5d67baf8fe198daf, 0xd0d56957c1f989ec );
  TEST_FPRED_VV_OP_rd3( 948,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000507d42579f1b30c1, 0x95b563a995fb5ba7, 0x507d42579f1b30c1 );
  TEST_FPRED_VV_OP_13( 949,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000507d42579f1b30c1, 0x95b563a995fb5ba7, 0x507d42579f1b30c1 );
  TEST_FPRED_VV_OP_rd4( 950,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bec601e6ac77700b, 0x0b32b9372fe0bce9, 0xbec601e6ac77700b );
  TEST_FPRED_VV_OP_14( 951,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bec601e6ac77700b, 0x0b32b9372fe0bce9, 0xbec601e6ac77700b );
  TEST_FPRED_VV_OP_rd5( 952,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005190cae6f85a8d23, 0xeb337923a729e30f, 0x5190cae6f85a8d23 );
  TEST_FPRED_VV_OP_15( 953,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005190cae6f85a8d23, 0xeb337923a729e30f, 0x5190cae6f85a8d23 );
  TEST_FPRED_VV_OP_rd6( 954,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e800b8886570168, 0xe9f053fcc032b1d6, 0x2e800b8886570168 );
  TEST_FPRED_VV_OP_16( 955,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e800b8886570168, 0xe9f053fcc032b1d6, 0x2e800b8886570168 );
  TEST_FPRED_VV_OP_rd7( 956,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000989ad11a146fa261, 0x0c110ae733010d25, 0x989ad11a146fa261 );
  TEST_FPRED_VV_OP_17( 957,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000989ad11a146fa261, 0x0c110ae733010d25, 0x989ad11a146fa261 );
  TEST_FPRED_VV_OP_rd9( 958,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000762d77aeca8aa81a, 0x6d565e6b565b2ad1, 0x762d77aeca8aa81a );
  TEST_FPRED_VV_OP_19( 959,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000762d77aeca8aa81a, 0x6d565e6b565b2ad1, 0x762d77aeca8aa81a );
  TEST_FPRED_VV_OP_rd10( 960,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018c4c857050e7a94, 0xd892bfcd7ba31f17, 0x18c4c857050e7a94 );
  TEST_FPRED_VV_OP_110( 961,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018c4c857050e7a94, 0xd892bfcd7ba31f17, 0x18c4c857050e7a94 );
  TEST_FPRED_VV_OP_rd11( 962,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4683ee0be29f1e8, 0x029d713335ad1fae, 0xe4683ee0be29f1e8 );
  TEST_FPRED_VV_OP_111( 963,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e4683ee0be29f1e8, 0x029d713335ad1fae, 0xe4683ee0be29f1e8 );
  TEST_FPRED_VV_OP_rd12( 964,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a618026503b9801e, 0x969db08e119eeecd, 0xa618026503b9801e );
  TEST_FPRED_VV_OP_112( 965,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a618026503b9801e, 0x969db08e119eeecd, 0xa618026503b9801e );
  TEST_FPRED_VV_OP_rd13( 966,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d839aa2f24d575d6, 0x47070d7289cb99e7, 0xd839aa2f24d575d6 );
  TEST_FPRED_VV_OP_113( 967,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d839aa2f24d575d6, 0x47070d7289cb99e7, 0xd839aa2f24d575d6 );
  TEST_FPRED_VV_OP_rd14( 968,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0a0733ac0bb11c6, 0x128c793bf944f040, 0xc0a0733ac0bb11c6 );
  TEST_FPRED_VV_OP_114( 969,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0a0733ac0bb11c6, 0x128c793bf944f040, 0xc0a0733ac0bb11c6 );
  TEST_FPRED_VV_OP_rd15( 970,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dde5f8d6229c1737, 0x366744c816113f1b, 0xdde5f8d6229c1737 );
  TEST_FPRED_VV_OP_115( 971,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dde5f8d6229c1737, 0x366744c816113f1b, 0xdde5f8d6229c1737 );
  TEST_FPRED_VV_OP_rd17( 972,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b463146f6d2a49d6, 0x9c5e141a77a6ceab, 0xb463146f6d2a49d6 );
  TEST_FPRED_VV_OP_117( 973,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b463146f6d2a49d6, 0x9c5e141a77a6ceab, 0xb463146f6d2a49d6 );
  TEST_FPRED_VV_OP_rd18( 974,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7da8ace0e0305fe, 0x73430efab67794c9, 0xf7da8ace0e0305fe );
  TEST_FPRED_VV_OP_118( 975,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7da8ace0e0305fe, 0x73430efab67794c9, 0xf7da8ace0e0305fe );
  TEST_FPRED_VV_OP_rd19( 976,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab350651865a1ca5, 0xa4ee1fe7cd8bb7de, 0xab350651865a1ca5 );
  TEST_FPRED_VV_OP_119( 977,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ab350651865a1ca5, 0xa4ee1fe7cd8bb7de, 0xab350651865a1ca5 );
  TEST_FPRED_VV_OP_rd20( 978,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000064a57112602ffde4, 0x05185cdfe7c14986, 0x64a57112602ffde4 );
  TEST_FPRED_VV_OP_120( 979,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000064a57112602ffde4, 0x05185cdfe7c14986, 0x64a57112602ffde4 );
  TEST_FPRED_VV_OP_rd21( 980,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027d5f04b71e61194, 0x059c0f7c28036c22, 0x27d5f04b71e61194 );
  TEST_FPRED_VV_OP_121( 981,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000027d5f04b71e61194, 0x059c0f7c28036c22, 0x27d5f04b71e61194 );
  TEST_FPRED_VV_OP_rd22( 982,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f175ddae40ef0ceb, 0x76c2ed076f96b993, 0xf175ddae40ef0ceb );
  TEST_FPRED_VV_OP_122( 983,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f175ddae40ef0ceb, 0x76c2ed076f96b993, 0xf175ddae40ef0ceb );
  TEST_FPRED_VV_OP_rd23( 984,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028f9386871cc9153, 0xdfbd9b8ac0d0381b, 0x28f9386871cc9153 );
  TEST_FPRED_VV_OP_123( 985,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028f9386871cc9153, 0xdfbd9b8ac0d0381b, 0x28f9386871cc9153 );
  TEST_FPRED_VV_OP_rd25( 986,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017873cd77d5839f8, 0x2e56d77270ffade7, 0x17873cd77d5839f8 );
  TEST_FPRED_VV_OP_125( 987,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017873cd77d5839f8, 0x2e56d77270ffade7, 0x17873cd77d5839f8 );
  TEST_FPRED_VV_OP_rd26( 988,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002221aee03035d74, 0x71130ee0978174ac, 0x02221aee03035d74 );
  TEST_FPRED_VV_OP_126( 989,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002221aee03035d74, 0x71130ee0978174ac, 0x02221aee03035d74 );
  TEST_FPRED_VV_OP_rd27( 990,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b6d73f969db55bb, 0x243033c7baaedaa1, 0x0b6d73f969db55bb );
  TEST_FPRED_VV_OP_127( 991,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b6d73f969db55bb, 0x243033c7baaedaa1, 0x0b6d73f969db55bb );
  TEST_FPRED_VV_OP_rd28( 992,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082e3f55d6fbbcc8b, 0xfdbf3d43027bf014, 0x82e3f55d6fbbcc8b );
  TEST_FPRED_VV_OP_128( 993,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000082e3f55d6fbbcc8b, 0xfdbf3d43027bf014, 0x82e3f55d6fbbcc8b );
  TEST_FPRED_VV_OP_rd29( 994,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d93277512dd02ed3, 0xdb3c9eb36f5fcab5, 0xd93277512dd02ed3 );
  TEST_FPRED_VV_OP_129( 995,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d93277512dd02ed3, 0xdb3c9eb36f5fcab5, 0xd93277512dd02ed3 );
  TEST_FPRED_VV_OP_rd30( 996,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c55060831648976a, 0xa8de8618c219791a, 0xc55060831648976a );
  TEST_FPRED_VV_OP_130( 997,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c55060831648976a, 0xa8de8618c219791a, 0xc55060831648976a );
  TEST_FPRED_VV_OP_rd31( 998,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db4e496419d7ee82, 0xa96a7e2de60004f0, 0xdb4e496419d7ee82 );
  TEST_FPRED_VV_OP_131( 999,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000db4e496419d7ee82, 0xa96a7e2de60004f0, 0xdb4e496419d7ee82 );
  TEST_FPRED_VV_OP_rd1( 1000,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005f03d45f6fd1691a, 0x01c76e77de85b197, 0x5f03d45f6fd1691a );
  TEST_FPRED_VV_OP_11( 1001,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005f03d45f6fd1691a, 0x01c76e77de85b197, 0x5f03d45f6fd1691a );
  TEST_FPRED_VV_OP_rd2( 1002,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d93c9b276b4bb61, 0x35dcc7648b63b812, 0x8d93c9b276b4bb61 );
  TEST_FPRED_VV_OP_12( 1003,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008d93c9b276b4bb61, 0x35dcc7648b63b812, 0x8d93c9b276b4bb61 );
  TEST_FPRED_VV_OP_rd3( 1004,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a989cce975309325, 0x21114400c7c40593, 0xa989cce975309325 );
  TEST_FPRED_VV_OP_13( 1005,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a989cce975309325, 0x21114400c7c40593, 0xa989cce975309325 );
  TEST_FPRED_VV_OP_rd4( 1006,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f99609771cf8d5, 0xb8ec9e24ef7ccb27, 0x00f99609771cf8d5 );
  TEST_FPRED_VV_OP_14( 1007,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f99609771cf8d5, 0xb8ec9e24ef7ccb27, 0x00f99609771cf8d5 );
  TEST_FPRED_VV_OP_rd5( 1008,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002da6c11b9ec12bb7, 0xa55587f3dcede08b, 0x2da6c11b9ec12bb7 );
  TEST_FPRED_VV_OP_15( 1009,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002da6c11b9ec12bb7, 0xa55587f3dcede08b, 0x2da6c11b9ec12bb7 );
  TEST_FPRED_VV_OP_rd6( 1010,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d087129a3f858e45, 0xb26002aa1c740295, 0xd087129a3f858e45 );
  TEST_FPRED_VV_OP_16( 1011,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d087129a3f858e45, 0xb26002aa1c740295, 0xd087129a3f858e45 );
  TEST_FPRED_VV_OP_rd7( 1012,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8556e88bc783450, 0x57f573b19289946c, 0xb8556e88bc783450 );
  TEST_FPRED_VV_OP_17( 1013,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b8556e88bc783450, 0x57f573b19289946c, 0xb8556e88bc783450 );
  TEST_FPRED_VV_OP_rd9( 1014,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ddfdf6e75b0a91e, 0xf4b39b7e483fae55, 0x5ddfdf6e75b0a91e );
  TEST_FPRED_VV_OP_19( 1015,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ddfdf6e75b0a91e, 0xf4b39b7e483fae55, 0x5ddfdf6e75b0a91e );
  TEST_FPRED_VV_OP_rd10( 1016,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ecea8ee0bae841, 0x41cedfb82bf16bc9, 0x06ecea8ee0bae841 );
  TEST_FPRED_VV_OP_110( 1017,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006ecea8ee0bae841, 0x41cedfb82bf16bc9, 0x06ecea8ee0bae841 );
  TEST_FPRED_VV_OP_rd11( 1018,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088498de5aaf179c1, 0xa17d9ea138fcfe1a, 0x88498de5aaf179c1 );
  TEST_FPRED_VV_OP_111( 1019,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088498de5aaf179c1, 0xa17d9ea138fcfe1a, 0x88498de5aaf179c1 );
  TEST_FPRED_VV_OP_rd12( 1020,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005abc5eac3031916e, 0x1de6fc9e2ea32f49, 0x5abc5eac3031916e );
  TEST_FPRED_VV_OP_112( 1021,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005abc5eac3031916e, 0x1de6fc9e2ea32f49, 0x5abc5eac3031916e );
  TEST_FPRED_VV_OP_rd13( 1022,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a161a79678c0adae, 0x73d57af1656e0ec7, 0xa161a79678c0adae );
  TEST_FPRED_VV_OP_113( 1023,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a161a79678c0adae, 0x73d57af1656e0ec7, 0xa161a79678c0adae );
  TEST_FPRED_VV_OP_rd14( 1024,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000097b9051bdb40772, 0xe43b887d3732bf98, 0x097b9051bdb40772 );
  TEST_FPRED_VV_OP_114( 1025,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000097b9051bdb40772, 0xe43b887d3732bf98, 0x097b9051bdb40772 );
  TEST_FPRED_VV_OP_rd15( 1026,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fc766f0c976b653a, 0x9e382ec65643810b, 0xfc766f0c976b653a );
  TEST_FPRED_VV_OP_115( 1027,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fc766f0c976b653a, 0x9e382ec65643810b, 0xfc766f0c976b653a );
  TEST_FPRED_VV_OP_rd17( 1028,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057df4467c61fb6dd, 0xbebebd75835ccdc9, 0x57df4467c61fb6dd );
  TEST_FPRED_VV_OP_117( 1029,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057df4467c61fb6dd, 0xbebebd75835ccdc9, 0x57df4467c61fb6dd );
  TEST_FPRED_VV_OP_rd18( 1030,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081e417514b3deeff, 0xbd5c9ef131730499, 0x81e417514b3deeff );
  TEST_FPRED_VV_OP_118( 1031,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000081e417514b3deeff, 0xbd5c9ef131730499, 0x81e417514b3deeff );
  TEST_FPRED_VV_OP_rd19( 1032,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005974407dddc651a0, 0xd83f14c8bf8a2e1a, 0x5974407dddc651a0 );
  TEST_FPRED_VV_OP_119( 1033,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005974407dddc651a0, 0xd83f14c8bf8a2e1a, 0x5974407dddc651a0 );
  TEST_FPRED_VV_OP_rd20( 1034,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000071cf238d90e9b6f5, 0xc8715c308da43ea6, 0x71cf238d90e9b6f5 );
  TEST_FPRED_VV_OP_120( 1035,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000071cf238d90e9b6f5, 0xc8715c308da43ea6, 0x71cf238d90e9b6f5 );
  TEST_FPRED_VV_OP_rd21( 1036,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015b65c6f606a80eb, 0xab756d97d2740439, 0x15b65c6f606a80eb );
  TEST_FPRED_VV_OP_121( 1037,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015b65c6f606a80eb, 0xab756d97d2740439, 0x15b65c6f606a80eb );
  TEST_FPRED_VV_OP_rd22( 1038,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d67891686486deb9, 0x0f95997b18ff7989, 0xd67891686486deb9 );
  TEST_FPRED_VV_OP_122( 1039,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d67891686486deb9, 0x0f95997b18ff7989, 0xd67891686486deb9 );
  TEST_FPRED_VV_OP_rd23( 1040,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3b44ac722626d16, 0x086523549822ebd9, 0xf3b44ac722626d16 );
  TEST_FPRED_VV_OP_123( 1041,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f3b44ac722626d16, 0x086523549822ebd9, 0xf3b44ac722626d16 );
  TEST_FPRED_VV_OP_rd25( 1042,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e183fdb8df660210, 0xf8e9ea0f5ce6e606, 0xe183fdb8df660210 );
  TEST_FPRED_VV_OP_125( 1043,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e183fdb8df660210, 0xf8e9ea0f5ce6e606, 0xe183fdb8df660210 );
  TEST_FPRED_VV_OP_rd26( 1044,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000042039f18e91b73ca, 0xee4af8d45560c83f, 0x42039f18e91b73ca );
  TEST_FPRED_VV_OP_126( 1045,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000042039f18e91b73ca, 0xee4af8d45560c83f, 0x42039f18e91b73ca );
  TEST_FPRED_VV_OP_rd27( 1046,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a6003940f4e05aa6, 0x16db150c008ede0f, 0xa6003940f4e05aa6 );
  TEST_FPRED_VV_OP_127( 1047,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a6003940f4e05aa6, 0x16db150c008ede0f, 0xa6003940f4e05aa6 );
  TEST_FPRED_VV_OP_rd28( 1048,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000545fc4995e5d9392, 0x44fae17fc3a3f94f, 0x545fc4995e5d9392 );
  TEST_FPRED_VV_OP_128( 1049,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000545fc4995e5d9392, 0x44fae17fc3a3f94f, 0x545fc4995e5d9392 );
  TEST_FPRED_VV_OP_rd29( 1050,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d7fe8a88618dd57e, 0x4a121a27b290c0bc, 0xd7fe8a88618dd57e );
  TEST_FPRED_VV_OP_129( 1051,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d7fe8a88618dd57e, 0x4a121a27b290c0bc, 0xd7fe8a88618dd57e );
  TEST_FPRED_VV_OP_rd30( 1052,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003cf73fd1210a504c, 0xac4034571caeec15, 0x3cf73fd1210a504c );
  TEST_FPRED_VV_OP_130( 1053,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003cf73fd1210a504c, 0xac4034571caeec15, 0x3cf73fd1210a504c );
  TEST_FPRED_VV_OP_rd31( 1054,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a36dcbab729d65, 0x7045093f14d2fa9a, 0x00a36dcbab729d65 );
  TEST_FPRED_VV_OP_131( 1055,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a36dcbab729d65, 0x7045093f14d2fa9a, 0x00a36dcbab729d65 );
  TEST_FPRED_VV_OP_rd1( 1056,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a78605ec8eb2a29, 0xbd98cba38abc05fe, 0x4a78605ec8eb2a29 );
  TEST_FPRED_VV_OP_11( 1057,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004a78605ec8eb2a29, 0xbd98cba38abc05fe, 0x4a78605ec8eb2a29 );
  TEST_FPRED_VV_OP_rd2( 1058,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ad3df02237202a35, 0xe3df0d85f8ef40df, 0xad3df02237202a35 );
  TEST_FPRED_VV_OP_12( 1059,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ad3df02237202a35, 0xe3df0d85f8ef40df, 0xad3df02237202a35 );
  TEST_FPRED_VV_OP_rd3( 1060,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f9e6c24f1e1a7e4, 0x9d21173e2d4717bd, 0x8f9e6c24f1e1a7e4 );
  TEST_FPRED_VV_OP_13( 1061,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008f9e6c24f1e1a7e4, 0x9d21173e2d4717bd, 0x8f9e6c24f1e1a7e4 );
  TEST_FPRED_VV_OP_rd4( 1062,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3bb750487e8962a, 0xc1884643063c00b9, 0xe3bb750487e8962a );
  TEST_FPRED_VV_OP_14( 1063,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e3bb750487e8962a, 0xc1884643063c00b9, 0xe3bb750487e8962a );
  TEST_FPRED_VV_OP_rd5( 1064,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f06abb22fdabd911, 0x90ec89cbde233beb, 0xf06abb22fdabd911 );
  TEST_FPRED_VV_OP_15( 1065,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f06abb22fdabd911, 0x90ec89cbde233beb, 0xf06abb22fdabd911 );
  TEST_FPRED_VV_OP_rd6( 1066,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cea4b7ea01d1083e, 0xf18915693a6713df, 0xcea4b7ea01d1083e );
  TEST_FPRED_VV_OP_16( 1067,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cea4b7ea01d1083e, 0xf18915693a6713df, 0xcea4b7ea01d1083e );
  TEST_FPRED_VV_OP_rd7( 1068,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002af8c695b7ce6de6, 0xf3d65eeaed55d53d, 0x2af8c695b7ce6de6 );
  TEST_FPRED_VV_OP_17( 1069,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002af8c695b7ce6de6, 0xf3d65eeaed55d53d, 0x2af8c695b7ce6de6 );
  TEST_FPRED_VV_OP_rd9( 1070,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000598a363a1141ce6, 0x6942fc94e9909bb3, 0x0598a363a1141ce6 );
  TEST_FPRED_VV_OP_19( 1071,  vfredusum.vs, 0x0000000000000000, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000598a363a1141ce6, 0x6942fc94e9909bb3, 0x0598a363a1141ce6 );
  TEST_FPRED_VV_OP_rd10( 1072,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcf7ec2f3b95f492, 0xd4d32cf62ea33ff8, 0xfcf7ec2f3b95f492 );
  TEST_FPRED_VV_OP_110( 1073,  vfredusum.vs, 0x0000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fcf7ec2f3b95f492, 0xd4d32cf62ea33ff8, 0xfcf7ec2f3b95f492 );
  TEST_FPRED_VV_OP_rd11( 1074,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010a995e3f56bbe06, 0x2a6876bc4ea19485, 0x10a995e3f56bbe06 );
  TEST_FPRED_VV_OP_111( 1075,  vfredusum.vs, 0x0000000000000000, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010a995e3f56bbe06, 0x2a6876bc4ea19485, 0x10a995e3f56bbe06 );
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
    

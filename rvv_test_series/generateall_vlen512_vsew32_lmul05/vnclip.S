#----------------------------------------------------------------------------- 
    # vnclip.S
    #-----------------------------------------------------------------------------
    #
    # Test vnclip instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vnclip)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_AVG_N_VV_OP 
#define TEST_AVG_N_VV_OP( testnum, inst, vxrm_val, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                csrwi vxrm, vxrm_val; \
            la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v24, v16, v8, v0.t;  \
        )
#undef TEST_AVG_N_VX_OP 
#define TEST_AVG_N_VX_OP( testnum, inst, vxrm_val, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                csrwi vxrm, vxrm_val; \
            la x7, val2; \
            vle64.v v16, (x7); \
            li x1, MASK_VSEW(val1); \
            inst v24, v16, x1, v0.t;  \
        )
#undef TEST_AVG_N_VI_OP 
#define TEST_AVG_N_VI_OP( testnum, inst, vxrm_val, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                csrwi vxrm, vxrm_val; \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v16, SEXT_IMM(val1), v0.t;  \
        )
#define TEST_AVG_N_VV_OP_11(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v1, (x7); \
                inst v24, v16, v1, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_12(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v2, (x7); \
                inst v24, v16, v2, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_13(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v3, (x7); \
                inst v24, v16, v3, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_14(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v4, (x7); \
                inst v24, v16, v4, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_15(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v5, (x7); \
                inst v24, v16, v5, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_16(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v6, (x7); \
                inst v24, v16, v6, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_17(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v7, (x7); \
                inst v24, v16, v7, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_19(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v9, (x7); \
                inst v24, v16, v9, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_110(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v10, (x7); \
                inst v24, v16, v10, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_111(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v11, (x7); \
                inst v24, v16, v11, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_112(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v12, (x7); \
                inst v24, v16, v12, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_113(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v13, (x7); \
                inst v24, v16, v13, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_114(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v14, (x7); \
                inst v24, v16, v14, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_115(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v15, (x7); \
                inst v24, v16, v15, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_117(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v17, (x7); \
                inst v24, v16, v17, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_118(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v18, (x7); \
                inst v24, v16, v18, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_119(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v19, (x7); \
                inst v24, v16, v19, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_120(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v20, (x7); \
                inst v24, v16, v20, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_121(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v21, (x7); \
                inst v24, v16, v21, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_122(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v22, (x7); \
                inst v24, v16, v22, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_123(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v23, (x7); \
                inst v24, v16, v23, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_125(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v25, (x7); \
                inst v24, v16, v25, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_126(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v26, (x7); \
                inst v24, v16, v26, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_127(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v27, (x7); \
                inst v24, v16, v27, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_128(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v28, (x7); \
                inst v24, v16, v28, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_129(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v29, (x7); \
                inst v24, v16, v29, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_130(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v30, (x7); \
                inst v24, v16, v30, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_131(  testnum, inst, vxrm_val, result, val2, val1  ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v31, (x7); \
                inst v24, v16, v31, v0.t;  \
            )
#define TEST_AVG_N_VV_OP_rd1(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v1, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v1, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v1, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd2(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v2, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v2, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v2, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd3(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v3, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v3, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v3, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd4(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v4, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v4, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v4, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd5(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v5, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v5, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v5, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd6(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v6, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v6, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v6, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd7(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v7, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v7, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v7, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd9(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v9, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v9, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v9, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd10(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v10, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v10, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v10, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd11(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v11, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v11, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v11, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd12(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v12, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v12, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v12, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd13(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v13, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v13, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v13, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd14(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v14, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v14, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd15(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v15, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v15, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v15, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd17(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v17, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v17, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v17, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd18(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v18, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v18, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v18, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd19(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v19, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v19, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v19, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd20(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v20, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v20, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v20, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd21(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v21, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v21, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v21, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd22(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v22, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v22, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v22, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd23(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v23, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v23, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v23, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd25(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v25, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v25, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v25, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd26(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v26, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v26, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v26, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd27(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v27, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v27, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v27, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd28(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v28, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v28, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v28, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd29(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v29, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v29, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v29, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd30(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v30, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v30, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v30, v16, v8, v0.t; \
            )
#define TEST_AVG_N_VV_OP_rd31(  testnum, inst, vxrm_val, result, val2, val1  )  \
                TEST_CASE_LOOP( testnum, v31, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v31, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v31, v16, v8, v0.t; \
            )
  #-------------------------------------------------------------
  # WV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_AVG_N_VV_OP( 1,  vnclip.wv, 0,rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP( 2,  vnclip.wv, 1,rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP( 3,  vnclip.wv, 2,rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP( 4,  vnclip.wv, 3,rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP( 5,  vnclip.wv, 0,rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP( 6,  vnclip.wv, 1,rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP( 7,  vnclip.wv, 2,rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP( 8,  vnclip.wv, 3,rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP( 9,  vnclip.wv, 0,rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP( 10,  vnclip.wv, 1,rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP( 11,  vnclip.wv, 2,rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP( 12,  vnclip.wv, 3,rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP( 13,  vnclip.wv, 0,rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP( 14,  vnclip.wv, 1,rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP( 15,  vnclip.wv, 2,rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP( 16,  vnclip.wv, 3,rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP( 17,  vnclip.wv, 0,rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP( 18,  vnclip.wv, 1,rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP( 19,  vnclip.wv, 2,rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP( 20,  vnclip.wv, 3,rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP( 21,  vnclip.wv, 0,rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP( 22,  vnclip.wv, 1,rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP( 23,  vnclip.wv, 2,rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP( 24,  vnclip.wv, 3,rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP( 25,  vnclip.wv, 0,rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP( 26,  vnclip.wv, 1,rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP( 27,  vnclip.wv, 2,rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP( 28,  vnclip.wv, 3,rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP( 29,  vnclip.wv, 0,rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP( 30,  vnclip.wv, 1,rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP( 31,  vnclip.wv, 2,rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP( 32,  vnclip.wv, 3,rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP( 33,  vnclip.wv, 0,rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP( 34,  vnclip.wv, 1,rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP( 35,  vnclip.wv, 2,rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP( 36,  vnclip.wv, 3,rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP( 37,  vnclip.wv, 0,rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP( 38,  vnclip.wv, 1,rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP( 39,  vnclip.wv, 2,rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP( 40,  vnclip.wv, 3,rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP( 41,  vnclip.wv, 0,rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP( 42,  vnclip.wv, 1,rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP( 43,  vnclip.wv, 2,rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP( 44,  vnclip.wv, 3,rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP( 45,  vnclip.wv, 0,rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP( 46,  vnclip.wv, 1,rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP( 47,  vnclip.wv, 2,rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP( 48,  vnclip.wv, 3,rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP( 49,  vnclip.wv, 0,rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP( 50,  vnclip.wv, 1,rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP( 51,  vnclip.wv, 2,rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP( 52,  vnclip.wv, 3,rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP( 53,  vnclip.wv, 0,rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP( 54,  vnclip.wv, 1,rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP( 55,  vnclip.wv, 2,rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP( 56,  vnclip.wv, 3,rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP( 57,  vnclip.wv, 0,rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP( 58,  vnclip.wv, 1,rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP( 59,  vnclip.wv, 2,rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP( 60,  vnclip.wv, 3,rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP( 61,  vnclip.wv, 0,rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP( 62,  vnclip.wv, 1,rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP( 63,  vnclip.wv, 2,rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP( 64,  vnclip.wv, 3,rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP( 65,  vnclip.wv, 0,rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP( 66,  vnclip.wv, 1,rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP( 67,  vnclip.wv, 2,rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP( 68,  vnclip.wv, 3,rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP( 69,  vnclip.wv, 0,rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP( 70,  vnclip.wv, 1,rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP( 71,  vnclip.wv, 2,rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP( 72,  vnclip.wv, 3,rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP( 73,  vnclip.wv, 0,rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP( 74,  vnclip.wv, 1,rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP( 75,  vnclip.wv, 2,rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP( 76,  vnclip.wv, 3,rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP( 77,  vnclip.wv, 0,rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP( 78,  vnclip.wv, 1,rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP( 79,  vnclip.wv, 2,rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP( 80,  vnclip.wv, 3,rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP( 81,  vnclip.wv, 0,rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP( 82,  vnclip.wv, 1,rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP( 83,  vnclip.wv, 2,rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP( 84,  vnclip.wv, 3,rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP( 85,  vnclip.wv, 0,rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP( 86,  vnclip.wv, 1,rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP( 87,  vnclip.wv, 2,rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP( 88,  vnclip.wv, 3,rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP( 89,  vnclip.wv, 0,rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP( 90,  vnclip.wv, 1,rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP( 91,  vnclip.wv, 2,rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP( 92,  vnclip.wv, 3,rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP( 93,  vnclip.wv, 0,rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP( 94,  vnclip.wv, 1,rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP( 95,  vnclip.wv, 2,rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP( 96,  vnclip.wv, 3,rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP( 97,  vnclip.wv, 0,rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP( 98,  vnclip.wv, 1,rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP( 99,  vnclip.wv, 2,rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP( 100,  vnclip.wv, 3,rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP( 101,  vnclip.wv, 0,rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP( 102,  vnclip.wv, 1,rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP( 103,  vnclip.wv, 2,rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP( 104,  vnclip.wv, 3,rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP( 105,  vnclip.wv, 0,rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP( 106,  vnclip.wv, 1,rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP( 107,  vnclip.wv, 2,rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP( 108,  vnclip.wv, 3,rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP( 109,  vnclip.wv, 0,rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP( 110,  vnclip.wv, 1,rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP( 111,  vnclip.wv, 2,rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP( 112,  vnclip.wv, 3,rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP( 113,  vnclip.wv, 0,rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP( 114,  vnclip.wv, 1,rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP( 115,  vnclip.wv, 2,rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP( 116,  vnclip.wv, 3,rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP( 117,  vnclip.wv, 0,rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP( 118,  vnclip.wv, 1,rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP( 119,  vnclip.wv, 2,rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP( 120,  vnclip.wv, 3,rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP( 121,  vnclip.wv, 0,rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP( 122,  vnclip.wv, 1,rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP( 123,  vnclip.wv, 2,rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP( 124,  vnclip.wv, 3,rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP( 125,  vnclip.wv, 0,rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP( 126,  vnclip.wv, 1,rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP( 127,  vnclip.wv, 2,rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP( 128,  vnclip.wv, 3,rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP( 129,  vnclip.wv, 0,rd_data_vv+4096, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP( 130,  vnclip.wv, 1,rd_data_vv+4128, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP( 131,  vnclip.wv, 2,rd_data_vv+4160, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP( 132,  vnclip.wv, 3,rd_data_vv+4192, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP( 133,  vnclip.wv, 0,rd_data_vv+4224, rs2_data+1056, rs1_data+1056)
  TEST_AVG_N_VV_OP( 134,  vnclip.wv, 1,rd_data_vv+4256, rs2_data+1056, rs1_data+1056)
  TEST_AVG_N_VV_OP( 135,  vnclip.wv, 2,rd_data_vv+4288, rs2_data+1056, rs1_data+1056)
  TEST_AVG_N_VV_OP( 136,  vnclip.wv, 3,rd_data_vv+4320, rs2_data+1056, rs1_data+1056)
  TEST_AVG_N_VV_OP( 137,  vnclip.wv, 0,rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP( 138,  vnclip.wv, 1,rd_data_vv+4384, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP( 139,  vnclip.wv, 2,rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP( 140,  vnclip.wv, 3,rd_data_vv+4448, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP( 141,  vnclip.wv, 0,rd_data_vv+4480, rs2_data+1120, rs1_data+1120)
  TEST_AVG_N_VV_OP( 142,  vnclip.wv, 1,rd_data_vv+4512, rs2_data+1120, rs1_data+1120)
  TEST_AVG_N_VV_OP( 143,  vnclip.wv, 2,rd_data_vv+4544, rs2_data+1120, rs1_data+1120)
  TEST_AVG_N_VV_OP( 144,  vnclip.wv, 3,rd_data_vv+4576, rs2_data+1120, rs1_data+1120)
  TEST_AVG_N_VV_OP( 145,  vnclip.wv, 0,rd_data_vv+4608, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP( 146,  vnclip.wv, 1,rd_data_vv+4640, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP( 147,  vnclip.wv, 2,rd_data_vv+4672, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP( 148,  vnclip.wv, 3,rd_data_vv+4704, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP( 149,  vnclip.wv, 0,rd_data_vv+4736, rs2_data+1184, rs1_data+1184)
  TEST_AVG_N_VV_OP( 150,  vnclip.wv, 1,rd_data_vv+4768, rs2_data+1184, rs1_data+1184)
  TEST_AVG_N_VV_OP( 151,  vnclip.wv, 2,rd_data_vv+4800, rs2_data+1184, rs1_data+1184)
  TEST_AVG_N_VV_OP( 152,  vnclip.wv, 3,rd_data_vv+4832, rs2_data+1184, rs1_data+1184)
  TEST_AVG_N_VV_OP( 153,  vnclip.wv, 0,rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP( 154,  vnclip.wv, 1,rd_data_vv+4896, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP( 155,  vnclip.wv, 2,rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP( 156,  vnclip.wv, 3,rd_data_vv+4960, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP( 157,  vnclip.wv, 0,rd_data_vv+4992, rs2_data+1248, rs1_data+1248)
  TEST_AVG_N_VV_OP( 158,  vnclip.wv, 1,rd_data_vv+5024, rs2_data+1248, rs1_data+1248)
  TEST_AVG_N_VV_OP( 159,  vnclip.wv, 2,rd_data_vv+5056, rs2_data+1248, rs1_data+1248)
  TEST_AVG_N_VV_OP( 160,  vnclip.wv, 3,rd_data_vv+5088, rs2_data+1248, rs1_data+1248)
  TEST_AVG_N_VV_OP( 161,  vnclip.wv, 0,rd_data_vv+5120, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP( 162,  vnclip.wv, 1,rd_data_vv+5152, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP( 163,  vnclip.wv, 2,rd_data_vv+5184, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP( 164,  vnclip.wv, 3,rd_data_vv+5216, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP( 165,  vnclip.wv, 0,rd_data_vv+5248, rs2_data+1312, rs1_data+1312)
  TEST_AVG_N_VV_OP( 166,  vnclip.wv, 1,rd_data_vv+5280, rs2_data+1312, rs1_data+1312)
  TEST_AVG_N_VV_OP( 167,  vnclip.wv, 2,rd_data_vv+5312, rs2_data+1312, rs1_data+1312)
  TEST_AVG_N_VV_OP( 168,  vnclip.wv, 3,rd_data_vv+5344, rs2_data+1312, rs1_data+1312)
  TEST_AVG_N_VV_OP( 169,  vnclip.wv, 0,rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP( 170,  vnclip.wv, 1,rd_data_vv+5408, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP( 171,  vnclip.wv, 2,rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP( 172,  vnclip.wv, 3,rd_data_vv+5472, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP( 173,  vnclip.wv, 0,rd_data_vv+5504, rs2_data+1376, rs1_data+1376)
  TEST_AVG_N_VV_OP( 174,  vnclip.wv, 1,rd_data_vv+5536, rs2_data+1376, rs1_data+1376)
  TEST_AVG_N_VV_OP( 175,  vnclip.wv, 2,rd_data_vv+5568, rs2_data+1376, rs1_data+1376)
  TEST_AVG_N_VV_OP( 176,  vnclip.wv, 3,rd_data_vv+5600, rs2_data+1376, rs1_data+1376)
  TEST_AVG_N_VV_OP( 177,  vnclip.wv, 0,rd_data_vv+5632, rs2_data+1408, rs1_data+1408)
  TEST_AVG_N_VV_OP( 178,  vnclip.wv, 1,rd_data_vv+5664, rs2_data+1408, rs1_data+1408)
  TEST_AVG_N_VV_OP( 179,  vnclip.wv, 2,rd_data_vv+5696, rs2_data+1408, rs1_data+1408)
  TEST_AVG_N_VV_OP( 180,  vnclip.wv, 3,rd_data_vv+5728, rs2_data+1408, rs1_data+1408)
  TEST_AVG_N_VV_OP( 181,  vnclip.wv, 0,rd_data_vv+5760, rs2_data+1440, rs1_data+1440)
  TEST_AVG_N_VV_OP( 182,  vnclip.wv, 1,rd_data_vv+5792, rs2_data+1440, rs1_data+1440)
  TEST_AVG_N_VV_OP( 183,  vnclip.wv, 2,rd_data_vv+5824, rs2_data+1440, rs1_data+1440)
  TEST_AVG_N_VV_OP( 184,  vnclip.wv, 3,rd_data_vv+5856, rs2_data+1440, rs1_data+1440)
  TEST_AVG_N_VV_OP( 185,  vnclip.wv, 0,rd_data_vv+5888, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP( 186,  vnclip.wv, 1,rd_data_vv+5920, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP( 187,  vnclip.wv, 2,rd_data_vv+5952, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP( 188,  vnclip.wv, 3,rd_data_vv+5984, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP( 189,  vnclip.wv, 0,rd_data_vv+6016, rs2_data+1504, rs1_data+1504)
  TEST_AVG_N_VV_OP( 190,  vnclip.wv, 1,rd_data_vv+6048, rs2_data+1504, rs1_data+1504)
  TEST_AVG_N_VV_OP( 191,  vnclip.wv, 2,rd_data_vv+6080, rs2_data+1504, rs1_data+1504)
  TEST_AVG_N_VV_OP( 192,  vnclip.wv, 3,rd_data_vv+6112, rs2_data+1504, rs1_data+1504)
  TEST_AVG_N_VV_OP( 193,  vnclip.wv, 0,rd_data_vv+6144, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP( 194,  vnclip.wv, 1,rd_data_vv+6176, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP( 195,  vnclip.wv, 2,rd_data_vv+6208, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP( 196,  vnclip.wv, 3,rd_data_vv+6240, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP( 197,  vnclip.wv, 0,rd_data_vv+6272, rs2_data+1568, rs1_data+1568)
  TEST_AVG_N_VV_OP( 198,  vnclip.wv, 1,rd_data_vv+6304, rs2_data+1568, rs1_data+1568)
  TEST_AVG_N_VV_OP( 199,  vnclip.wv, 2,rd_data_vv+6336, rs2_data+1568, rs1_data+1568)
  TEST_AVG_N_VV_OP( 200,  vnclip.wv, 3,rd_data_vv+6368, rs2_data+1568, rs1_data+1568)
  TEST_AVG_N_VV_OP( 201,  vnclip.wv, 0,rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP( 202,  vnclip.wv, 1,rd_data_vv+6432, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP( 203,  vnclip.wv, 2,rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP( 204,  vnclip.wv, 3,rd_data_vv+6496, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP( 205,  vnclip.wv, 0,rd_data_vv+6528, rs2_data+1632, rs1_data+1632)
  TEST_AVG_N_VV_OP( 206,  vnclip.wv, 1,rd_data_vv+6560, rs2_data+1632, rs1_data+1632)
  TEST_AVG_N_VV_OP( 207,  vnclip.wv, 2,rd_data_vv+6592, rs2_data+1632, rs1_data+1632)
  TEST_AVG_N_VV_OP( 208,  vnclip.wv, 3,rd_data_vv+6624, rs2_data+1632, rs1_data+1632)
  TEST_AVG_N_VV_OP( 209,  vnclip.wv, 0,rd_data_vv+6656, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP( 210,  vnclip.wv, 1,rd_data_vv+6688, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP( 211,  vnclip.wv, 2,rd_data_vv+6720, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP( 212,  vnclip.wv, 3,rd_data_vv+6752, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP( 213,  vnclip.wv, 0,rd_data_vv+6784, rs2_data+1696, rs1_data+1696)
  TEST_AVG_N_VV_OP( 214,  vnclip.wv, 1,rd_data_vv+6816, rs2_data+1696, rs1_data+1696)
  TEST_AVG_N_VV_OP( 215,  vnclip.wv, 2,rd_data_vv+6848, rs2_data+1696, rs1_data+1696)
  TEST_AVG_N_VV_OP( 216,  vnclip.wv, 3,rd_data_vv+6880, rs2_data+1696, rs1_data+1696)
  TEST_AVG_N_VV_OP( 217,  vnclip.wv, 0,rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP( 218,  vnclip.wv, 1,rd_data_vv+6944, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP( 219,  vnclip.wv, 2,rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP( 220,  vnclip.wv, 3,rd_data_vv+7008, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP( 221,  vnclip.wv, 0,rd_data_vv+7040, rs2_data+1760, rs1_data+1760)
  TEST_AVG_N_VV_OP( 222,  vnclip.wv, 1,rd_data_vv+7072, rs2_data+1760, rs1_data+1760)
  TEST_AVG_N_VV_OP( 223,  vnclip.wv, 2,rd_data_vv+7104, rs2_data+1760, rs1_data+1760)
  TEST_AVG_N_VV_OP( 224,  vnclip.wv, 3,rd_data_vv+7136, rs2_data+1760, rs1_data+1760)
  TEST_AVG_N_VV_OP( 225,  vnclip.wv, 0,rd_data_vv+7168, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP( 226,  vnclip.wv, 1,rd_data_vv+7200, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP( 227,  vnclip.wv, 2,rd_data_vv+7232, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP( 228,  vnclip.wv, 3,rd_data_vv+7264, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP( 229,  vnclip.wv, 0,rd_data_vv+7296, rs2_data+1824, rs1_data+1824)
  TEST_AVG_N_VV_OP( 230,  vnclip.wv, 1,rd_data_vv+7328, rs2_data+1824, rs1_data+1824)
  TEST_AVG_N_VV_OP( 231,  vnclip.wv, 2,rd_data_vv+7360, rs2_data+1824, rs1_data+1824)
  TEST_AVG_N_VV_OP( 232,  vnclip.wv, 3,rd_data_vv+7392, rs2_data+1824, rs1_data+1824)
  TEST_AVG_N_VV_OP( 233,  vnclip.wv, 0,rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP( 234,  vnclip.wv, 1,rd_data_vv+7456, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP( 235,  vnclip.wv, 2,rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP( 236,  vnclip.wv, 3,rd_data_vv+7520, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP( 237,  vnclip.wv, 0,rd_data_vv+7552, rs2_data+1888, rs1_data+1888)
  TEST_AVG_N_VV_OP( 238,  vnclip.wv, 1,rd_data_vv+7584, rs2_data+1888, rs1_data+1888)
  TEST_AVG_N_VV_OP( 239,  vnclip.wv, 2,rd_data_vv+7616, rs2_data+1888, rs1_data+1888)
  TEST_AVG_N_VV_OP( 240,  vnclip.wv, 3,rd_data_vv+7648, rs2_data+1888, rs1_data+1888)
  TEST_AVG_N_VV_OP( 241,  vnclip.wv, 0,rd_data_vv+7680, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP( 242,  vnclip.wv, 1,rd_data_vv+7712, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP( 243,  vnclip.wv, 2,rd_data_vv+7744, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP( 244,  vnclip.wv, 3,rd_data_vv+7776, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP( 245,  vnclip.wv, 0,rd_data_vv+7808, rs2_data+1952, rs1_data+1952)
  TEST_AVG_N_VV_OP( 246,  vnclip.wv, 1,rd_data_vv+7840, rs2_data+1952, rs1_data+1952)
  TEST_AVG_N_VV_OP( 247,  vnclip.wv, 2,rd_data_vv+7872, rs2_data+1952, rs1_data+1952)
  TEST_AVG_N_VV_OP( 248,  vnclip.wv, 3,rd_data_vv+7904, rs2_data+1952, rs1_data+1952)
  TEST_AVG_N_VV_OP( 249,  vnclip.wv, 0,rd_data_vv+7936, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP( 250,  vnclip.wv, 1,rd_data_vv+7968, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP( 251,  vnclip.wv, 2,rd_data_vv+8000, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP( 252,  vnclip.wv, 3,rd_data_vv+8032, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP( 253,  vnclip.wv, 0,rd_data_vv+8064, rs2_data+2016, rs1_data+2016)
  TEST_AVG_N_VV_OP( 254,  vnclip.wv, 1,rd_data_vv+8096, rs2_data+2016, rs1_data+2016)
  TEST_AVG_N_VV_OP( 255,  vnclip.wv, 2,rd_data_vv+8128, rs2_data+2016, rs1_data+2016)
  TEST_AVG_N_VV_OP( 256,  vnclip.wv, 3,rd_data_vv+8160, rs2_data+2016, rs1_data+2016)
  TEST_AVG_N_VV_OP( 257,  vnclip.wv, 0,rd_data_vv+8192, rs2_data+2048, rs1_data+2048)
  TEST_AVG_N_VV_OP( 258,  vnclip.wv, 1,rd_data_vv+8224, rs2_data+2048, rs1_data+2048)
  TEST_AVG_N_VV_OP( 259,  vnclip.wv, 2,rd_data_vv+8256, rs2_data+2048, rs1_data+2048)
  TEST_AVG_N_VV_OP( 260,  vnclip.wv, 3,rd_data_vv+8288, rs2_data+2048, rs1_data+2048)
  TEST_AVG_N_VV_OP( 261,  vnclip.wv, 0,rd_data_vv+8320, rs2_data+2080, rs1_data+2080)
  TEST_AVG_N_VV_OP( 262,  vnclip.wv, 1,rd_data_vv+8352, rs2_data+2080, rs1_data+2080)
  TEST_AVG_N_VV_OP( 263,  vnclip.wv, 2,rd_data_vv+8384, rs2_data+2080, rs1_data+2080)
  TEST_AVG_N_VV_OP( 264,  vnclip.wv, 3,rd_data_vv+8416, rs2_data+2080, rs1_data+2080)
  TEST_AVG_N_VV_OP( 265,  vnclip.wv, 0,rd_data_vv+8448, rs2_data+2112, rs1_data+2112)
  TEST_AVG_N_VV_OP( 266,  vnclip.wv, 1,rd_data_vv+8480, rs2_data+2112, rs1_data+2112)
  TEST_AVG_N_VV_OP( 267,  vnclip.wv, 2,rd_data_vv+8512, rs2_data+2112, rs1_data+2112)
  TEST_AVG_N_VV_OP( 268,  vnclip.wv, 3,rd_data_vv+8544, rs2_data+2112, rs1_data+2112)
  TEST_AVG_N_VV_OP( 269,  vnclip.wv, 0,rd_data_vv+8576, rs2_data+2144, rs1_data+2144)
  TEST_AVG_N_VV_OP( 270,  vnclip.wv, 1,rd_data_vv+8608, rs2_data+2144, rs1_data+2144)
  TEST_AVG_N_VV_OP( 271,  vnclip.wv, 2,rd_data_vv+8640, rs2_data+2144, rs1_data+2144)
  TEST_AVG_N_VV_OP( 272,  vnclip.wv, 3,rd_data_vv+8672, rs2_data+2144, rs1_data+2144)
  TEST_AVG_N_VV_OP_rd1( 273,  vnclip.wv, 0,rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_12( 274,  vnclip.wv,  0,rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_rd1( 275,  vnclip.wv, 1,rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_12( 276,  vnclip.wv,  1,rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_rd1( 277,  vnclip.wv, 2,rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_12( 278,  vnclip.wv,  2,rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_rd1( 279,  vnclip.wv, 3,rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_12( 280,  vnclip.wv,  3,rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_rd2( 281,  vnclip.wv, 0,rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_13( 282,  vnclip.wv,  0,rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_rd2( 283,  vnclip.wv, 1,rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_13( 284,  vnclip.wv,  1,rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_rd2( 285,  vnclip.wv, 2,rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_13( 286,  vnclip.wv,  2,rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_rd2( 287,  vnclip.wv, 3,rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_13( 288,  vnclip.wv,  3,rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_rd3( 289,  vnclip.wv, 0,rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_14( 290,  vnclip.wv,  0,rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_rd3( 291,  vnclip.wv, 1,rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_14( 292,  vnclip.wv,  1,rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_rd3( 293,  vnclip.wv, 2,rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_14( 294,  vnclip.wv,  2,rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_rd3( 295,  vnclip.wv, 3,rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_14( 296,  vnclip.wv,  3,rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_rd4( 297,  vnclip.wv, 0,rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_15( 298,  vnclip.wv,  0,rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_rd4( 299,  vnclip.wv, 1,rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_15( 300,  vnclip.wv,  1,rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_rd4( 301,  vnclip.wv, 2,rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_15( 302,  vnclip.wv,  2,rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_rd4( 303,  vnclip.wv, 3,rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_15( 304,  vnclip.wv,  3,rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_rd5( 305,  vnclip.wv, 0,rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_16( 306,  vnclip.wv,  0,rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_rd5( 307,  vnclip.wv, 1,rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_16( 308,  vnclip.wv,  1,rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_rd5( 309,  vnclip.wv, 2,rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_16( 310,  vnclip.wv,  2,rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_rd5( 311,  vnclip.wv, 3,rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_16( 312,  vnclip.wv,  3,rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_rd6( 313,  vnclip.wv, 0,rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_17( 314,  vnclip.wv,  0,rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_rd6( 315,  vnclip.wv, 1,rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_17( 316,  vnclip.wv,  1,rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_rd6( 317,  vnclip.wv, 2,rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_17( 318,  vnclip.wv,  2,rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_rd6( 319,  vnclip.wv, 3,rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_17( 320,  vnclip.wv,  3,rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_rd7( 321,  vnclip.wv, 0,rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_rd7( 322,  vnclip.wv, 1,rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_rd7( 323,  vnclip.wv, 2,rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_rd7( 324,  vnclip.wv, 3,rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_19( 325,  vnclip.wv,  0,rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP_19( 326,  vnclip.wv,  1,rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP_19( 327,  vnclip.wv,  2,rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP_19( 328,  vnclip.wv,  3,rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP_rd9( 329,  vnclip.wv, 0,rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_110( 330,  vnclip.wv,  0,rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_rd9( 331,  vnclip.wv, 1,rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_110( 332,  vnclip.wv,  1,rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_rd9( 333,  vnclip.wv, 2,rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_110( 334,  vnclip.wv,  2,rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_rd9( 335,  vnclip.wv, 3,rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_110( 336,  vnclip.wv,  3,rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_rd10( 337,  vnclip.wv, 0,rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_111( 338,  vnclip.wv,  0,rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_rd10( 339,  vnclip.wv, 1,rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_111( 340,  vnclip.wv,  1,rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_rd10( 341,  vnclip.wv, 2,rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_111( 342,  vnclip.wv,  2,rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_rd10( 343,  vnclip.wv, 3,rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_111( 344,  vnclip.wv,  3,rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_rd11( 345,  vnclip.wv, 0,rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_112( 346,  vnclip.wv,  0,rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_rd11( 347,  vnclip.wv, 1,rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_112( 348,  vnclip.wv,  1,rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_rd11( 349,  vnclip.wv, 2,rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_112( 350,  vnclip.wv,  2,rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_rd11( 351,  vnclip.wv, 3,rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_112( 352,  vnclip.wv,  3,rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_rd12( 353,  vnclip.wv, 0,rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_113( 354,  vnclip.wv,  0,rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_rd12( 355,  vnclip.wv, 1,rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_113( 356,  vnclip.wv,  1,rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_rd12( 357,  vnclip.wv, 2,rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_113( 358,  vnclip.wv,  2,rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_rd12( 359,  vnclip.wv, 3,rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_113( 360,  vnclip.wv,  3,rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_rd13( 361,  vnclip.wv, 0,rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_114( 362,  vnclip.wv,  0,rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_rd13( 363,  vnclip.wv, 1,rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_114( 364,  vnclip.wv,  1,rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_rd13( 365,  vnclip.wv, 2,rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_114( 366,  vnclip.wv,  2,rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_rd13( 367,  vnclip.wv, 3,rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_114( 368,  vnclip.wv,  3,rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_rd14( 369,  vnclip.wv, 0,rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_115( 370,  vnclip.wv,  0,rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_rd14( 371,  vnclip.wv, 1,rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_115( 372,  vnclip.wv,  1,rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_rd14( 373,  vnclip.wv, 2,rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_115( 374,  vnclip.wv,  2,rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_rd14( 375,  vnclip.wv, 3,rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_115( 376,  vnclip.wv,  3,rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_rd15( 377,  vnclip.wv, 0,rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP_rd15( 378,  vnclip.wv, 1,rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP_rd15( 379,  vnclip.wv, 2,rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP_rd15( 380,  vnclip.wv, 3,rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP_117( 381,  vnclip.wv,  0,rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP_117( 382,  vnclip.wv,  1,rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP_117( 383,  vnclip.wv,  2,rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP_117( 384,  vnclip.wv,  3,rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP_rd17( 385,  vnclip.wv, 0,rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_118( 386,  vnclip.wv,  0,rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_rd17( 387,  vnclip.wv, 1,rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_118( 388,  vnclip.wv,  1,rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_rd17( 389,  vnclip.wv, 2,rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_118( 390,  vnclip.wv,  2,rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_rd17( 391,  vnclip.wv, 3,rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_118( 392,  vnclip.wv,  3,rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_rd18( 393,  vnclip.wv, 0,rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_119( 394,  vnclip.wv,  0,rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_rd18( 395,  vnclip.wv, 1,rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_119( 396,  vnclip.wv,  1,rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_rd18( 397,  vnclip.wv, 2,rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_119( 398,  vnclip.wv,  2,rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_rd18( 399,  vnclip.wv, 3,rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_119( 400,  vnclip.wv,  3,rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_rd19( 401,  vnclip.wv, 0,rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_120( 402,  vnclip.wv,  0,rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_rd19( 403,  vnclip.wv, 1,rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_120( 404,  vnclip.wv,  1,rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_rd19( 405,  vnclip.wv, 2,rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_120( 406,  vnclip.wv,  2,rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_rd19( 407,  vnclip.wv, 3,rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_120( 408,  vnclip.wv,  3,rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_rd20( 409,  vnclip.wv, 0,rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_121( 410,  vnclip.wv,  0,rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_rd20( 411,  vnclip.wv, 1,rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_121( 412,  vnclip.wv,  1,rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_rd20( 413,  vnclip.wv, 2,rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_121( 414,  vnclip.wv,  2,rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_rd20( 415,  vnclip.wv, 3,rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_121( 416,  vnclip.wv,  3,rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_rd21( 417,  vnclip.wv, 0,rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_122( 418,  vnclip.wv,  0,rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_rd21( 419,  vnclip.wv, 1,rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_122( 420,  vnclip.wv,  1,rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_rd21( 421,  vnclip.wv, 2,rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_122( 422,  vnclip.wv,  2,rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_rd21( 423,  vnclip.wv, 3,rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_122( 424,  vnclip.wv,  3,rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_rd22( 425,  vnclip.wv, 0,rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_123( 426,  vnclip.wv,  0,rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_rd22( 427,  vnclip.wv, 1,rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_123( 428,  vnclip.wv,  1,rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_rd22( 429,  vnclip.wv, 2,rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_123( 430,  vnclip.wv,  2,rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_rd22( 431,  vnclip.wv, 3,rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_123( 432,  vnclip.wv,  3,rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_rd23( 433,  vnclip.wv, 0,rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_rd23( 434,  vnclip.wv, 1,rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_rd23( 435,  vnclip.wv, 2,rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_rd23( 436,  vnclip.wv, 3,rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_125( 437,  vnclip.wv,  0,rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP_125( 438,  vnclip.wv,  1,rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP_125( 439,  vnclip.wv,  2,rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP_125( 440,  vnclip.wv,  3,rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP_rd25( 441,  vnclip.wv, 0,rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_126( 442,  vnclip.wv,  0,rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_rd25( 443,  vnclip.wv, 1,rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_126( 444,  vnclip.wv,  1,rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_rd25( 445,  vnclip.wv, 2,rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_126( 446,  vnclip.wv,  2,rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_rd25( 447,  vnclip.wv, 3,rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_126( 448,  vnclip.wv,  3,rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_rd26( 449,  vnclip.wv, 0,rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_127( 450,  vnclip.wv,  0,rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_rd26( 451,  vnclip.wv, 1,rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_127( 452,  vnclip.wv,  1,rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_rd26( 453,  vnclip.wv, 2,rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_127( 454,  vnclip.wv,  2,rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_rd26( 455,  vnclip.wv, 3,rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_127( 456,  vnclip.wv,  3,rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_rd27( 457,  vnclip.wv, 0,rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_128( 458,  vnclip.wv,  0,rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_rd27( 459,  vnclip.wv, 1,rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_128( 460,  vnclip.wv,  1,rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_rd27( 461,  vnclip.wv, 2,rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_128( 462,  vnclip.wv,  2,rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_rd27( 463,  vnclip.wv, 3,rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_128( 464,  vnclip.wv,  3,rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_rd28( 465,  vnclip.wv, 0,rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_129( 466,  vnclip.wv,  0,rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_rd28( 467,  vnclip.wv, 1,rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_129( 468,  vnclip.wv,  1,rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_rd28( 469,  vnclip.wv, 2,rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_129( 470,  vnclip.wv,  2,rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_rd28( 471,  vnclip.wv, 3,rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_129( 472,  vnclip.wv,  3,rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_rd29( 473,  vnclip.wv, 0,rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_130( 474,  vnclip.wv,  0,rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_rd29( 475,  vnclip.wv, 1,rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_130( 476,  vnclip.wv,  1,rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_rd29( 477,  vnclip.wv, 2,rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_130( 478,  vnclip.wv,  2,rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_rd29( 479,  vnclip.wv, 3,rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_130( 480,  vnclip.wv,  3,rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_rd30( 481,  vnclip.wv, 0,rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_131( 482,  vnclip.wv,  0,rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_rd30( 483,  vnclip.wv, 1,rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_131( 484,  vnclip.wv,  1,rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_rd30( 485,  vnclip.wv, 2,rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_131( 486,  vnclip.wv,  2,rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_rd30( 487,  vnclip.wv, 3,rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_131( 488,  vnclip.wv,  3,rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_rd31( 489,  vnclip.wv, 0,rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_12( 490,  vnclip.wv,  0,rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_rd31( 491,  vnclip.wv, 1,rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_12( 492,  vnclip.wv,  1,rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_rd31( 493,  vnclip.wv, 2,rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_12( 494,  vnclip.wv,  2,rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_rd31( 495,  vnclip.wv, 3,rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_12( 496,  vnclip.wv,  3,rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_rd1( 497,  vnclip.wv, 0,rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_13( 498,  vnclip.wv,  0,rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_rd1( 499,  vnclip.wv, 1,rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_13( 500,  vnclip.wv,  1,rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_rd1( 501,  vnclip.wv, 2,rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_13( 502,  vnclip.wv,  2,rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_rd1( 503,  vnclip.wv, 3,rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_13( 504,  vnclip.wv,  3,rd_data_vv+4064, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # WX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_N_VX_OP( 505,  vnclip.wx,  0,rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 506,  vnclip.wx,  1,rd_data_vx+32, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 507,  vnclip.wx,  2,rd_data_vx+64, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 508,  vnclip.wx,  3,rd_data_vx+96, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 509,  vnclip.wx,  0,rd_data_vx+128, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 510,  vnclip.wx,  1,rd_data_vx+160, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 511,  vnclip.wx,  2,rd_data_vx+192, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 512,  vnclip.wx,  3,rd_data_vx+224, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 513,  vnclip.wx,  0,rd_data_vx+256, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 514,  vnclip.wx,  1,rd_data_vx+288, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 515,  vnclip.wx,  2,rd_data_vx+320, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 516,  vnclip.wx,  3,rd_data_vx+352, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 517,  vnclip.wx,  0,rd_data_vx+384, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 518,  vnclip.wx,  1,rd_data_vx+416, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 519,  vnclip.wx,  2,rd_data_vx+448, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 520,  vnclip.wx,  3,rd_data_vx+480, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 521,  vnclip.wx,  0,rd_data_vx+512, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 522,  vnclip.wx,  1,rd_data_vx+544, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 523,  vnclip.wx,  2,rd_data_vx+576, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 524,  vnclip.wx,  3,rd_data_vx+608, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 525,  vnclip.wx,  0,rd_data_vx+640, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 526,  vnclip.wx,  1,rd_data_vx+672, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 527,  vnclip.wx,  2,rd_data_vx+704, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 528,  vnclip.wx,  3,rd_data_vx+736, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 529,  vnclip.wx,  0,rd_data_vx+768, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 530,  vnclip.wx,  1,rd_data_vx+800, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 531,  vnclip.wx,  2,rd_data_vx+832, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 532,  vnclip.wx,  3,rd_data_vx+864, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 533,  vnclip.wx,  0,rd_data_vx+896, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 534,  vnclip.wx,  1,rd_data_vx+928, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 535,  vnclip.wx,  2,rd_data_vx+960, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 536,  vnclip.wx,  3,rd_data_vx+992, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 537,  vnclip.wx,  0,rd_data_vx+1024, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 538,  vnclip.wx,  1,rd_data_vx+1056, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 539,  vnclip.wx,  2,rd_data_vx+1088, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 540,  vnclip.wx,  3,rd_data_vx+1120, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 541,  vnclip.wx,  0,rd_data_vx+1152, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 542,  vnclip.wx,  1,rd_data_vx+1184, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 543,  vnclip.wx,  2,rd_data_vx+1216, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 544,  vnclip.wx,  3,rd_data_vx+1248, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 545,  vnclip.wx,  0,rd_data_vx+1280, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 546,  vnclip.wx,  1,rd_data_vx+1312, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 547,  vnclip.wx,  2,rd_data_vx+1344, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 548,  vnclip.wx,  3,rd_data_vx+1376, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 549,  vnclip.wx,  0,rd_data_vx+1408, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 550,  vnclip.wx,  1,rd_data_vx+1440, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 551,  vnclip.wx,  2,rd_data_vx+1472, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 552,  vnclip.wx,  3,rd_data_vx+1504, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 553,  vnclip.wx,  0,rd_data_vx+1536, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 554,  vnclip.wx,  1,rd_data_vx+1568, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 555,  vnclip.wx,  2,rd_data_vx+1600, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 556,  vnclip.wx,  3,rd_data_vx+1632, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 557,  vnclip.wx,  0,rd_data_vx+1664, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 558,  vnclip.wx,  1,rd_data_vx+1696, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 559,  vnclip.wx,  2,rd_data_vx+1728, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 560,  vnclip.wx,  3,rd_data_vx+1760, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 561,  vnclip.wx,  0,rd_data_vx+1792, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 562,  vnclip.wx,  1,rd_data_vx+1824, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 563,  vnclip.wx,  2,rd_data_vx+1856, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 564,  vnclip.wx,  3,rd_data_vx+1888, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 565,  vnclip.wx,  0,rd_data_vx+1920, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 566,  vnclip.wx,  1,rd_data_vx+1952, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 567,  vnclip.wx,  2,rd_data_vx+1984, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 568,  vnclip.wx,  3,rd_data_vx+2016, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 569,  vnclip.wx,  0,rd_data_vx+2048, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 570,  vnclip.wx,  1,rd_data_vx+2080, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 571,  vnclip.wx,  2,rd_data_vx+2112, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 572,  vnclip.wx,  3,rd_data_vx+2144, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 573,  vnclip.wx,  0,rd_data_vx+2176, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 574,  vnclip.wx,  1,rd_data_vx+2208, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 575,  vnclip.wx,  2,rd_data_vx+2240, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 576,  vnclip.wx,  3,rd_data_vx+2272, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 577,  vnclip.wx,  0,rd_data_vx+2304, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 578,  vnclip.wx,  1,rd_data_vx+2336, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 579,  vnclip.wx,  2,rd_data_vx+2368, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 580,  vnclip.wx,  3,rd_data_vx+2400, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 581,  vnclip.wx,  0,rd_data_vx+2432, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 582,  vnclip.wx,  1,rd_data_vx+2464, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 583,  vnclip.wx,  2,rd_data_vx+2496, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 584,  vnclip.wx,  3,rd_data_vx+2528, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 585,  vnclip.wx,  0,rd_data_vx+2560, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 586,  vnclip.wx,  1,rd_data_vx+2592, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 587,  vnclip.wx,  2,rd_data_vx+2624, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 588,  vnclip.wx,  3,rd_data_vx+2656, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 589,  vnclip.wx,  0,rd_data_vx+2688, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 590,  vnclip.wx,  1,rd_data_vx+2720, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 591,  vnclip.wx,  2,rd_data_vx+2752, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 592,  vnclip.wx,  3,rd_data_vx+2784, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 593,  vnclip.wx,  0,rd_data_vx+2816, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 594,  vnclip.wx,  1,rd_data_vx+2848, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 595,  vnclip.wx,  2,rd_data_vx+2880, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 596,  vnclip.wx,  3,rd_data_vx+2912, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 597,  vnclip.wx,  0,rd_data_vx+2944, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 598,  vnclip.wx,  1,rd_data_vx+2976, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 599,  vnclip.wx,  2,rd_data_vx+3008, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 600,  vnclip.wx,  3,rd_data_vx+3040, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 601,  vnclip.wx,  0,rd_data_vx+3072, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 602,  vnclip.wx,  1,rd_data_vx+3104, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 603,  vnclip.wx,  2,rd_data_vx+3136, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 604,  vnclip.wx,  3,rd_data_vx+3168, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 605,  vnclip.wx,  0,rd_data_vx+3200, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 606,  vnclip.wx,  1,rd_data_vx+3232, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 607,  vnclip.wx,  2,rd_data_vx+3264, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 608,  vnclip.wx,  3,rd_data_vx+3296, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 609,  vnclip.wx,  0,rd_data_vx+3328, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 610,  vnclip.wx,  1,rd_data_vx+3360, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 611,  vnclip.wx,  2,rd_data_vx+3392, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 612,  vnclip.wx,  3,rd_data_vx+3424, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 613,  vnclip.wx,  0,rd_data_vx+3456, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 614,  vnclip.wx,  1,rd_data_vx+3488, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 615,  vnclip.wx,  2,rd_data_vx+3520, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 616,  vnclip.wx,  3,rd_data_vx+3552, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 617,  vnclip.wx,  0,rd_data_vx+3584, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 618,  vnclip.wx,  1,rd_data_vx+3616, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 619,  vnclip.wx,  2,rd_data_vx+3648, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 620,  vnclip.wx,  3,rd_data_vx+3680, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 621,  vnclip.wx,  0,rd_data_vx+3712, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 622,  vnclip.wx,  1,rd_data_vx+3744, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 623,  vnclip.wx,  2,rd_data_vx+3776, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 624,  vnclip.wx,  3,rd_data_vx+3808, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 625,  vnclip.wx,  0,rd_data_vx+3840, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 626,  vnclip.wx,  1,rd_data_vx+3872, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 627,  vnclip.wx,  2,rd_data_vx+3904, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 628,  vnclip.wx,  3,rd_data_vx+3936, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 629,  vnclip.wx,  0,rd_data_vx+3968, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 630,  vnclip.wx,  1,rd_data_vx+4000, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 631,  vnclip.wx,  2,rd_data_vx+4032, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 632,  vnclip.wx,  3,rd_data_vx+4064, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 633,  vnclip.wx,  0,rd_data_vx+4096, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 634,  vnclip.wx,  1,rd_data_vx+4128, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 635,  vnclip.wx,  2,rd_data_vx+4160, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 636,  vnclip.wx,  3,rd_data_vx+4192, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 637,  vnclip.wx,  0,rd_data_vx+4224, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 638,  vnclip.wx,  1,rd_data_vx+4256, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 639,  vnclip.wx,  2,rd_data_vx+4288, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 640,  vnclip.wx,  3,rd_data_vx+4320, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 641,  vnclip.wx,  0,rd_data_vx+4352, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 642,  vnclip.wx,  1,rd_data_vx+4384, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 643,  vnclip.wx,  2,rd_data_vx+4416, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 644,  vnclip.wx,  3,rd_data_vx+4448, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 645,  vnclip.wx,  0,rd_data_vx+4480, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 646,  vnclip.wx,  1,rd_data_vx+4512, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 647,  vnclip.wx,  2,rd_data_vx+4544, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 648,  vnclip.wx,  3,rd_data_vx+4576, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 649,  vnclip.wx,  0,rd_data_vx+4608, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 650,  vnclip.wx,  1,rd_data_vx+4640, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 651,  vnclip.wx,  2,rd_data_vx+4672, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 652,  vnclip.wx,  3,rd_data_vx+4704, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 653,  vnclip.wx,  0,rd_data_vx+4736, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 654,  vnclip.wx,  1,rd_data_vx+4768, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 655,  vnclip.wx,  2,rd_data_vx+4800, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 656,  vnclip.wx,  3,rd_data_vx+4832, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 657,  vnclip.wx,  0,rd_data_vx+4864, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 658,  vnclip.wx,  1,rd_data_vx+4896, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 659,  vnclip.wx,  2,rd_data_vx+4928, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 660,  vnclip.wx,  3,rd_data_vx+4960, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 661,  vnclip.wx,  0,rd_data_vx+4992, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 662,  vnclip.wx,  1,rd_data_vx+5024, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 663,  vnclip.wx,  2,rd_data_vx+5056, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 664,  vnclip.wx,  3,rd_data_vx+5088, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 665,  vnclip.wx,  0,rd_data_vx+5120, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 666,  vnclip.wx,  1,rd_data_vx+5152, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 667,  vnclip.wx,  2,rd_data_vx+5184, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 668,  vnclip.wx,  3,rd_data_vx+5216, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 669,  vnclip.wx,  0,rd_data_vx+5248, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 670,  vnclip.wx,  1,rd_data_vx+5280, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 671,  vnclip.wx,  2,rd_data_vx+5312, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 672,  vnclip.wx,  3,rd_data_vx+5344, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 673,  vnclip.wx,  0,rd_data_vx+5376, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 674,  vnclip.wx,  1,rd_data_vx+5408, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 675,  vnclip.wx,  2,rd_data_vx+5440, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 676,  vnclip.wx,  3,rd_data_vx+5472, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 677,  vnclip.wx,  0,rd_data_vx+5504, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 678,  vnclip.wx,  1,rd_data_vx+5536, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 679,  vnclip.wx,  2,rd_data_vx+5568, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 680,  vnclip.wx,  3,rd_data_vx+5600, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 681,  vnclip.wx,  0,rd_data_vx+5632, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 682,  vnclip.wx,  1,rd_data_vx+5664, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 683,  vnclip.wx,  2,rd_data_vx+5696, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 684,  vnclip.wx,  3,rd_data_vx+5728, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 685,  vnclip.wx,  0,rd_data_vx+5760, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 686,  vnclip.wx,  1,rd_data_vx+5792, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 687,  vnclip.wx,  2,rd_data_vx+5824, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 688,  vnclip.wx,  3,rd_data_vx+5856, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 689,  vnclip.wx,  0,rd_data_vx+5888, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 690,  vnclip.wx,  1,rd_data_vx+5920, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 691,  vnclip.wx,  2,rd_data_vx+5952, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 692,  vnclip.wx,  3,rd_data_vx+5984, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 693,  vnclip.wx,  0,rd_data_vx+6016, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 694,  vnclip.wx,  1,rd_data_vx+6048, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 695,  vnclip.wx,  2,rd_data_vx+6080, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 696,  vnclip.wx,  3,rd_data_vx+6112, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 697,  vnclip.wx,  0,rd_data_vx+6144, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 698,  vnclip.wx,  1,rd_data_vx+6176, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 699,  vnclip.wx,  2,rd_data_vx+6208, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 700,  vnclip.wx,  3,rd_data_vx+6240, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 701,  vnclip.wx,  0,rd_data_vx+6272, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 702,  vnclip.wx,  1,rd_data_vx+6304, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 703,  vnclip.wx,  2,rd_data_vx+6336, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 704,  vnclip.wx,  3,rd_data_vx+6368, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 705,  vnclip.wx,  0,rd_data_vx+6400, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 706,  vnclip.wx,  1,rd_data_vx+6432, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 707,  vnclip.wx,  2,rd_data_vx+6464, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 708,  vnclip.wx,  3,rd_data_vx+6496, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 709,  vnclip.wx,  0,rd_data_vx+6528, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 710,  vnclip.wx,  1,rd_data_vx+6560, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 711,  vnclip.wx,  2,rd_data_vx+6592, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 712,  vnclip.wx,  3,rd_data_vx+6624, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 713,  vnclip.wx,  0,rd_data_vx+6656, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 714,  vnclip.wx,  1,rd_data_vx+6688, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 715,  vnclip.wx,  2,rd_data_vx+6720, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 716,  vnclip.wx,  3,rd_data_vx+6752, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 717,  vnclip.wx,  0,rd_data_vx+6784, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 718,  vnclip.wx,  1,rd_data_vx+6816, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 719,  vnclip.wx,  2,rd_data_vx+6848, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 720,  vnclip.wx,  3,rd_data_vx+6880, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 721,  vnclip.wx,  0,rd_data_vx+6912, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 722,  vnclip.wx,  1,rd_data_vx+6944, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 723,  vnclip.wx,  2,rd_data_vx+6976, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 724,  vnclip.wx,  3,rd_data_vx+7008, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 725,  vnclip.wx,  0,rd_data_vx+7040, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 726,  vnclip.wx,  1,rd_data_vx+7072, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 727,  vnclip.wx,  2,rd_data_vx+7104, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 728,  vnclip.wx,  3,rd_data_vx+7136, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 729,  vnclip.wx,  0,rd_data_vx+7168, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 730,  vnclip.wx,  1,rd_data_vx+7200, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 731,  vnclip.wx,  2,rd_data_vx+7232, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 732,  vnclip.wx,  3,rd_data_vx+7264, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 733,  vnclip.wx,  0,rd_data_vx+7296, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 734,  vnclip.wx,  1,rd_data_vx+7328, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 735,  vnclip.wx,  2,rd_data_vx+7360, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 736,  vnclip.wx,  3,rd_data_vx+7392, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 737,  vnclip.wx,  0,rd_data_vx+7424, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 738,  vnclip.wx,  1,rd_data_vx+7456, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 739,  vnclip.wx,  2,rd_data_vx+7488, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 740,  vnclip.wx,  3,rd_data_vx+7520, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 741,  vnclip.wx,  0,rd_data_vx+7552, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 742,  vnclip.wx,  1,rd_data_vx+7584, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 743,  vnclip.wx,  2,rd_data_vx+7616, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 744,  vnclip.wx,  3,rd_data_vx+7648, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 745,  vnclip.wx,  0,rd_data_vx+7680, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 746,  vnclip.wx,  1,rd_data_vx+7712, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 747,  vnclip.wx,  2,rd_data_vx+7744, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 748,  vnclip.wx,  3,rd_data_vx+7776, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 749,  vnclip.wx,  0,rd_data_vx+7808, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 750,  vnclip.wx,  1,rd_data_vx+7840, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 751,  vnclip.wx,  2,rd_data_vx+7872, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 752,  vnclip.wx,  3,rd_data_vx+7904, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 753,  vnclip.wx,  0,rd_data_vx+7936, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 754,  vnclip.wx,  1,rd_data_vx+7968, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 755,  vnclip.wx,  2,rd_data_vx+8000, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 756,  vnclip.wx,  3,rd_data_vx+8032, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 757,  vnclip.wx,  0,rd_data_vx+8064, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 758,  vnclip.wx,  1,rd_data_vx+8096, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 759,  vnclip.wx,  2,rd_data_vx+8128, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 760,  vnclip.wx,  3,rd_data_vx+8160, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 761,  vnclip.wx,  0,rd_data_vx+8192, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 762,  vnclip.wx,  1,rd_data_vx+8224, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 763,  vnclip.wx,  2,rd_data_vx+8256, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 764,  vnclip.wx,  3,rd_data_vx+8288, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 765,  vnclip.wx,  0,rd_data_vx+8320, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 766,  vnclip.wx,  1,rd_data_vx+8352, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 767,  vnclip.wx,  2,rd_data_vx+8384, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 768,  vnclip.wx,  3,rd_data_vx+8416, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 769,  vnclip.wx,  0,rd_data_vx+8448, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 770,  vnclip.wx,  1,rd_data_vx+8480, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 771,  vnclip.wx,  2,rd_data_vx+8512, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 772,  vnclip.wx,  3,rd_data_vx+8544, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 773,  vnclip.wx,  0,rd_data_vx+8576, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 774,  vnclip.wx,  1,rd_data_vx+8608, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 775,  vnclip.wx,  2,rd_data_vx+8640, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 776,  vnclip.wx,  3,rd_data_vx+8672, rs2_data+2144, 0xfffffffffffffffe)
  #-------------------------------------------------------------
  # WI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_N_VI_OP( 777,  vnclip.wi,  0,rd_data_vi+0, rs2_data+0, 15)
  TEST_AVG_N_VI_OP( 778,  vnclip.wi,  1,rd_data_vi+32, rs2_data+0, 15)
  TEST_AVG_N_VI_OP( 779,  vnclip.wi,  2,rd_data_vi+64, rs2_data+0, 15)
  TEST_AVG_N_VI_OP( 780,  vnclip.wi,  3,rd_data_vi+96, rs2_data+0, 15)
  TEST_AVG_N_VI_OP( 781,  vnclip.wi,  0,rd_data_vi+128, rs2_data+32, 15)
  TEST_AVG_N_VI_OP( 782,  vnclip.wi,  1,rd_data_vi+160, rs2_data+32, 15)
  TEST_AVG_N_VI_OP( 783,  vnclip.wi,  2,rd_data_vi+192, rs2_data+32, 15)
  TEST_AVG_N_VI_OP( 784,  vnclip.wi,  3,rd_data_vi+224, rs2_data+32, 15)
  TEST_AVG_N_VI_OP( 785,  vnclip.wi,  0,rd_data_vi+256, rs2_data+64, 15)
  TEST_AVG_N_VI_OP( 786,  vnclip.wi,  1,rd_data_vi+288, rs2_data+64, 15)
  TEST_AVG_N_VI_OP( 787,  vnclip.wi,  2,rd_data_vi+320, rs2_data+64, 15)
  TEST_AVG_N_VI_OP( 788,  vnclip.wi,  3,rd_data_vi+352, rs2_data+64, 15)
  TEST_AVG_N_VI_OP( 789,  vnclip.wi,  0,rd_data_vi+384, rs2_data+96, 15)
  TEST_AVG_N_VI_OP( 790,  vnclip.wi,  1,rd_data_vi+416, rs2_data+96, 15)
  TEST_AVG_N_VI_OP( 791,  vnclip.wi,  2,rd_data_vi+448, rs2_data+96, 15)
  TEST_AVG_N_VI_OP( 792,  vnclip.wi,  3,rd_data_vi+480, rs2_data+96, 15)
  TEST_AVG_N_VI_OP( 793,  vnclip.wi,  0,rd_data_vi+512, rs2_data+128, 15)
  TEST_AVG_N_VI_OP( 794,  vnclip.wi,  1,rd_data_vi+544, rs2_data+128, 15)
  TEST_AVG_N_VI_OP( 795,  vnclip.wi,  2,rd_data_vi+576, rs2_data+128, 15)
  TEST_AVG_N_VI_OP( 796,  vnclip.wi,  3,rd_data_vi+608, rs2_data+128, 15)
  TEST_AVG_N_VI_OP( 797,  vnclip.wi,  0,rd_data_vi+640, rs2_data+160, 15)
  TEST_AVG_N_VI_OP( 798,  vnclip.wi,  1,rd_data_vi+672, rs2_data+160, 15)
  TEST_AVG_N_VI_OP( 799,  vnclip.wi,  2,rd_data_vi+704, rs2_data+160, 15)
  TEST_AVG_N_VI_OP( 800,  vnclip.wi,  3,rd_data_vi+736, rs2_data+160, 15)
  TEST_AVG_N_VI_OP( 801,  vnclip.wi,  0,rd_data_vi+768, rs2_data+192, 15)
  TEST_AVG_N_VI_OP( 802,  vnclip.wi,  1,rd_data_vi+800, rs2_data+192, 15)
  TEST_AVG_N_VI_OP( 803,  vnclip.wi,  2,rd_data_vi+832, rs2_data+192, 15)
  TEST_AVG_N_VI_OP( 804,  vnclip.wi,  3,rd_data_vi+864, rs2_data+192, 15)
  TEST_AVG_N_VI_OP( 805,  vnclip.wi,  0,rd_data_vi+896, rs2_data+224, 15)
  TEST_AVG_N_VI_OP( 806,  vnclip.wi,  1,rd_data_vi+928, rs2_data+224, 15)
  TEST_AVG_N_VI_OP( 807,  vnclip.wi,  2,rd_data_vi+960, rs2_data+224, 15)
  TEST_AVG_N_VI_OP( 808,  vnclip.wi,  3,rd_data_vi+992, rs2_data+224, 15)
  TEST_AVG_N_VI_OP( 809,  vnclip.wi,  0,rd_data_vi+1024, rs2_data+256, 15)
  TEST_AVG_N_VI_OP( 810,  vnclip.wi,  1,rd_data_vi+1056, rs2_data+256, 15)
  TEST_AVG_N_VI_OP( 811,  vnclip.wi,  2,rd_data_vi+1088, rs2_data+256, 15)
  TEST_AVG_N_VI_OP( 812,  vnclip.wi,  3,rd_data_vi+1120, rs2_data+256, 15)
  TEST_AVG_N_VI_OP( 813,  vnclip.wi,  0,rd_data_vi+1152, rs2_data+288, 15)
  TEST_AVG_N_VI_OP( 814,  vnclip.wi,  1,rd_data_vi+1184, rs2_data+288, 15)
  TEST_AVG_N_VI_OP( 815,  vnclip.wi,  2,rd_data_vi+1216, rs2_data+288, 15)
  TEST_AVG_N_VI_OP( 816,  vnclip.wi,  3,rd_data_vi+1248, rs2_data+288, 15)
  TEST_AVG_N_VI_OP( 817,  vnclip.wi,  0,rd_data_vi+1280, rs2_data+320, 15)
  TEST_AVG_N_VI_OP( 818,  vnclip.wi,  1,rd_data_vi+1312, rs2_data+320, 15)
  TEST_AVG_N_VI_OP( 819,  vnclip.wi,  2,rd_data_vi+1344, rs2_data+320, 15)
  TEST_AVG_N_VI_OP( 820,  vnclip.wi,  3,rd_data_vi+1376, rs2_data+320, 15)
  TEST_AVG_N_VI_OP( 821,  vnclip.wi,  0,rd_data_vi+1408, rs2_data+352, 15)
  TEST_AVG_N_VI_OP( 822,  vnclip.wi,  1,rd_data_vi+1440, rs2_data+352, 15)
  TEST_AVG_N_VI_OP( 823,  vnclip.wi,  2,rd_data_vi+1472, rs2_data+352, 15)
  TEST_AVG_N_VI_OP( 824,  vnclip.wi,  3,rd_data_vi+1504, rs2_data+352, 15)
  TEST_AVG_N_VI_OP( 825,  vnclip.wi,  0,rd_data_vi+1536, rs2_data+384, 15)
  TEST_AVG_N_VI_OP( 826,  vnclip.wi,  1,rd_data_vi+1568, rs2_data+384, 15)
  TEST_AVG_N_VI_OP( 827,  vnclip.wi,  2,rd_data_vi+1600, rs2_data+384, 15)
  TEST_AVG_N_VI_OP( 828,  vnclip.wi,  3,rd_data_vi+1632, rs2_data+384, 15)
  TEST_AVG_N_VI_OP( 829,  vnclip.wi,  0,rd_data_vi+1664, rs2_data+416, 15)
  TEST_AVG_N_VI_OP( 830,  vnclip.wi,  1,rd_data_vi+1696, rs2_data+416, 15)
  TEST_AVG_N_VI_OP( 831,  vnclip.wi,  2,rd_data_vi+1728, rs2_data+416, 15)
  TEST_AVG_N_VI_OP( 832,  vnclip.wi,  3,rd_data_vi+1760, rs2_data+416, 15)
  TEST_AVG_N_VI_OP( 833,  vnclip.wi,  0,rd_data_vi+1792, rs2_data+448, 15)
  TEST_AVG_N_VI_OP( 834,  vnclip.wi,  1,rd_data_vi+1824, rs2_data+448, 15)
  TEST_AVG_N_VI_OP( 835,  vnclip.wi,  2,rd_data_vi+1856, rs2_data+448, 15)
  TEST_AVG_N_VI_OP( 836,  vnclip.wi,  3,rd_data_vi+1888, rs2_data+448, 15)
  TEST_AVG_N_VI_OP( 837,  vnclip.wi,  0,rd_data_vi+1920, rs2_data+480, 15)
  TEST_AVG_N_VI_OP( 838,  vnclip.wi,  1,rd_data_vi+1952, rs2_data+480, 15)
  TEST_AVG_N_VI_OP( 839,  vnclip.wi,  2,rd_data_vi+1984, rs2_data+480, 15)
  TEST_AVG_N_VI_OP( 840,  vnclip.wi,  3,rd_data_vi+2016, rs2_data+480, 15)
  TEST_AVG_N_VI_OP( 841,  vnclip.wi,  0,rd_data_vi+2048, rs2_data+512, 15)
  TEST_AVG_N_VI_OP( 842,  vnclip.wi,  1,rd_data_vi+2080, rs2_data+512, 15)
  TEST_AVG_N_VI_OP( 843,  vnclip.wi,  2,rd_data_vi+2112, rs2_data+512, 15)
  TEST_AVG_N_VI_OP( 844,  vnclip.wi,  3,rd_data_vi+2144, rs2_data+512, 15)
  TEST_AVG_N_VI_OP( 845,  vnclip.wi,  0,rd_data_vi+2176, rs2_data+544, 15)
  TEST_AVG_N_VI_OP( 846,  vnclip.wi,  1,rd_data_vi+2208, rs2_data+544, 15)
  TEST_AVG_N_VI_OP( 847,  vnclip.wi,  2,rd_data_vi+2240, rs2_data+544, 15)
  TEST_AVG_N_VI_OP( 848,  vnclip.wi,  3,rd_data_vi+2272, rs2_data+544, 15)
  TEST_AVG_N_VI_OP( 849,  vnclip.wi,  0,rd_data_vi+2304, rs2_data+576, 15)
  TEST_AVG_N_VI_OP( 850,  vnclip.wi,  1,rd_data_vi+2336, rs2_data+576, 15)
  TEST_AVG_N_VI_OP( 851,  vnclip.wi,  2,rd_data_vi+2368, rs2_data+576, 15)
  TEST_AVG_N_VI_OP( 852,  vnclip.wi,  3,rd_data_vi+2400, rs2_data+576, 15)
  TEST_AVG_N_VI_OP( 853,  vnclip.wi,  0,rd_data_vi+2432, rs2_data+608, 15)
  TEST_AVG_N_VI_OP( 854,  vnclip.wi,  1,rd_data_vi+2464, rs2_data+608, 15)
  TEST_AVG_N_VI_OP( 855,  vnclip.wi,  2,rd_data_vi+2496, rs2_data+608, 15)
  TEST_AVG_N_VI_OP( 856,  vnclip.wi,  3,rd_data_vi+2528, rs2_data+608, 15)
  TEST_AVG_N_VI_OP( 857,  vnclip.wi,  0,rd_data_vi+2560, rs2_data+640, 15)
  TEST_AVG_N_VI_OP( 858,  vnclip.wi,  1,rd_data_vi+2592, rs2_data+640, 15)
  TEST_AVG_N_VI_OP( 859,  vnclip.wi,  2,rd_data_vi+2624, rs2_data+640, 15)
  TEST_AVG_N_VI_OP( 860,  vnclip.wi,  3,rd_data_vi+2656, rs2_data+640, 15)
  TEST_AVG_N_VI_OP( 861,  vnclip.wi,  0,rd_data_vi+2688, rs2_data+672, 15)
  TEST_AVG_N_VI_OP( 862,  vnclip.wi,  1,rd_data_vi+2720, rs2_data+672, 15)
  TEST_AVG_N_VI_OP( 863,  vnclip.wi,  2,rd_data_vi+2752, rs2_data+672, 15)
  TEST_AVG_N_VI_OP( 864,  vnclip.wi,  3,rd_data_vi+2784, rs2_data+672, 15)
  TEST_AVG_N_VI_OP( 865,  vnclip.wi,  0,rd_data_vi+2816, rs2_data+704, 15)
  TEST_AVG_N_VI_OP( 866,  vnclip.wi,  1,rd_data_vi+2848, rs2_data+704, 15)
  TEST_AVG_N_VI_OP( 867,  vnclip.wi,  2,rd_data_vi+2880, rs2_data+704, 15)
  TEST_AVG_N_VI_OP( 868,  vnclip.wi,  3,rd_data_vi+2912, rs2_data+704, 15)
  TEST_AVG_N_VI_OP( 869,  vnclip.wi,  0,rd_data_vi+2944, rs2_data+736, 15)
  TEST_AVG_N_VI_OP( 870,  vnclip.wi,  1,rd_data_vi+2976, rs2_data+736, 15)
  TEST_AVG_N_VI_OP( 871,  vnclip.wi,  2,rd_data_vi+3008, rs2_data+736, 15)
  TEST_AVG_N_VI_OP( 872,  vnclip.wi,  3,rd_data_vi+3040, rs2_data+736, 15)
  TEST_AVG_N_VI_OP( 873,  vnclip.wi,  0,rd_data_vi+3072, rs2_data+768, 15)
  TEST_AVG_N_VI_OP( 874,  vnclip.wi,  1,rd_data_vi+3104, rs2_data+768, 15)
  TEST_AVG_N_VI_OP( 875,  vnclip.wi,  2,rd_data_vi+3136, rs2_data+768, 15)
  TEST_AVG_N_VI_OP( 876,  vnclip.wi,  3,rd_data_vi+3168, rs2_data+768, 15)
  TEST_AVG_N_VI_OP( 877,  vnclip.wi,  0,rd_data_vi+3200, rs2_data+800, 15)
  TEST_AVG_N_VI_OP( 878,  vnclip.wi,  1,rd_data_vi+3232, rs2_data+800, 15)
  TEST_AVG_N_VI_OP( 879,  vnclip.wi,  2,rd_data_vi+3264, rs2_data+800, 15)
  TEST_AVG_N_VI_OP( 880,  vnclip.wi,  3,rd_data_vi+3296, rs2_data+800, 15)
  TEST_AVG_N_VI_OP( 881,  vnclip.wi,  0,rd_data_vi+3328, rs2_data+832, 15)
  TEST_AVG_N_VI_OP( 882,  vnclip.wi,  1,rd_data_vi+3360, rs2_data+832, 15)
  TEST_AVG_N_VI_OP( 883,  vnclip.wi,  2,rd_data_vi+3392, rs2_data+832, 15)
  TEST_AVG_N_VI_OP( 884,  vnclip.wi,  3,rd_data_vi+3424, rs2_data+832, 15)
  TEST_AVG_N_VI_OP( 885,  vnclip.wi,  0,rd_data_vi+3456, rs2_data+864, 15)
  TEST_AVG_N_VI_OP( 886,  vnclip.wi,  1,rd_data_vi+3488, rs2_data+864, 15)
  TEST_AVG_N_VI_OP( 887,  vnclip.wi,  2,rd_data_vi+3520, rs2_data+864, 15)
  TEST_AVG_N_VI_OP( 888,  vnclip.wi,  3,rd_data_vi+3552, rs2_data+864, 15)
  TEST_AVG_N_VI_OP( 889,  vnclip.wi,  0,rd_data_vi+3584, rs2_data+896, 15)
  TEST_AVG_N_VI_OP( 890,  vnclip.wi,  1,rd_data_vi+3616, rs2_data+896, 15)
  TEST_AVG_N_VI_OP( 891,  vnclip.wi,  2,rd_data_vi+3648, rs2_data+896, 15)
  TEST_AVG_N_VI_OP( 892,  vnclip.wi,  3,rd_data_vi+3680, rs2_data+896, 15)
  TEST_AVG_N_VI_OP( 893,  vnclip.wi,  0,rd_data_vi+3712, rs2_data+928, 15)
  TEST_AVG_N_VI_OP( 894,  vnclip.wi,  1,rd_data_vi+3744, rs2_data+928, 15)
  TEST_AVG_N_VI_OP( 895,  vnclip.wi,  2,rd_data_vi+3776, rs2_data+928, 15)
  TEST_AVG_N_VI_OP( 896,  vnclip.wi,  3,rd_data_vi+3808, rs2_data+928, 15)
  TEST_AVG_N_VI_OP( 897,  vnclip.wi,  0,rd_data_vi+3840, rs2_data+960, 15)
  TEST_AVG_N_VI_OP( 898,  vnclip.wi,  1,rd_data_vi+3872, rs2_data+960, 15)
  TEST_AVG_N_VI_OP( 899,  vnclip.wi,  2,rd_data_vi+3904, rs2_data+960, 15)
  TEST_AVG_N_VI_OP( 900,  vnclip.wi,  3,rd_data_vi+3936, rs2_data+960, 15)
  TEST_AVG_N_VI_OP( 901,  vnclip.wi,  0,rd_data_vi+3968, rs2_data+992, 15)
  TEST_AVG_N_VI_OP( 902,  vnclip.wi,  1,rd_data_vi+4000, rs2_data+992, 15)
  TEST_AVG_N_VI_OP( 903,  vnclip.wi,  2,rd_data_vi+4032, rs2_data+992, 15)
  TEST_AVG_N_VI_OP( 904,  vnclip.wi,  3,rd_data_vi+4064, rs2_data+992, 15)
  TEST_AVG_N_VI_OP( 905,  vnclip.wi,  0,rd_data_vi+4096, rs2_data+1024, 15)
  TEST_AVG_N_VI_OP( 906,  vnclip.wi,  1,rd_data_vi+4128, rs2_data+1024, 15)
  TEST_AVG_N_VI_OP( 907,  vnclip.wi,  2,rd_data_vi+4160, rs2_data+1024, 15)
  TEST_AVG_N_VI_OP( 908,  vnclip.wi,  3,rd_data_vi+4192, rs2_data+1024, 15)
  TEST_AVG_N_VI_OP( 909,  vnclip.wi,  0,rd_data_vi+4224, rs2_data+1056, 15)
  TEST_AVG_N_VI_OP( 910,  vnclip.wi,  1,rd_data_vi+4256, rs2_data+1056, 15)
  TEST_AVG_N_VI_OP( 911,  vnclip.wi,  2,rd_data_vi+4288, rs2_data+1056, 15)
  TEST_AVG_N_VI_OP( 912,  vnclip.wi,  3,rd_data_vi+4320, rs2_data+1056, 15)
  TEST_AVG_N_VI_OP( 913,  vnclip.wi,  0,rd_data_vi+4352, rs2_data+1088, 15)
  TEST_AVG_N_VI_OP( 914,  vnclip.wi,  1,rd_data_vi+4384, rs2_data+1088, 15)
  TEST_AVG_N_VI_OP( 915,  vnclip.wi,  2,rd_data_vi+4416, rs2_data+1088, 15)
  TEST_AVG_N_VI_OP( 916,  vnclip.wi,  3,rd_data_vi+4448, rs2_data+1088, 15)
  TEST_AVG_N_VI_OP( 917,  vnclip.wi,  0,rd_data_vi+4480, rs2_data+1120, 15)
  TEST_AVG_N_VI_OP( 918,  vnclip.wi,  1,rd_data_vi+4512, rs2_data+1120, 15)
  TEST_AVG_N_VI_OP( 919,  vnclip.wi,  2,rd_data_vi+4544, rs2_data+1120, 15)
  TEST_AVG_N_VI_OP( 920,  vnclip.wi,  3,rd_data_vi+4576, rs2_data+1120, 15)
  TEST_AVG_N_VI_OP( 921,  vnclip.wi,  0,rd_data_vi+4608, rs2_data+1152, 15)
  TEST_AVG_N_VI_OP( 922,  vnclip.wi,  1,rd_data_vi+4640, rs2_data+1152, 15)
  TEST_AVG_N_VI_OP( 923,  vnclip.wi,  2,rd_data_vi+4672, rs2_data+1152, 15)
  TEST_AVG_N_VI_OP( 924,  vnclip.wi,  3,rd_data_vi+4704, rs2_data+1152, 15)
  TEST_AVG_N_VI_OP( 925,  vnclip.wi,  0,rd_data_vi+4736, rs2_data+1184, 15)
  TEST_AVG_N_VI_OP( 926,  vnclip.wi,  1,rd_data_vi+4768, rs2_data+1184, 15)
  TEST_AVG_N_VI_OP( 927,  vnclip.wi,  2,rd_data_vi+4800, rs2_data+1184, 15)
  TEST_AVG_N_VI_OP( 928,  vnclip.wi,  3,rd_data_vi+4832, rs2_data+1184, 15)
  TEST_AVG_N_VI_OP( 929,  vnclip.wi,  0,rd_data_vi+4864, rs2_data+1216, 15)
  TEST_AVG_N_VI_OP( 930,  vnclip.wi,  1,rd_data_vi+4896, rs2_data+1216, 15)
  TEST_AVG_N_VI_OP( 931,  vnclip.wi,  2,rd_data_vi+4928, rs2_data+1216, 15)
  TEST_AVG_N_VI_OP( 932,  vnclip.wi,  3,rd_data_vi+4960, rs2_data+1216, 15)
  TEST_AVG_N_VI_OP( 933,  vnclip.wi,  0,rd_data_vi+4992, rs2_data+1248, 15)
  TEST_AVG_N_VI_OP( 934,  vnclip.wi,  1,rd_data_vi+5024, rs2_data+1248, 15)
  TEST_AVG_N_VI_OP( 935,  vnclip.wi,  2,rd_data_vi+5056, rs2_data+1248, 15)
  TEST_AVG_N_VI_OP( 936,  vnclip.wi,  3,rd_data_vi+5088, rs2_data+1248, 15)
  TEST_AVG_N_VI_OP( 937,  vnclip.wi,  0,rd_data_vi+5120, rs2_data+1280, 15)
  TEST_AVG_N_VI_OP( 938,  vnclip.wi,  1,rd_data_vi+5152, rs2_data+1280, 15)
  TEST_AVG_N_VI_OP( 939,  vnclip.wi,  2,rd_data_vi+5184, rs2_data+1280, 15)
  TEST_AVG_N_VI_OP( 940,  vnclip.wi,  3,rd_data_vi+5216, rs2_data+1280, 15)
  TEST_AVG_N_VI_OP( 941,  vnclip.wi,  0,rd_data_vi+5248, rs2_data+1312, 15)
  TEST_AVG_N_VI_OP( 942,  vnclip.wi,  1,rd_data_vi+5280, rs2_data+1312, 15)
  TEST_AVG_N_VI_OP( 943,  vnclip.wi,  2,rd_data_vi+5312, rs2_data+1312, 15)
  TEST_AVG_N_VI_OP( 944,  vnclip.wi,  3,rd_data_vi+5344, rs2_data+1312, 15)
  TEST_AVG_N_VI_OP( 945,  vnclip.wi,  0,rd_data_vi+5376, rs2_data+1344, 15)
  TEST_AVG_N_VI_OP( 946,  vnclip.wi,  1,rd_data_vi+5408, rs2_data+1344, 15)
  TEST_AVG_N_VI_OP( 947,  vnclip.wi,  2,rd_data_vi+5440, rs2_data+1344, 15)
  TEST_AVG_N_VI_OP( 948,  vnclip.wi,  3,rd_data_vi+5472, rs2_data+1344, 15)
  TEST_AVG_N_VI_OP( 949,  vnclip.wi,  0,rd_data_vi+5504, rs2_data+1376, 15)
  TEST_AVG_N_VI_OP( 950,  vnclip.wi,  1,rd_data_vi+5536, rs2_data+1376, 15)
  TEST_AVG_N_VI_OP( 951,  vnclip.wi,  2,rd_data_vi+5568, rs2_data+1376, 15)
  TEST_AVG_N_VI_OP( 952,  vnclip.wi,  3,rd_data_vi+5600, rs2_data+1376, 15)
  TEST_AVG_N_VI_OP( 953,  vnclip.wi,  0,rd_data_vi+5632, rs2_data+1408, 15)
  TEST_AVG_N_VI_OP( 954,  vnclip.wi,  1,rd_data_vi+5664, rs2_data+1408, 15)
  TEST_AVG_N_VI_OP( 955,  vnclip.wi,  2,rd_data_vi+5696, rs2_data+1408, 15)
  TEST_AVG_N_VI_OP( 956,  vnclip.wi,  3,rd_data_vi+5728, rs2_data+1408, 15)
  TEST_AVG_N_VI_OP( 957,  vnclip.wi,  0,rd_data_vi+5760, rs2_data+1440, 15)
  TEST_AVG_N_VI_OP( 958,  vnclip.wi,  1,rd_data_vi+5792, rs2_data+1440, 15)
  TEST_AVG_N_VI_OP( 959,  vnclip.wi,  2,rd_data_vi+5824, rs2_data+1440, 15)
  TEST_AVG_N_VI_OP( 960,  vnclip.wi,  3,rd_data_vi+5856, rs2_data+1440, 15)
  TEST_AVG_N_VI_OP( 961,  vnclip.wi,  0,rd_data_vi+5888, rs2_data+1472, 15)
  TEST_AVG_N_VI_OP( 962,  vnclip.wi,  1,rd_data_vi+5920, rs2_data+1472, 15)
  TEST_AVG_N_VI_OP( 963,  vnclip.wi,  2,rd_data_vi+5952, rs2_data+1472, 15)
  TEST_AVG_N_VI_OP( 964,  vnclip.wi,  3,rd_data_vi+5984, rs2_data+1472, 15)
  TEST_AVG_N_VI_OP( 965,  vnclip.wi,  0,rd_data_vi+6016, rs2_data+1504, 15)
  TEST_AVG_N_VI_OP( 966,  vnclip.wi,  1,rd_data_vi+6048, rs2_data+1504, 15)
  TEST_AVG_N_VI_OP( 967,  vnclip.wi,  2,rd_data_vi+6080, rs2_data+1504, 15)
  TEST_AVG_N_VI_OP( 968,  vnclip.wi,  3,rd_data_vi+6112, rs2_data+1504, 15)
  TEST_AVG_N_VI_OP( 969,  vnclip.wi,  0,rd_data_vi+6144, rs2_data+1536, 15)
  TEST_AVG_N_VI_OP( 970,  vnclip.wi,  1,rd_data_vi+6176, rs2_data+1536, 15)
  TEST_AVG_N_VI_OP( 971,  vnclip.wi,  2,rd_data_vi+6208, rs2_data+1536, 15)
  TEST_AVG_N_VI_OP( 972,  vnclip.wi,  3,rd_data_vi+6240, rs2_data+1536, 15)
  TEST_AVG_N_VI_OP( 973,  vnclip.wi,  0,rd_data_vi+6272, rs2_data+1568, 15)
  TEST_AVG_N_VI_OP( 974,  vnclip.wi,  1,rd_data_vi+6304, rs2_data+1568, 15)
  TEST_AVG_N_VI_OP( 975,  vnclip.wi,  2,rd_data_vi+6336, rs2_data+1568, 15)
  TEST_AVG_N_VI_OP( 976,  vnclip.wi,  3,rd_data_vi+6368, rs2_data+1568, 15)
  TEST_AVG_N_VI_OP( 977,  vnclip.wi,  0,rd_data_vi+6400, rs2_data+1600, 15)
  TEST_AVG_N_VI_OP( 978,  vnclip.wi,  1,rd_data_vi+6432, rs2_data+1600, 15)
  TEST_AVG_N_VI_OP( 979,  vnclip.wi,  2,rd_data_vi+6464, rs2_data+1600, 15)
  TEST_AVG_N_VI_OP( 980,  vnclip.wi,  3,rd_data_vi+6496, rs2_data+1600, 15)
  TEST_AVG_N_VI_OP( 981,  vnclip.wi,  0,rd_data_vi+6528, rs2_data+1632, 15)
  TEST_AVG_N_VI_OP( 982,  vnclip.wi,  1,rd_data_vi+6560, rs2_data+1632, 15)
  TEST_AVG_N_VI_OP( 983,  vnclip.wi,  2,rd_data_vi+6592, rs2_data+1632, 15)
  TEST_AVG_N_VI_OP( 984,  vnclip.wi,  3,rd_data_vi+6624, rs2_data+1632, 15)
  TEST_AVG_N_VI_OP( 985,  vnclip.wi,  0,rd_data_vi+6656, rs2_data+1664, 15)
  TEST_AVG_N_VI_OP( 986,  vnclip.wi,  1,rd_data_vi+6688, rs2_data+1664, 15)
  TEST_AVG_N_VI_OP( 987,  vnclip.wi,  2,rd_data_vi+6720, rs2_data+1664, 15)
  TEST_AVG_N_VI_OP( 988,  vnclip.wi,  3,rd_data_vi+6752, rs2_data+1664, 15)
  TEST_AVG_N_VI_OP( 989,  vnclip.wi,  0,rd_data_vi+6784, rs2_data+1696, 15)
  TEST_AVG_N_VI_OP( 990,  vnclip.wi,  1,rd_data_vi+6816, rs2_data+1696, 15)
  TEST_AVG_N_VI_OP( 991,  vnclip.wi,  2,rd_data_vi+6848, rs2_data+1696, 15)
  TEST_AVG_N_VI_OP( 992,  vnclip.wi,  3,rd_data_vi+6880, rs2_data+1696, 15)
  TEST_AVG_N_VI_OP( 993,  vnclip.wi,  0,rd_data_vi+6912, rs2_data+1728, 15)
  TEST_AVG_N_VI_OP( 994,  vnclip.wi,  1,rd_data_vi+6944, rs2_data+1728, 15)
  TEST_AVG_N_VI_OP( 995,  vnclip.wi,  2,rd_data_vi+6976, rs2_data+1728, 15)
  TEST_AVG_N_VI_OP( 996,  vnclip.wi,  3,rd_data_vi+7008, rs2_data+1728, 15)
  TEST_AVG_N_VI_OP( 997,  vnclip.wi,  0,rd_data_vi+7040, rs2_data+1760, 15)
  TEST_AVG_N_VI_OP( 998,  vnclip.wi,  1,rd_data_vi+7072, rs2_data+1760, 15)
  TEST_AVG_N_VI_OP( 999,  vnclip.wi,  2,rd_data_vi+7104, rs2_data+1760, 15)
  TEST_AVG_N_VI_OP( 1000,  vnclip.wi,  3,rd_data_vi+7136, rs2_data+1760, 15)
  TEST_AVG_N_VI_OP( 1001,  vnclip.wi,  0,rd_data_vi+7168, rs2_data+1792, 15)
  TEST_AVG_N_VI_OP( 1002,  vnclip.wi,  1,rd_data_vi+7200, rs2_data+1792, 15)
  TEST_AVG_N_VI_OP( 1003,  vnclip.wi,  2,rd_data_vi+7232, rs2_data+1792, 15)
  TEST_AVG_N_VI_OP( 1004,  vnclip.wi,  3,rd_data_vi+7264, rs2_data+1792, 15)
  TEST_AVG_N_VI_OP( 1005,  vnclip.wi,  0,rd_data_vi+7296, rs2_data+1824, 15)
  TEST_AVG_N_VI_OP( 1006,  vnclip.wi,  1,rd_data_vi+7328, rs2_data+1824, 15)
  TEST_AVG_N_VI_OP( 1007,  vnclip.wi,  2,rd_data_vi+7360, rs2_data+1824, 15)
  TEST_AVG_N_VI_OP( 1008,  vnclip.wi,  3,rd_data_vi+7392, rs2_data+1824, 15)
  TEST_AVG_N_VI_OP( 1009,  vnclip.wi,  0,rd_data_vi+7424, rs2_data+1856, 15)
  TEST_AVG_N_VI_OP( 1010,  vnclip.wi,  1,rd_data_vi+7456, rs2_data+1856, 15)
  TEST_AVG_N_VI_OP( 1011,  vnclip.wi,  2,rd_data_vi+7488, rs2_data+1856, 15)
  TEST_AVG_N_VI_OP( 1012,  vnclip.wi,  3,rd_data_vi+7520, rs2_data+1856, 15)
  TEST_AVG_N_VI_OP( 1013,  vnclip.wi,  0,rd_data_vi+7552, rs2_data+1888, 15)
  TEST_AVG_N_VI_OP( 1014,  vnclip.wi,  1,rd_data_vi+7584, rs2_data+1888, 15)
  TEST_AVG_N_VI_OP( 1015,  vnclip.wi,  2,rd_data_vi+7616, rs2_data+1888, 15)
  TEST_AVG_N_VI_OP( 1016,  vnclip.wi,  3,rd_data_vi+7648, rs2_data+1888, 15)
  TEST_AVG_N_VI_OP( 1017,  vnclip.wi,  0,rd_data_vi+7680, rs2_data+1920, 15)
  TEST_AVG_N_VI_OP( 1018,  vnclip.wi,  1,rd_data_vi+7712, rs2_data+1920, 15)
  TEST_AVG_N_VI_OP( 1019,  vnclip.wi,  2,rd_data_vi+7744, rs2_data+1920, 15)
  TEST_AVG_N_VI_OP( 1020,  vnclip.wi,  3,rd_data_vi+7776, rs2_data+1920, 15)
  TEST_AVG_N_VI_OP( 1021,  vnclip.wi,  0,rd_data_vi+7808, rs2_data+1952, 15)
  TEST_AVG_N_VI_OP( 1022,  vnclip.wi,  1,rd_data_vi+7840, rs2_data+1952, 15)
  TEST_AVG_N_VI_OP( 1023,  vnclip.wi,  2,rd_data_vi+7872, rs2_data+1952, 15)
  TEST_AVG_N_VI_OP( 1024,  vnclip.wi,  3,rd_data_vi+7904, rs2_data+1952, 15)
  TEST_AVG_N_VI_OP( 1025,  vnclip.wi,  0,rd_data_vi+7936, rs2_data+1984, 15)
  TEST_AVG_N_VI_OP( 1026,  vnclip.wi,  1,rd_data_vi+7968, rs2_data+1984, 15)
  TEST_AVG_N_VI_OP( 1027,  vnclip.wi,  2,rd_data_vi+8000, rs2_data+1984, 15)
  TEST_AVG_N_VI_OP( 1028,  vnclip.wi,  3,rd_data_vi+8032, rs2_data+1984, 15)
  TEST_AVG_N_VI_OP( 1029,  vnclip.wi,  0,rd_data_vi+8064, rs2_data+2016, 15)
  TEST_AVG_N_VI_OP( 1030,  vnclip.wi,  1,rd_data_vi+8096, rs2_data+2016, 15)
  TEST_AVG_N_VI_OP( 1031,  vnclip.wi,  2,rd_data_vi+8128, rs2_data+2016, 15)
  TEST_AVG_N_VI_OP( 1032,  vnclip.wi,  3,rd_data_vi+8160, rs2_data+2016, 15)
  TEST_AVG_N_VI_OP( 1033,  vnclip.wi,  0,rd_data_vi+8192, rs2_data+2048, 15)
  TEST_AVG_N_VI_OP( 1034,  vnclip.wi,  1,rd_data_vi+8224, rs2_data+2048, 15)
  TEST_AVG_N_VI_OP( 1035,  vnclip.wi,  2,rd_data_vi+8256, rs2_data+2048, 15)
  TEST_AVG_N_VI_OP( 1036,  vnclip.wi,  3,rd_data_vi+8288, rs2_data+2048, 15)
  TEST_AVG_N_VI_OP( 1037,  vnclip.wi,  0,rd_data_vi+8320, rs2_data+2080, 15)
  TEST_AVG_N_VI_OP( 1038,  vnclip.wi,  1,rd_data_vi+8352, rs2_data+2080, 15)
  TEST_AVG_N_VI_OP( 1039,  vnclip.wi,  2,rd_data_vi+8384, rs2_data+2080, 15)
  TEST_AVG_N_VI_OP( 1040,  vnclip.wi,  3,rd_data_vi+8416, rs2_data+2080, 15)
  TEST_AVG_N_VI_OP( 1041,  vnclip.wi,  0,rd_data_vi+8448, rs2_data+2112, 15)
  TEST_AVG_N_VI_OP( 1042,  vnclip.wi,  1,rd_data_vi+8480, rs2_data+2112, 15)
  TEST_AVG_N_VI_OP( 1043,  vnclip.wi,  2,rd_data_vi+8512, rs2_data+2112, 15)
  TEST_AVG_N_VI_OP( 1044,  vnclip.wi,  3,rd_data_vi+8544, rs2_data+2112, 15)
  TEST_AVG_N_VI_OP( 1045,  vnclip.wi,  0,rd_data_vi+8576, rs2_data+2144, 15)
  TEST_AVG_N_VI_OP( 1046,  vnclip.wi,  1,rd_data_vi+8608, rs2_data+2144, 15)
  TEST_AVG_N_VI_OP( 1047,  vnclip.wi,  2,rd_data_vi+8640, rs2_data+2144, 15)
  TEST_AVG_N_VI_OP( 1048,  vnclip.wi,  3,rd_data_vi+8672, rs2_data+2144, 15)
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    
.align 4
rs1_data:
.word	0xfffffffffffffffe
.word	0xfffffffffffffffd
.word	0xfffffffffffffffb
.word	0xfffffffffffffff7
.word	0xffffffffffffffef
.word	0xffffffffffffffdf
.word	0xffffffffffffffbf
.word	0xffffffffffffff7f
.word	0xfffffffffffffeff
.word	0xfffffffffffffdff
.word	0xfffffffffffffbff
.word	0xfffffffffffff7ff
.word	0xffffffffffffefff
.word	0xffffffffffffdfff
.word	0xffffffffffffbfff
.word	0xffffffffffff7fff
.word	0xfffffffffffeffff
.word	0xfffffffffffdffff
.word	0xfffffffffffbffff
.word	0xfffffffffff7ffff
.word	0xffffffffffefffff
.word	0xffffffffffdfffff
.word	0xffffffffffbfffff
.word	0xffffffffff7fffff
.word	0xfffffffffeffffff
.word	0xfffffffffdffffff
.word	0xfffffffffbffffff
.word	0xfffffffff7ffffff
.word	0xffffffffefffffff
.word	0xffffffffdfffffff
.word	0xffffffffbfffffff
.word	0x0000007fffffff
.word	0x00000000000001
.word	0x00000000000002
.word	0x00000000000004
.word	0x00000000000008
.word	0x00000000000010
.word	0x00000000000020
.word	0x00000000000040
.word	0x00000000000080
.word	0x00000000000100
.word	0x00000000000200
.word	0x00000000000400
.word	0x00000000000800
.word	0x00000000001000
.word	0x00000000002000
.word	0x00000000004000
.word	0x00000000008000
.word	0x00000000010000
.word	0x00000000020000
.word	0x00000000040000
.word	0x00000000080000
.word	0x00000000100000
.word	0x00000000200000
.word	0x00000000400000
.word	0x00000000800000
.word	0x00000001000000
.word	0x00000002000000
.word	0x00000004000000
.word	0x00000008000000
.word	0x00000010000000
.word	0x00000020000000
.word	0x00000040000000
.word	0xffffffff80000000
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000055555555
.word	0x00000000000003
.word	0xffffffffaaaaaaaa
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000000
.word	0x00000000000003
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505

.align 8
rs2_data:
.dword	0xfffffffffffffffe
.dword	0xfffffffffffffffd
.dword	0xfffffffffffffffb
.dword	0xfffffffffffffff7
.dword	0xffffffffffffffef
.dword	0xffffffffffffffdf
.dword	0xffffffffffffffbf
.dword	0xffffffffffffff7f
.dword	0xfffffffffffffeff
.dword	0xfffffffffffffdff
.dword	0xfffffffffffffbff
.dword	0xfffffffffffff7ff
.dword	0xffffffffffffefff
.dword	0xffffffffffffdfff
.dword	0xffffffffffffbfff
.dword	0xffffffffffff7fff
.dword	0xfffffffffffeffff
.dword	0xfffffffffffdffff
.dword	0xfffffffffffbffff
.dword	0xfffffffffff7ffff
.dword	0xffffffffffefffff
.dword	0xffffffffffdfffff
.dword	0xffffffffffbfffff
.dword	0xffffffffff7fffff
.dword	0xfffffffffeffffff
.dword	0xfffffffffdffffff
.dword	0xfffffffffbffffff
.dword	0xfffffffff7ffffff
.dword	0xffffffffefffffff
.dword	0xffffffffdfffffff
.dword	0xffffffffbfffffff
.dword	0x0000007fffffff
.dword	0x00000000000001
.dword	0x00000000000002
.dword	0x00000000000004
.dword	0x00000000000008
.dword	0x00000000000010
.dword	0x00000000000020
.dword	0x00000000000040
.dword	0x00000000000080
.dword	0x00000000000100
.dword	0x00000000000200
.dword	0x00000000000400
.dword	0x00000000000800
.dword	0x00000000001000
.dword	0x00000000002000
.dword	0x00000000004000
.dword	0x00000000008000
.dword	0x00000000010000
.dword	0x00000000020000
.dword	0x00000000040000
.dword	0x00000000080000
.dword	0x00000000100000
.dword	0x00000000200000
.dword	0x00000000400000
.dword	0x00000000800000
.dword	0x00000001000000
.dword	0x00000002000000
.dword	0x00000004000000
.dword	0x00000008000000
.dword	0x00000010000000
.dword	0x00000020000000
.dword	0x00000040000000
.dword	0xffffffff80000000
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x00000055555555
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0xffffffffaaaaaaaa
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x00000000000000
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505

.align 4
rd_data_vv:
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffefffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfeffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffefffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfeffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffefffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfeffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffefffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfeffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xefffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xefffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xefffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xefffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0199999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0199999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4af
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4af
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffff4b0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffff4b0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffff4af
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffff4af
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002d41
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002d41
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002d41
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002d41
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002d41
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002d41
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002d41
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002d41
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x05555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x05555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x05555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x05555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x05555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x05555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x05555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x05555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0aaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0ccccccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0ccccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0ccccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0aaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0ccccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000019a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000155
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000019a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000155
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000199
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000155
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000199
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000155
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000002d4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000002d4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000002d4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000002d5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000002d4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000002d4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000002d4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000002d5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffefffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfeffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffefffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfeffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffefffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfeffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffefffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfeffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffefffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfeffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffefffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfeffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffefffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfeffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffefffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfeffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xefffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xefffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xefffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xefffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0199999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0199999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0199999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0199999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000005a9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4af
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4af
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4af
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4af
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffff4b0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffff4b0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffff4b0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffff4b0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffff4af
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffff4af
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffff4af
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffff4af
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e

rd_data_vx:
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e

rd_data_vi:
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffe0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffe0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffdf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffdf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffe0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffe00
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffe0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffe00
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffdf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffdff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffdf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffdff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffe00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffe000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffe00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffe000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffdff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffdfff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffdff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffdfff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffe000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffe000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffdfff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffdfff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000020
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000020
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000020
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000020
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff5555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff5555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff5555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff5555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff5555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff5555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff5555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff5555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e

.align 4
mask_data:
	.word 0x11111111
	.word 0x86569d27
	.word 0x429ede3d
	.word 0x20219a51
	.word 0x91a8d5fd
	.word 0xbd8f6c65
	.word 0x466250f
	.word 0xe31ffa64
	.word 0xc737ad3a
	.word 0xe54c8c1e
	.word 0x7ca660db
	.word 0x692dadf
	.word 0x2c63c847
	.word 0xfbba7ae7
	.word 0x195b62bf
	.word 0xf600a3d1
	.word 0x34b80fd4
	.word 0x3aef5ff4
	.word 0x34267ad9
	.word 0x681454c0
	.word 0x67dd3492
	.word 0xb02d663e
	.word 0xb2d3f1c5
	.word 0x824d39ae
 

.align 4
rd_origin_data:
    .word 0x66da64aa
	.word 0xf682191a
	.word 0xfd2ce83f
	.word 0x67f9ab29
	.word 0x112e3ffd
	.word 0xc4d9b1e2
	.word 0x9ed4e137
	.word 0xb49ae54e
	.word 0xd075dd45
	.word 0x74daa72e
	.word 0x48324db4
	.word 0x167d97b5
	.word 0x8b536536
	.word 0xe85755eb
	.word 0x1cd86c0a
	.word 0x4c811ecf
	.word 0x8085dbf1
	.word 0x547cdce3
	.word 0x65d27882
	.word 0xb72d2ec4
	.word 0x954ee841
	.word 0xb36fd636
	.word 0xbc4988da
	.word 0xaea05c04
	.word 0xce7483a6
	.word 0xea0309d7
	.word 0x62498466
	.word 0x1cd29ac4
	.word 0x97f38b62
	.word 0x690bcf85
	.word 0x97f38b62
	.word 0x9bd83b8b
    

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
    

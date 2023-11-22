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
  #-------------------------------------------------------------
  # WV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_AVG_N_VV_OP( 1,  vnclip.wv, 0,rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP( 2,  vnclip.wv, 1,rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP( 3,  vnclip.wv, 2,rd_data_vv+128, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP( 4,  vnclip.wv, 3,rd_data_vv+192, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP( 5,  vnclip.wv, 0,rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP( 6,  vnclip.wv, 1,rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP( 7,  vnclip.wv, 2,rd_data_vv+384, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP( 8,  vnclip.wv, 3,rd_data_vv+448, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP( 9,  vnclip.wv, 0,rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP( 10,  vnclip.wv, 1,rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP( 11,  vnclip.wv, 2,rd_data_vv+640, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP( 12,  vnclip.wv, 3,rd_data_vv+704, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP( 13,  vnclip.wv, 0,rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP( 14,  vnclip.wv, 1,rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP( 15,  vnclip.wv, 2,rd_data_vv+896, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP( 16,  vnclip.wv, 3,rd_data_vv+960, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP( 17,  vnclip.wv, 0,rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP( 18,  vnclip.wv, 1,rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP( 19,  vnclip.wv, 2,rd_data_vv+1152, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP( 20,  vnclip.wv, 3,rd_data_vv+1216, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP( 21,  vnclip.wv, 0,rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP( 22,  vnclip.wv, 1,rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP( 23,  vnclip.wv, 2,rd_data_vv+1408, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP( 24,  vnclip.wv, 3,rd_data_vv+1472, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP( 25,  vnclip.wv, 0,rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP( 26,  vnclip.wv, 1,rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP( 27,  vnclip.wv, 2,rd_data_vv+1664, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP( 28,  vnclip.wv, 3,rd_data_vv+1728, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP( 29,  vnclip.wv, 0,rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP( 30,  vnclip.wv, 1,rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP( 31,  vnclip.wv, 2,rd_data_vv+1920, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP( 32,  vnclip.wv, 3,rd_data_vv+1984, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP( 33,  vnclip.wv, 0,rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP( 34,  vnclip.wv, 1,rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP( 35,  vnclip.wv, 2,rd_data_vv+2176, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP( 36,  vnclip.wv, 3,rd_data_vv+2240, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP( 37,  vnclip.wv, 0,rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP( 38,  vnclip.wv, 1,rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP( 39,  vnclip.wv, 2,rd_data_vv+2432, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP( 40,  vnclip.wv, 3,rd_data_vv+2496, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP( 41,  vnclip.wv, 0,rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP( 42,  vnclip.wv, 1,rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP( 43,  vnclip.wv, 2,rd_data_vv+2688, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP( 44,  vnclip.wv, 3,rd_data_vv+2752, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP( 45,  vnclip.wv, 0,rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP( 46,  vnclip.wv, 1,rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP( 47,  vnclip.wv, 2,rd_data_vv+2944, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP( 48,  vnclip.wv, 3,rd_data_vv+3008, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP( 49,  vnclip.wv, 0,rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP( 50,  vnclip.wv, 1,rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP( 51,  vnclip.wv, 2,rd_data_vv+3200, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP( 52,  vnclip.wv, 3,rd_data_vv+3264, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP( 53,  vnclip.wv, 0,rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP( 54,  vnclip.wv, 1,rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP( 55,  vnclip.wv, 2,rd_data_vv+3456, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP( 56,  vnclip.wv, 3,rd_data_vv+3520, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP( 57,  vnclip.wv, 0,rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP( 58,  vnclip.wv, 1,rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP( 59,  vnclip.wv, 2,rd_data_vv+3712, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP( 60,  vnclip.wv, 3,rd_data_vv+3776, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP( 61,  vnclip.wv, 0,rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP( 62,  vnclip.wv, 1,rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP( 63,  vnclip.wv, 2,rd_data_vv+3968, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP( 64,  vnclip.wv, 3,rd_data_vv+4032, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP( 65,  vnclip.wv, 0,rd_data_vv+4096, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP( 66,  vnclip.wv, 1,rd_data_vv+4160, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP( 67,  vnclip.wv, 2,rd_data_vv+4224, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP( 68,  vnclip.wv, 3,rd_data_vv+4288, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP( 69,  vnclip.wv, 0,rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP( 70,  vnclip.wv, 1,rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP( 71,  vnclip.wv, 2,rd_data_vv+4480, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP( 72,  vnclip.wv, 3,rd_data_vv+4544, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP( 73,  vnclip.wv, 0,rd_data_vv+4608, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP( 74,  vnclip.wv, 1,rd_data_vv+4672, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP( 75,  vnclip.wv, 2,rd_data_vv+4736, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP( 76,  vnclip.wv, 3,rd_data_vv+4800, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP( 77,  vnclip.wv, 0,rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP( 78,  vnclip.wv, 1,rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP( 79,  vnclip.wv, 2,rd_data_vv+4992, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP( 80,  vnclip.wv, 3,rd_data_vv+5056, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP( 81,  vnclip.wv, 0,rd_data_vv+5120, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP( 82,  vnclip.wv, 1,rd_data_vv+5184, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP( 83,  vnclip.wv, 2,rd_data_vv+5248, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP( 84,  vnclip.wv, 3,rd_data_vv+5312, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP( 85,  vnclip.wv, 0,rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP( 86,  vnclip.wv, 1,rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP( 87,  vnclip.wv, 2,rd_data_vv+5504, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP( 88,  vnclip.wv, 3,rd_data_vv+5568, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP( 89,  vnclip.wv, 0,rd_data_vv+5632, rs2_data+1408, rs1_data+1408)
  TEST_AVG_N_VV_OP( 90,  vnclip.wv, 1,rd_data_vv+5696, rs2_data+1408, rs1_data+1408)
  TEST_AVG_N_VV_OP( 91,  vnclip.wv, 2,rd_data_vv+5760, rs2_data+1408, rs1_data+1408)
  TEST_AVG_N_VV_OP( 92,  vnclip.wv, 3,rd_data_vv+5824, rs2_data+1408, rs1_data+1408)
  TEST_AVG_N_VV_OP( 93,  vnclip.wv, 0,rd_data_vv+5888, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP( 94,  vnclip.wv, 1,rd_data_vv+5952, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP( 95,  vnclip.wv, 2,rd_data_vv+6016, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP( 96,  vnclip.wv, 3,rd_data_vv+6080, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP( 97,  vnclip.wv, 0,rd_data_vv+6144, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP( 98,  vnclip.wv, 1,rd_data_vv+6208, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP( 99,  vnclip.wv, 2,rd_data_vv+6272, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP( 100,  vnclip.wv, 3,rd_data_vv+6336, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP( 101,  vnclip.wv, 0,rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP( 102,  vnclip.wv, 1,rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP( 103,  vnclip.wv, 2,rd_data_vv+6528, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP( 104,  vnclip.wv, 3,rd_data_vv+6592, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP( 105,  vnclip.wv, 0,rd_data_vv+6656, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP( 106,  vnclip.wv, 1,rd_data_vv+6720, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP( 107,  vnclip.wv, 2,rd_data_vv+6784, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP( 108,  vnclip.wv, 3,rd_data_vv+6848, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP( 109,  vnclip.wv, 0,rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP( 110,  vnclip.wv, 1,rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP( 111,  vnclip.wv, 2,rd_data_vv+7040, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP( 112,  vnclip.wv, 3,rd_data_vv+7104, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP( 113,  vnclip.wv, 0,rd_data_vv+7168, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP( 114,  vnclip.wv, 1,rd_data_vv+7232, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP( 115,  vnclip.wv, 2,rd_data_vv+7296, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP( 116,  vnclip.wv, 3,rd_data_vv+7360, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP( 117,  vnclip.wv, 0,rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP( 118,  vnclip.wv, 1,rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP( 119,  vnclip.wv, 2,rd_data_vv+7552, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP( 120,  vnclip.wv, 3,rd_data_vv+7616, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP( 121,  vnclip.wv, 0,rd_data_vv+7680, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP( 122,  vnclip.wv, 1,rd_data_vv+7744, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP( 123,  vnclip.wv, 2,rd_data_vv+7808, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP( 124,  vnclip.wv, 3,rd_data_vv+7872, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP( 125,  vnclip.wv, 0,rd_data_vv+7936, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP( 126,  vnclip.wv, 1,rd_data_vv+8000, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP( 127,  vnclip.wv, 2,rd_data_vv+8064, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP( 128,  vnclip.wv, 3,rd_data_vv+8128, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP( 129,  vnclip.wv, 0,rd_data_vv+8192, rs2_data+2048, rs1_data+2048)
  TEST_AVG_N_VV_OP( 130,  vnclip.wv, 1,rd_data_vv+8256, rs2_data+2048, rs1_data+2048)
  TEST_AVG_N_VV_OP( 131,  vnclip.wv, 2,rd_data_vv+8320, rs2_data+2048, rs1_data+2048)
  TEST_AVG_N_VV_OP( 132,  vnclip.wv, 3,rd_data_vv+8384, rs2_data+2048, rs1_data+2048)
  TEST_AVG_N_VV_OP( 133,  vnclip.wv, 0,rd_data_vv+8448, rs2_data+2112, rs1_data+2112)
  TEST_AVG_N_VV_OP( 134,  vnclip.wv, 1,rd_data_vv+8512, rs2_data+2112, rs1_data+2112)
  TEST_AVG_N_VV_OP( 135,  vnclip.wv, 2,rd_data_vv+8576, rs2_data+2112, rs1_data+2112)
  TEST_AVG_N_VV_OP( 136,  vnclip.wv, 3,rd_data_vv+8640, rs2_data+2112, rs1_data+2112)
  TEST_AVG_N_VV_OP_12( 137,  vnclip.wv,  0,rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_12( 138,  vnclip.wv,  1,rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_12( 139,  vnclip.wv,  2,rd_data_vv+128, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_12( 140,  vnclip.wv,  3,rd_data_vv+192, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_rd2( 141,  vnclip.wv, 0,rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_13( 142,  vnclip.wv,  0,rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_rd2( 143,  vnclip.wv, 1,rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_13( 144,  vnclip.wv,  1,rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_rd2( 145,  vnclip.wv, 2,rd_data_vv+384, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_13( 146,  vnclip.wv,  2,rd_data_vv+384, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_rd2( 147,  vnclip.wv, 3,rd_data_vv+448, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_13( 148,  vnclip.wv,  3,rd_data_vv+448, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_14( 149,  vnclip.wv,  0,rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_14( 150,  vnclip.wv,  1,rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_14( 151,  vnclip.wv,  2,rd_data_vv+640, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_14( 152,  vnclip.wv,  3,rd_data_vv+704, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_rd4( 153,  vnclip.wv, 0,rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_15( 154,  vnclip.wv,  0,rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_rd4( 155,  vnclip.wv, 1,rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_15( 156,  vnclip.wv,  1,rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_rd4( 157,  vnclip.wv, 2,rd_data_vv+896, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_15( 158,  vnclip.wv,  2,rd_data_vv+896, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_rd4( 159,  vnclip.wv, 3,rd_data_vv+960, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_15( 160,  vnclip.wv,  3,rd_data_vv+960, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_16( 161,  vnclip.wv,  0,rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_16( 162,  vnclip.wv,  1,rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_16( 163,  vnclip.wv,  2,rd_data_vv+1152, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_16( 164,  vnclip.wv,  3,rd_data_vv+1216, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_rd6( 165,  vnclip.wv, 0,rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_17( 166,  vnclip.wv,  0,rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_rd6( 167,  vnclip.wv, 1,rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_17( 168,  vnclip.wv,  1,rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_rd6( 169,  vnclip.wv, 2,rd_data_vv+1408, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_17( 170,  vnclip.wv,  2,rd_data_vv+1408, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_rd6( 171,  vnclip.wv, 3,rd_data_vv+1472, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_17( 172,  vnclip.wv,  3,rd_data_vv+1472, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_19( 173,  vnclip.wv,  0,rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP_19( 174,  vnclip.wv,  1,rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP_19( 175,  vnclip.wv,  2,rd_data_vv+1920, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP_19( 176,  vnclip.wv,  3,rd_data_vv+1984, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP_110( 177,  vnclip.wv,  0,rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_110( 178,  vnclip.wv,  1,rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_110( 179,  vnclip.wv,  2,rd_data_vv+2176, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_110( 180,  vnclip.wv,  3,rd_data_vv+2240, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_rd10( 181,  vnclip.wv, 0,rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_111( 182,  vnclip.wv,  0,rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_rd10( 183,  vnclip.wv, 1,rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_111( 184,  vnclip.wv,  1,rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_rd10( 185,  vnclip.wv, 2,rd_data_vv+2432, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_111( 186,  vnclip.wv,  2,rd_data_vv+2432, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_rd10( 187,  vnclip.wv, 3,rd_data_vv+2496, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_111( 188,  vnclip.wv,  3,rd_data_vv+2496, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_112( 189,  vnclip.wv,  0,rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_112( 190,  vnclip.wv,  1,rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_112( 191,  vnclip.wv,  2,rd_data_vv+2688, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_112( 192,  vnclip.wv,  3,rd_data_vv+2752, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_rd12( 193,  vnclip.wv, 0,rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_113( 194,  vnclip.wv,  0,rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_rd12( 195,  vnclip.wv, 1,rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_113( 196,  vnclip.wv,  1,rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_rd12( 197,  vnclip.wv, 2,rd_data_vv+2944, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_113( 198,  vnclip.wv,  2,rd_data_vv+2944, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_rd12( 199,  vnclip.wv, 3,rd_data_vv+3008, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_113( 200,  vnclip.wv,  3,rd_data_vv+3008, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_114( 201,  vnclip.wv,  0,rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_114( 202,  vnclip.wv,  1,rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_114( 203,  vnclip.wv,  2,rd_data_vv+3200, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_114( 204,  vnclip.wv,  3,rd_data_vv+3264, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_rd14( 205,  vnclip.wv, 0,rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_115( 206,  vnclip.wv,  0,rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_rd14( 207,  vnclip.wv, 1,rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_115( 208,  vnclip.wv,  1,rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_rd14( 209,  vnclip.wv, 2,rd_data_vv+3456, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_115( 210,  vnclip.wv,  2,rd_data_vv+3456, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_rd14( 211,  vnclip.wv, 3,rd_data_vv+3520, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_115( 212,  vnclip.wv,  3,rd_data_vv+3520, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_118( 213,  vnclip.wv,  0,rd_data_vv+4096, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP_118( 214,  vnclip.wv,  1,rd_data_vv+4160, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP_118( 215,  vnclip.wv,  2,rd_data_vv+4224, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP_118( 216,  vnclip.wv,  3,rd_data_vv+4288, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP_rd18( 217,  vnclip.wv, 0,rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP_119( 218,  vnclip.wv,  0,rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP_rd18( 219,  vnclip.wv, 1,rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP_119( 220,  vnclip.wv,  1,rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP_rd18( 221,  vnclip.wv, 2,rd_data_vv+4480, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP_119( 222,  vnclip.wv,  2,rd_data_vv+4480, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP_rd18( 223,  vnclip.wv, 3,rd_data_vv+4544, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP_119( 224,  vnclip.wv,  3,rd_data_vv+4544, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP_120( 225,  vnclip.wv,  0,rd_data_vv+4608, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP_120( 226,  vnclip.wv,  1,rd_data_vv+4672, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP_120( 227,  vnclip.wv,  2,rd_data_vv+4736, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP_120( 228,  vnclip.wv,  3,rd_data_vv+4800, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP_rd20( 229,  vnclip.wv, 0,rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP_121( 230,  vnclip.wv,  0,rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP_rd20( 231,  vnclip.wv, 1,rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP_121( 232,  vnclip.wv,  1,rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP_rd20( 233,  vnclip.wv, 2,rd_data_vv+4992, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP_121( 234,  vnclip.wv,  2,rd_data_vv+4992, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP_rd20( 235,  vnclip.wv, 3,rd_data_vv+5056, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP_121( 236,  vnclip.wv,  3,rd_data_vv+5056, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP_122( 237,  vnclip.wv,  0,rd_data_vv+5120, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP_122( 238,  vnclip.wv,  1,rd_data_vv+5184, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP_122( 239,  vnclip.wv,  2,rd_data_vv+5248, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP_122( 240,  vnclip.wv,  3,rd_data_vv+5312, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP_rd22( 241,  vnclip.wv, 0,rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP_123( 242,  vnclip.wv,  0,rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP_rd22( 243,  vnclip.wv, 1,rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP_123( 244,  vnclip.wv,  1,rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP_rd22( 245,  vnclip.wv, 2,rd_data_vv+5504, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP_123( 246,  vnclip.wv,  2,rd_data_vv+5504, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP_rd22( 247,  vnclip.wv, 3,rd_data_vv+5568, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP_123( 248,  vnclip.wv,  3,rd_data_vv+5568, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP_125( 249,  vnclip.wv,  0,rd_data_vv+5888, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP_125( 250,  vnclip.wv,  1,rd_data_vv+5952, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP_125( 251,  vnclip.wv,  2,rd_data_vv+6016, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP_125( 252,  vnclip.wv,  3,rd_data_vv+6080, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP_126( 253,  vnclip.wv,  0,rd_data_vv+6144, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP_126( 254,  vnclip.wv,  1,rd_data_vv+6208, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP_126( 255,  vnclip.wv,  2,rd_data_vv+6272, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP_126( 256,  vnclip.wv,  3,rd_data_vv+6336, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP_rd26( 257,  vnclip.wv, 0,rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP_127( 258,  vnclip.wv,  0,rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP_rd26( 259,  vnclip.wv, 1,rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP_127( 260,  vnclip.wv,  1,rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP_rd26( 261,  vnclip.wv, 2,rd_data_vv+6528, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP_127( 262,  vnclip.wv,  2,rd_data_vv+6528, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP_rd26( 263,  vnclip.wv, 3,rd_data_vv+6592, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP_127( 264,  vnclip.wv,  3,rd_data_vv+6592, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP_128( 265,  vnclip.wv,  0,rd_data_vv+6656, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP_128( 266,  vnclip.wv,  1,rd_data_vv+6720, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP_128( 267,  vnclip.wv,  2,rd_data_vv+6784, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP_128( 268,  vnclip.wv,  3,rd_data_vv+6848, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP_rd28( 269,  vnclip.wv, 0,rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP_129( 270,  vnclip.wv,  0,rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP_rd28( 271,  vnclip.wv, 1,rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP_129( 272,  vnclip.wv,  1,rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP_rd28( 273,  vnclip.wv, 2,rd_data_vv+7040, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP_129( 274,  vnclip.wv,  2,rd_data_vv+7040, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP_rd28( 275,  vnclip.wv, 3,rd_data_vv+7104, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP_129( 276,  vnclip.wv,  3,rd_data_vv+7104, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP_130( 277,  vnclip.wv,  0,rd_data_vv+7168, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP_130( 278,  vnclip.wv,  1,rd_data_vv+7232, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP_130( 279,  vnclip.wv,  2,rd_data_vv+7296, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP_130( 280,  vnclip.wv,  3,rd_data_vv+7360, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP_rd30( 281,  vnclip.wv, 0,rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP_131( 282,  vnclip.wv,  0,rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP_rd30( 283,  vnclip.wv, 1,rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP_131( 284,  vnclip.wv,  1,rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP_rd30( 285,  vnclip.wv, 2,rd_data_vv+7552, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP_131( 286,  vnclip.wv,  2,rd_data_vv+7552, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP_rd30( 287,  vnclip.wv, 3,rd_data_vv+7616, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP_131( 288,  vnclip.wv,  3,rd_data_vv+7616, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP_12( 289,  vnclip.wv,  0,rd_data_vv+7680, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP_12( 290,  vnclip.wv,  1,rd_data_vv+7744, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP_12( 291,  vnclip.wv,  2,rd_data_vv+7808, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP_12( 292,  vnclip.wv,  3,rd_data_vv+7872, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP_13( 293,  vnclip.wv,  0,rd_data_vv+7936, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP_13( 294,  vnclip.wv,  1,rd_data_vv+8000, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP_13( 295,  vnclip.wv,  2,rd_data_vv+8064, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP_13( 296,  vnclip.wv,  3,rd_data_vv+8128, rs2_data+1984, rs1_data+1984)
  #-------------------------------------------------------------
  # WX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_N_VX_OP( 297,  vnclip.wx,  0,rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 298,  vnclip.wx,  1,rd_data_vx+64, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 299,  vnclip.wx,  2,rd_data_vx+128, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 300,  vnclip.wx,  3,rd_data_vx+192, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 301,  vnclip.wx,  0,rd_data_vx+256, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 302,  vnclip.wx,  1,rd_data_vx+320, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 303,  vnclip.wx,  2,rd_data_vx+384, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 304,  vnclip.wx,  3,rd_data_vx+448, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 305,  vnclip.wx,  0,rd_data_vx+512, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 306,  vnclip.wx,  1,rd_data_vx+576, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 307,  vnclip.wx,  2,rd_data_vx+640, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 308,  vnclip.wx,  3,rd_data_vx+704, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 309,  vnclip.wx,  0,rd_data_vx+768, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 310,  vnclip.wx,  1,rd_data_vx+832, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 311,  vnclip.wx,  2,rd_data_vx+896, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 312,  vnclip.wx,  3,rd_data_vx+960, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 313,  vnclip.wx,  0,rd_data_vx+1024, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 314,  vnclip.wx,  1,rd_data_vx+1088, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 315,  vnclip.wx,  2,rd_data_vx+1152, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 316,  vnclip.wx,  3,rd_data_vx+1216, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 317,  vnclip.wx,  0,rd_data_vx+1280, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 318,  vnclip.wx,  1,rd_data_vx+1344, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 319,  vnclip.wx,  2,rd_data_vx+1408, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 320,  vnclip.wx,  3,rd_data_vx+1472, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 321,  vnclip.wx,  0,rd_data_vx+1536, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 322,  vnclip.wx,  1,rd_data_vx+1600, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 323,  vnclip.wx,  2,rd_data_vx+1664, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 324,  vnclip.wx,  3,rd_data_vx+1728, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 325,  vnclip.wx,  0,rd_data_vx+1792, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 326,  vnclip.wx,  1,rd_data_vx+1856, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 327,  vnclip.wx,  2,rd_data_vx+1920, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 328,  vnclip.wx,  3,rd_data_vx+1984, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 329,  vnclip.wx,  0,rd_data_vx+2048, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 330,  vnclip.wx,  1,rd_data_vx+2112, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 331,  vnclip.wx,  2,rd_data_vx+2176, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 332,  vnclip.wx,  3,rd_data_vx+2240, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 333,  vnclip.wx,  0,rd_data_vx+2304, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 334,  vnclip.wx,  1,rd_data_vx+2368, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 335,  vnclip.wx,  2,rd_data_vx+2432, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 336,  vnclip.wx,  3,rd_data_vx+2496, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 337,  vnclip.wx,  0,rd_data_vx+2560, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 338,  vnclip.wx,  1,rd_data_vx+2624, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 339,  vnclip.wx,  2,rd_data_vx+2688, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 340,  vnclip.wx,  3,rd_data_vx+2752, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 341,  vnclip.wx,  0,rd_data_vx+2816, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 342,  vnclip.wx,  1,rd_data_vx+2880, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 343,  vnclip.wx,  2,rd_data_vx+2944, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 344,  vnclip.wx,  3,rd_data_vx+3008, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 345,  vnclip.wx,  0,rd_data_vx+3072, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 346,  vnclip.wx,  1,rd_data_vx+3136, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 347,  vnclip.wx,  2,rd_data_vx+3200, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 348,  vnclip.wx,  3,rd_data_vx+3264, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 349,  vnclip.wx,  0,rd_data_vx+3328, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 350,  vnclip.wx,  1,rd_data_vx+3392, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 351,  vnclip.wx,  2,rd_data_vx+3456, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 352,  vnclip.wx,  3,rd_data_vx+3520, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 353,  vnclip.wx,  0,rd_data_vx+3584, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 354,  vnclip.wx,  1,rd_data_vx+3648, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 355,  vnclip.wx,  2,rd_data_vx+3712, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 356,  vnclip.wx,  3,rd_data_vx+3776, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 357,  vnclip.wx,  0,rd_data_vx+3840, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 358,  vnclip.wx,  1,rd_data_vx+3904, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 359,  vnclip.wx,  2,rd_data_vx+3968, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 360,  vnclip.wx,  3,rd_data_vx+4032, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 361,  vnclip.wx,  0,rd_data_vx+4096, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 362,  vnclip.wx,  1,rd_data_vx+4160, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 363,  vnclip.wx,  2,rd_data_vx+4224, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 364,  vnclip.wx,  3,rd_data_vx+4288, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 365,  vnclip.wx,  0,rd_data_vx+4352, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 366,  vnclip.wx,  1,rd_data_vx+4416, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 367,  vnclip.wx,  2,rd_data_vx+4480, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 368,  vnclip.wx,  3,rd_data_vx+4544, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 369,  vnclip.wx,  0,rd_data_vx+4608, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 370,  vnclip.wx,  1,rd_data_vx+4672, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 371,  vnclip.wx,  2,rd_data_vx+4736, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 372,  vnclip.wx,  3,rd_data_vx+4800, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 373,  vnclip.wx,  0,rd_data_vx+4864, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 374,  vnclip.wx,  1,rd_data_vx+4928, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 375,  vnclip.wx,  2,rd_data_vx+4992, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 376,  vnclip.wx,  3,rd_data_vx+5056, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 377,  vnclip.wx,  0,rd_data_vx+5120, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 378,  vnclip.wx,  1,rd_data_vx+5184, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 379,  vnclip.wx,  2,rd_data_vx+5248, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 380,  vnclip.wx,  3,rd_data_vx+5312, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 381,  vnclip.wx,  0,rd_data_vx+5376, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 382,  vnclip.wx,  1,rd_data_vx+5440, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 383,  vnclip.wx,  2,rd_data_vx+5504, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 384,  vnclip.wx,  3,rd_data_vx+5568, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 385,  vnclip.wx,  0,rd_data_vx+5632, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 386,  vnclip.wx,  1,rd_data_vx+5696, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 387,  vnclip.wx,  2,rd_data_vx+5760, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 388,  vnclip.wx,  3,rd_data_vx+5824, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 389,  vnclip.wx,  0,rd_data_vx+5888, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 390,  vnclip.wx,  1,rd_data_vx+5952, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 391,  vnclip.wx,  2,rd_data_vx+6016, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 392,  vnclip.wx,  3,rd_data_vx+6080, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 393,  vnclip.wx,  0,rd_data_vx+6144, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 394,  vnclip.wx,  1,rd_data_vx+6208, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 395,  vnclip.wx,  2,rd_data_vx+6272, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 396,  vnclip.wx,  3,rd_data_vx+6336, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 397,  vnclip.wx,  0,rd_data_vx+6400, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 398,  vnclip.wx,  1,rd_data_vx+6464, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 399,  vnclip.wx,  2,rd_data_vx+6528, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 400,  vnclip.wx,  3,rd_data_vx+6592, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 401,  vnclip.wx,  0,rd_data_vx+6656, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 402,  vnclip.wx,  1,rd_data_vx+6720, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 403,  vnclip.wx,  2,rd_data_vx+6784, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 404,  vnclip.wx,  3,rd_data_vx+6848, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 405,  vnclip.wx,  0,rd_data_vx+6912, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 406,  vnclip.wx,  1,rd_data_vx+6976, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 407,  vnclip.wx,  2,rd_data_vx+7040, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 408,  vnclip.wx,  3,rd_data_vx+7104, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 409,  vnclip.wx,  0,rd_data_vx+7168, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 410,  vnclip.wx,  1,rd_data_vx+7232, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 411,  vnclip.wx,  2,rd_data_vx+7296, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 412,  vnclip.wx,  3,rd_data_vx+7360, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 413,  vnclip.wx,  0,rd_data_vx+7424, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 414,  vnclip.wx,  1,rd_data_vx+7488, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 415,  vnclip.wx,  2,rd_data_vx+7552, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 416,  vnclip.wx,  3,rd_data_vx+7616, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 417,  vnclip.wx,  0,rd_data_vx+7680, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 418,  vnclip.wx,  1,rd_data_vx+7744, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 419,  vnclip.wx,  2,rd_data_vx+7808, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 420,  vnclip.wx,  3,rd_data_vx+7872, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 421,  vnclip.wx,  0,rd_data_vx+7936, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 422,  vnclip.wx,  1,rd_data_vx+8000, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 423,  vnclip.wx,  2,rd_data_vx+8064, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 424,  vnclip.wx,  3,rd_data_vx+8128, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 425,  vnclip.wx,  0,rd_data_vx+8192, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 426,  vnclip.wx,  1,rd_data_vx+8256, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 427,  vnclip.wx,  2,rd_data_vx+8320, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 428,  vnclip.wx,  3,rd_data_vx+8384, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 429,  vnclip.wx,  0,rd_data_vx+8448, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 430,  vnclip.wx,  1,rd_data_vx+8512, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 431,  vnclip.wx,  2,rd_data_vx+8576, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 432,  vnclip.wx,  3,rd_data_vx+8640, rs2_data+2112, 0xfffffffffffffffe)
  #-------------------------------------------------------------
  # WI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_N_VI_OP( 433,  vnclip.wi,  0,rd_data_vi+0, rs2_data+0, 15)
  TEST_AVG_N_VI_OP( 434,  vnclip.wi,  1,rd_data_vi+64, rs2_data+0, 15)
  TEST_AVG_N_VI_OP( 435,  vnclip.wi,  2,rd_data_vi+128, rs2_data+0, 15)
  TEST_AVG_N_VI_OP( 436,  vnclip.wi,  3,rd_data_vi+192, rs2_data+0, 15)
  TEST_AVG_N_VI_OP( 437,  vnclip.wi,  0,rd_data_vi+256, rs2_data+64, 15)
  TEST_AVG_N_VI_OP( 438,  vnclip.wi,  1,rd_data_vi+320, rs2_data+64, 15)
  TEST_AVG_N_VI_OP( 439,  vnclip.wi,  2,rd_data_vi+384, rs2_data+64, 15)
  TEST_AVG_N_VI_OP( 440,  vnclip.wi,  3,rd_data_vi+448, rs2_data+64, 15)
  TEST_AVG_N_VI_OP( 441,  vnclip.wi,  0,rd_data_vi+512, rs2_data+128, 15)
  TEST_AVG_N_VI_OP( 442,  vnclip.wi,  1,rd_data_vi+576, rs2_data+128, 15)
  TEST_AVG_N_VI_OP( 443,  vnclip.wi,  2,rd_data_vi+640, rs2_data+128, 15)
  TEST_AVG_N_VI_OP( 444,  vnclip.wi,  3,rd_data_vi+704, rs2_data+128, 15)
  TEST_AVG_N_VI_OP( 445,  vnclip.wi,  0,rd_data_vi+768, rs2_data+192, 15)
  TEST_AVG_N_VI_OP( 446,  vnclip.wi,  1,rd_data_vi+832, rs2_data+192, 15)
  TEST_AVG_N_VI_OP( 447,  vnclip.wi,  2,rd_data_vi+896, rs2_data+192, 15)
  TEST_AVG_N_VI_OP( 448,  vnclip.wi,  3,rd_data_vi+960, rs2_data+192, 15)
  TEST_AVG_N_VI_OP( 449,  vnclip.wi,  0,rd_data_vi+1024, rs2_data+256, 15)
  TEST_AVG_N_VI_OP( 450,  vnclip.wi,  1,rd_data_vi+1088, rs2_data+256, 15)
  TEST_AVG_N_VI_OP( 451,  vnclip.wi,  2,rd_data_vi+1152, rs2_data+256, 15)
  TEST_AVG_N_VI_OP( 452,  vnclip.wi,  3,rd_data_vi+1216, rs2_data+256, 15)
  TEST_AVG_N_VI_OP( 453,  vnclip.wi,  0,rd_data_vi+1280, rs2_data+320, 15)
  TEST_AVG_N_VI_OP( 454,  vnclip.wi,  1,rd_data_vi+1344, rs2_data+320, 15)
  TEST_AVG_N_VI_OP( 455,  vnclip.wi,  2,rd_data_vi+1408, rs2_data+320, 15)
  TEST_AVG_N_VI_OP( 456,  vnclip.wi,  3,rd_data_vi+1472, rs2_data+320, 15)
  TEST_AVG_N_VI_OP( 457,  vnclip.wi,  0,rd_data_vi+1536, rs2_data+384, 15)
  TEST_AVG_N_VI_OP( 458,  vnclip.wi,  1,rd_data_vi+1600, rs2_data+384, 15)
  TEST_AVG_N_VI_OP( 459,  vnclip.wi,  2,rd_data_vi+1664, rs2_data+384, 15)
  TEST_AVG_N_VI_OP( 460,  vnclip.wi,  3,rd_data_vi+1728, rs2_data+384, 15)
  TEST_AVG_N_VI_OP( 461,  vnclip.wi,  0,rd_data_vi+1792, rs2_data+448, 15)
  TEST_AVG_N_VI_OP( 462,  vnclip.wi,  1,rd_data_vi+1856, rs2_data+448, 15)
  TEST_AVG_N_VI_OP( 463,  vnclip.wi,  2,rd_data_vi+1920, rs2_data+448, 15)
  TEST_AVG_N_VI_OP( 464,  vnclip.wi,  3,rd_data_vi+1984, rs2_data+448, 15)
  TEST_AVG_N_VI_OP( 465,  vnclip.wi,  0,rd_data_vi+2048, rs2_data+512, 15)
  TEST_AVG_N_VI_OP( 466,  vnclip.wi,  1,rd_data_vi+2112, rs2_data+512, 15)
  TEST_AVG_N_VI_OP( 467,  vnclip.wi,  2,rd_data_vi+2176, rs2_data+512, 15)
  TEST_AVG_N_VI_OP( 468,  vnclip.wi,  3,rd_data_vi+2240, rs2_data+512, 15)
  TEST_AVG_N_VI_OP( 469,  vnclip.wi,  0,rd_data_vi+2304, rs2_data+576, 15)
  TEST_AVG_N_VI_OP( 470,  vnclip.wi,  1,rd_data_vi+2368, rs2_data+576, 15)
  TEST_AVG_N_VI_OP( 471,  vnclip.wi,  2,rd_data_vi+2432, rs2_data+576, 15)
  TEST_AVG_N_VI_OP( 472,  vnclip.wi,  3,rd_data_vi+2496, rs2_data+576, 15)
  TEST_AVG_N_VI_OP( 473,  vnclip.wi,  0,rd_data_vi+2560, rs2_data+640, 15)
  TEST_AVG_N_VI_OP( 474,  vnclip.wi,  1,rd_data_vi+2624, rs2_data+640, 15)
  TEST_AVG_N_VI_OP( 475,  vnclip.wi,  2,rd_data_vi+2688, rs2_data+640, 15)
  TEST_AVG_N_VI_OP( 476,  vnclip.wi,  3,rd_data_vi+2752, rs2_data+640, 15)
  TEST_AVG_N_VI_OP( 477,  vnclip.wi,  0,rd_data_vi+2816, rs2_data+704, 15)
  TEST_AVG_N_VI_OP( 478,  vnclip.wi,  1,rd_data_vi+2880, rs2_data+704, 15)
  TEST_AVG_N_VI_OP( 479,  vnclip.wi,  2,rd_data_vi+2944, rs2_data+704, 15)
  TEST_AVG_N_VI_OP( 480,  vnclip.wi,  3,rd_data_vi+3008, rs2_data+704, 15)
  TEST_AVG_N_VI_OP( 481,  vnclip.wi,  0,rd_data_vi+3072, rs2_data+768, 15)
  TEST_AVG_N_VI_OP( 482,  vnclip.wi,  1,rd_data_vi+3136, rs2_data+768, 15)
  TEST_AVG_N_VI_OP( 483,  vnclip.wi,  2,rd_data_vi+3200, rs2_data+768, 15)
  TEST_AVG_N_VI_OP( 484,  vnclip.wi,  3,rd_data_vi+3264, rs2_data+768, 15)
  TEST_AVG_N_VI_OP( 485,  vnclip.wi,  0,rd_data_vi+3328, rs2_data+832, 15)
  TEST_AVG_N_VI_OP( 486,  vnclip.wi,  1,rd_data_vi+3392, rs2_data+832, 15)
  TEST_AVG_N_VI_OP( 487,  vnclip.wi,  2,rd_data_vi+3456, rs2_data+832, 15)
  TEST_AVG_N_VI_OP( 488,  vnclip.wi,  3,rd_data_vi+3520, rs2_data+832, 15)
  TEST_AVG_N_VI_OP( 489,  vnclip.wi,  0,rd_data_vi+3584, rs2_data+896, 15)
  TEST_AVG_N_VI_OP( 490,  vnclip.wi,  1,rd_data_vi+3648, rs2_data+896, 15)
  TEST_AVG_N_VI_OP( 491,  vnclip.wi,  2,rd_data_vi+3712, rs2_data+896, 15)
  TEST_AVG_N_VI_OP( 492,  vnclip.wi,  3,rd_data_vi+3776, rs2_data+896, 15)
  TEST_AVG_N_VI_OP( 493,  vnclip.wi,  0,rd_data_vi+3840, rs2_data+960, 15)
  TEST_AVG_N_VI_OP( 494,  vnclip.wi,  1,rd_data_vi+3904, rs2_data+960, 15)
  TEST_AVG_N_VI_OP( 495,  vnclip.wi,  2,rd_data_vi+3968, rs2_data+960, 15)
  TEST_AVG_N_VI_OP( 496,  vnclip.wi,  3,rd_data_vi+4032, rs2_data+960, 15)
  TEST_AVG_N_VI_OP( 497,  vnclip.wi,  0,rd_data_vi+4096, rs2_data+1024, 15)
  TEST_AVG_N_VI_OP( 498,  vnclip.wi,  1,rd_data_vi+4160, rs2_data+1024, 15)
  TEST_AVG_N_VI_OP( 499,  vnclip.wi,  2,rd_data_vi+4224, rs2_data+1024, 15)
  TEST_AVG_N_VI_OP( 500,  vnclip.wi,  3,rd_data_vi+4288, rs2_data+1024, 15)
  TEST_AVG_N_VI_OP( 501,  vnclip.wi,  0,rd_data_vi+4352, rs2_data+1088, 15)
  TEST_AVG_N_VI_OP( 502,  vnclip.wi,  1,rd_data_vi+4416, rs2_data+1088, 15)
  TEST_AVG_N_VI_OP( 503,  vnclip.wi,  2,rd_data_vi+4480, rs2_data+1088, 15)
  TEST_AVG_N_VI_OP( 504,  vnclip.wi,  3,rd_data_vi+4544, rs2_data+1088, 15)
  TEST_AVG_N_VI_OP( 505,  vnclip.wi,  0,rd_data_vi+4608, rs2_data+1152, 15)
  TEST_AVG_N_VI_OP( 506,  vnclip.wi,  1,rd_data_vi+4672, rs2_data+1152, 15)
  TEST_AVG_N_VI_OP( 507,  vnclip.wi,  2,rd_data_vi+4736, rs2_data+1152, 15)
  TEST_AVG_N_VI_OP( 508,  vnclip.wi,  3,rd_data_vi+4800, rs2_data+1152, 15)
  TEST_AVG_N_VI_OP( 509,  vnclip.wi,  0,rd_data_vi+4864, rs2_data+1216, 15)
  TEST_AVG_N_VI_OP( 510,  vnclip.wi,  1,rd_data_vi+4928, rs2_data+1216, 15)
  TEST_AVG_N_VI_OP( 511,  vnclip.wi,  2,rd_data_vi+4992, rs2_data+1216, 15)
  TEST_AVG_N_VI_OP( 512,  vnclip.wi,  3,rd_data_vi+5056, rs2_data+1216, 15)
  TEST_AVG_N_VI_OP( 513,  vnclip.wi,  0,rd_data_vi+5120, rs2_data+1280, 15)
  TEST_AVG_N_VI_OP( 514,  vnclip.wi,  1,rd_data_vi+5184, rs2_data+1280, 15)
  TEST_AVG_N_VI_OP( 515,  vnclip.wi,  2,rd_data_vi+5248, rs2_data+1280, 15)
  TEST_AVG_N_VI_OP( 516,  vnclip.wi,  3,rd_data_vi+5312, rs2_data+1280, 15)
  TEST_AVG_N_VI_OP( 517,  vnclip.wi,  0,rd_data_vi+5376, rs2_data+1344, 15)
  TEST_AVG_N_VI_OP( 518,  vnclip.wi,  1,rd_data_vi+5440, rs2_data+1344, 15)
  TEST_AVG_N_VI_OP( 519,  vnclip.wi,  2,rd_data_vi+5504, rs2_data+1344, 15)
  TEST_AVG_N_VI_OP( 520,  vnclip.wi,  3,rd_data_vi+5568, rs2_data+1344, 15)
  TEST_AVG_N_VI_OP( 521,  vnclip.wi,  0,rd_data_vi+5632, rs2_data+1408, 15)
  TEST_AVG_N_VI_OP( 522,  vnclip.wi,  1,rd_data_vi+5696, rs2_data+1408, 15)
  TEST_AVG_N_VI_OP( 523,  vnclip.wi,  2,rd_data_vi+5760, rs2_data+1408, 15)
  TEST_AVG_N_VI_OP( 524,  vnclip.wi,  3,rd_data_vi+5824, rs2_data+1408, 15)
  TEST_AVG_N_VI_OP( 525,  vnclip.wi,  0,rd_data_vi+5888, rs2_data+1472, 15)
  TEST_AVG_N_VI_OP( 526,  vnclip.wi,  1,rd_data_vi+5952, rs2_data+1472, 15)
  TEST_AVG_N_VI_OP( 527,  vnclip.wi,  2,rd_data_vi+6016, rs2_data+1472, 15)
  TEST_AVG_N_VI_OP( 528,  vnclip.wi,  3,rd_data_vi+6080, rs2_data+1472, 15)
  TEST_AVG_N_VI_OP( 529,  vnclip.wi,  0,rd_data_vi+6144, rs2_data+1536, 15)
  TEST_AVG_N_VI_OP( 530,  vnclip.wi,  1,rd_data_vi+6208, rs2_data+1536, 15)
  TEST_AVG_N_VI_OP( 531,  vnclip.wi,  2,rd_data_vi+6272, rs2_data+1536, 15)
  TEST_AVG_N_VI_OP( 532,  vnclip.wi,  3,rd_data_vi+6336, rs2_data+1536, 15)
  TEST_AVG_N_VI_OP( 533,  vnclip.wi,  0,rd_data_vi+6400, rs2_data+1600, 15)
  TEST_AVG_N_VI_OP( 534,  vnclip.wi,  1,rd_data_vi+6464, rs2_data+1600, 15)
  TEST_AVG_N_VI_OP( 535,  vnclip.wi,  2,rd_data_vi+6528, rs2_data+1600, 15)
  TEST_AVG_N_VI_OP( 536,  vnclip.wi,  3,rd_data_vi+6592, rs2_data+1600, 15)
  TEST_AVG_N_VI_OP( 537,  vnclip.wi,  0,rd_data_vi+6656, rs2_data+1664, 15)
  TEST_AVG_N_VI_OP( 538,  vnclip.wi,  1,rd_data_vi+6720, rs2_data+1664, 15)
  TEST_AVG_N_VI_OP( 539,  vnclip.wi,  2,rd_data_vi+6784, rs2_data+1664, 15)
  TEST_AVG_N_VI_OP( 540,  vnclip.wi,  3,rd_data_vi+6848, rs2_data+1664, 15)
  TEST_AVG_N_VI_OP( 541,  vnclip.wi,  0,rd_data_vi+6912, rs2_data+1728, 15)
  TEST_AVG_N_VI_OP( 542,  vnclip.wi,  1,rd_data_vi+6976, rs2_data+1728, 15)
  TEST_AVG_N_VI_OP( 543,  vnclip.wi,  2,rd_data_vi+7040, rs2_data+1728, 15)
  TEST_AVG_N_VI_OP( 544,  vnclip.wi,  3,rd_data_vi+7104, rs2_data+1728, 15)
  TEST_AVG_N_VI_OP( 545,  vnclip.wi,  0,rd_data_vi+7168, rs2_data+1792, 15)
  TEST_AVG_N_VI_OP( 546,  vnclip.wi,  1,rd_data_vi+7232, rs2_data+1792, 15)
  TEST_AVG_N_VI_OP( 547,  vnclip.wi,  2,rd_data_vi+7296, rs2_data+1792, 15)
  TEST_AVG_N_VI_OP( 548,  vnclip.wi,  3,rd_data_vi+7360, rs2_data+1792, 15)
  TEST_AVG_N_VI_OP( 549,  vnclip.wi,  0,rd_data_vi+7424, rs2_data+1856, 15)
  TEST_AVG_N_VI_OP( 550,  vnclip.wi,  1,rd_data_vi+7488, rs2_data+1856, 15)
  TEST_AVG_N_VI_OP( 551,  vnclip.wi,  2,rd_data_vi+7552, rs2_data+1856, 15)
  TEST_AVG_N_VI_OP( 552,  vnclip.wi,  3,rd_data_vi+7616, rs2_data+1856, 15)
  TEST_AVG_N_VI_OP( 553,  vnclip.wi,  0,rd_data_vi+7680, rs2_data+1920, 15)
  TEST_AVG_N_VI_OP( 554,  vnclip.wi,  1,rd_data_vi+7744, rs2_data+1920, 15)
  TEST_AVG_N_VI_OP( 555,  vnclip.wi,  2,rd_data_vi+7808, rs2_data+1920, 15)
  TEST_AVG_N_VI_OP( 556,  vnclip.wi,  3,rd_data_vi+7872, rs2_data+1920, 15)
  TEST_AVG_N_VI_OP( 557,  vnclip.wi,  0,rd_data_vi+7936, rs2_data+1984, 15)
  TEST_AVG_N_VI_OP( 558,  vnclip.wi,  1,rd_data_vi+8000, rs2_data+1984, 15)
  TEST_AVG_N_VI_OP( 559,  vnclip.wi,  2,rd_data_vi+8064, rs2_data+1984, 15)
  TEST_AVG_N_VI_OP( 560,  vnclip.wi,  3,rd_data_vi+8128, rs2_data+1984, 15)
  TEST_AVG_N_VI_OP( 561,  vnclip.wi,  0,rd_data_vi+8192, rs2_data+2048, 15)
  TEST_AVG_N_VI_OP( 562,  vnclip.wi,  1,rd_data_vi+8256, rs2_data+2048, 15)
  TEST_AVG_N_VI_OP( 563,  vnclip.wi,  2,rd_data_vi+8320, rs2_data+2048, 15)
  TEST_AVG_N_VI_OP( 564,  vnclip.wi,  3,rd_data_vi+8384, rs2_data+2048, 15)
  TEST_AVG_N_VI_OP( 565,  vnclip.wi,  0,rd_data_vi+8448, rs2_data+2112, 15)
  TEST_AVG_N_VI_OP( 566,  vnclip.wi,  1,rd_data_vi+8512, rs2_data+2112, 15)
  TEST_AVG_N_VI_OP( 567,  vnclip.wi,  2,rd_data_vi+8576, rs2_data+2112, 15)
  TEST_AVG_N_VI_OP( 568,  vnclip.wi,  3,rd_data_vi+8640, rs2_data+2112, 15)
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
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xefffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xefffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xefffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xefffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000010
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000010
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000010
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000010
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000020
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000200
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000020
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000200
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000020
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000200
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000020
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000200
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000008
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000080
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000008
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000080
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000008
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000080
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000008
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000080
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4af
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff4af
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00002d41
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00002d41
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00002d41
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00002d41
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002d41
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002d41
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002d41
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002d41
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x05555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x05555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x05555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x05555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x06666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0ccccccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000019a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000019a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000199
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000199
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000002d4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000002d4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000002d4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000002d5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000002d4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x01555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000002d4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x01555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000002d4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x01555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000002d5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x01555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xefffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xefffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xefffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfeffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xefffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000010
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000010
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000010
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000010
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000010
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000010
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000010
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfeffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xefffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000010
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000020
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000200
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000020
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000200
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000020
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000200
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000020
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000200
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00002000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002d41
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002d41
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002d41
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002d41
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x05555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x05555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x05555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x05555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x05555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x05555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x05555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x05555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x06666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0ccccccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000019a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000019a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000019a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000019a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000199
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000199
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000199
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000199
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000002d4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000002d4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000002d4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000002d4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000002d4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000002d4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000002d5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000002d5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000002d4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x01555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000002d4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x01555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000002d4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x01555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000002d5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x01555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf

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
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf

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
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffe0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffe0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffdf
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffdf
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffe0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffe00
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffe000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffe0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffe00
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffe000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffdf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffdff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffdfff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffdf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffdff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffdfff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffe00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffe000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffe00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffe000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffdff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffdfff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffdff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffdfff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000020
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000020
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000020
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000020
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00002000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00002000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00002000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00002000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006667
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006667
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006667
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006667
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff5555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff5555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000cccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000cccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000cccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000cccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000cccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000cccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000cccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000cccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000cccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000cccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000cccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000cccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000cccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000cccd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000cccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf

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
    

#----------------------------------------------------------------------------- 
    # vnclipu.S
    #-----------------------------------------------------------------------------
    #
    # Test vnclipu instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vnclipu)
    
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
  TEST_AVG_N_VV_OP( 1,  vnclipu.wv, 0,rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP( 2,  vnclipu.wv, 1,rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP( 3,  vnclipu.wv, 2,rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP( 4,  vnclipu.wv, 3,rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP( 5,  vnclipu.wv, 0,rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP( 6,  vnclipu.wv, 1,rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP( 7,  vnclipu.wv, 2,rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP( 8,  vnclipu.wv, 3,rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP( 9,  vnclipu.wv, 0,rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP( 10,  vnclipu.wv, 1,rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP( 11,  vnclipu.wv, 2,rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP( 12,  vnclipu.wv, 3,rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP( 13,  vnclipu.wv, 0,rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP( 14,  vnclipu.wv, 1,rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP( 15,  vnclipu.wv, 2,rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP( 16,  vnclipu.wv, 3,rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP( 17,  vnclipu.wv, 0,rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP( 18,  vnclipu.wv, 1,rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP( 19,  vnclipu.wv, 2,rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP( 20,  vnclipu.wv, 3,rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP( 21,  vnclipu.wv, 0,rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP( 22,  vnclipu.wv, 1,rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP( 23,  vnclipu.wv, 2,rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP( 24,  vnclipu.wv, 3,rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP( 25,  vnclipu.wv, 0,rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP( 26,  vnclipu.wv, 1,rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP( 27,  vnclipu.wv, 2,rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP( 28,  vnclipu.wv, 3,rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP( 29,  vnclipu.wv, 0,rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP( 30,  vnclipu.wv, 1,rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP( 31,  vnclipu.wv, 2,rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP( 32,  vnclipu.wv, 3,rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP( 33,  vnclipu.wv, 0,rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP( 34,  vnclipu.wv, 1,rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP( 35,  vnclipu.wv, 2,rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP( 36,  vnclipu.wv, 3,rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP( 37,  vnclipu.wv, 0,rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP( 38,  vnclipu.wv, 1,rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP( 39,  vnclipu.wv, 2,rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP( 40,  vnclipu.wv, 3,rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP( 41,  vnclipu.wv, 0,rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP( 42,  vnclipu.wv, 1,rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP( 43,  vnclipu.wv, 2,rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP( 44,  vnclipu.wv, 3,rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP( 45,  vnclipu.wv, 0,rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP( 46,  vnclipu.wv, 1,rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP( 47,  vnclipu.wv, 2,rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP( 48,  vnclipu.wv, 3,rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP( 49,  vnclipu.wv, 0,rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP( 50,  vnclipu.wv, 1,rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP( 51,  vnclipu.wv, 2,rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP( 52,  vnclipu.wv, 3,rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP( 53,  vnclipu.wv, 0,rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP( 54,  vnclipu.wv, 1,rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP( 55,  vnclipu.wv, 2,rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP( 56,  vnclipu.wv, 3,rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP( 57,  vnclipu.wv, 0,rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP( 58,  vnclipu.wv, 1,rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP( 59,  vnclipu.wv, 2,rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP( 60,  vnclipu.wv, 3,rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP( 61,  vnclipu.wv, 0,rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP( 62,  vnclipu.wv, 1,rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP( 63,  vnclipu.wv, 2,rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP( 64,  vnclipu.wv, 3,rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP( 65,  vnclipu.wv, 0,rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP( 66,  vnclipu.wv, 1,rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP( 67,  vnclipu.wv, 2,rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP( 68,  vnclipu.wv, 3,rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP( 69,  vnclipu.wv, 0,rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP( 70,  vnclipu.wv, 1,rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP( 71,  vnclipu.wv, 2,rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP( 72,  vnclipu.wv, 3,rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP( 73,  vnclipu.wv, 0,rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP( 74,  vnclipu.wv, 1,rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP( 75,  vnclipu.wv, 2,rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP( 76,  vnclipu.wv, 3,rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP( 77,  vnclipu.wv, 0,rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP( 78,  vnclipu.wv, 1,rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP( 79,  vnclipu.wv, 2,rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP( 80,  vnclipu.wv, 3,rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP( 81,  vnclipu.wv, 0,rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP( 82,  vnclipu.wv, 1,rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP( 83,  vnclipu.wv, 2,rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP( 84,  vnclipu.wv, 3,rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP( 85,  vnclipu.wv, 0,rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP( 86,  vnclipu.wv, 1,rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP( 87,  vnclipu.wv, 2,rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP( 88,  vnclipu.wv, 3,rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP( 89,  vnclipu.wv, 0,rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP( 90,  vnclipu.wv, 1,rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP( 91,  vnclipu.wv, 2,rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP( 92,  vnclipu.wv, 3,rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP( 93,  vnclipu.wv, 0,rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP( 94,  vnclipu.wv, 1,rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP( 95,  vnclipu.wv, 2,rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP( 96,  vnclipu.wv, 3,rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP( 97,  vnclipu.wv, 0,rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP( 98,  vnclipu.wv, 1,rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP( 99,  vnclipu.wv, 2,rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP( 100,  vnclipu.wv, 3,rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP( 101,  vnclipu.wv, 0,rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP( 102,  vnclipu.wv, 1,rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP( 103,  vnclipu.wv, 2,rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP( 104,  vnclipu.wv, 3,rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP( 105,  vnclipu.wv, 0,rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP( 106,  vnclipu.wv, 1,rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP( 107,  vnclipu.wv, 2,rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP( 108,  vnclipu.wv, 3,rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP( 109,  vnclipu.wv, 0,rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP( 110,  vnclipu.wv, 1,rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP( 111,  vnclipu.wv, 2,rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP( 112,  vnclipu.wv, 3,rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP( 113,  vnclipu.wv, 0,rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP( 114,  vnclipu.wv, 1,rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP( 115,  vnclipu.wv, 2,rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP( 116,  vnclipu.wv, 3,rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP( 117,  vnclipu.wv, 0,rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP( 118,  vnclipu.wv, 1,rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP( 119,  vnclipu.wv, 2,rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP( 120,  vnclipu.wv, 3,rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP( 121,  vnclipu.wv, 0,rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP( 122,  vnclipu.wv, 1,rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP( 123,  vnclipu.wv, 2,rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP( 124,  vnclipu.wv, 3,rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP( 125,  vnclipu.wv, 0,rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP( 126,  vnclipu.wv, 1,rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP( 127,  vnclipu.wv, 2,rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP( 128,  vnclipu.wv, 3,rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP( 129,  vnclipu.wv, 0,rd_data_vv+4096, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP( 130,  vnclipu.wv, 1,rd_data_vv+4128, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP( 131,  vnclipu.wv, 2,rd_data_vv+4160, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP( 132,  vnclipu.wv, 3,rd_data_vv+4192, rs2_data+1024, rs1_data+1024)
  TEST_AVG_N_VV_OP( 133,  vnclipu.wv, 0,rd_data_vv+4224, rs2_data+1056, rs1_data+1056)
  TEST_AVG_N_VV_OP( 134,  vnclipu.wv, 1,rd_data_vv+4256, rs2_data+1056, rs1_data+1056)
  TEST_AVG_N_VV_OP( 135,  vnclipu.wv, 2,rd_data_vv+4288, rs2_data+1056, rs1_data+1056)
  TEST_AVG_N_VV_OP( 136,  vnclipu.wv, 3,rd_data_vv+4320, rs2_data+1056, rs1_data+1056)
  TEST_AVG_N_VV_OP( 137,  vnclipu.wv, 0,rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP( 138,  vnclipu.wv, 1,rd_data_vv+4384, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP( 139,  vnclipu.wv, 2,rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP( 140,  vnclipu.wv, 3,rd_data_vv+4448, rs2_data+1088, rs1_data+1088)
  TEST_AVG_N_VV_OP( 141,  vnclipu.wv, 0,rd_data_vv+4480, rs2_data+1120, rs1_data+1120)
  TEST_AVG_N_VV_OP( 142,  vnclipu.wv, 1,rd_data_vv+4512, rs2_data+1120, rs1_data+1120)
  TEST_AVG_N_VV_OP( 143,  vnclipu.wv, 2,rd_data_vv+4544, rs2_data+1120, rs1_data+1120)
  TEST_AVG_N_VV_OP( 144,  vnclipu.wv, 3,rd_data_vv+4576, rs2_data+1120, rs1_data+1120)
  TEST_AVG_N_VV_OP( 145,  vnclipu.wv, 0,rd_data_vv+4608, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP( 146,  vnclipu.wv, 1,rd_data_vv+4640, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP( 147,  vnclipu.wv, 2,rd_data_vv+4672, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP( 148,  vnclipu.wv, 3,rd_data_vv+4704, rs2_data+1152, rs1_data+1152)
  TEST_AVG_N_VV_OP( 149,  vnclipu.wv, 0,rd_data_vv+4736, rs2_data+1184, rs1_data+1184)
  TEST_AVG_N_VV_OP( 150,  vnclipu.wv, 1,rd_data_vv+4768, rs2_data+1184, rs1_data+1184)
  TEST_AVG_N_VV_OP( 151,  vnclipu.wv, 2,rd_data_vv+4800, rs2_data+1184, rs1_data+1184)
  TEST_AVG_N_VV_OP( 152,  vnclipu.wv, 3,rd_data_vv+4832, rs2_data+1184, rs1_data+1184)
  TEST_AVG_N_VV_OP( 153,  vnclipu.wv, 0,rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP( 154,  vnclipu.wv, 1,rd_data_vv+4896, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP( 155,  vnclipu.wv, 2,rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP( 156,  vnclipu.wv, 3,rd_data_vv+4960, rs2_data+1216, rs1_data+1216)
  TEST_AVG_N_VV_OP( 157,  vnclipu.wv, 0,rd_data_vv+4992, rs2_data+1248, rs1_data+1248)
  TEST_AVG_N_VV_OP( 158,  vnclipu.wv, 1,rd_data_vv+5024, rs2_data+1248, rs1_data+1248)
  TEST_AVG_N_VV_OP( 159,  vnclipu.wv, 2,rd_data_vv+5056, rs2_data+1248, rs1_data+1248)
  TEST_AVG_N_VV_OP( 160,  vnclipu.wv, 3,rd_data_vv+5088, rs2_data+1248, rs1_data+1248)
  TEST_AVG_N_VV_OP( 161,  vnclipu.wv, 0,rd_data_vv+5120, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP( 162,  vnclipu.wv, 1,rd_data_vv+5152, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP( 163,  vnclipu.wv, 2,rd_data_vv+5184, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP( 164,  vnclipu.wv, 3,rd_data_vv+5216, rs2_data+1280, rs1_data+1280)
  TEST_AVG_N_VV_OP( 165,  vnclipu.wv, 0,rd_data_vv+5248, rs2_data+1312, rs1_data+1312)
  TEST_AVG_N_VV_OP( 166,  vnclipu.wv, 1,rd_data_vv+5280, rs2_data+1312, rs1_data+1312)
  TEST_AVG_N_VV_OP( 167,  vnclipu.wv, 2,rd_data_vv+5312, rs2_data+1312, rs1_data+1312)
  TEST_AVG_N_VV_OP( 168,  vnclipu.wv, 3,rd_data_vv+5344, rs2_data+1312, rs1_data+1312)
  TEST_AVG_N_VV_OP( 169,  vnclipu.wv, 0,rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP( 170,  vnclipu.wv, 1,rd_data_vv+5408, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP( 171,  vnclipu.wv, 2,rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP( 172,  vnclipu.wv, 3,rd_data_vv+5472, rs2_data+1344, rs1_data+1344)
  TEST_AVG_N_VV_OP( 173,  vnclipu.wv, 0,rd_data_vv+5504, rs2_data+1376, rs1_data+1376)
  TEST_AVG_N_VV_OP( 174,  vnclipu.wv, 1,rd_data_vv+5536, rs2_data+1376, rs1_data+1376)
  TEST_AVG_N_VV_OP( 175,  vnclipu.wv, 2,rd_data_vv+5568, rs2_data+1376, rs1_data+1376)
  TEST_AVG_N_VV_OP( 176,  vnclipu.wv, 3,rd_data_vv+5600, rs2_data+1376, rs1_data+1376)
  TEST_AVG_N_VV_OP( 177,  vnclipu.wv, 0,rd_data_vv+5632, rs2_data+1408, rs1_data+1408)
  TEST_AVG_N_VV_OP( 178,  vnclipu.wv, 1,rd_data_vv+5664, rs2_data+1408, rs1_data+1408)
  TEST_AVG_N_VV_OP( 179,  vnclipu.wv, 2,rd_data_vv+5696, rs2_data+1408, rs1_data+1408)
  TEST_AVG_N_VV_OP( 180,  vnclipu.wv, 3,rd_data_vv+5728, rs2_data+1408, rs1_data+1408)
  TEST_AVG_N_VV_OP( 181,  vnclipu.wv, 0,rd_data_vv+5760, rs2_data+1440, rs1_data+1440)
  TEST_AVG_N_VV_OP( 182,  vnclipu.wv, 1,rd_data_vv+5792, rs2_data+1440, rs1_data+1440)
  TEST_AVG_N_VV_OP( 183,  vnclipu.wv, 2,rd_data_vv+5824, rs2_data+1440, rs1_data+1440)
  TEST_AVG_N_VV_OP( 184,  vnclipu.wv, 3,rd_data_vv+5856, rs2_data+1440, rs1_data+1440)
  TEST_AVG_N_VV_OP( 185,  vnclipu.wv, 0,rd_data_vv+5888, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP( 186,  vnclipu.wv, 1,rd_data_vv+5920, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP( 187,  vnclipu.wv, 2,rd_data_vv+5952, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP( 188,  vnclipu.wv, 3,rd_data_vv+5984, rs2_data+1472, rs1_data+1472)
  TEST_AVG_N_VV_OP( 189,  vnclipu.wv, 0,rd_data_vv+6016, rs2_data+1504, rs1_data+1504)
  TEST_AVG_N_VV_OP( 190,  vnclipu.wv, 1,rd_data_vv+6048, rs2_data+1504, rs1_data+1504)
  TEST_AVG_N_VV_OP( 191,  vnclipu.wv, 2,rd_data_vv+6080, rs2_data+1504, rs1_data+1504)
  TEST_AVG_N_VV_OP( 192,  vnclipu.wv, 3,rd_data_vv+6112, rs2_data+1504, rs1_data+1504)
  TEST_AVG_N_VV_OP( 193,  vnclipu.wv, 0,rd_data_vv+6144, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP( 194,  vnclipu.wv, 1,rd_data_vv+6176, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP( 195,  vnclipu.wv, 2,rd_data_vv+6208, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP( 196,  vnclipu.wv, 3,rd_data_vv+6240, rs2_data+1536, rs1_data+1536)
  TEST_AVG_N_VV_OP( 197,  vnclipu.wv, 0,rd_data_vv+6272, rs2_data+1568, rs1_data+1568)
  TEST_AVG_N_VV_OP( 198,  vnclipu.wv, 1,rd_data_vv+6304, rs2_data+1568, rs1_data+1568)
  TEST_AVG_N_VV_OP( 199,  vnclipu.wv, 2,rd_data_vv+6336, rs2_data+1568, rs1_data+1568)
  TEST_AVG_N_VV_OP( 200,  vnclipu.wv, 3,rd_data_vv+6368, rs2_data+1568, rs1_data+1568)
  TEST_AVG_N_VV_OP( 201,  vnclipu.wv, 0,rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP( 202,  vnclipu.wv, 1,rd_data_vv+6432, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP( 203,  vnclipu.wv, 2,rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP( 204,  vnclipu.wv, 3,rd_data_vv+6496, rs2_data+1600, rs1_data+1600)
  TEST_AVG_N_VV_OP( 205,  vnclipu.wv, 0,rd_data_vv+6528, rs2_data+1632, rs1_data+1632)
  TEST_AVG_N_VV_OP( 206,  vnclipu.wv, 1,rd_data_vv+6560, rs2_data+1632, rs1_data+1632)
  TEST_AVG_N_VV_OP( 207,  vnclipu.wv, 2,rd_data_vv+6592, rs2_data+1632, rs1_data+1632)
  TEST_AVG_N_VV_OP( 208,  vnclipu.wv, 3,rd_data_vv+6624, rs2_data+1632, rs1_data+1632)
  TEST_AVG_N_VV_OP( 209,  vnclipu.wv, 0,rd_data_vv+6656, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP( 210,  vnclipu.wv, 1,rd_data_vv+6688, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP( 211,  vnclipu.wv, 2,rd_data_vv+6720, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP( 212,  vnclipu.wv, 3,rd_data_vv+6752, rs2_data+1664, rs1_data+1664)
  TEST_AVG_N_VV_OP( 213,  vnclipu.wv, 0,rd_data_vv+6784, rs2_data+1696, rs1_data+1696)
  TEST_AVG_N_VV_OP( 214,  vnclipu.wv, 1,rd_data_vv+6816, rs2_data+1696, rs1_data+1696)
  TEST_AVG_N_VV_OP( 215,  vnclipu.wv, 2,rd_data_vv+6848, rs2_data+1696, rs1_data+1696)
  TEST_AVG_N_VV_OP( 216,  vnclipu.wv, 3,rd_data_vv+6880, rs2_data+1696, rs1_data+1696)
  TEST_AVG_N_VV_OP( 217,  vnclipu.wv, 0,rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP( 218,  vnclipu.wv, 1,rd_data_vv+6944, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP( 219,  vnclipu.wv, 2,rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP( 220,  vnclipu.wv, 3,rd_data_vv+7008, rs2_data+1728, rs1_data+1728)
  TEST_AVG_N_VV_OP( 221,  vnclipu.wv, 0,rd_data_vv+7040, rs2_data+1760, rs1_data+1760)
  TEST_AVG_N_VV_OP( 222,  vnclipu.wv, 1,rd_data_vv+7072, rs2_data+1760, rs1_data+1760)
  TEST_AVG_N_VV_OP( 223,  vnclipu.wv, 2,rd_data_vv+7104, rs2_data+1760, rs1_data+1760)
  TEST_AVG_N_VV_OP( 224,  vnclipu.wv, 3,rd_data_vv+7136, rs2_data+1760, rs1_data+1760)
  TEST_AVG_N_VV_OP( 225,  vnclipu.wv, 0,rd_data_vv+7168, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP( 226,  vnclipu.wv, 1,rd_data_vv+7200, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP( 227,  vnclipu.wv, 2,rd_data_vv+7232, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP( 228,  vnclipu.wv, 3,rd_data_vv+7264, rs2_data+1792, rs1_data+1792)
  TEST_AVG_N_VV_OP( 229,  vnclipu.wv, 0,rd_data_vv+7296, rs2_data+1824, rs1_data+1824)
  TEST_AVG_N_VV_OP( 230,  vnclipu.wv, 1,rd_data_vv+7328, rs2_data+1824, rs1_data+1824)
  TEST_AVG_N_VV_OP( 231,  vnclipu.wv, 2,rd_data_vv+7360, rs2_data+1824, rs1_data+1824)
  TEST_AVG_N_VV_OP( 232,  vnclipu.wv, 3,rd_data_vv+7392, rs2_data+1824, rs1_data+1824)
  TEST_AVG_N_VV_OP( 233,  vnclipu.wv, 0,rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP( 234,  vnclipu.wv, 1,rd_data_vv+7456, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP( 235,  vnclipu.wv, 2,rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP( 236,  vnclipu.wv, 3,rd_data_vv+7520, rs2_data+1856, rs1_data+1856)
  TEST_AVG_N_VV_OP( 237,  vnclipu.wv, 0,rd_data_vv+7552, rs2_data+1888, rs1_data+1888)
  TEST_AVG_N_VV_OP( 238,  vnclipu.wv, 1,rd_data_vv+7584, rs2_data+1888, rs1_data+1888)
  TEST_AVG_N_VV_OP( 239,  vnclipu.wv, 2,rd_data_vv+7616, rs2_data+1888, rs1_data+1888)
  TEST_AVG_N_VV_OP( 240,  vnclipu.wv, 3,rd_data_vv+7648, rs2_data+1888, rs1_data+1888)
  TEST_AVG_N_VV_OP( 241,  vnclipu.wv, 0,rd_data_vv+7680, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP( 242,  vnclipu.wv, 1,rd_data_vv+7712, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP( 243,  vnclipu.wv, 2,rd_data_vv+7744, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP( 244,  vnclipu.wv, 3,rd_data_vv+7776, rs2_data+1920, rs1_data+1920)
  TEST_AVG_N_VV_OP( 245,  vnclipu.wv, 0,rd_data_vv+7808, rs2_data+1952, rs1_data+1952)
  TEST_AVG_N_VV_OP( 246,  vnclipu.wv, 1,rd_data_vv+7840, rs2_data+1952, rs1_data+1952)
  TEST_AVG_N_VV_OP( 247,  vnclipu.wv, 2,rd_data_vv+7872, rs2_data+1952, rs1_data+1952)
  TEST_AVG_N_VV_OP( 248,  vnclipu.wv, 3,rd_data_vv+7904, rs2_data+1952, rs1_data+1952)
  TEST_AVG_N_VV_OP( 249,  vnclipu.wv, 0,rd_data_vv+7936, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP( 250,  vnclipu.wv, 1,rd_data_vv+7968, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP( 251,  vnclipu.wv, 2,rd_data_vv+8000, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP( 252,  vnclipu.wv, 3,rd_data_vv+8032, rs2_data+1984, rs1_data+1984)
  TEST_AVG_N_VV_OP( 253,  vnclipu.wv, 0,rd_data_vv+8064, rs2_data+2016, rs1_data+2016)
  TEST_AVG_N_VV_OP( 254,  vnclipu.wv, 1,rd_data_vv+8096, rs2_data+2016, rs1_data+2016)
  TEST_AVG_N_VV_OP( 255,  vnclipu.wv, 2,rd_data_vv+8128, rs2_data+2016, rs1_data+2016)
  TEST_AVG_N_VV_OP( 256,  vnclipu.wv, 3,rd_data_vv+8160, rs2_data+2016, rs1_data+2016)
  TEST_AVG_N_VV_OP( 257,  vnclipu.wv, 0,rd_data_vv+8192, rs2_data+2048, rs1_data+2048)
  TEST_AVG_N_VV_OP( 258,  vnclipu.wv, 1,rd_data_vv+8224, rs2_data+2048, rs1_data+2048)
  TEST_AVG_N_VV_OP( 259,  vnclipu.wv, 2,rd_data_vv+8256, rs2_data+2048, rs1_data+2048)
  TEST_AVG_N_VV_OP( 260,  vnclipu.wv, 3,rd_data_vv+8288, rs2_data+2048, rs1_data+2048)
  TEST_AVG_N_VV_OP( 261,  vnclipu.wv, 0,rd_data_vv+8320, rs2_data+2080, rs1_data+2080)
  TEST_AVG_N_VV_OP( 262,  vnclipu.wv, 1,rd_data_vv+8352, rs2_data+2080, rs1_data+2080)
  TEST_AVG_N_VV_OP( 263,  vnclipu.wv, 2,rd_data_vv+8384, rs2_data+2080, rs1_data+2080)
  TEST_AVG_N_VV_OP( 264,  vnclipu.wv, 3,rd_data_vv+8416, rs2_data+2080, rs1_data+2080)
  TEST_AVG_N_VV_OP( 265,  vnclipu.wv, 0,rd_data_vv+8448, rs2_data+2112, rs1_data+2112)
  TEST_AVG_N_VV_OP( 266,  vnclipu.wv, 1,rd_data_vv+8480, rs2_data+2112, rs1_data+2112)
  TEST_AVG_N_VV_OP( 267,  vnclipu.wv, 2,rd_data_vv+8512, rs2_data+2112, rs1_data+2112)
  TEST_AVG_N_VV_OP( 268,  vnclipu.wv, 3,rd_data_vv+8544, rs2_data+2112, rs1_data+2112)
  TEST_AVG_N_VV_OP( 269,  vnclipu.wv, 0,rd_data_vv+8576, rs2_data+2144, rs1_data+2144)
  TEST_AVG_N_VV_OP( 270,  vnclipu.wv, 1,rd_data_vv+8608, rs2_data+2144, rs1_data+2144)
  TEST_AVG_N_VV_OP( 271,  vnclipu.wv, 2,rd_data_vv+8640, rs2_data+2144, rs1_data+2144)
  TEST_AVG_N_VV_OP( 272,  vnclipu.wv, 3,rd_data_vv+8672, rs2_data+2144, rs1_data+2144)
  TEST_AVG_N_VV_OP_rd1( 273,  vnclipu.wv, 0,rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_12( 274,  vnclipu.wv,  0,rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_rd1( 275,  vnclipu.wv, 1,rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_12( 276,  vnclipu.wv,  1,rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_rd1( 277,  vnclipu.wv, 2,rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_12( 278,  vnclipu.wv,  2,rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_rd1( 279,  vnclipu.wv, 3,rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_12( 280,  vnclipu.wv,  3,rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_N_VV_OP_rd2( 281,  vnclipu.wv, 0,rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_13( 282,  vnclipu.wv,  0,rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_rd2( 283,  vnclipu.wv, 1,rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_13( 284,  vnclipu.wv,  1,rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_rd2( 285,  vnclipu.wv, 2,rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_13( 286,  vnclipu.wv,  2,rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_rd2( 287,  vnclipu.wv, 3,rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_13( 288,  vnclipu.wv,  3,rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_N_VV_OP_rd3( 289,  vnclipu.wv, 0,rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_14( 290,  vnclipu.wv,  0,rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_rd3( 291,  vnclipu.wv, 1,rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_14( 292,  vnclipu.wv,  1,rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_rd3( 293,  vnclipu.wv, 2,rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_14( 294,  vnclipu.wv,  2,rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_rd3( 295,  vnclipu.wv, 3,rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_14( 296,  vnclipu.wv,  3,rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_N_VV_OP_rd4( 297,  vnclipu.wv, 0,rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_15( 298,  vnclipu.wv,  0,rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_rd4( 299,  vnclipu.wv, 1,rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_15( 300,  vnclipu.wv,  1,rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_rd4( 301,  vnclipu.wv, 2,rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_15( 302,  vnclipu.wv,  2,rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_rd4( 303,  vnclipu.wv, 3,rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_15( 304,  vnclipu.wv,  3,rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_N_VV_OP_rd5( 305,  vnclipu.wv, 0,rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_16( 306,  vnclipu.wv,  0,rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_rd5( 307,  vnclipu.wv, 1,rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_16( 308,  vnclipu.wv,  1,rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_rd5( 309,  vnclipu.wv, 2,rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_16( 310,  vnclipu.wv,  2,rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_rd5( 311,  vnclipu.wv, 3,rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_16( 312,  vnclipu.wv,  3,rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_N_VV_OP_rd6( 313,  vnclipu.wv, 0,rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_17( 314,  vnclipu.wv,  0,rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_rd6( 315,  vnclipu.wv, 1,rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_17( 316,  vnclipu.wv,  1,rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_rd6( 317,  vnclipu.wv, 2,rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_17( 318,  vnclipu.wv,  2,rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_rd6( 319,  vnclipu.wv, 3,rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_17( 320,  vnclipu.wv,  3,rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_N_VV_OP_rd7( 321,  vnclipu.wv, 0,rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_rd7( 322,  vnclipu.wv, 1,rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_rd7( 323,  vnclipu.wv, 2,rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_rd7( 324,  vnclipu.wv, 3,rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_N_VV_OP_19( 325,  vnclipu.wv,  0,rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP_19( 326,  vnclipu.wv,  1,rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP_19( 327,  vnclipu.wv,  2,rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP_19( 328,  vnclipu.wv,  3,rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_N_VV_OP_rd9( 329,  vnclipu.wv, 0,rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_110( 330,  vnclipu.wv,  0,rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_rd9( 331,  vnclipu.wv, 1,rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_110( 332,  vnclipu.wv,  1,rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_rd9( 333,  vnclipu.wv, 2,rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_110( 334,  vnclipu.wv,  2,rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_rd9( 335,  vnclipu.wv, 3,rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_110( 336,  vnclipu.wv,  3,rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_N_VV_OP_rd10( 337,  vnclipu.wv, 0,rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_111( 338,  vnclipu.wv,  0,rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_rd10( 339,  vnclipu.wv, 1,rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_111( 340,  vnclipu.wv,  1,rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_rd10( 341,  vnclipu.wv, 2,rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_111( 342,  vnclipu.wv,  2,rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_rd10( 343,  vnclipu.wv, 3,rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_111( 344,  vnclipu.wv,  3,rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_N_VV_OP_rd11( 345,  vnclipu.wv, 0,rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_112( 346,  vnclipu.wv,  0,rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_rd11( 347,  vnclipu.wv, 1,rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_112( 348,  vnclipu.wv,  1,rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_rd11( 349,  vnclipu.wv, 2,rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_112( 350,  vnclipu.wv,  2,rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_rd11( 351,  vnclipu.wv, 3,rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_112( 352,  vnclipu.wv,  3,rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_N_VV_OP_rd12( 353,  vnclipu.wv, 0,rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_113( 354,  vnclipu.wv,  0,rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_rd12( 355,  vnclipu.wv, 1,rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_113( 356,  vnclipu.wv,  1,rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_rd12( 357,  vnclipu.wv, 2,rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_113( 358,  vnclipu.wv,  2,rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_rd12( 359,  vnclipu.wv, 3,rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_113( 360,  vnclipu.wv,  3,rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_N_VV_OP_rd13( 361,  vnclipu.wv, 0,rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_114( 362,  vnclipu.wv,  0,rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_rd13( 363,  vnclipu.wv, 1,rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_114( 364,  vnclipu.wv,  1,rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_rd13( 365,  vnclipu.wv, 2,rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_114( 366,  vnclipu.wv,  2,rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_rd13( 367,  vnclipu.wv, 3,rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_114( 368,  vnclipu.wv,  3,rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_N_VV_OP_rd14( 369,  vnclipu.wv, 0,rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_115( 370,  vnclipu.wv,  0,rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_rd14( 371,  vnclipu.wv, 1,rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_115( 372,  vnclipu.wv,  1,rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_rd14( 373,  vnclipu.wv, 2,rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_115( 374,  vnclipu.wv,  2,rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_rd14( 375,  vnclipu.wv, 3,rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_115( 376,  vnclipu.wv,  3,rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_N_VV_OP_rd15( 377,  vnclipu.wv, 0,rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP_rd15( 378,  vnclipu.wv, 1,rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP_rd15( 379,  vnclipu.wv, 2,rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP_rd15( 380,  vnclipu.wv, 3,rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_N_VV_OP_117( 381,  vnclipu.wv,  0,rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP_117( 382,  vnclipu.wv,  1,rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP_117( 383,  vnclipu.wv,  2,rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP_117( 384,  vnclipu.wv,  3,rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_N_VV_OP_rd17( 385,  vnclipu.wv, 0,rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_118( 386,  vnclipu.wv,  0,rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_rd17( 387,  vnclipu.wv, 1,rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_118( 388,  vnclipu.wv,  1,rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_rd17( 389,  vnclipu.wv, 2,rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_118( 390,  vnclipu.wv,  2,rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_rd17( 391,  vnclipu.wv, 3,rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_118( 392,  vnclipu.wv,  3,rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_N_VV_OP_rd18( 393,  vnclipu.wv, 0,rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_119( 394,  vnclipu.wv,  0,rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_rd18( 395,  vnclipu.wv, 1,rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_119( 396,  vnclipu.wv,  1,rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_rd18( 397,  vnclipu.wv, 2,rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_119( 398,  vnclipu.wv,  2,rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_rd18( 399,  vnclipu.wv, 3,rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_119( 400,  vnclipu.wv,  3,rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_N_VV_OP_rd19( 401,  vnclipu.wv, 0,rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_120( 402,  vnclipu.wv,  0,rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_rd19( 403,  vnclipu.wv, 1,rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_120( 404,  vnclipu.wv,  1,rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_rd19( 405,  vnclipu.wv, 2,rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_120( 406,  vnclipu.wv,  2,rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_rd19( 407,  vnclipu.wv, 3,rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_120( 408,  vnclipu.wv,  3,rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_N_VV_OP_rd20( 409,  vnclipu.wv, 0,rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_121( 410,  vnclipu.wv,  0,rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_rd20( 411,  vnclipu.wv, 1,rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_121( 412,  vnclipu.wv,  1,rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_rd20( 413,  vnclipu.wv, 2,rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_121( 414,  vnclipu.wv,  2,rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_rd20( 415,  vnclipu.wv, 3,rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_121( 416,  vnclipu.wv,  3,rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_N_VV_OP_rd21( 417,  vnclipu.wv, 0,rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_122( 418,  vnclipu.wv,  0,rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_rd21( 419,  vnclipu.wv, 1,rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_122( 420,  vnclipu.wv,  1,rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_rd21( 421,  vnclipu.wv, 2,rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_122( 422,  vnclipu.wv,  2,rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_rd21( 423,  vnclipu.wv, 3,rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_122( 424,  vnclipu.wv,  3,rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_N_VV_OP_rd22( 425,  vnclipu.wv, 0,rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_123( 426,  vnclipu.wv,  0,rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_rd22( 427,  vnclipu.wv, 1,rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_123( 428,  vnclipu.wv,  1,rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_rd22( 429,  vnclipu.wv, 2,rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_123( 430,  vnclipu.wv,  2,rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_rd22( 431,  vnclipu.wv, 3,rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_123( 432,  vnclipu.wv,  3,rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_N_VV_OP_rd23( 433,  vnclipu.wv, 0,rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_rd23( 434,  vnclipu.wv, 1,rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_rd23( 435,  vnclipu.wv, 2,rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_rd23( 436,  vnclipu.wv, 3,rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_N_VV_OP_125( 437,  vnclipu.wv,  0,rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP_125( 438,  vnclipu.wv,  1,rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP_125( 439,  vnclipu.wv,  2,rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP_125( 440,  vnclipu.wv,  3,rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_N_VV_OP_rd25( 441,  vnclipu.wv, 0,rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_126( 442,  vnclipu.wv,  0,rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_rd25( 443,  vnclipu.wv, 1,rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_126( 444,  vnclipu.wv,  1,rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_rd25( 445,  vnclipu.wv, 2,rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_126( 446,  vnclipu.wv,  2,rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_rd25( 447,  vnclipu.wv, 3,rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_126( 448,  vnclipu.wv,  3,rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_N_VV_OP_rd26( 449,  vnclipu.wv, 0,rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_127( 450,  vnclipu.wv,  0,rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_rd26( 451,  vnclipu.wv, 1,rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_127( 452,  vnclipu.wv,  1,rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_rd26( 453,  vnclipu.wv, 2,rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_127( 454,  vnclipu.wv,  2,rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_rd26( 455,  vnclipu.wv, 3,rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_127( 456,  vnclipu.wv,  3,rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_N_VV_OP_rd27( 457,  vnclipu.wv, 0,rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_128( 458,  vnclipu.wv,  0,rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_rd27( 459,  vnclipu.wv, 1,rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_128( 460,  vnclipu.wv,  1,rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_rd27( 461,  vnclipu.wv, 2,rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_128( 462,  vnclipu.wv,  2,rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_rd27( 463,  vnclipu.wv, 3,rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_128( 464,  vnclipu.wv,  3,rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_N_VV_OP_rd28( 465,  vnclipu.wv, 0,rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_129( 466,  vnclipu.wv,  0,rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_rd28( 467,  vnclipu.wv, 1,rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_129( 468,  vnclipu.wv,  1,rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_rd28( 469,  vnclipu.wv, 2,rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_129( 470,  vnclipu.wv,  2,rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_rd28( 471,  vnclipu.wv, 3,rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_129( 472,  vnclipu.wv,  3,rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_N_VV_OP_rd29( 473,  vnclipu.wv, 0,rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_130( 474,  vnclipu.wv,  0,rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_rd29( 475,  vnclipu.wv, 1,rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_130( 476,  vnclipu.wv,  1,rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_rd29( 477,  vnclipu.wv, 2,rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_130( 478,  vnclipu.wv,  2,rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_rd29( 479,  vnclipu.wv, 3,rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_130( 480,  vnclipu.wv,  3,rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_N_VV_OP_rd30( 481,  vnclipu.wv, 0,rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_131( 482,  vnclipu.wv,  0,rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_rd30( 483,  vnclipu.wv, 1,rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_131( 484,  vnclipu.wv,  1,rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_rd30( 485,  vnclipu.wv, 2,rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_131( 486,  vnclipu.wv,  2,rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_rd30( 487,  vnclipu.wv, 3,rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_131( 488,  vnclipu.wv,  3,rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_N_VV_OP_rd31( 489,  vnclipu.wv, 0,rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_12( 490,  vnclipu.wv,  0,rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_rd31( 491,  vnclipu.wv, 1,rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_12( 492,  vnclipu.wv,  1,rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_rd31( 493,  vnclipu.wv, 2,rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_12( 494,  vnclipu.wv,  2,rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_rd31( 495,  vnclipu.wv, 3,rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_12( 496,  vnclipu.wv,  3,rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_N_VV_OP_rd1( 497,  vnclipu.wv, 0,rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_13( 498,  vnclipu.wv,  0,rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_rd1( 499,  vnclipu.wv, 1,rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_13( 500,  vnclipu.wv,  1,rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_rd1( 501,  vnclipu.wv, 2,rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_13( 502,  vnclipu.wv,  2,rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_rd1( 503,  vnclipu.wv, 3,rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_N_VV_OP_13( 504,  vnclipu.wv,  3,rd_data_vv+4064, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # WX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_N_VX_OP( 505,  vnclipu.wx,  0,rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 506,  vnclipu.wx,  1,rd_data_vx+32, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 507,  vnclipu.wx,  2,rd_data_vx+64, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 508,  vnclipu.wx,  3,rd_data_vx+96, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 509,  vnclipu.wx,  0,rd_data_vx+128, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 510,  vnclipu.wx,  1,rd_data_vx+160, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 511,  vnclipu.wx,  2,rd_data_vx+192, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 512,  vnclipu.wx,  3,rd_data_vx+224, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 513,  vnclipu.wx,  0,rd_data_vx+256, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 514,  vnclipu.wx,  1,rd_data_vx+288, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 515,  vnclipu.wx,  2,rd_data_vx+320, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 516,  vnclipu.wx,  3,rd_data_vx+352, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 517,  vnclipu.wx,  0,rd_data_vx+384, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 518,  vnclipu.wx,  1,rd_data_vx+416, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 519,  vnclipu.wx,  2,rd_data_vx+448, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 520,  vnclipu.wx,  3,rd_data_vx+480, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 521,  vnclipu.wx,  0,rd_data_vx+512, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 522,  vnclipu.wx,  1,rd_data_vx+544, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 523,  vnclipu.wx,  2,rd_data_vx+576, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 524,  vnclipu.wx,  3,rd_data_vx+608, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 525,  vnclipu.wx,  0,rd_data_vx+640, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 526,  vnclipu.wx,  1,rd_data_vx+672, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 527,  vnclipu.wx,  2,rd_data_vx+704, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 528,  vnclipu.wx,  3,rd_data_vx+736, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 529,  vnclipu.wx,  0,rd_data_vx+768, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 530,  vnclipu.wx,  1,rd_data_vx+800, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 531,  vnclipu.wx,  2,rd_data_vx+832, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 532,  vnclipu.wx,  3,rd_data_vx+864, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 533,  vnclipu.wx,  0,rd_data_vx+896, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 534,  vnclipu.wx,  1,rd_data_vx+928, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 535,  vnclipu.wx,  2,rd_data_vx+960, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 536,  vnclipu.wx,  3,rd_data_vx+992, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 537,  vnclipu.wx,  0,rd_data_vx+1024, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 538,  vnclipu.wx,  1,rd_data_vx+1056, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 539,  vnclipu.wx,  2,rd_data_vx+1088, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 540,  vnclipu.wx,  3,rd_data_vx+1120, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 541,  vnclipu.wx,  0,rd_data_vx+1152, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 542,  vnclipu.wx,  1,rd_data_vx+1184, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 543,  vnclipu.wx,  2,rd_data_vx+1216, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 544,  vnclipu.wx,  3,rd_data_vx+1248, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 545,  vnclipu.wx,  0,rd_data_vx+1280, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 546,  vnclipu.wx,  1,rd_data_vx+1312, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 547,  vnclipu.wx,  2,rd_data_vx+1344, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 548,  vnclipu.wx,  3,rd_data_vx+1376, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 549,  vnclipu.wx,  0,rd_data_vx+1408, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 550,  vnclipu.wx,  1,rd_data_vx+1440, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 551,  vnclipu.wx,  2,rd_data_vx+1472, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 552,  vnclipu.wx,  3,rd_data_vx+1504, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 553,  vnclipu.wx,  0,rd_data_vx+1536, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 554,  vnclipu.wx,  1,rd_data_vx+1568, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 555,  vnclipu.wx,  2,rd_data_vx+1600, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 556,  vnclipu.wx,  3,rd_data_vx+1632, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 557,  vnclipu.wx,  0,rd_data_vx+1664, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 558,  vnclipu.wx,  1,rd_data_vx+1696, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 559,  vnclipu.wx,  2,rd_data_vx+1728, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 560,  vnclipu.wx,  3,rd_data_vx+1760, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 561,  vnclipu.wx,  0,rd_data_vx+1792, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 562,  vnclipu.wx,  1,rd_data_vx+1824, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 563,  vnclipu.wx,  2,rd_data_vx+1856, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 564,  vnclipu.wx,  3,rd_data_vx+1888, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 565,  vnclipu.wx,  0,rd_data_vx+1920, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 566,  vnclipu.wx,  1,rd_data_vx+1952, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 567,  vnclipu.wx,  2,rd_data_vx+1984, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 568,  vnclipu.wx,  3,rd_data_vx+2016, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 569,  vnclipu.wx,  0,rd_data_vx+2048, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 570,  vnclipu.wx,  1,rd_data_vx+2080, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 571,  vnclipu.wx,  2,rd_data_vx+2112, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 572,  vnclipu.wx,  3,rd_data_vx+2144, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 573,  vnclipu.wx,  0,rd_data_vx+2176, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 574,  vnclipu.wx,  1,rd_data_vx+2208, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 575,  vnclipu.wx,  2,rd_data_vx+2240, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 576,  vnclipu.wx,  3,rd_data_vx+2272, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 577,  vnclipu.wx,  0,rd_data_vx+2304, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 578,  vnclipu.wx,  1,rd_data_vx+2336, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 579,  vnclipu.wx,  2,rd_data_vx+2368, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 580,  vnclipu.wx,  3,rd_data_vx+2400, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 581,  vnclipu.wx,  0,rd_data_vx+2432, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 582,  vnclipu.wx,  1,rd_data_vx+2464, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 583,  vnclipu.wx,  2,rd_data_vx+2496, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 584,  vnclipu.wx,  3,rd_data_vx+2528, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 585,  vnclipu.wx,  0,rd_data_vx+2560, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 586,  vnclipu.wx,  1,rd_data_vx+2592, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 587,  vnclipu.wx,  2,rd_data_vx+2624, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 588,  vnclipu.wx,  3,rd_data_vx+2656, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 589,  vnclipu.wx,  0,rd_data_vx+2688, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 590,  vnclipu.wx,  1,rd_data_vx+2720, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 591,  vnclipu.wx,  2,rd_data_vx+2752, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 592,  vnclipu.wx,  3,rd_data_vx+2784, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 593,  vnclipu.wx,  0,rd_data_vx+2816, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 594,  vnclipu.wx,  1,rd_data_vx+2848, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 595,  vnclipu.wx,  2,rd_data_vx+2880, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 596,  vnclipu.wx,  3,rd_data_vx+2912, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 597,  vnclipu.wx,  0,rd_data_vx+2944, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 598,  vnclipu.wx,  1,rd_data_vx+2976, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 599,  vnclipu.wx,  2,rd_data_vx+3008, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 600,  vnclipu.wx,  3,rd_data_vx+3040, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 601,  vnclipu.wx,  0,rd_data_vx+3072, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 602,  vnclipu.wx,  1,rd_data_vx+3104, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 603,  vnclipu.wx,  2,rd_data_vx+3136, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 604,  vnclipu.wx,  3,rd_data_vx+3168, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 605,  vnclipu.wx,  0,rd_data_vx+3200, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 606,  vnclipu.wx,  1,rd_data_vx+3232, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 607,  vnclipu.wx,  2,rd_data_vx+3264, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 608,  vnclipu.wx,  3,rd_data_vx+3296, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 609,  vnclipu.wx,  0,rd_data_vx+3328, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 610,  vnclipu.wx,  1,rd_data_vx+3360, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 611,  vnclipu.wx,  2,rd_data_vx+3392, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 612,  vnclipu.wx,  3,rd_data_vx+3424, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 613,  vnclipu.wx,  0,rd_data_vx+3456, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 614,  vnclipu.wx,  1,rd_data_vx+3488, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 615,  vnclipu.wx,  2,rd_data_vx+3520, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 616,  vnclipu.wx,  3,rd_data_vx+3552, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 617,  vnclipu.wx,  0,rd_data_vx+3584, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 618,  vnclipu.wx,  1,rd_data_vx+3616, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 619,  vnclipu.wx,  2,rd_data_vx+3648, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 620,  vnclipu.wx,  3,rd_data_vx+3680, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 621,  vnclipu.wx,  0,rd_data_vx+3712, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 622,  vnclipu.wx,  1,rd_data_vx+3744, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 623,  vnclipu.wx,  2,rd_data_vx+3776, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 624,  vnclipu.wx,  3,rd_data_vx+3808, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 625,  vnclipu.wx,  0,rd_data_vx+3840, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 626,  vnclipu.wx,  1,rd_data_vx+3872, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 627,  vnclipu.wx,  2,rd_data_vx+3904, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 628,  vnclipu.wx,  3,rd_data_vx+3936, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 629,  vnclipu.wx,  0,rd_data_vx+3968, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 630,  vnclipu.wx,  1,rd_data_vx+4000, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 631,  vnclipu.wx,  2,rd_data_vx+4032, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 632,  vnclipu.wx,  3,rd_data_vx+4064, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 633,  vnclipu.wx,  0,rd_data_vx+4096, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 634,  vnclipu.wx,  1,rd_data_vx+4128, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 635,  vnclipu.wx,  2,rd_data_vx+4160, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 636,  vnclipu.wx,  3,rd_data_vx+4192, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 637,  vnclipu.wx,  0,rd_data_vx+4224, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 638,  vnclipu.wx,  1,rd_data_vx+4256, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 639,  vnclipu.wx,  2,rd_data_vx+4288, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 640,  vnclipu.wx,  3,rd_data_vx+4320, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 641,  vnclipu.wx,  0,rd_data_vx+4352, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 642,  vnclipu.wx,  1,rd_data_vx+4384, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 643,  vnclipu.wx,  2,rd_data_vx+4416, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 644,  vnclipu.wx,  3,rd_data_vx+4448, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 645,  vnclipu.wx,  0,rd_data_vx+4480, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 646,  vnclipu.wx,  1,rd_data_vx+4512, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 647,  vnclipu.wx,  2,rd_data_vx+4544, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 648,  vnclipu.wx,  3,rd_data_vx+4576, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 649,  vnclipu.wx,  0,rd_data_vx+4608, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 650,  vnclipu.wx,  1,rd_data_vx+4640, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 651,  vnclipu.wx,  2,rd_data_vx+4672, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 652,  vnclipu.wx,  3,rd_data_vx+4704, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 653,  vnclipu.wx,  0,rd_data_vx+4736, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 654,  vnclipu.wx,  1,rd_data_vx+4768, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 655,  vnclipu.wx,  2,rd_data_vx+4800, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 656,  vnclipu.wx,  3,rd_data_vx+4832, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 657,  vnclipu.wx,  0,rd_data_vx+4864, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 658,  vnclipu.wx,  1,rd_data_vx+4896, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 659,  vnclipu.wx,  2,rd_data_vx+4928, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 660,  vnclipu.wx,  3,rd_data_vx+4960, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 661,  vnclipu.wx,  0,rd_data_vx+4992, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 662,  vnclipu.wx,  1,rd_data_vx+5024, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 663,  vnclipu.wx,  2,rd_data_vx+5056, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 664,  vnclipu.wx,  3,rd_data_vx+5088, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 665,  vnclipu.wx,  0,rd_data_vx+5120, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 666,  vnclipu.wx,  1,rd_data_vx+5152, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 667,  vnclipu.wx,  2,rd_data_vx+5184, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 668,  vnclipu.wx,  3,rd_data_vx+5216, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 669,  vnclipu.wx,  0,rd_data_vx+5248, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 670,  vnclipu.wx,  1,rd_data_vx+5280, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 671,  vnclipu.wx,  2,rd_data_vx+5312, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 672,  vnclipu.wx,  3,rd_data_vx+5344, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 673,  vnclipu.wx,  0,rd_data_vx+5376, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 674,  vnclipu.wx,  1,rd_data_vx+5408, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 675,  vnclipu.wx,  2,rd_data_vx+5440, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 676,  vnclipu.wx,  3,rd_data_vx+5472, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 677,  vnclipu.wx,  0,rd_data_vx+5504, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 678,  vnclipu.wx,  1,rd_data_vx+5536, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 679,  vnclipu.wx,  2,rd_data_vx+5568, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 680,  vnclipu.wx,  3,rd_data_vx+5600, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 681,  vnclipu.wx,  0,rd_data_vx+5632, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 682,  vnclipu.wx,  1,rd_data_vx+5664, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 683,  vnclipu.wx,  2,rd_data_vx+5696, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 684,  vnclipu.wx,  3,rd_data_vx+5728, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 685,  vnclipu.wx,  0,rd_data_vx+5760, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 686,  vnclipu.wx,  1,rd_data_vx+5792, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 687,  vnclipu.wx,  2,rd_data_vx+5824, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 688,  vnclipu.wx,  3,rd_data_vx+5856, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 689,  vnclipu.wx,  0,rd_data_vx+5888, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 690,  vnclipu.wx,  1,rd_data_vx+5920, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 691,  vnclipu.wx,  2,rd_data_vx+5952, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 692,  vnclipu.wx,  3,rd_data_vx+5984, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 693,  vnclipu.wx,  0,rd_data_vx+6016, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 694,  vnclipu.wx,  1,rd_data_vx+6048, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 695,  vnclipu.wx,  2,rd_data_vx+6080, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 696,  vnclipu.wx,  3,rd_data_vx+6112, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 697,  vnclipu.wx,  0,rd_data_vx+6144, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 698,  vnclipu.wx,  1,rd_data_vx+6176, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 699,  vnclipu.wx,  2,rd_data_vx+6208, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 700,  vnclipu.wx,  3,rd_data_vx+6240, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 701,  vnclipu.wx,  0,rd_data_vx+6272, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 702,  vnclipu.wx,  1,rd_data_vx+6304, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 703,  vnclipu.wx,  2,rd_data_vx+6336, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 704,  vnclipu.wx,  3,rd_data_vx+6368, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 705,  vnclipu.wx,  0,rd_data_vx+6400, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 706,  vnclipu.wx,  1,rd_data_vx+6432, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 707,  vnclipu.wx,  2,rd_data_vx+6464, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 708,  vnclipu.wx,  3,rd_data_vx+6496, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 709,  vnclipu.wx,  0,rd_data_vx+6528, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 710,  vnclipu.wx,  1,rd_data_vx+6560, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 711,  vnclipu.wx,  2,rd_data_vx+6592, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 712,  vnclipu.wx,  3,rd_data_vx+6624, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 713,  vnclipu.wx,  0,rd_data_vx+6656, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 714,  vnclipu.wx,  1,rd_data_vx+6688, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 715,  vnclipu.wx,  2,rd_data_vx+6720, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 716,  vnclipu.wx,  3,rd_data_vx+6752, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 717,  vnclipu.wx,  0,rd_data_vx+6784, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 718,  vnclipu.wx,  1,rd_data_vx+6816, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 719,  vnclipu.wx,  2,rd_data_vx+6848, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 720,  vnclipu.wx,  3,rd_data_vx+6880, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 721,  vnclipu.wx,  0,rd_data_vx+6912, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 722,  vnclipu.wx,  1,rd_data_vx+6944, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 723,  vnclipu.wx,  2,rd_data_vx+6976, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 724,  vnclipu.wx,  3,rd_data_vx+7008, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 725,  vnclipu.wx,  0,rd_data_vx+7040, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 726,  vnclipu.wx,  1,rd_data_vx+7072, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 727,  vnclipu.wx,  2,rd_data_vx+7104, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 728,  vnclipu.wx,  3,rd_data_vx+7136, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 729,  vnclipu.wx,  0,rd_data_vx+7168, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 730,  vnclipu.wx,  1,rd_data_vx+7200, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 731,  vnclipu.wx,  2,rd_data_vx+7232, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 732,  vnclipu.wx,  3,rd_data_vx+7264, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 733,  vnclipu.wx,  0,rd_data_vx+7296, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 734,  vnclipu.wx,  1,rd_data_vx+7328, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 735,  vnclipu.wx,  2,rd_data_vx+7360, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 736,  vnclipu.wx,  3,rd_data_vx+7392, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 737,  vnclipu.wx,  0,rd_data_vx+7424, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 738,  vnclipu.wx,  1,rd_data_vx+7456, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 739,  vnclipu.wx,  2,rd_data_vx+7488, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 740,  vnclipu.wx,  3,rd_data_vx+7520, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 741,  vnclipu.wx,  0,rd_data_vx+7552, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 742,  vnclipu.wx,  1,rd_data_vx+7584, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 743,  vnclipu.wx,  2,rd_data_vx+7616, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 744,  vnclipu.wx,  3,rd_data_vx+7648, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 745,  vnclipu.wx,  0,rd_data_vx+7680, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 746,  vnclipu.wx,  1,rd_data_vx+7712, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 747,  vnclipu.wx,  2,rd_data_vx+7744, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 748,  vnclipu.wx,  3,rd_data_vx+7776, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 749,  vnclipu.wx,  0,rd_data_vx+7808, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 750,  vnclipu.wx,  1,rd_data_vx+7840, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 751,  vnclipu.wx,  2,rd_data_vx+7872, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 752,  vnclipu.wx,  3,rd_data_vx+7904, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 753,  vnclipu.wx,  0,rd_data_vx+7936, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 754,  vnclipu.wx,  1,rd_data_vx+7968, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 755,  vnclipu.wx,  2,rd_data_vx+8000, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 756,  vnclipu.wx,  3,rd_data_vx+8032, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 757,  vnclipu.wx,  0,rd_data_vx+8064, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 758,  vnclipu.wx,  1,rd_data_vx+8096, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 759,  vnclipu.wx,  2,rd_data_vx+8128, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 760,  vnclipu.wx,  3,rd_data_vx+8160, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 761,  vnclipu.wx,  0,rd_data_vx+8192, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 762,  vnclipu.wx,  1,rd_data_vx+8224, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 763,  vnclipu.wx,  2,rd_data_vx+8256, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 764,  vnclipu.wx,  3,rd_data_vx+8288, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 765,  vnclipu.wx,  0,rd_data_vx+8320, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 766,  vnclipu.wx,  1,rd_data_vx+8352, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 767,  vnclipu.wx,  2,rd_data_vx+8384, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 768,  vnclipu.wx,  3,rd_data_vx+8416, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 769,  vnclipu.wx,  0,rd_data_vx+8448, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 770,  vnclipu.wx,  1,rd_data_vx+8480, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 771,  vnclipu.wx,  2,rd_data_vx+8512, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 772,  vnclipu.wx,  3,rd_data_vx+8544, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 773,  vnclipu.wx,  0,rd_data_vx+8576, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 774,  vnclipu.wx,  1,rd_data_vx+8608, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 775,  vnclipu.wx,  2,rd_data_vx+8640, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_N_VX_OP( 776,  vnclipu.wx,  3,rd_data_vx+8672, rs2_data+2144, 0xfffffffffffffffe)
  #-------------------------------------------------------------
  # WI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_N_VI_OP( 777,  vnclipu.wi,  0,rd_data_vi+0, rs2_data+0, 15)
  TEST_AVG_N_VI_OP( 778,  vnclipu.wi,  1,rd_data_vi+32, rs2_data+0, 15)
  TEST_AVG_N_VI_OP( 779,  vnclipu.wi,  2,rd_data_vi+64, rs2_data+0, 15)
  TEST_AVG_N_VI_OP( 780,  vnclipu.wi,  3,rd_data_vi+96, rs2_data+0, 15)
  TEST_AVG_N_VI_OP( 781,  vnclipu.wi,  0,rd_data_vi+128, rs2_data+32, 15)
  TEST_AVG_N_VI_OP( 782,  vnclipu.wi,  1,rd_data_vi+160, rs2_data+32, 15)
  TEST_AVG_N_VI_OP( 783,  vnclipu.wi,  2,rd_data_vi+192, rs2_data+32, 15)
  TEST_AVG_N_VI_OP( 784,  vnclipu.wi,  3,rd_data_vi+224, rs2_data+32, 15)
  TEST_AVG_N_VI_OP( 785,  vnclipu.wi,  0,rd_data_vi+256, rs2_data+64, 15)
  TEST_AVG_N_VI_OP( 786,  vnclipu.wi,  1,rd_data_vi+288, rs2_data+64, 15)
  TEST_AVG_N_VI_OP( 787,  vnclipu.wi,  2,rd_data_vi+320, rs2_data+64, 15)
  TEST_AVG_N_VI_OP( 788,  vnclipu.wi,  3,rd_data_vi+352, rs2_data+64, 15)
  TEST_AVG_N_VI_OP( 789,  vnclipu.wi,  0,rd_data_vi+384, rs2_data+96, 15)
  TEST_AVG_N_VI_OP( 790,  vnclipu.wi,  1,rd_data_vi+416, rs2_data+96, 15)
  TEST_AVG_N_VI_OP( 791,  vnclipu.wi,  2,rd_data_vi+448, rs2_data+96, 15)
  TEST_AVG_N_VI_OP( 792,  vnclipu.wi,  3,rd_data_vi+480, rs2_data+96, 15)
  TEST_AVG_N_VI_OP( 793,  vnclipu.wi,  0,rd_data_vi+512, rs2_data+128, 15)
  TEST_AVG_N_VI_OP( 794,  vnclipu.wi,  1,rd_data_vi+544, rs2_data+128, 15)
  TEST_AVG_N_VI_OP( 795,  vnclipu.wi,  2,rd_data_vi+576, rs2_data+128, 15)
  TEST_AVG_N_VI_OP( 796,  vnclipu.wi,  3,rd_data_vi+608, rs2_data+128, 15)
  TEST_AVG_N_VI_OP( 797,  vnclipu.wi,  0,rd_data_vi+640, rs2_data+160, 15)
  TEST_AVG_N_VI_OP( 798,  vnclipu.wi,  1,rd_data_vi+672, rs2_data+160, 15)
  TEST_AVG_N_VI_OP( 799,  vnclipu.wi,  2,rd_data_vi+704, rs2_data+160, 15)
  TEST_AVG_N_VI_OP( 800,  vnclipu.wi,  3,rd_data_vi+736, rs2_data+160, 15)
  TEST_AVG_N_VI_OP( 801,  vnclipu.wi,  0,rd_data_vi+768, rs2_data+192, 15)
  TEST_AVG_N_VI_OP( 802,  vnclipu.wi,  1,rd_data_vi+800, rs2_data+192, 15)
  TEST_AVG_N_VI_OP( 803,  vnclipu.wi,  2,rd_data_vi+832, rs2_data+192, 15)
  TEST_AVG_N_VI_OP( 804,  vnclipu.wi,  3,rd_data_vi+864, rs2_data+192, 15)
  TEST_AVG_N_VI_OP( 805,  vnclipu.wi,  0,rd_data_vi+896, rs2_data+224, 15)
  TEST_AVG_N_VI_OP( 806,  vnclipu.wi,  1,rd_data_vi+928, rs2_data+224, 15)
  TEST_AVG_N_VI_OP( 807,  vnclipu.wi,  2,rd_data_vi+960, rs2_data+224, 15)
  TEST_AVG_N_VI_OP( 808,  vnclipu.wi,  3,rd_data_vi+992, rs2_data+224, 15)
  TEST_AVG_N_VI_OP( 809,  vnclipu.wi,  0,rd_data_vi+1024, rs2_data+256, 15)
  TEST_AVG_N_VI_OP( 810,  vnclipu.wi,  1,rd_data_vi+1056, rs2_data+256, 15)
  TEST_AVG_N_VI_OP( 811,  vnclipu.wi,  2,rd_data_vi+1088, rs2_data+256, 15)
  TEST_AVG_N_VI_OP( 812,  vnclipu.wi,  3,rd_data_vi+1120, rs2_data+256, 15)
  TEST_AVG_N_VI_OP( 813,  vnclipu.wi,  0,rd_data_vi+1152, rs2_data+288, 15)
  TEST_AVG_N_VI_OP( 814,  vnclipu.wi,  1,rd_data_vi+1184, rs2_data+288, 15)
  TEST_AVG_N_VI_OP( 815,  vnclipu.wi,  2,rd_data_vi+1216, rs2_data+288, 15)
  TEST_AVG_N_VI_OP( 816,  vnclipu.wi,  3,rd_data_vi+1248, rs2_data+288, 15)
  TEST_AVG_N_VI_OP( 817,  vnclipu.wi,  0,rd_data_vi+1280, rs2_data+320, 15)
  TEST_AVG_N_VI_OP( 818,  vnclipu.wi,  1,rd_data_vi+1312, rs2_data+320, 15)
  TEST_AVG_N_VI_OP( 819,  vnclipu.wi,  2,rd_data_vi+1344, rs2_data+320, 15)
  TEST_AVG_N_VI_OP( 820,  vnclipu.wi,  3,rd_data_vi+1376, rs2_data+320, 15)
  TEST_AVG_N_VI_OP( 821,  vnclipu.wi,  0,rd_data_vi+1408, rs2_data+352, 15)
  TEST_AVG_N_VI_OP( 822,  vnclipu.wi,  1,rd_data_vi+1440, rs2_data+352, 15)
  TEST_AVG_N_VI_OP( 823,  vnclipu.wi,  2,rd_data_vi+1472, rs2_data+352, 15)
  TEST_AVG_N_VI_OP( 824,  vnclipu.wi,  3,rd_data_vi+1504, rs2_data+352, 15)
  TEST_AVG_N_VI_OP( 825,  vnclipu.wi,  0,rd_data_vi+1536, rs2_data+384, 15)
  TEST_AVG_N_VI_OP( 826,  vnclipu.wi,  1,rd_data_vi+1568, rs2_data+384, 15)
  TEST_AVG_N_VI_OP( 827,  vnclipu.wi,  2,rd_data_vi+1600, rs2_data+384, 15)
  TEST_AVG_N_VI_OP( 828,  vnclipu.wi,  3,rd_data_vi+1632, rs2_data+384, 15)
  TEST_AVG_N_VI_OP( 829,  vnclipu.wi,  0,rd_data_vi+1664, rs2_data+416, 15)
  TEST_AVG_N_VI_OP( 830,  vnclipu.wi,  1,rd_data_vi+1696, rs2_data+416, 15)
  TEST_AVG_N_VI_OP( 831,  vnclipu.wi,  2,rd_data_vi+1728, rs2_data+416, 15)
  TEST_AVG_N_VI_OP( 832,  vnclipu.wi,  3,rd_data_vi+1760, rs2_data+416, 15)
  TEST_AVG_N_VI_OP( 833,  vnclipu.wi,  0,rd_data_vi+1792, rs2_data+448, 15)
  TEST_AVG_N_VI_OP( 834,  vnclipu.wi,  1,rd_data_vi+1824, rs2_data+448, 15)
  TEST_AVG_N_VI_OP( 835,  vnclipu.wi,  2,rd_data_vi+1856, rs2_data+448, 15)
  TEST_AVG_N_VI_OP( 836,  vnclipu.wi,  3,rd_data_vi+1888, rs2_data+448, 15)
  TEST_AVG_N_VI_OP( 837,  vnclipu.wi,  0,rd_data_vi+1920, rs2_data+480, 15)
  TEST_AVG_N_VI_OP( 838,  vnclipu.wi,  1,rd_data_vi+1952, rs2_data+480, 15)
  TEST_AVG_N_VI_OP( 839,  vnclipu.wi,  2,rd_data_vi+1984, rs2_data+480, 15)
  TEST_AVG_N_VI_OP( 840,  vnclipu.wi,  3,rd_data_vi+2016, rs2_data+480, 15)
  TEST_AVG_N_VI_OP( 841,  vnclipu.wi,  0,rd_data_vi+2048, rs2_data+512, 15)
  TEST_AVG_N_VI_OP( 842,  vnclipu.wi,  1,rd_data_vi+2080, rs2_data+512, 15)
  TEST_AVG_N_VI_OP( 843,  vnclipu.wi,  2,rd_data_vi+2112, rs2_data+512, 15)
  TEST_AVG_N_VI_OP( 844,  vnclipu.wi,  3,rd_data_vi+2144, rs2_data+512, 15)
  TEST_AVG_N_VI_OP( 845,  vnclipu.wi,  0,rd_data_vi+2176, rs2_data+544, 15)
  TEST_AVG_N_VI_OP( 846,  vnclipu.wi,  1,rd_data_vi+2208, rs2_data+544, 15)
  TEST_AVG_N_VI_OP( 847,  vnclipu.wi,  2,rd_data_vi+2240, rs2_data+544, 15)
  TEST_AVG_N_VI_OP( 848,  vnclipu.wi,  3,rd_data_vi+2272, rs2_data+544, 15)
  TEST_AVG_N_VI_OP( 849,  vnclipu.wi,  0,rd_data_vi+2304, rs2_data+576, 15)
  TEST_AVG_N_VI_OP( 850,  vnclipu.wi,  1,rd_data_vi+2336, rs2_data+576, 15)
  TEST_AVG_N_VI_OP( 851,  vnclipu.wi,  2,rd_data_vi+2368, rs2_data+576, 15)
  TEST_AVG_N_VI_OP( 852,  vnclipu.wi,  3,rd_data_vi+2400, rs2_data+576, 15)
  TEST_AVG_N_VI_OP( 853,  vnclipu.wi,  0,rd_data_vi+2432, rs2_data+608, 15)
  TEST_AVG_N_VI_OP( 854,  vnclipu.wi,  1,rd_data_vi+2464, rs2_data+608, 15)
  TEST_AVG_N_VI_OP( 855,  vnclipu.wi,  2,rd_data_vi+2496, rs2_data+608, 15)
  TEST_AVG_N_VI_OP( 856,  vnclipu.wi,  3,rd_data_vi+2528, rs2_data+608, 15)
  TEST_AVG_N_VI_OP( 857,  vnclipu.wi,  0,rd_data_vi+2560, rs2_data+640, 15)
  TEST_AVG_N_VI_OP( 858,  vnclipu.wi,  1,rd_data_vi+2592, rs2_data+640, 15)
  TEST_AVG_N_VI_OP( 859,  vnclipu.wi,  2,rd_data_vi+2624, rs2_data+640, 15)
  TEST_AVG_N_VI_OP( 860,  vnclipu.wi,  3,rd_data_vi+2656, rs2_data+640, 15)
  TEST_AVG_N_VI_OP( 861,  vnclipu.wi,  0,rd_data_vi+2688, rs2_data+672, 15)
  TEST_AVG_N_VI_OP( 862,  vnclipu.wi,  1,rd_data_vi+2720, rs2_data+672, 15)
  TEST_AVG_N_VI_OP( 863,  vnclipu.wi,  2,rd_data_vi+2752, rs2_data+672, 15)
  TEST_AVG_N_VI_OP( 864,  vnclipu.wi,  3,rd_data_vi+2784, rs2_data+672, 15)
  TEST_AVG_N_VI_OP( 865,  vnclipu.wi,  0,rd_data_vi+2816, rs2_data+704, 15)
  TEST_AVG_N_VI_OP( 866,  vnclipu.wi,  1,rd_data_vi+2848, rs2_data+704, 15)
  TEST_AVG_N_VI_OP( 867,  vnclipu.wi,  2,rd_data_vi+2880, rs2_data+704, 15)
  TEST_AVG_N_VI_OP( 868,  vnclipu.wi,  3,rd_data_vi+2912, rs2_data+704, 15)
  TEST_AVG_N_VI_OP( 869,  vnclipu.wi,  0,rd_data_vi+2944, rs2_data+736, 15)
  TEST_AVG_N_VI_OP( 870,  vnclipu.wi,  1,rd_data_vi+2976, rs2_data+736, 15)
  TEST_AVG_N_VI_OP( 871,  vnclipu.wi,  2,rd_data_vi+3008, rs2_data+736, 15)
  TEST_AVG_N_VI_OP( 872,  vnclipu.wi,  3,rd_data_vi+3040, rs2_data+736, 15)
  TEST_AVG_N_VI_OP( 873,  vnclipu.wi,  0,rd_data_vi+3072, rs2_data+768, 15)
  TEST_AVG_N_VI_OP( 874,  vnclipu.wi,  1,rd_data_vi+3104, rs2_data+768, 15)
  TEST_AVG_N_VI_OP( 875,  vnclipu.wi,  2,rd_data_vi+3136, rs2_data+768, 15)
  TEST_AVG_N_VI_OP( 876,  vnclipu.wi,  3,rd_data_vi+3168, rs2_data+768, 15)
  TEST_AVG_N_VI_OP( 877,  vnclipu.wi,  0,rd_data_vi+3200, rs2_data+800, 15)
  TEST_AVG_N_VI_OP( 878,  vnclipu.wi,  1,rd_data_vi+3232, rs2_data+800, 15)
  TEST_AVG_N_VI_OP( 879,  vnclipu.wi,  2,rd_data_vi+3264, rs2_data+800, 15)
  TEST_AVG_N_VI_OP( 880,  vnclipu.wi,  3,rd_data_vi+3296, rs2_data+800, 15)
  TEST_AVG_N_VI_OP( 881,  vnclipu.wi,  0,rd_data_vi+3328, rs2_data+832, 15)
  TEST_AVG_N_VI_OP( 882,  vnclipu.wi,  1,rd_data_vi+3360, rs2_data+832, 15)
  TEST_AVG_N_VI_OP( 883,  vnclipu.wi,  2,rd_data_vi+3392, rs2_data+832, 15)
  TEST_AVG_N_VI_OP( 884,  vnclipu.wi,  3,rd_data_vi+3424, rs2_data+832, 15)
  TEST_AVG_N_VI_OP( 885,  vnclipu.wi,  0,rd_data_vi+3456, rs2_data+864, 15)
  TEST_AVG_N_VI_OP( 886,  vnclipu.wi,  1,rd_data_vi+3488, rs2_data+864, 15)
  TEST_AVG_N_VI_OP( 887,  vnclipu.wi,  2,rd_data_vi+3520, rs2_data+864, 15)
  TEST_AVG_N_VI_OP( 888,  vnclipu.wi,  3,rd_data_vi+3552, rs2_data+864, 15)
  TEST_AVG_N_VI_OP( 889,  vnclipu.wi,  0,rd_data_vi+3584, rs2_data+896, 15)
  TEST_AVG_N_VI_OP( 890,  vnclipu.wi,  1,rd_data_vi+3616, rs2_data+896, 15)
  TEST_AVG_N_VI_OP( 891,  vnclipu.wi,  2,rd_data_vi+3648, rs2_data+896, 15)
  TEST_AVG_N_VI_OP( 892,  vnclipu.wi,  3,rd_data_vi+3680, rs2_data+896, 15)
  TEST_AVG_N_VI_OP( 893,  vnclipu.wi,  0,rd_data_vi+3712, rs2_data+928, 15)
  TEST_AVG_N_VI_OP( 894,  vnclipu.wi,  1,rd_data_vi+3744, rs2_data+928, 15)
  TEST_AVG_N_VI_OP( 895,  vnclipu.wi,  2,rd_data_vi+3776, rs2_data+928, 15)
  TEST_AVG_N_VI_OP( 896,  vnclipu.wi,  3,rd_data_vi+3808, rs2_data+928, 15)
  TEST_AVG_N_VI_OP( 897,  vnclipu.wi,  0,rd_data_vi+3840, rs2_data+960, 15)
  TEST_AVG_N_VI_OP( 898,  vnclipu.wi,  1,rd_data_vi+3872, rs2_data+960, 15)
  TEST_AVG_N_VI_OP( 899,  vnclipu.wi,  2,rd_data_vi+3904, rs2_data+960, 15)
  TEST_AVG_N_VI_OP( 900,  vnclipu.wi,  3,rd_data_vi+3936, rs2_data+960, 15)
  TEST_AVG_N_VI_OP( 901,  vnclipu.wi,  0,rd_data_vi+3968, rs2_data+992, 15)
  TEST_AVG_N_VI_OP( 902,  vnclipu.wi,  1,rd_data_vi+4000, rs2_data+992, 15)
  TEST_AVG_N_VI_OP( 903,  vnclipu.wi,  2,rd_data_vi+4032, rs2_data+992, 15)
  TEST_AVG_N_VI_OP( 904,  vnclipu.wi,  3,rd_data_vi+4064, rs2_data+992, 15)
  TEST_AVG_N_VI_OP( 905,  vnclipu.wi,  0,rd_data_vi+4096, rs2_data+1024, 15)
  TEST_AVG_N_VI_OP( 906,  vnclipu.wi,  1,rd_data_vi+4128, rs2_data+1024, 15)
  TEST_AVG_N_VI_OP( 907,  vnclipu.wi,  2,rd_data_vi+4160, rs2_data+1024, 15)
  TEST_AVG_N_VI_OP( 908,  vnclipu.wi,  3,rd_data_vi+4192, rs2_data+1024, 15)
  TEST_AVG_N_VI_OP( 909,  vnclipu.wi,  0,rd_data_vi+4224, rs2_data+1056, 15)
  TEST_AVG_N_VI_OP( 910,  vnclipu.wi,  1,rd_data_vi+4256, rs2_data+1056, 15)
  TEST_AVG_N_VI_OP( 911,  vnclipu.wi,  2,rd_data_vi+4288, rs2_data+1056, 15)
  TEST_AVG_N_VI_OP( 912,  vnclipu.wi,  3,rd_data_vi+4320, rs2_data+1056, 15)
  TEST_AVG_N_VI_OP( 913,  vnclipu.wi,  0,rd_data_vi+4352, rs2_data+1088, 15)
  TEST_AVG_N_VI_OP( 914,  vnclipu.wi,  1,rd_data_vi+4384, rs2_data+1088, 15)
  TEST_AVG_N_VI_OP( 915,  vnclipu.wi,  2,rd_data_vi+4416, rs2_data+1088, 15)
  TEST_AVG_N_VI_OP( 916,  vnclipu.wi,  3,rd_data_vi+4448, rs2_data+1088, 15)
  TEST_AVG_N_VI_OP( 917,  vnclipu.wi,  0,rd_data_vi+4480, rs2_data+1120, 15)
  TEST_AVG_N_VI_OP( 918,  vnclipu.wi,  1,rd_data_vi+4512, rs2_data+1120, 15)
  TEST_AVG_N_VI_OP( 919,  vnclipu.wi,  2,rd_data_vi+4544, rs2_data+1120, 15)
  TEST_AVG_N_VI_OP( 920,  vnclipu.wi,  3,rd_data_vi+4576, rs2_data+1120, 15)
  TEST_AVG_N_VI_OP( 921,  vnclipu.wi,  0,rd_data_vi+4608, rs2_data+1152, 15)
  TEST_AVG_N_VI_OP( 922,  vnclipu.wi,  1,rd_data_vi+4640, rs2_data+1152, 15)
  TEST_AVG_N_VI_OP( 923,  vnclipu.wi,  2,rd_data_vi+4672, rs2_data+1152, 15)
  TEST_AVG_N_VI_OP( 924,  vnclipu.wi,  3,rd_data_vi+4704, rs2_data+1152, 15)
  TEST_AVG_N_VI_OP( 925,  vnclipu.wi,  0,rd_data_vi+4736, rs2_data+1184, 15)
  TEST_AVG_N_VI_OP( 926,  vnclipu.wi,  1,rd_data_vi+4768, rs2_data+1184, 15)
  TEST_AVG_N_VI_OP( 927,  vnclipu.wi,  2,rd_data_vi+4800, rs2_data+1184, 15)
  TEST_AVG_N_VI_OP( 928,  vnclipu.wi,  3,rd_data_vi+4832, rs2_data+1184, 15)
  TEST_AVG_N_VI_OP( 929,  vnclipu.wi,  0,rd_data_vi+4864, rs2_data+1216, 15)
  TEST_AVG_N_VI_OP( 930,  vnclipu.wi,  1,rd_data_vi+4896, rs2_data+1216, 15)
  TEST_AVG_N_VI_OP( 931,  vnclipu.wi,  2,rd_data_vi+4928, rs2_data+1216, 15)
  TEST_AVG_N_VI_OP( 932,  vnclipu.wi,  3,rd_data_vi+4960, rs2_data+1216, 15)
  TEST_AVG_N_VI_OP( 933,  vnclipu.wi,  0,rd_data_vi+4992, rs2_data+1248, 15)
  TEST_AVG_N_VI_OP( 934,  vnclipu.wi,  1,rd_data_vi+5024, rs2_data+1248, 15)
  TEST_AVG_N_VI_OP( 935,  vnclipu.wi,  2,rd_data_vi+5056, rs2_data+1248, 15)
  TEST_AVG_N_VI_OP( 936,  vnclipu.wi,  3,rd_data_vi+5088, rs2_data+1248, 15)
  TEST_AVG_N_VI_OP( 937,  vnclipu.wi,  0,rd_data_vi+5120, rs2_data+1280, 15)
  TEST_AVG_N_VI_OP( 938,  vnclipu.wi,  1,rd_data_vi+5152, rs2_data+1280, 15)
  TEST_AVG_N_VI_OP( 939,  vnclipu.wi,  2,rd_data_vi+5184, rs2_data+1280, 15)
  TEST_AVG_N_VI_OP( 940,  vnclipu.wi,  3,rd_data_vi+5216, rs2_data+1280, 15)
  TEST_AVG_N_VI_OP( 941,  vnclipu.wi,  0,rd_data_vi+5248, rs2_data+1312, 15)
  TEST_AVG_N_VI_OP( 942,  vnclipu.wi,  1,rd_data_vi+5280, rs2_data+1312, 15)
  TEST_AVG_N_VI_OP( 943,  vnclipu.wi,  2,rd_data_vi+5312, rs2_data+1312, 15)
  TEST_AVG_N_VI_OP( 944,  vnclipu.wi,  3,rd_data_vi+5344, rs2_data+1312, 15)
  TEST_AVG_N_VI_OP( 945,  vnclipu.wi,  0,rd_data_vi+5376, rs2_data+1344, 15)
  TEST_AVG_N_VI_OP( 946,  vnclipu.wi,  1,rd_data_vi+5408, rs2_data+1344, 15)
  TEST_AVG_N_VI_OP( 947,  vnclipu.wi,  2,rd_data_vi+5440, rs2_data+1344, 15)
  TEST_AVG_N_VI_OP( 948,  vnclipu.wi,  3,rd_data_vi+5472, rs2_data+1344, 15)
  TEST_AVG_N_VI_OP( 949,  vnclipu.wi,  0,rd_data_vi+5504, rs2_data+1376, 15)
  TEST_AVG_N_VI_OP( 950,  vnclipu.wi,  1,rd_data_vi+5536, rs2_data+1376, 15)
  TEST_AVG_N_VI_OP( 951,  vnclipu.wi,  2,rd_data_vi+5568, rs2_data+1376, 15)
  TEST_AVG_N_VI_OP( 952,  vnclipu.wi,  3,rd_data_vi+5600, rs2_data+1376, 15)
  TEST_AVG_N_VI_OP( 953,  vnclipu.wi,  0,rd_data_vi+5632, rs2_data+1408, 15)
  TEST_AVG_N_VI_OP( 954,  vnclipu.wi,  1,rd_data_vi+5664, rs2_data+1408, 15)
  TEST_AVG_N_VI_OP( 955,  vnclipu.wi,  2,rd_data_vi+5696, rs2_data+1408, 15)
  TEST_AVG_N_VI_OP( 956,  vnclipu.wi,  3,rd_data_vi+5728, rs2_data+1408, 15)
  TEST_AVG_N_VI_OP( 957,  vnclipu.wi,  0,rd_data_vi+5760, rs2_data+1440, 15)
  TEST_AVG_N_VI_OP( 958,  vnclipu.wi,  1,rd_data_vi+5792, rs2_data+1440, 15)
  TEST_AVG_N_VI_OP( 959,  vnclipu.wi,  2,rd_data_vi+5824, rs2_data+1440, 15)
  TEST_AVG_N_VI_OP( 960,  vnclipu.wi,  3,rd_data_vi+5856, rs2_data+1440, 15)
  TEST_AVG_N_VI_OP( 961,  vnclipu.wi,  0,rd_data_vi+5888, rs2_data+1472, 15)
  TEST_AVG_N_VI_OP( 962,  vnclipu.wi,  1,rd_data_vi+5920, rs2_data+1472, 15)
  TEST_AVG_N_VI_OP( 963,  vnclipu.wi,  2,rd_data_vi+5952, rs2_data+1472, 15)
  TEST_AVG_N_VI_OP( 964,  vnclipu.wi,  3,rd_data_vi+5984, rs2_data+1472, 15)
  TEST_AVG_N_VI_OP( 965,  vnclipu.wi,  0,rd_data_vi+6016, rs2_data+1504, 15)
  TEST_AVG_N_VI_OP( 966,  vnclipu.wi,  1,rd_data_vi+6048, rs2_data+1504, 15)
  TEST_AVG_N_VI_OP( 967,  vnclipu.wi,  2,rd_data_vi+6080, rs2_data+1504, 15)
  TEST_AVG_N_VI_OP( 968,  vnclipu.wi,  3,rd_data_vi+6112, rs2_data+1504, 15)
  TEST_AVG_N_VI_OP( 969,  vnclipu.wi,  0,rd_data_vi+6144, rs2_data+1536, 15)
  TEST_AVG_N_VI_OP( 970,  vnclipu.wi,  1,rd_data_vi+6176, rs2_data+1536, 15)
  TEST_AVG_N_VI_OP( 971,  vnclipu.wi,  2,rd_data_vi+6208, rs2_data+1536, 15)
  TEST_AVG_N_VI_OP( 972,  vnclipu.wi,  3,rd_data_vi+6240, rs2_data+1536, 15)
  TEST_AVG_N_VI_OP( 973,  vnclipu.wi,  0,rd_data_vi+6272, rs2_data+1568, 15)
  TEST_AVG_N_VI_OP( 974,  vnclipu.wi,  1,rd_data_vi+6304, rs2_data+1568, 15)
  TEST_AVG_N_VI_OP( 975,  vnclipu.wi,  2,rd_data_vi+6336, rs2_data+1568, 15)
  TEST_AVG_N_VI_OP( 976,  vnclipu.wi,  3,rd_data_vi+6368, rs2_data+1568, 15)
  TEST_AVG_N_VI_OP( 977,  vnclipu.wi,  0,rd_data_vi+6400, rs2_data+1600, 15)
  TEST_AVG_N_VI_OP( 978,  vnclipu.wi,  1,rd_data_vi+6432, rs2_data+1600, 15)
  TEST_AVG_N_VI_OP( 979,  vnclipu.wi,  2,rd_data_vi+6464, rs2_data+1600, 15)
  TEST_AVG_N_VI_OP( 980,  vnclipu.wi,  3,rd_data_vi+6496, rs2_data+1600, 15)
  TEST_AVG_N_VI_OP( 981,  vnclipu.wi,  0,rd_data_vi+6528, rs2_data+1632, 15)
  TEST_AVG_N_VI_OP( 982,  vnclipu.wi,  1,rd_data_vi+6560, rs2_data+1632, 15)
  TEST_AVG_N_VI_OP( 983,  vnclipu.wi,  2,rd_data_vi+6592, rs2_data+1632, 15)
  TEST_AVG_N_VI_OP( 984,  vnclipu.wi,  3,rd_data_vi+6624, rs2_data+1632, 15)
  TEST_AVG_N_VI_OP( 985,  vnclipu.wi,  0,rd_data_vi+6656, rs2_data+1664, 15)
  TEST_AVG_N_VI_OP( 986,  vnclipu.wi,  1,rd_data_vi+6688, rs2_data+1664, 15)
  TEST_AVG_N_VI_OP( 987,  vnclipu.wi,  2,rd_data_vi+6720, rs2_data+1664, 15)
  TEST_AVG_N_VI_OP( 988,  vnclipu.wi,  3,rd_data_vi+6752, rs2_data+1664, 15)
  TEST_AVG_N_VI_OP( 989,  vnclipu.wi,  0,rd_data_vi+6784, rs2_data+1696, 15)
  TEST_AVG_N_VI_OP( 990,  vnclipu.wi,  1,rd_data_vi+6816, rs2_data+1696, 15)
  TEST_AVG_N_VI_OP( 991,  vnclipu.wi,  2,rd_data_vi+6848, rs2_data+1696, 15)
  TEST_AVG_N_VI_OP( 992,  vnclipu.wi,  3,rd_data_vi+6880, rs2_data+1696, 15)
  TEST_AVG_N_VI_OP( 993,  vnclipu.wi,  0,rd_data_vi+6912, rs2_data+1728, 15)
  TEST_AVG_N_VI_OP( 994,  vnclipu.wi,  1,rd_data_vi+6944, rs2_data+1728, 15)
  TEST_AVG_N_VI_OP( 995,  vnclipu.wi,  2,rd_data_vi+6976, rs2_data+1728, 15)
  TEST_AVG_N_VI_OP( 996,  vnclipu.wi,  3,rd_data_vi+7008, rs2_data+1728, 15)
  TEST_AVG_N_VI_OP( 997,  vnclipu.wi,  0,rd_data_vi+7040, rs2_data+1760, 15)
  TEST_AVG_N_VI_OP( 998,  vnclipu.wi,  1,rd_data_vi+7072, rs2_data+1760, 15)
  TEST_AVG_N_VI_OP( 999,  vnclipu.wi,  2,rd_data_vi+7104, rs2_data+1760, 15)
  TEST_AVG_N_VI_OP( 1000,  vnclipu.wi,  3,rd_data_vi+7136, rs2_data+1760, 15)
  TEST_AVG_N_VI_OP( 1001,  vnclipu.wi,  0,rd_data_vi+7168, rs2_data+1792, 15)
  TEST_AVG_N_VI_OP( 1002,  vnclipu.wi,  1,rd_data_vi+7200, rs2_data+1792, 15)
  TEST_AVG_N_VI_OP( 1003,  vnclipu.wi,  2,rd_data_vi+7232, rs2_data+1792, 15)
  TEST_AVG_N_VI_OP( 1004,  vnclipu.wi,  3,rd_data_vi+7264, rs2_data+1792, 15)
  TEST_AVG_N_VI_OP( 1005,  vnclipu.wi,  0,rd_data_vi+7296, rs2_data+1824, 15)
  TEST_AVG_N_VI_OP( 1006,  vnclipu.wi,  1,rd_data_vi+7328, rs2_data+1824, 15)
  TEST_AVG_N_VI_OP( 1007,  vnclipu.wi,  2,rd_data_vi+7360, rs2_data+1824, 15)
  TEST_AVG_N_VI_OP( 1008,  vnclipu.wi,  3,rd_data_vi+7392, rs2_data+1824, 15)
  TEST_AVG_N_VI_OP( 1009,  vnclipu.wi,  0,rd_data_vi+7424, rs2_data+1856, 15)
  TEST_AVG_N_VI_OP( 1010,  vnclipu.wi,  1,rd_data_vi+7456, rs2_data+1856, 15)
  TEST_AVG_N_VI_OP( 1011,  vnclipu.wi,  2,rd_data_vi+7488, rs2_data+1856, 15)
  TEST_AVG_N_VI_OP( 1012,  vnclipu.wi,  3,rd_data_vi+7520, rs2_data+1856, 15)
  TEST_AVG_N_VI_OP( 1013,  vnclipu.wi,  0,rd_data_vi+7552, rs2_data+1888, 15)
  TEST_AVG_N_VI_OP( 1014,  vnclipu.wi,  1,rd_data_vi+7584, rs2_data+1888, 15)
  TEST_AVG_N_VI_OP( 1015,  vnclipu.wi,  2,rd_data_vi+7616, rs2_data+1888, 15)
  TEST_AVG_N_VI_OP( 1016,  vnclipu.wi,  3,rd_data_vi+7648, rs2_data+1888, 15)
  TEST_AVG_N_VI_OP( 1017,  vnclipu.wi,  0,rd_data_vi+7680, rs2_data+1920, 15)
  TEST_AVG_N_VI_OP( 1018,  vnclipu.wi,  1,rd_data_vi+7712, rs2_data+1920, 15)
  TEST_AVG_N_VI_OP( 1019,  vnclipu.wi,  2,rd_data_vi+7744, rs2_data+1920, 15)
  TEST_AVG_N_VI_OP( 1020,  vnclipu.wi,  3,rd_data_vi+7776, rs2_data+1920, 15)
  TEST_AVG_N_VI_OP( 1021,  vnclipu.wi,  0,rd_data_vi+7808, rs2_data+1952, 15)
  TEST_AVG_N_VI_OP( 1022,  vnclipu.wi,  1,rd_data_vi+7840, rs2_data+1952, 15)
  TEST_AVG_N_VI_OP( 1023,  vnclipu.wi,  2,rd_data_vi+7872, rs2_data+1952, 15)
  TEST_AVG_N_VI_OP( 1024,  vnclipu.wi,  3,rd_data_vi+7904, rs2_data+1952, 15)
  TEST_AVG_N_VI_OP( 1025,  vnclipu.wi,  0,rd_data_vi+7936, rs2_data+1984, 15)
  TEST_AVG_N_VI_OP( 1026,  vnclipu.wi,  1,rd_data_vi+7968, rs2_data+1984, 15)
  TEST_AVG_N_VI_OP( 1027,  vnclipu.wi,  2,rd_data_vi+8000, rs2_data+1984, 15)
  TEST_AVG_N_VI_OP( 1028,  vnclipu.wi,  3,rd_data_vi+8032, rs2_data+1984, 15)
  TEST_AVG_N_VI_OP( 1029,  vnclipu.wi,  0,rd_data_vi+8064, rs2_data+2016, 15)
  TEST_AVG_N_VI_OP( 1030,  vnclipu.wi,  1,rd_data_vi+8096, rs2_data+2016, 15)
  TEST_AVG_N_VI_OP( 1031,  vnclipu.wi,  2,rd_data_vi+8128, rs2_data+2016, 15)
  TEST_AVG_N_VI_OP( 1032,  vnclipu.wi,  3,rd_data_vi+8160, rs2_data+2016, 15)
  TEST_AVG_N_VI_OP( 1033,  vnclipu.wi,  0,rd_data_vi+8192, rs2_data+2048, 15)
  TEST_AVG_N_VI_OP( 1034,  vnclipu.wi,  1,rd_data_vi+8224, rs2_data+2048, 15)
  TEST_AVG_N_VI_OP( 1035,  vnclipu.wi,  2,rd_data_vi+8256, rs2_data+2048, 15)
  TEST_AVG_N_VI_OP( 1036,  vnclipu.wi,  3,rd_data_vi+8288, rs2_data+2048, 15)
  TEST_AVG_N_VI_OP( 1037,  vnclipu.wi,  0,rd_data_vi+8320, rs2_data+2080, 15)
  TEST_AVG_N_VI_OP( 1038,  vnclipu.wi,  1,rd_data_vi+8352, rs2_data+2080, 15)
  TEST_AVG_N_VI_OP( 1039,  vnclipu.wi,  2,rd_data_vi+8384, rs2_data+2080, 15)
  TEST_AVG_N_VI_OP( 1040,  vnclipu.wi,  3,rd_data_vi+8416, rs2_data+2080, 15)
  TEST_AVG_N_VI_OP( 1041,  vnclipu.wi,  0,rd_data_vi+8448, rs2_data+2112, 15)
  TEST_AVG_N_VI_OP( 1042,  vnclipu.wi,  1,rd_data_vi+8480, rs2_data+2112, 15)
  TEST_AVG_N_VI_OP( 1043,  vnclipu.wi,  2,rd_data_vi+8512, rs2_data+2112, 15)
  TEST_AVG_N_VI_OP( 1044,  vnclipu.wi,  3,rd_data_vi+8544, rs2_data+2112, 15)
  TEST_AVG_N_VI_OP( 1045,  vnclipu.wi,  0,rd_data_vi+8576, rs2_data+2144, 15)
  TEST_AVG_N_VI_OP( 1046,  vnclipu.wi,  1,rd_data_vi+8608, rs2_data+2144, 15)
  TEST_AVG_N_VI_OP( 1047,  vnclipu.wi,  2,rd_data_vi+8640, rs2_data+2144, 15)
  TEST_AVG_N_VI_OP( 1048,  vnclipu.wi,  3,rd_data_vi+8672, rs2_data+2144, 15)
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
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
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
.word	0x00000002
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
.word	0x00000002
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
.word	0x00000002
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
.word	0x00000002
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
.word	0x00000002
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
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
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
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
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
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000000f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000000f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000000f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000000f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
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
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
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
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
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
.word	0x00000002
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
.word	0x00000002
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
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
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
.word	0x00000002
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
.word	0x00000002
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
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
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
.word	0x00000002
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
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
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
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
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
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000000f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000000f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000000f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000000f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000000f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000000f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000000f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000000f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
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
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
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
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006667
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
    

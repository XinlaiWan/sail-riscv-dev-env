#----------------------------------------------------------------------------- 
    # vsmul.S
    #-----------------------------------------------------------------------------
    #
    # Test vsmul instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vsmul)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_AVG_VV_OP 
#define TEST_AVG_VV_OP( testnum, inst, vxrm_val, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                csrwi vxrm, vxrm_val; \
            la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v24, v16, v8, v0.t; \
        )
#undef TEST_AVG_VX_OP 
#define TEST_AVG_VX_OP( testnum, inst, vxrm_val, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                csrwi vxrm, vxrm_val; \
            la x7, val2; \
            vle32.v v16, (x7); \
            li x1, MASK_XLEN(val1); \
            inst v24, v16, x1, v0.t; \
        )
#undef TEST_AVG_VI_OP 
#define TEST_AVG_VI_OP( testnum, inst, vxrm_val, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                csrwi vxrm, vxrm_val; \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v16, SEXT_IMM(val1), v0.t; \
        )
#define TEST_AVG_VV_OP_1_1( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v1, (x7); \
                inst v24, v16, v1, v0.t; \
            )
#define TEST_AVG_VV_OP_1_2( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v2, (x7); \
                inst v24, v16, v2, v0.t; \
            )
#define TEST_AVG_VV_OP_1_3( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v3, (x7); \
                inst v24, v16, v3, v0.t; \
            )
#define TEST_AVG_VV_OP_1_4( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v4, (x7); \
                inst v24, v16, v4, v0.t; \
            )
#define TEST_AVG_VV_OP_1_5( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v5, (x7); \
                inst v24, v16, v5, v0.t; \
            )
#define TEST_AVG_VV_OP_1_6( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v6, (x7); \
                inst v24, v16, v6, v0.t; \
            )
#define TEST_AVG_VV_OP_1_7( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v7, (x7); \
                inst v24, v16, v7, v0.t; \
            )
#define TEST_AVG_VV_OP_1_9( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v9, (x7); \
                inst v24, v16, v9, v0.t; \
            )
#define TEST_AVG_VV_OP_1_10( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v10, (x7); \
                inst v24, v16, v10, v0.t; \
            )
#define TEST_AVG_VV_OP_1_11( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v11, (x7); \
                inst v24, v16, v11, v0.t; \
            )
#define TEST_AVG_VV_OP_1_12( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v12, (x7); \
                inst v24, v16, v12, v0.t; \
            )
#define TEST_AVG_VV_OP_1_13( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v13, (x7); \
                inst v24, v16, v13, v0.t; \
            )
#define TEST_AVG_VV_OP_1_14( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v14, (x7); \
                inst v24, v16, v14, v0.t; \
            )
#define TEST_AVG_VV_OP_1_15( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v15, (x7); \
                inst v24, v16, v15, v0.t; \
            )
#define TEST_AVG_VV_OP_1_17( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v17, (x7); \
                inst v24, v16, v17, v0.t; \
            )
#define TEST_AVG_VV_OP_1_18( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v18, (x7); \
                inst v24, v16, v18, v0.t; \
            )
#define TEST_AVG_VV_OP_1_19( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v19, (x7); \
                inst v24, v16, v19, v0.t; \
            )
#define TEST_AVG_VV_OP_1_20( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v20, (x7); \
                inst v24, v16, v20, v0.t; \
            )
#define TEST_AVG_VV_OP_1_21( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v21, (x7); \
                inst v24, v16, v21, v0.t; \
            )
#define TEST_AVG_VV_OP_1_22( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v22, (x7); \
                inst v24, v16, v22, v0.t; \
            )
#define TEST_AVG_VV_OP_1_23( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v23, (x7); \
                inst v24, v16, v23, v0.t; \
            )
#define TEST_AVG_VV_OP_1_25( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v25, (x7); \
                inst v24, v16, v25, v0.t; \
            )
#define TEST_AVG_VV_OP_1_26( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v26, (x7); \
                inst v24, v16, v26, v0.t; \
            )
#define TEST_AVG_VV_OP_1_27( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v27, (x7); \
                inst v24, v16, v27, v0.t; \
            )
#define TEST_AVG_VV_OP_1_28( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v28, (x7); \
                inst v24, v16, v28, v0.t; \
            )
#define TEST_AVG_VV_OP_1_29( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v29, (x7); \
                inst v24, v16, v29, v0.t; \
            )
#define TEST_AVG_VV_OP_1_30( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v30, (x7); \
                inst v24, v16, v30, v0.t; \
            )
#define TEST_AVG_VV_OP_1_31( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v31, (x7); \
                inst v24, v16, v31, v0.t; \
            )
#define TEST_AVG_VV_OP_rd2( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v2, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v2, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v2, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd4( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v4, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v4, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v4, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd6( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v6, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v6, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v6, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd10( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v10, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v10, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v10, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd12( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v12, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v12, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v12, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd14( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v14, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v14, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd18( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v18, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v18, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v18, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd20( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v20, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v20, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v20, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd22( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v22, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v22, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v22, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd26( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v26, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v26, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v26, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd28( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v28, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v28, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v28, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd30( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v30, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v30, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v30, v16, v8, v0.t; \
            )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_AVG_VV_OP( 1,  vsmul.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 2,  vsmul.vv, 1, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 3,  vsmul.vv, 2, rd_data_vv+128, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 4,  vsmul.vv, 3, rd_data_vv+192, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 5,  vsmul.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 6,  vsmul.vv, 1, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 7,  vsmul.vv, 2, rd_data_vv+384, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 8,  vsmul.vv, 3, rd_data_vv+448, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 9,  vsmul.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 10,  vsmul.vv, 1, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 11,  vsmul.vv, 2, rd_data_vv+640, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 12,  vsmul.vv, 3, rd_data_vv+704, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 13,  vsmul.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 14,  vsmul.vv, 1, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 15,  vsmul.vv, 2, rd_data_vv+896, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 16,  vsmul.vv, 3, rd_data_vv+960, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 17,  vsmul.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 18,  vsmul.vv, 1, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 19,  vsmul.vv, 2, rd_data_vv+1152, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 20,  vsmul.vv, 3, rd_data_vv+1216, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 21,  vsmul.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 22,  vsmul.vv, 1, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 23,  vsmul.vv, 2, rd_data_vv+1408, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 24,  vsmul.vv, 3, rd_data_vv+1472, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 25,  vsmul.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 26,  vsmul.vv, 1, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 27,  vsmul.vv, 2, rd_data_vv+1664, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 28,  vsmul.vv, 3, rd_data_vv+1728, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 29,  vsmul.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 30,  vsmul.vv, 1, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 31,  vsmul.vv, 2, rd_data_vv+1920, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 32,  vsmul.vv, 3, rd_data_vv+1984, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 33,  vsmul.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 34,  vsmul.vv, 1, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 35,  vsmul.vv, 2, rd_data_vv+2176, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 36,  vsmul.vv, 3, rd_data_vv+2240, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 37,  vsmul.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 38,  vsmul.vv, 1, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 39,  vsmul.vv, 2, rd_data_vv+2432, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 40,  vsmul.vv, 3, rd_data_vv+2496, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 41,  vsmul.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 42,  vsmul.vv, 1, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 43,  vsmul.vv, 2, rd_data_vv+2688, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 44,  vsmul.vv, 3, rd_data_vv+2752, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 45,  vsmul.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 46,  vsmul.vv, 1, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 47,  vsmul.vv, 2, rd_data_vv+2944, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 48,  vsmul.vv, 3, rd_data_vv+3008, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 49,  vsmul.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 50,  vsmul.vv, 1, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 51,  vsmul.vv, 2, rd_data_vv+3200, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 52,  vsmul.vv, 3, rd_data_vv+3264, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 53,  vsmul.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 54,  vsmul.vv, 1, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 55,  vsmul.vv, 2, rd_data_vv+3456, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 56,  vsmul.vv, 3, rd_data_vv+3520, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 57,  vsmul.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 58,  vsmul.vv, 1, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 59,  vsmul.vv, 2, rd_data_vv+3712, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 60,  vsmul.vv, 3, rd_data_vv+3776, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 61,  vsmul.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 62,  vsmul.vv, 1, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 63,  vsmul.vv, 2, rd_data_vv+3968, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 64,  vsmul.vv, 3, rd_data_vv+4032, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 65,  vsmul.vv, 0, rd_data_vv+4096, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 66,  vsmul.vv, 1, rd_data_vv+4160, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 67,  vsmul.vv, 2, rd_data_vv+4224, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 68,  vsmul.vv, 3, rd_data_vv+4288, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 69,  vsmul.vv, 0, rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 70,  vsmul.vv, 1, rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 71,  vsmul.vv, 2, rd_data_vv+4480, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 72,  vsmul.vv, 3, rd_data_vv+4544, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 73,  vsmul.vv, 0, rd_data_vv+4608, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 74,  vsmul.vv, 1, rd_data_vv+4672, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 75,  vsmul.vv, 2, rd_data_vv+4736, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 76,  vsmul.vv, 3, rd_data_vv+4800, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 77,  vsmul.vv, 0, rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 78,  vsmul.vv, 1, rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 79,  vsmul.vv, 2, rd_data_vv+4992, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 80,  vsmul.vv, 3, rd_data_vv+5056, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 81,  vsmul.vv, 0, rd_data_vv+5120, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 82,  vsmul.vv, 1, rd_data_vv+5184, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 83,  vsmul.vv, 2, rd_data_vv+5248, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 84,  vsmul.vv, 3, rd_data_vv+5312, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 85,  vsmul.vv, 0, rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 86,  vsmul.vv, 1, rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 87,  vsmul.vv, 2, rd_data_vv+5504, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 88,  vsmul.vv, 3, rd_data_vv+5568, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 89,  vsmul.vv, 0, rd_data_vv+5632, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 90,  vsmul.vv, 1, rd_data_vv+5696, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 91,  vsmul.vv, 2, rd_data_vv+5760, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 92,  vsmul.vv, 3, rd_data_vv+5824, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 93,  vsmul.vv, 0, rd_data_vv+5888, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 94,  vsmul.vv, 1, rd_data_vv+5952, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 95,  vsmul.vv, 2, rd_data_vv+6016, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 96,  vsmul.vv, 3, rd_data_vv+6080, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 97,  vsmul.vv, 0, rd_data_vv+6144, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 98,  vsmul.vv, 1, rd_data_vv+6208, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 99,  vsmul.vv, 2, rd_data_vv+6272, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 100,  vsmul.vv, 3, rd_data_vv+6336, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 101,  vsmul.vv, 0, rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 102,  vsmul.vv, 1, rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 103,  vsmul.vv, 2, rd_data_vv+6528, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 104,  vsmul.vv, 3, rd_data_vv+6592, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 105,  vsmul.vv, 0, rd_data_vv+6656, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 106,  vsmul.vv, 1, rd_data_vv+6720, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 107,  vsmul.vv, 2, rd_data_vv+6784, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 108,  vsmul.vv, 3, rd_data_vv+6848, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 109,  vsmul.vv, 0, rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 110,  vsmul.vv, 1, rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 111,  vsmul.vv, 2, rd_data_vv+7040, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 112,  vsmul.vv, 3, rd_data_vv+7104, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 113,  vsmul.vv, 0, rd_data_vv+7168, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 114,  vsmul.vv, 1, rd_data_vv+7232, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 115,  vsmul.vv, 2, rd_data_vv+7296, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 116,  vsmul.vv, 3, rd_data_vv+7360, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 117,  vsmul.vv, 0, rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 118,  vsmul.vv, 1, rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 119,  vsmul.vv, 2, rd_data_vv+7552, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 120,  vsmul.vv, 3, rd_data_vv+7616, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 121,  vsmul.vv, 0, rd_data_vv+7680, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 122,  vsmul.vv, 1, rd_data_vv+7744, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 123,  vsmul.vv, 2, rd_data_vv+7808, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 124,  vsmul.vv, 3, rd_data_vv+7872, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 125,  vsmul.vv, 0, rd_data_vv+7936, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 126,  vsmul.vv, 1, rd_data_vv+8000, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 127,  vsmul.vv, 2, rd_data_vv+8064, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 128,  vsmul.vv, 3, rd_data_vv+8128, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 129,  vsmul.vv, 0, rd_data_vv+8192, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 130,  vsmul.vv, 1, rd_data_vv+8256, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 131,  vsmul.vv, 2, rd_data_vv+8320, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 132,  vsmul.vv, 3, rd_data_vv+8384, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 133,  vsmul.vv, 0, rd_data_vv+8448, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 134,  vsmul.vv, 1, rd_data_vv+8512, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 135,  vsmul.vv, 2, rd_data_vv+8576, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 136,  vsmul.vv, 3, rd_data_vv+8640, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP_1_2( 137,  vsmul.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 138,  vsmul.vv, 1, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 139,  vsmul.vv, 2, rd_data_vv+128, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 140,  vsmul.vv, 3, rd_data_vv+192, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd2( 141,  vsmul.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_3( 142,  vsmul.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd2( 143,  vsmul.vv, 1, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_3( 144,  vsmul.vv, 1, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd2( 145,  vsmul.vv, 2, rd_data_vv+384, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_3( 146,  vsmul.vv, 2, rd_data_vv+384, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd2( 147,  vsmul.vv, 3, rd_data_vv+448, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_3( 148,  vsmul.vv, 3, rd_data_vv+448, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 149,  vsmul.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_4( 150,  vsmul.vv, 1, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_4( 151,  vsmul.vv, 2, rd_data_vv+640, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_4( 152,  vsmul.vv, 3, rd_data_vv+704, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd4( 153,  vsmul.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_5( 154,  vsmul.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd4( 155,  vsmul.vv, 1, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_5( 156,  vsmul.vv, 1, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd4( 157,  vsmul.vv, 2, rd_data_vv+896, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_5( 158,  vsmul.vv, 2, rd_data_vv+896, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd4( 159,  vsmul.vv, 3, rd_data_vv+960, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_5( 160,  vsmul.vv, 3, rd_data_vv+960, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_6( 161,  vsmul.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_6( 162,  vsmul.vv, 1, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_6( 163,  vsmul.vv, 2, rd_data_vv+1152, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_6( 164,  vsmul.vv, 3, rd_data_vv+1216, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd6( 165,  vsmul.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_7( 166,  vsmul.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd6( 167,  vsmul.vv, 1, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_7( 168,  vsmul.vv, 1, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd6( 169,  vsmul.vv, 2, rd_data_vv+1408, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_7( 170,  vsmul.vv, 2, rd_data_vv+1408, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd6( 171,  vsmul.vv, 3, rd_data_vv+1472, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_7( 172,  vsmul.vv, 3, rd_data_vv+1472, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_9( 173,  vsmul.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_1_9( 174,  vsmul.vv, 1, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_1_9( 175,  vsmul.vv, 2, rd_data_vv+1920, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_1_9( 176,  vsmul.vv, 3, rd_data_vv+1984, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_1_10( 177,  vsmul.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_10( 178,  vsmul.vv, 1, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_10( 179,  vsmul.vv, 2, rd_data_vv+2176, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_10( 180,  vsmul.vv, 3, rd_data_vv+2240, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd10( 181,  vsmul.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_11( 182,  vsmul.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd10( 183,  vsmul.vv, 1, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_11( 184,  vsmul.vv, 1, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd10( 185,  vsmul.vv, 2, rd_data_vv+2432, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_11( 186,  vsmul.vv, 2, rd_data_vv+2432, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd10( 187,  vsmul.vv, 3, rd_data_vv+2496, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_11( 188,  vsmul.vv, 3, rd_data_vv+2496, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_12( 189,  vsmul.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_12( 190,  vsmul.vv, 1, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_12( 191,  vsmul.vv, 2, rd_data_vv+2688, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_12( 192,  vsmul.vv, 3, rd_data_vv+2752, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd12( 193,  vsmul.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_13( 194,  vsmul.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd12( 195,  vsmul.vv, 1, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_13( 196,  vsmul.vv, 1, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd12( 197,  vsmul.vv, 2, rd_data_vv+2944, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_13( 198,  vsmul.vv, 2, rd_data_vv+2944, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd12( 199,  vsmul.vv, 3, rd_data_vv+3008, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_13( 200,  vsmul.vv, 3, rd_data_vv+3008, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_14( 201,  vsmul.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_14( 202,  vsmul.vv, 1, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_14( 203,  vsmul.vv, 2, rd_data_vv+3200, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_14( 204,  vsmul.vv, 3, rd_data_vv+3264, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd14( 205,  vsmul.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_15( 206,  vsmul.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd14( 207,  vsmul.vv, 1, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_15( 208,  vsmul.vv, 1, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd14( 209,  vsmul.vv, 2, rd_data_vv+3456, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_15( 210,  vsmul.vv, 2, rd_data_vv+3456, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd14( 211,  vsmul.vv, 3, rd_data_vv+3520, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_15( 212,  vsmul.vv, 3, rd_data_vv+3520, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_17( 213,  vsmul.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_17( 214,  vsmul.vv, 1, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_17( 215,  vsmul.vv, 2, rd_data_vv+3968, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_17( 216,  vsmul.vv, 3, rd_data_vv+4032, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_18( 217,  vsmul.vv, 0, rd_data_vv+4096, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP_1_18( 218,  vsmul.vv, 1, rd_data_vv+4160, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP_1_18( 219,  vsmul.vv, 2, rd_data_vv+4224, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP_1_18( 220,  vsmul.vv, 3, rd_data_vv+4288, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP_rd18( 221,  vsmul.vv, 0, rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_1_19( 222,  vsmul.vv, 0, rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_rd18( 223,  vsmul.vv, 1, rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_1_19( 224,  vsmul.vv, 1, rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_rd18( 225,  vsmul.vv, 2, rd_data_vv+4480, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_1_19( 226,  vsmul.vv, 2, rd_data_vv+4480, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_rd18( 227,  vsmul.vv, 3, rd_data_vv+4544, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_1_19( 228,  vsmul.vv, 3, rd_data_vv+4544, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_1_20( 229,  vsmul.vv, 0, rd_data_vv+4608, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP_1_20( 230,  vsmul.vv, 1, rd_data_vv+4672, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP_1_20( 231,  vsmul.vv, 2, rd_data_vv+4736, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP_1_20( 232,  vsmul.vv, 3, rd_data_vv+4800, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP_rd20( 233,  vsmul.vv, 0, rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_1_21( 234,  vsmul.vv, 0, rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_rd20( 235,  vsmul.vv, 1, rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_1_21( 236,  vsmul.vv, 1, rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_rd20( 237,  vsmul.vv, 2, rd_data_vv+4992, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_1_21( 238,  vsmul.vv, 2, rd_data_vv+4992, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_rd20( 239,  vsmul.vv, 3, rd_data_vv+5056, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_1_21( 240,  vsmul.vv, 3, rd_data_vv+5056, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_1_22( 241,  vsmul.vv, 0, rd_data_vv+5120, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP_1_22( 242,  vsmul.vv, 1, rd_data_vv+5184, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP_1_22( 243,  vsmul.vv, 2, rd_data_vv+5248, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP_1_22( 244,  vsmul.vv, 3, rd_data_vv+5312, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP_rd22( 245,  vsmul.vv, 0, rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_1_23( 246,  vsmul.vv, 0, rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_rd22( 247,  vsmul.vv, 1, rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_1_23( 248,  vsmul.vv, 1, rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_rd22( 249,  vsmul.vv, 2, rd_data_vv+5504, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_1_23( 250,  vsmul.vv, 2, rd_data_vv+5504, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_rd22( 251,  vsmul.vv, 3, rd_data_vv+5568, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_1_23( 252,  vsmul.vv, 3, rd_data_vv+5568, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_1_25( 253,  vsmul.vv, 0, rd_data_vv+5888, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP_1_25( 254,  vsmul.vv, 1, rd_data_vv+5952, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP_1_25( 255,  vsmul.vv, 2, rd_data_vv+6016, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP_1_25( 256,  vsmul.vv, 3, rd_data_vv+6080, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP_1_26( 257,  vsmul.vv, 0, rd_data_vv+6144, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP_1_26( 258,  vsmul.vv, 1, rd_data_vv+6208, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP_1_26( 259,  vsmul.vv, 2, rd_data_vv+6272, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP_1_26( 260,  vsmul.vv, 3, rd_data_vv+6336, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP_rd26( 261,  vsmul.vv, 0, rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_1_27( 262,  vsmul.vv, 0, rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_rd26( 263,  vsmul.vv, 1, rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_1_27( 264,  vsmul.vv, 1, rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_rd26( 265,  vsmul.vv, 2, rd_data_vv+6528, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_1_27( 266,  vsmul.vv, 2, rd_data_vv+6528, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_rd26( 267,  vsmul.vv, 3, rd_data_vv+6592, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_1_27( 268,  vsmul.vv, 3, rd_data_vv+6592, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_1_28( 269,  vsmul.vv, 0, rd_data_vv+6656, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP_1_28( 270,  vsmul.vv, 1, rd_data_vv+6720, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP_1_28( 271,  vsmul.vv, 2, rd_data_vv+6784, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP_1_28( 272,  vsmul.vv, 3, rd_data_vv+6848, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP_rd28( 273,  vsmul.vv, 0, rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_1_29( 274,  vsmul.vv, 0, rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_rd28( 275,  vsmul.vv, 1, rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_1_29( 276,  vsmul.vv, 1, rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_rd28( 277,  vsmul.vv, 2, rd_data_vv+7040, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_1_29( 278,  vsmul.vv, 2, rd_data_vv+7040, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_rd28( 279,  vsmul.vv, 3, rd_data_vv+7104, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_1_29( 280,  vsmul.vv, 3, rd_data_vv+7104, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_1_30( 281,  vsmul.vv, 0, rd_data_vv+7168, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP_1_30( 282,  vsmul.vv, 1, rd_data_vv+7232, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP_1_30( 283,  vsmul.vv, 2, rd_data_vv+7296, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP_1_30( 284,  vsmul.vv, 3, rd_data_vv+7360, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP_rd30( 285,  vsmul.vv, 0, rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_1_31( 286,  vsmul.vv, 0, rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_rd30( 287,  vsmul.vv, 1, rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_1_31( 288,  vsmul.vv, 1, rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_rd30( 289,  vsmul.vv, 2, rd_data_vv+7552, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_1_31( 290,  vsmul.vv, 2, rd_data_vv+7552, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_rd30( 291,  vsmul.vv, 3, rd_data_vv+7616, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_1_31( 292,  vsmul.vv, 3, rd_data_vv+7616, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_1_2( 293,  vsmul.vv, 0, rd_data_vv+7680, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP_1_2( 294,  vsmul.vv, 1, rd_data_vv+7744, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP_1_2( 295,  vsmul.vv, 2, rd_data_vv+7808, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP_1_2( 296,  vsmul.vv, 3, rd_data_vv+7872, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP_1_3( 297,  vsmul.vv, 0, rd_data_vv+7936, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP_1_3( 298,  vsmul.vv, 1, rd_data_vv+8000, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP_1_3( 299,  vsmul.vv, 2, rd_data_vv+8064, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP_1_3( 300,  vsmul.vv, 3, rd_data_vv+8128, rs2_data+1984, rs1_data+1984)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_VX_OP( 301,  vsmul.vx, 0,rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 302,  vsmul.vx, 1,rd_data_vx+64, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 303,  vsmul.vx, 2,rd_data_vx+128, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 304,  vsmul.vx, 3,rd_data_vx+192, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 305,  vsmul.vx, 0,rd_data_vx+256, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 306,  vsmul.vx, 1,rd_data_vx+320, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 307,  vsmul.vx, 2,rd_data_vx+384, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 308,  vsmul.vx, 3,rd_data_vx+448, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 309,  vsmul.vx, 0,rd_data_vx+512, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 310,  vsmul.vx, 1,rd_data_vx+576, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 311,  vsmul.vx, 2,rd_data_vx+640, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 312,  vsmul.vx, 3,rd_data_vx+704, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 313,  vsmul.vx, 0,rd_data_vx+768, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 314,  vsmul.vx, 1,rd_data_vx+832, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 315,  vsmul.vx, 2,rd_data_vx+896, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 316,  vsmul.vx, 3,rd_data_vx+960, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 317,  vsmul.vx, 0,rd_data_vx+1024, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 318,  vsmul.vx, 1,rd_data_vx+1088, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 319,  vsmul.vx, 2,rd_data_vx+1152, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 320,  vsmul.vx, 3,rd_data_vx+1216, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 321,  vsmul.vx, 0,rd_data_vx+1280, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 322,  vsmul.vx, 1,rd_data_vx+1344, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 323,  vsmul.vx, 2,rd_data_vx+1408, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 324,  vsmul.vx, 3,rd_data_vx+1472, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 325,  vsmul.vx, 0,rd_data_vx+1536, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 326,  vsmul.vx, 1,rd_data_vx+1600, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 327,  vsmul.vx, 2,rd_data_vx+1664, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 328,  vsmul.vx, 3,rd_data_vx+1728, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 329,  vsmul.vx, 0,rd_data_vx+1792, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 330,  vsmul.vx, 1,rd_data_vx+1856, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 331,  vsmul.vx, 2,rd_data_vx+1920, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 332,  vsmul.vx, 3,rd_data_vx+1984, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 333,  vsmul.vx, 0,rd_data_vx+2048, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 334,  vsmul.vx, 1,rd_data_vx+2112, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 335,  vsmul.vx, 2,rd_data_vx+2176, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 336,  vsmul.vx, 3,rd_data_vx+2240, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 337,  vsmul.vx, 0,rd_data_vx+2304, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 338,  vsmul.vx, 1,rd_data_vx+2368, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 339,  vsmul.vx, 2,rd_data_vx+2432, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 340,  vsmul.vx, 3,rd_data_vx+2496, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 341,  vsmul.vx, 0,rd_data_vx+2560, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 342,  vsmul.vx, 1,rd_data_vx+2624, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 343,  vsmul.vx, 2,rd_data_vx+2688, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 344,  vsmul.vx, 3,rd_data_vx+2752, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 345,  vsmul.vx, 0,rd_data_vx+2816, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 346,  vsmul.vx, 1,rd_data_vx+2880, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 347,  vsmul.vx, 2,rd_data_vx+2944, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 348,  vsmul.vx, 3,rd_data_vx+3008, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 349,  vsmul.vx, 0,rd_data_vx+3072, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 350,  vsmul.vx, 1,rd_data_vx+3136, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 351,  vsmul.vx, 2,rd_data_vx+3200, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 352,  vsmul.vx, 3,rd_data_vx+3264, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 353,  vsmul.vx, 0,rd_data_vx+3328, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 354,  vsmul.vx, 1,rd_data_vx+3392, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 355,  vsmul.vx, 2,rd_data_vx+3456, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 356,  vsmul.vx, 3,rd_data_vx+3520, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 357,  vsmul.vx, 0,rd_data_vx+3584, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 358,  vsmul.vx, 1,rd_data_vx+3648, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 359,  vsmul.vx, 2,rd_data_vx+3712, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 360,  vsmul.vx, 3,rd_data_vx+3776, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 361,  vsmul.vx, 0,rd_data_vx+3840, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 362,  vsmul.vx, 1,rd_data_vx+3904, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 363,  vsmul.vx, 2,rd_data_vx+3968, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 364,  vsmul.vx, 3,rd_data_vx+4032, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 365,  vsmul.vx, 0,rd_data_vx+4096, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 366,  vsmul.vx, 1,rd_data_vx+4160, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 367,  vsmul.vx, 2,rd_data_vx+4224, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 368,  vsmul.vx, 3,rd_data_vx+4288, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 369,  vsmul.vx, 0,rd_data_vx+4352, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 370,  vsmul.vx, 1,rd_data_vx+4416, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 371,  vsmul.vx, 2,rd_data_vx+4480, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 372,  vsmul.vx, 3,rd_data_vx+4544, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 373,  vsmul.vx, 0,rd_data_vx+4608, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 374,  vsmul.vx, 1,rd_data_vx+4672, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 375,  vsmul.vx, 2,rd_data_vx+4736, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 376,  vsmul.vx, 3,rd_data_vx+4800, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 377,  vsmul.vx, 0,rd_data_vx+4864, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 378,  vsmul.vx, 1,rd_data_vx+4928, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 379,  vsmul.vx, 2,rd_data_vx+4992, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 380,  vsmul.vx, 3,rd_data_vx+5056, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 381,  vsmul.vx, 0,rd_data_vx+5120, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 382,  vsmul.vx, 1,rd_data_vx+5184, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 383,  vsmul.vx, 2,rd_data_vx+5248, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 384,  vsmul.vx, 3,rd_data_vx+5312, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 385,  vsmul.vx, 0,rd_data_vx+5376, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 386,  vsmul.vx, 1,rd_data_vx+5440, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 387,  vsmul.vx, 2,rd_data_vx+5504, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 388,  vsmul.vx, 3,rd_data_vx+5568, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 389,  vsmul.vx, 0,rd_data_vx+5632, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 390,  vsmul.vx, 1,rd_data_vx+5696, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 391,  vsmul.vx, 2,rd_data_vx+5760, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 392,  vsmul.vx, 3,rd_data_vx+5824, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 393,  vsmul.vx, 0,rd_data_vx+5888, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 394,  vsmul.vx, 1,rd_data_vx+5952, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 395,  vsmul.vx, 2,rd_data_vx+6016, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 396,  vsmul.vx, 3,rd_data_vx+6080, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 397,  vsmul.vx, 0,rd_data_vx+6144, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 398,  vsmul.vx, 1,rd_data_vx+6208, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 399,  vsmul.vx, 2,rd_data_vx+6272, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 400,  vsmul.vx, 3,rd_data_vx+6336, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 401,  vsmul.vx, 0,rd_data_vx+6400, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 402,  vsmul.vx, 1,rd_data_vx+6464, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 403,  vsmul.vx, 2,rd_data_vx+6528, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 404,  vsmul.vx, 3,rd_data_vx+6592, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 405,  vsmul.vx, 0,rd_data_vx+6656, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 406,  vsmul.vx, 1,rd_data_vx+6720, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 407,  vsmul.vx, 2,rd_data_vx+6784, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 408,  vsmul.vx, 3,rd_data_vx+6848, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 409,  vsmul.vx, 0,rd_data_vx+6912, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 410,  vsmul.vx, 1,rd_data_vx+6976, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 411,  vsmul.vx, 2,rd_data_vx+7040, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 412,  vsmul.vx, 3,rd_data_vx+7104, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 413,  vsmul.vx, 0,rd_data_vx+7168, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 414,  vsmul.vx, 1,rd_data_vx+7232, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 415,  vsmul.vx, 2,rd_data_vx+7296, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 416,  vsmul.vx, 3,rd_data_vx+7360, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 417,  vsmul.vx, 0,rd_data_vx+7424, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 418,  vsmul.vx, 1,rd_data_vx+7488, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 419,  vsmul.vx, 2,rd_data_vx+7552, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 420,  vsmul.vx, 3,rd_data_vx+7616, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 421,  vsmul.vx, 0,rd_data_vx+7680, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 422,  vsmul.vx, 1,rd_data_vx+7744, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 423,  vsmul.vx, 2,rd_data_vx+7808, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 424,  vsmul.vx, 3,rd_data_vx+7872, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 425,  vsmul.vx, 0,rd_data_vx+7936, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 426,  vsmul.vx, 1,rd_data_vx+8000, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 427,  vsmul.vx, 2,rd_data_vx+8064, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 428,  vsmul.vx, 3,rd_data_vx+8128, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 429,  vsmul.vx, 0,rd_data_vx+8192, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 430,  vsmul.vx, 1,rd_data_vx+8256, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 431,  vsmul.vx, 2,rd_data_vx+8320, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 432,  vsmul.vx, 3,rd_data_vx+8384, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 433,  vsmul.vx, 0,rd_data_vx+8448, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 434,  vsmul.vx, 1,rd_data_vx+8512, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 435,  vsmul.vx, 2,rd_data_vx+8576, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 436,  vsmul.vx, 3,rd_data_vx+8640, rs2_data+2112, 0xfffffffffffffffe)
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

.align 4
rs2_data:
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
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x00000055555555
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0xffffffffaaaaaaaa
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x00000000000000
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505

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
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000201
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000001
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
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
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
.word	0x00000000
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
.word	0x00000000
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
.word	0xffff8753
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
.word	0x22222222
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
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
.word	0x22222222
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
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
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
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
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff8753
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff8753
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c7
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff8753
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c7
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff8753
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x38e38e3a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
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
.word	0x38e38e3a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
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
.word	0x38e38e39
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
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
.word	0x38e38e39
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
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
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8752
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
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8752
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
.word	0xfffffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8751
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
.word	0xfffffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8751
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
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222222
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222222
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004869
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff6f30
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff6f30
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff6f30
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff6f31
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8752
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
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
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f31
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
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000078ad
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
.word	0x000078ad
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
.word	0x000078ad
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
.word	0x000078ad
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000090d0
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
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000090d0
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
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000090d0
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
.word	0x000090d1
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
.word	0x00000002
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
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
.word	0x00000003
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
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e38
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e38
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e38
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444443
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e39
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444443
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
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
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
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222220
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004869
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090cf
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090cf
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444443
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ac
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090cf
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444443
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090cf
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
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
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
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
.word	0x000078ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
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
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
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
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x38e38e3a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x38e38e3a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x38e38e39
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x38e38e39
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc71c71c8
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc71c71c8
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc71c71c8
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc71c71c9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
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
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
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
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
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
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000004
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
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x22222223
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c290
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28f5c28f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x22222223
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c290
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28f5c28f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x22222222
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c28f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28f5c28f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x22222223
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c28f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222223
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28f5c28f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004868
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090d0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004868
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090d0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004868
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090d0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004869
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090d1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444445
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb8520
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff8753
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444445
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb8520
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff8753
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444445
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb851f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff8753
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444445
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb851f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff8753
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff6f31
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff6f31
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff6f31
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff6f31
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff6f30
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff6f30
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff6f31
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff6f31
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
.word	0xffffffff
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
.word	0xffffffff
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
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000201
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000201
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000001
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
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x02000000
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
.word	0x00000000
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
.word	0x00000000
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
.word	0xffff8753
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
.word	0x22222222
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
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
.word	0x22222222
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
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
.word	0x22222222
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
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
.word	0x22222222
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
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
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
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
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
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
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
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
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x38e38e3a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
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
.word	0x38e38e3a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
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
.word	0x38e38e39
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
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
.word	0x38e38e39
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
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
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8752
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
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8752
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
.word	0xfffffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8751
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
.word	0xfffffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8751
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
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222222
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222222
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222222
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222222
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004869
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004869
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff6f30
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff6f30
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff6f30
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff6f31
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff8752
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
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
.word	0xffff8752
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
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
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f31
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
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f31
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
.word	0x000090d0
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
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000090d0
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
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000090d0
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
.word	0x000090d1
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
.word	0x00000002
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
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
.word	0x00000003
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
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e38
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e38
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e38
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e38
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e38
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444443
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e38
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444443
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e39
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444443
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e39
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444443
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
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
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
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x22222221
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222220
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222220
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090cf
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090cf
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444443
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ac
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090cf
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444443
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090cf
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
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
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
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
.word	0x000078ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
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
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
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
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x38e38e3a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x38e38e3a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x38e38e3a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x38e38e3a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x38e38e39
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x38e38e39
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x38e38e39
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x38e38e39
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc71c71c8
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc71c71c8
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc71c71c8
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc71c71c9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
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
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
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
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
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
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000004
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
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x22222223
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c290
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28f5c28f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x22222223
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c290
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28f5c28f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x22222223
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c290
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28f5c28f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x22222223
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c290
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28f5c28f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x22222222
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c28f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28f5c28f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x22222222
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c28f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28f5c28f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x22222223
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c28f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222223
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28f5c28f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x22222223
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c28f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222223
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28f5c28f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004868
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090d0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004868
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090d0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004868
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090d0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004869
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000090d1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444445
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb8520
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff8753
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444445
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb8520
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff8753
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444445
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb851f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff8753
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444445
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb851f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff8753
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
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
.word	0x00000000
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
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
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
.word	0x00000001
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
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
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
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
.word	0xfffffffe
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
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
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
.word	0xfffffffe
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
.word	0xfffffffe
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
.word	0xfffffffe
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
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
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
.word	0xfffffffe
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
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
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
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
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
.word	0xfffffffe
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
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
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
.word	0xfffffffe
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
.word	0xfffffffe
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
.word	0xfffffffe
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
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
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
.word	0xfffffffe
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
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
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
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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

rd_data_vi:

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
    

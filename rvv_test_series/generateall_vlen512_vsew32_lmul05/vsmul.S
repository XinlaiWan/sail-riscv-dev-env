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
#define TEST_AVG_VV_OP_rd1( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v1, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v1, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v1, v16, v8, v0.t; \
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
#define TEST_AVG_VV_OP_rd3( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v3, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v3, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v3, v16, v8, v0.t; \
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
#define TEST_AVG_VV_OP_rd5( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v5, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v5, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v5, v16, v8, v0.t; \
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
#define TEST_AVG_VV_OP_rd7( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v7, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v7, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v7, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd9( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v9, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v9, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v9, v16, v8, v0.t; \
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
#define TEST_AVG_VV_OP_rd11( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v11, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v11, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v11, v16, v8, v0.t; \
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
#define TEST_AVG_VV_OP_rd13( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v13, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v13, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v13, v16, v8, v0.t; \
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
#define TEST_AVG_VV_OP_rd15( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v15, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v15, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v15, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd17( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v17, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v17, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v17, v16, v8, v0.t; \
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
#define TEST_AVG_VV_OP_rd19( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v19, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v19, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v19, v16, v8, v0.t; \
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
#define TEST_AVG_VV_OP_rd21( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v21, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v21, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v21, v16, v8, v0.t; \
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
#define TEST_AVG_VV_OP_rd23( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v23, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v23, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v23, v16, v8, v0.t; \
            )
#define TEST_AVG_VV_OP_rd25( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v25, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v25, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v25, v16, v8, v0.t; \
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
#define TEST_AVG_VV_OP_rd27( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v27, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v27, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v27, v16, v8, v0.t; \
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
#define TEST_AVG_VV_OP_rd29( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v29, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v29, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v29, v16, v8, v0.t; \
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
#define TEST_AVG_VV_OP_rd31( testnum, inst, vxrm_val, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v31, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v31, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    csrwi vxrm, vxrm_val; \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v31, v16, v8, v0.t; \
            )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_AVG_VV_OP( 1,  vsmul.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 2,  vsmul.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 3,  vsmul.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 4,  vsmul.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 5,  vsmul.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 6,  vsmul.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 7,  vsmul.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 8,  vsmul.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 9,  vsmul.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 10,  vsmul.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 11,  vsmul.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 12,  vsmul.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 13,  vsmul.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 14,  vsmul.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 15,  vsmul.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 16,  vsmul.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 17,  vsmul.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 18,  vsmul.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 19,  vsmul.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 20,  vsmul.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 21,  vsmul.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 22,  vsmul.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 23,  vsmul.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 24,  vsmul.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 25,  vsmul.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 26,  vsmul.vv, 1, rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 27,  vsmul.vv, 2, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 28,  vsmul.vv, 3, rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 29,  vsmul.vv, 0, rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 30,  vsmul.vv, 1, rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 31,  vsmul.vv, 2, rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 32,  vsmul.vv, 3, rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 33,  vsmul.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 34,  vsmul.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 35,  vsmul.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 36,  vsmul.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 37,  vsmul.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 38,  vsmul.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 39,  vsmul.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 40,  vsmul.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 41,  vsmul.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 42,  vsmul.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 43,  vsmul.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 44,  vsmul.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 45,  vsmul.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 46,  vsmul.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 47,  vsmul.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 48,  vsmul.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 49,  vsmul.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 50,  vsmul.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 51,  vsmul.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 52,  vsmul.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 53,  vsmul.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 54,  vsmul.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 55,  vsmul.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 56,  vsmul.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 57,  vsmul.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 58,  vsmul.vv, 1, rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 59,  vsmul.vv, 2, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 60,  vsmul.vv, 3, rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 61,  vsmul.vv, 0, rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 62,  vsmul.vv, 1, rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 63,  vsmul.vv, 2, rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 64,  vsmul.vv, 3, rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 65,  vsmul.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 66,  vsmul.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 67,  vsmul.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 68,  vsmul.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 69,  vsmul.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 70,  vsmul.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 71,  vsmul.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 72,  vsmul.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 73,  vsmul.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 74,  vsmul.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 75,  vsmul.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 76,  vsmul.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 77,  vsmul.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 78,  vsmul.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 79,  vsmul.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 80,  vsmul.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 81,  vsmul.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 82,  vsmul.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 83,  vsmul.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 84,  vsmul.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 85,  vsmul.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 86,  vsmul.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 87,  vsmul.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 88,  vsmul.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 89,  vsmul.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 90,  vsmul.vv, 1, rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 91,  vsmul.vv, 2, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 92,  vsmul.vv, 3, rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 93,  vsmul.vv, 0, rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 94,  vsmul.vv, 1, rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 95,  vsmul.vv, 2, rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 96,  vsmul.vv, 3, rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 97,  vsmul.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 98,  vsmul.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 99,  vsmul.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 100,  vsmul.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 101,  vsmul.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 102,  vsmul.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 103,  vsmul.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 104,  vsmul.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 105,  vsmul.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 106,  vsmul.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 107,  vsmul.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 108,  vsmul.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 109,  vsmul.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 110,  vsmul.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 111,  vsmul.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 112,  vsmul.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 113,  vsmul.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 114,  vsmul.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 115,  vsmul.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 116,  vsmul.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 117,  vsmul.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 118,  vsmul.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 119,  vsmul.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 120,  vsmul.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 121,  vsmul.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 122,  vsmul.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 123,  vsmul.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 124,  vsmul.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 125,  vsmul.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 126,  vsmul.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 127,  vsmul.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 128,  vsmul.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 129,  vsmul.vv, 0, rd_data_vv+4096, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 130,  vsmul.vv, 1, rd_data_vv+4128, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 131,  vsmul.vv, 2, rd_data_vv+4160, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 132,  vsmul.vv, 3, rd_data_vv+4192, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 133,  vsmul.vv, 0, rd_data_vv+4224, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 134,  vsmul.vv, 1, rd_data_vv+4256, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 135,  vsmul.vv, 2, rd_data_vv+4288, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 136,  vsmul.vv, 3, rd_data_vv+4320, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 137,  vsmul.vv, 0, rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 138,  vsmul.vv, 1, rd_data_vv+4384, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 139,  vsmul.vv, 2, rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 140,  vsmul.vv, 3, rd_data_vv+4448, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 141,  vsmul.vv, 0, rd_data_vv+4480, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 142,  vsmul.vv, 1, rd_data_vv+4512, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 143,  vsmul.vv, 2, rd_data_vv+4544, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 144,  vsmul.vv, 3, rd_data_vv+4576, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 145,  vsmul.vv, 0, rd_data_vv+4608, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 146,  vsmul.vv, 1, rd_data_vv+4640, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 147,  vsmul.vv, 2, rd_data_vv+4672, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 148,  vsmul.vv, 3, rd_data_vv+4704, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 149,  vsmul.vv, 0, rd_data_vv+4736, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 150,  vsmul.vv, 1, rd_data_vv+4768, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 151,  vsmul.vv, 2, rd_data_vv+4800, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 152,  vsmul.vv, 3, rd_data_vv+4832, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 153,  vsmul.vv, 0, rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 154,  vsmul.vv, 1, rd_data_vv+4896, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 155,  vsmul.vv, 2, rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 156,  vsmul.vv, 3, rd_data_vv+4960, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 157,  vsmul.vv, 0, rd_data_vv+4992, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 158,  vsmul.vv, 1, rd_data_vv+5024, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 159,  vsmul.vv, 2, rd_data_vv+5056, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 160,  vsmul.vv, 3, rd_data_vv+5088, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 161,  vsmul.vv, 0, rd_data_vv+5120, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 162,  vsmul.vv, 1, rd_data_vv+5152, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 163,  vsmul.vv, 2, rd_data_vv+5184, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 164,  vsmul.vv, 3, rd_data_vv+5216, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 165,  vsmul.vv, 0, rd_data_vv+5248, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 166,  vsmul.vv, 1, rd_data_vv+5280, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 167,  vsmul.vv, 2, rd_data_vv+5312, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 168,  vsmul.vv, 3, rd_data_vv+5344, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 169,  vsmul.vv, 0, rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 170,  vsmul.vv, 1, rd_data_vv+5408, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 171,  vsmul.vv, 2, rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 172,  vsmul.vv, 3, rd_data_vv+5472, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 173,  vsmul.vv, 0, rd_data_vv+5504, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 174,  vsmul.vv, 1, rd_data_vv+5536, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 175,  vsmul.vv, 2, rd_data_vv+5568, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 176,  vsmul.vv, 3, rd_data_vv+5600, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 177,  vsmul.vv, 0, rd_data_vv+5632, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 178,  vsmul.vv, 1, rd_data_vv+5664, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 179,  vsmul.vv, 2, rd_data_vv+5696, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 180,  vsmul.vv, 3, rd_data_vv+5728, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 181,  vsmul.vv, 0, rd_data_vv+5760, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 182,  vsmul.vv, 1, rd_data_vv+5792, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 183,  vsmul.vv, 2, rd_data_vv+5824, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 184,  vsmul.vv, 3, rd_data_vv+5856, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 185,  vsmul.vv, 0, rd_data_vv+5888, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 186,  vsmul.vv, 1, rd_data_vv+5920, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 187,  vsmul.vv, 2, rd_data_vv+5952, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 188,  vsmul.vv, 3, rd_data_vv+5984, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 189,  vsmul.vv, 0, rd_data_vv+6016, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 190,  vsmul.vv, 1, rd_data_vv+6048, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 191,  vsmul.vv, 2, rd_data_vv+6080, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 192,  vsmul.vv, 3, rd_data_vv+6112, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 193,  vsmul.vv, 0, rd_data_vv+6144, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 194,  vsmul.vv, 1, rd_data_vv+6176, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 195,  vsmul.vv, 2, rd_data_vv+6208, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 196,  vsmul.vv, 3, rd_data_vv+6240, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 197,  vsmul.vv, 0, rd_data_vv+6272, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 198,  vsmul.vv, 1, rd_data_vv+6304, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 199,  vsmul.vv, 2, rd_data_vv+6336, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 200,  vsmul.vv, 3, rd_data_vv+6368, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 201,  vsmul.vv, 0, rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 202,  vsmul.vv, 1, rd_data_vv+6432, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 203,  vsmul.vv, 2, rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 204,  vsmul.vv, 3, rd_data_vv+6496, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 205,  vsmul.vv, 0, rd_data_vv+6528, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 206,  vsmul.vv, 1, rd_data_vv+6560, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 207,  vsmul.vv, 2, rd_data_vv+6592, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 208,  vsmul.vv, 3, rd_data_vv+6624, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 209,  vsmul.vv, 0, rd_data_vv+6656, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 210,  vsmul.vv, 1, rd_data_vv+6688, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 211,  vsmul.vv, 2, rd_data_vv+6720, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 212,  vsmul.vv, 3, rd_data_vv+6752, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 213,  vsmul.vv, 0, rd_data_vv+6784, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 214,  vsmul.vv, 1, rd_data_vv+6816, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 215,  vsmul.vv, 2, rd_data_vv+6848, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 216,  vsmul.vv, 3, rd_data_vv+6880, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 217,  vsmul.vv, 0, rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 218,  vsmul.vv, 1, rd_data_vv+6944, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 219,  vsmul.vv, 2, rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 220,  vsmul.vv, 3, rd_data_vv+7008, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 221,  vsmul.vv, 0, rd_data_vv+7040, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 222,  vsmul.vv, 1, rd_data_vv+7072, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 223,  vsmul.vv, 2, rd_data_vv+7104, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 224,  vsmul.vv, 3, rd_data_vv+7136, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 225,  vsmul.vv, 0, rd_data_vv+7168, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 226,  vsmul.vv, 1, rd_data_vv+7200, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 227,  vsmul.vv, 2, rd_data_vv+7232, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 228,  vsmul.vv, 3, rd_data_vv+7264, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 229,  vsmul.vv, 0, rd_data_vv+7296, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 230,  vsmul.vv, 1, rd_data_vv+7328, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 231,  vsmul.vv, 2, rd_data_vv+7360, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 232,  vsmul.vv, 3, rd_data_vv+7392, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 233,  vsmul.vv, 0, rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 234,  vsmul.vv, 1, rd_data_vv+7456, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 235,  vsmul.vv, 2, rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 236,  vsmul.vv, 3, rd_data_vv+7520, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 237,  vsmul.vv, 0, rd_data_vv+7552, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 238,  vsmul.vv, 1, rd_data_vv+7584, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 239,  vsmul.vv, 2, rd_data_vv+7616, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 240,  vsmul.vv, 3, rd_data_vv+7648, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 241,  vsmul.vv, 0, rd_data_vv+7680, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 242,  vsmul.vv, 1, rd_data_vv+7712, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 243,  vsmul.vv, 2, rd_data_vv+7744, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 244,  vsmul.vv, 3, rd_data_vv+7776, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 245,  vsmul.vv, 0, rd_data_vv+7808, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 246,  vsmul.vv, 1, rd_data_vv+7840, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 247,  vsmul.vv, 2, rd_data_vv+7872, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 248,  vsmul.vv, 3, rd_data_vv+7904, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 249,  vsmul.vv, 0, rd_data_vv+7936, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 250,  vsmul.vv, 1, rd_data_vv+7968, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 251,  vsmul.vv, 2, rd_data_vv+8000, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 252,  vsmul.vv, 3, rd_data_vv+8032, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 253,  vsmul.vv, 0, rd_data_vv+8064, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 254,  vsmul.vv, 1, rd_data_vv+8096, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 255,  vsmul.vv, 2, rd_data_vv+8128, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 256,  vsmul.vv, 3, rd_data_vv+8160, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 257,  vsmul.vv, 0, rd_data_vv+8192, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 258,  vsmul.vv, 1, rd_data_vv+8224, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 259,  vsmul.vv, 2, rd_data_vv+8256, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 260,  vsmul.vv, 3, rd_data_vv+8288, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 261,  vsmul.vv, 0, rd_data_vv+8320, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 262,  vsmul.vv, 1, rd_data_vv+8352, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 263,  vsmul.vv, 2, rd_data_vv+8384, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 264,  vsmul.vv, 3, rd_data_vv+8416, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 265,  vsmul.vv, 0, rd_data_vv+8448, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 266,  vsmul.vv, 1, rd_data_vv+8480, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 267,  vsmul.vv, 2, rd_data_vv+8512, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 268,  vsmul.vv, 3, rd_data_vv+8544, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 269,  vsmul.vv, 0, rd_data_vv+8576, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 270,  vsmul.vv, 1, rd_data_vv+8608, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 271,  vsmul.vv, 2, rd_data_vv+8640, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 272,  vsmul.vv, 3, rd_data_vv+8672, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP_rd1( 273,  vsmul.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 274,  vsmul.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 275,  vsmul.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 276,  vsmul.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 277,  vsmul.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 278,  vsmul.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 279,  vsmul.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 280,  vsmul.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd2( 281,  vsmul.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 282,  vsmul.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 283,  vsmul.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 284,  vsmul.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 285,  vsmul.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 286,  vsmul.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 287,  vsmul.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 288,  vsmul.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd3( 289,  vsmul.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 290,  vsmul.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 291,  vsmul.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 292,  vsmul.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 293,  vsmul.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 294,  vsmul.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 295,  vsmul.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 296,  vsmul.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd4( 297,  vsmul.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 298,  vsmul.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 299,  vsmul.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 300,  vsmul.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 301,  vsmul.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 302,  vsmul.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 303,  vsmul.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 304,  vsmul.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd5( 305,  vsmul.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 306,  vsmul.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 307,  vsmul.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 308,  vsmul.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 309,  vsmul.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 310,  vsmul.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 311,  vsmul.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 312,  vsmul.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd6( 313,  vsmul.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 314,  vsmul.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 315,  vsmul.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 316,  vsmul.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 317,  vsmul.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 318,  vsmul.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 319,  vsmul.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 320,  vsmul.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd7( 321,  vsmul.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 322,  vsmul.vv, 1, rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 323,  vsmul.vv, 2, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 324,  vsmul.vv, 3, rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_9( 325,  vsmul.vv, 0, rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 326,  vsmul.vv, 1, rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 327,  vsmul.vv, 2, rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 328,  vsmul.vv, 3, rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_rd9( 329,  vsmul.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 330,  vsmul.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 331,  vsmul.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 332,  vsmul.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 333,  vsmul.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 334,  vsmul.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 335,  vsmul.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 336,  vsmul.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd10( 337,  vsmul.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 338,  vsmul.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 339,  vsmul.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 340,  vsmul.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 341,  vsmul.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 342,  vsmul.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 343,  vsmul.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 344,  vsmul.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd11( 345,  vsmul.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 346,  vsmul.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 347,  vsmul.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 348,  vsmul.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 349,  vsmul.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 350,  vsmul.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 351,  vsmul.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 352,  vsmul.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd12( 353,  vsmul.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 354,  vsmul.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 355,  vsmul.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 356,  vsmul.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 357,  vsmul.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 358,  vsmul.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 359,  vsmul.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 360,  vsmul.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd13( 361,  vsmul.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 362,  vsmul.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 363,  vsmul.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 364,  vsmul.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 365,  vsmul.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 366,  vsmul.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 367,  vsmul.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 368,  vsmul.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd14( 369,  vsmul.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 370,  vsmul.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 371,  vsmul.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 372,  vsmul.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 373,  vsmul.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 374,  vsmul.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 375,  vsmul.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 376,  vsmul.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd15( 377,  vsmul.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 378,  vsmul.vv, 1, rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 379,  vsmul.vv, 2, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 380,  vsmul.vv, 3, rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_1_17( 381,  vsmul.vv, 0, rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 382,  vsmul.vv, 1, rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 383,  vsmul.vv, 2, rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 384,  vsmul.vv, 3, rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_rd17( 385,  vsmul.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 386,  vsmul.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 387,  vsmul.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 388,  vsmul.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 389,  vsmul.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 390,  vsmul.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 391,  vsmul.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 392,  vsmul.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd18( 393,  vsmul.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 394,  vsmul.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 395,  vsmul.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 396,  vsmul.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 397,  vsmul.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 398,  vsmul.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 399,  vsmul.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 400,  vsmul.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd19( 401,  vsmul.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 402,  vsmul.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 403,  vsmul.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 404,  vsmul.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 405,  vsmul.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 406,  vsmul.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 407,  vsmul.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 408,  vsmul.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd20( 409,  vsmul.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 410,  vsmul.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 411,  vsmul.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 412,  vsmul.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 413,  vsmul.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 414,  vsmul.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 415,  vsmul.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 416,  vsmul.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd21( 417,  vsmul.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 418,  vsmul.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 419,  vsmul.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 420,  vsmul.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 421,  vsmul.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 422,  vsmul.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 423,  vsmul.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 424,  vsmul.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd22( 425,  vsmul.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 426,  vsmul.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 427,  vsmul.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 428,  vsmul.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 429,  vsmul.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 430,  vsmul.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 431,  vsmul.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 432,  vsmul.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd23( 433,  vsmul.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 434,  vsmul.vv, 1, rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 435,  vsmul.vv, 2, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 436,  vsmul.vv, 3, rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_25( 437,  vsmul.vv, 0, rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 438,  vsmul.vv, 1, rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 439,  vsmul.vv, 2, rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 440,  vsmul.vv, 3, rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_rd25( 441,  vsmul.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 442,  vsmul.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 443,  vsmul.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 444,  vsmul.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 445,  vsmul.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 446,  vsmul.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 447,  vsmul.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 448,  vsmul.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd26( 449,  vsmul.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 450,  vsmul.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 451,  vsmul.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 452,  vsmul.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 453,  vsmul.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 454,  vsmul.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 455,  vsmul.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 456,  vsmul.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd27( 457,  vsmul.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 458,  vsmul.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 459,  vsmul.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 460,  vsmul.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 461,  vsmul.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 462,  vsmul.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 463,  vsmul.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 464,  vsmul.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd28( 465,  vsmul.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 466,  vsmul.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 467,  vsmul.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 468,  vsmul.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 469,  vsmul.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 470,  vsmul.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 471,  vsmul.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 472,  vsmul.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd29( 473,  vsmul.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 474,  vsmul.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 475,  vsmul.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 476,  vsmul.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 477,  vsmul.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 478,  vsmul.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 479,  vsmul.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 480,  vsmul.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd30( 481,  vsmul.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 482,  vsmul.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 483,  vsmul.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 484,  vsmul.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 485,  vsmul.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 486,  vsmul.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 487,  vsmul.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 488,  vsmul.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd31( 489,  vsmul.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 490,  vsmul.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 491,  vsmul.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 492,  vsmul.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 493,  vsmul.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 494,  vsmul.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 495,  vsmul.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 496,  vsmul.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd1( 497,  vsmul.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 498,  vsmul.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 499,  vsmul.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 500,  vsmul.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 501,  vsmul.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 502,  vsmul.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 503,  vsmul.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 504,  vsmul.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_VX_OP( 505,  vsmul.vx, 0,rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 506,  vsmul.vx, 1,rd_data_vx+32, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 507,  vsmul.vx, 2,rd_data_vx+64, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 508,  vsmul.vx, 3,rd_data_vx+96, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 509,  vsmul.vx, 0,rd_data_vx+128, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 510,  vsmul.vx, 1,rd_data_vx+160, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 511,  vsmul.vx, 2,rd_data_vx+192, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 512,  vsmul.vx, 3,rd_data_vx+224, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 513,  vsmul.vx, 0,rd_data_vx+256, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 514,  vsmul.vx, 1,rd_data_vx+288, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 515,  vsmul.vx, 2,rd_data_vx+320, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 516,  vsmul.vx, 3,rd_data_vx+352, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 517,  vsmul.vx, 0,rd_data_vx+384, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 518,  vsmul.vx, 1,rd_data_vx+416, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 519,  vsmul.vx, 2,rd_data_vx+448, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 520,  vsmul.vx, 3,rd_data_vx+480, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 521,  vsmul.vx, 0,rd_data_vx+512, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 522,  vsmul.vx, 1,rd_data_vx+544, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 523,  vsmul.vx, 2,rd_data_vx+576, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 524,  vsmul.vx, 3,rd_data_vx+608, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 525,  vsmul.vx, 0,rd_data_vx+640, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 526,  vsmul.vx, 1,rd_data_vx+672, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 527,  vsmul.vx, 2,rd_data_vx+704, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 528,  vsmul.vx, 3,rd_data_vx+736, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 529,  vsmul.vx, 0,rd_data_vx+768, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 530,  vsmul.vx, 1,rd_data_vx+800, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 531,  vsmul.vx, 2,rd_data_vx+832, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 532,  vsmul.vx, 3,rd_data_vx+864, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 533,  vsmul.vx, 0,rd_data_vx+896, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 534,  vsmul.vx, 1,rd_data_vx+928, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 535,  vsmul.vx, 2,rd_data_vx+960, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 536,  vsmul.vx, 3,rd_data_vx+992, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 537,  vsmul.vx, 0,rd_data_vx+1024, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 538,  vsmul.vx, 1,rd_data_vx+1056, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 539,  vsmul.vx, 2,rd_data_vx+1088, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 540,  vsmul.vx, 3,rd_data_vx+1120, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 541,  vsmul.vx, 0,rd_data_vx+1152, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 542,  vsmul.vx, 1,rd_data_vx+1184, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 543,  vsmul.vx, 2,rd_data_vx+1216, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 544,  vsmul.vx, 3,rd_data_vx+1248, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 545,  vsmul.vx, 0,rd_data_vx+1280, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 546,  vsmul.vx, 1,rd_data_vx+1312, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 547,  vsmul.vx, 2,rd_data_vx+1344, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 548,  vsmul.vx, 3,rd_data_vx+1376, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 549,  vsmul.vx, 0,rd_data_vx+1408, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 550,  vsmul.vx, 1,rd_data_vx+1440, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 551,  vsmul.vx, 2,rd_data_vx+1472, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 552,  vsmul.vx, 3,rd_data_vx+1504, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 553,  vsmul.vx, 0,rd_data_vx+1536, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 554,  vsmul.vx, 1,rd_data_vx+1568, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 555,  vsmul.vx, 2,rd_data_vx+1600, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 556,  vsmul.vx, 3,rd_data_vx+1632, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 557,  vsmul.vx, 0,rd_data_vx+1664, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 558,  vsmul.vx, 1,rd_data_vx+1696, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 559,  vsmul.vx, 2,rd_data_vx+1728, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 560,  vsmul.vx, 3,rd_data_vx+1760, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 561,  vsmul.vx, 0,rd_data_vx+1792, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 562,  vsmul.vx, 1,rd_data_vx+1824, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 563,  vsmul.vx, 2,rd_data_vx+1856, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 564,  vsmul.vx, 3,rd_data_vx+1888, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 565,  vsmul.vx, 0,rd_data_vx+1920, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 566,  vsmul.vx, 1,rd_data_vx+1952, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 567,  vsmul.vx, 2,rd_data_vx+1984, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 568,  vsmul.vx, 3,rd_data_vx+2016, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 569,  vsmul.vx, 0,rd_data_vx+2048, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 570,  vsmul.vx, 1,rd_data_vx+2080, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 571,  vsmul.vx, 2,rd_data_vx+2112, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 572,  vsmul.vx, 3,rd_data_vx+2144, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 573,  vsmul.vx, 0,rd_data_vx+2176, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 574,  vsmul.vx, 1,rd_data_vx+2208, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 575,  vsmul.vx, 2,rd_data_vx+2240, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 576,  vsmul.vx, 3,rd_data_vx+2272, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 577,  vsmul.vx, 0,rd_data_vx+2304, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 578,  vsmul.vx, 1,rd_data_vx+2336, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 579,  vsmul.vx, 2,rd_data_vx+2368, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 580,  vsmul.vx, 3,rd_data_vx+2400, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 581,  vsmul.vx, 0,rd_data_vx+2432, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 582,  vsmul.vx, 1,rd_data_vx+2464, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 583,  vsmul.vx, 2,rd_data_vx+2496, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 584,  vsmul.vx, 3,rd_data_vx+2528, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 585,  vsmul.vx, 0,rd_data_vx+2560, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 586,  vsmul.vx, 1,rd_data_vx+2592, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 587,  vsmul.vx, 2,rd_data_vx+2624, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 588,  vsmul.vx, 3,rd_data_vx+2656, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 589,  vsmul.vx, 0,rd_data_vx+2688, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 590,  vsmul.vx, 1,rd_data_vx+2720, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 591,  vsmul.vx, 2,rd_data_vx+2752, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 592,  vsmul.vx, 3,rd_data_vx+2784, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 593,  vsmul.vx, 0,rd_data_vx+2816, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 594,  vsmul.vx, 1,rd_data_vx+2848, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 595,  vsmul.vx, 2,rd_data_vx+2880, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 596,  vsmul.vx, 3,rd_data_vx+2912, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 597,  vsmul.vx, 0,rd_data_vx+2944, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 598,  vsmul.vx, 1,rd_data_vx+2976, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 599,  vsmul.vx, 2,rd_data_vx+3008, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 600,  vsmul.vx, 3,rd_data_vx+3040, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 601,  vsmul.vx, 0,rd_data_vx+3072, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 602,  vsmul.vx, 1,rd_data_vx+3104, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 603,  vsmul.vx, 2,rd_data_vx+3136, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 604,  vsmul.vx, 3,rd_data_vx+3168, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 605,  vsmul.vx, 0,rd_data_vx+3200, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 606,  vsmul.vx, 1,rd_data_vx+3232, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 607,  vsmul.vx, 2,rd_data_vx+3264, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 608,  vsmul.vx, 3,rd_data_vx+3296, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 609,  vsmul.vx, 0,rd_data_vx+3328, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 610,  vsmul.vx, 1,rd_data_vx+3360, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 611,  vsmul.vx, 2,rd_data_vx+3392, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 612,  vsmul.vx, 3,rd_data_vx+3424, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 613,  vsmul.vx, 0,rd_data_vx+3456, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 614,  vsmul.vx, 1,rd_data_vx+3488, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 615,  vsmul.vx, 2,rd_data_vx+3520, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 616,  vsmul.vx, 3,rd_data_vx+3552, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 617,  vsmul.vx, 0,rd_data_vx+3584, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 618,  vsmul.vx, 1,rd_data_vx+3616, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 619,  vsmul.vx, 2,rd_data_vx+3648, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 620,  vsmul.vx, 3,rd_data_vx+3680, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 621,  vsmul.vx, 0,rd_data_vx+3712, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 622,  vsmul.vx, 1,rd_data_vx+3744, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 623,  vsmul.vx, 2,rd_data_vx+3776, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 624,  vsmul.vx, 3,rd_data_vx+3808, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 625,  vsmul.vx, 0,rd_data_vx+3840, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 626,  vsmul.vx, 1,rd_data_vx+3872, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 627,  vsmul.vx, 2,rd_data_vx+3904, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 628,  vsmul.vx, 3,rd_data_vx+3936, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 629,  vsmul.vx, 0,rd_data_vx+3968, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 630,  vsmul.vx, 1,rd_data_vx+4000, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 631,  vsmul.vx, 2,rd_data_vx+4032, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 632,  vsmul.vx, 3,rd_data_vx+4064, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 633,  vsmul.vx, 0,rd_data_vx+4096, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 634,  vsmul.vx, 1,rd_data_vx+4128, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 635,  vsmul.vx, 2,rd_data_vx+4160, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 636,  vsmul.vx, 3,rd_data_vx+4192, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 637,  vsmul.vx, 0,rd_data_vx+4224, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 638,  vsmul.vx, 1,rd_data_vx+4256, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 639,  vsmul.vx, 2,rd_data_vx+4288, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 640,  vsmul.vx, 3,rd_data_vx+4320, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 641,  vsmul.vx, 0,rd_data_vx+4352, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 642,  vsmul.vx, 1,rd_data_vx+4384, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 643,  vsmul.vx, 2,rd_data_vx+4416, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 644,  vsmul.vx, 3,rd_data_vx+4448, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 645,  vsmul.vx, 0,rd_data_vx+4480, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 646,  vsmul.vx, 1,rd_data_vx+4512, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 647,  vsmul.vx, 2,rd_data_vx+4544, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 648,  vsmul.vx, 3,rd_data_vx+4576, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 649,  vsmul.vx, 0,rd_data_vx+4608, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 650,  vsmul.vx, 1,rd_data_vx+4640, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 651,  vsmul.vx, 2,rd_data_vx+4672, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 652,  vsmul.vx, 3,rd_data_vx+4704, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 653,  vsmul.vx, 0,rd_data_vx+4736, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 654,  vsmul.vx, 1,rd_data_vx+4768, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 655,  vsmul.vx, 2,rd_data_vx+4800, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 656,  vsmul.vx, 3,rd_data_vx+4832, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 657,  vsmul.vx, 0,rd_data_vx+4864, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 658,  vsmul.vx, 1,rd_data_vx+4896, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 659,  vsmul.vx, 2,rd_data_vx+4928, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 660,  vsmul.vx, 3,rd_data_vx+4960, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 661,  vsmul.vx, 0,rd_data_vx+4992, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 662,  vsmul.vx, 1,rd_data_vx+5024, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 663,  vsmul.vx, 2,rd_data_vx+5056, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 664,  vsmul.vx, 3,rd_data_vx+5088, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 665,  vsmul.vx, 0,rd_data_vx+5120, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 666,  vsmul.vx, 1,rd_data_vx+5152, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 667,  vsmul.vx, 2,rd_data_vx+5184, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 668,  vsmul.vx, 3,rd_data_vx+5216, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 669,  vsmul.vx, 0,rd_data_vx+5248, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 670,  vsmul.vx, 1,rd_data_vx+5280, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 671,  vsmul.vx, 2,rd_data_vx+5312, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 672,  vsmul.vx, 3,rd_data_vx+5344, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 673,  vsmul.vx, 0,rd_data_vx+5376, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 674,  vsmul.vx, 1,rd_data_vx+5408, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 675,  vsmul.vx, 2,rd_data_vx+5440, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 676,  vsmul.vx, 3,rd_data_vx+5472, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 677,  vsmul.vx, 0,rd_data_vx+5504, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 678,  vsmul.vx, 1,rd_data_vx+5536, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 679,  vsmul.vx, 2,rd_data_vx+5568, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 680,  vsmul.vx, 3,rd_data_vx+5600, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 681,  vsmul.vx, 0,rd_data_vx+5632, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 682,  vsmul.vx, 1,rd_data_vx+5664, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 683,  vsmul.vx, 2,rd_data_vx+5696, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 684,  vsmul.vx, 3,rd_data_vx+5728, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 685,  vsmul.vx, 0,rd_data_vx+5760, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 686,  vsmul.vx, 1,rd_data_vx+5792, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 687,  vsmul.vx, 2,rd_data_vx+5824, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 688,  vsmul.vx, 3,rd_data_vx+5856, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 689,  vsmul.vx, 0,rd_data_vx+5888, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 690,  vsmul.vx, 1,rd_data_vx+5920, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 691,  vsmul.vx, 2,rd_data_vx+5952, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 692,  vsmul.vx, 3,rd_data_vx+5984, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 693,  vsmul.vx, 0,rd_data_vx+6016, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 694,  vsmul.vx, 1,rd_data_vx+6048, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 695,  vsmul.vx, 2,rd_data_vx+6080, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 696,  vsmul.vx, 3,rd_data_vx+6112, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 697,  vsmul.vx, 0,rd_data_vx+6144, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 698,  vsmul.vx, 1,rd_data_vx+6176, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 699,  vsmul.vx, 2,rd_data_vx+6208, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 700,  vsmul.vx, 3,rd_data_vx+6240, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 701,  vsmul.vx, 0,rd_data_vx+6272, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 702,  vsmul.vx, 1,rd_data_vx+6304, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 703,  vsmul.vx, 2,rd_data_vx+6336, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 704,  vsmul.vx, 3,rd_data_vx+6368, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 705,  vsmul.vx, 0,rd_data_vx+6400, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 706,  vsmul.vx, 1,rd_data_vx+6432, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 707,  vsmul.vx, 2,rd_data_vx+6464, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 708,  vsmul.vx, 3,rd_data_vx+6496, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 709,  vsmul.vx, 0,rd_data_vx+6528, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 710,  vsmul.vx, 1,rd_data_vx+6560, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 711,  vsmul.vx, 2,rd_data_vx+6592, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 712,  vsmul.vx, 3,rd_data_vx+6624, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 713,  vsmul.vx, 0,rd_data_vx+6656, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 714,  vsmul.vx, 1,rd_data_vx+6688, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 715,  vsmul.vx, 2,rd_data_vx+6720, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 716,  vsmul.vx, 3,rd_data_vx+6752, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 717,  vsmul.vx, 0,rd_data_vx+6784, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 718,  vsmul.vx, 1,rd_data_vx+6816, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 719,  vsmul.vx, 2,rd_data_vx+6848, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 720,  vsmul.vx, 3,rd_data_vx+6880, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 721,  vsmul.vx, 0,rd_data_vx+6912, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 722,  vsmul.vx, 1,rd_data_vx+6944, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 723,  vsmul.vx, 2,rd_data_vx+6976, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 724,  vsmul.vx, 3,rd_data_vx+7008, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 725,  vsmul.vx, 0,rd_data_vx+7040, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 726,  vsmul.vx, 1,rd_data_vx+7072, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 727,  vsmul.vx, 2,rd_data_vx+7104, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 728,  vsmul.vx, 3,rd_data_vx+7136, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 729,  vsmul.vx, 0,rd_data_vx+7168, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 730,  vsmul.vx, 1,rd_data_vx+7200, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 731,  vsmul.vx, 2,rd_data_vx+7232, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 732,  vsmul.vx, 3,rd_data_vx+7264, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 733,  vsmul.vx, 0,rd_data_vx+7296, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 734,  vsmul.vx, 1,rd_data_vx+7328, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 735,  vsmul.vx, 2,rd_data_vx+7360, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 736,  vsmul.vx, 3,rd_data_vx+7392, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 737,  vsmul.vx, 0,rd_data_vx+7424, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 738,  vsmul.vx, 1,rd_data_vx+7456, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 739,  vsmul.vx, 2,rd_data_vx+7488, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 740,  vsmul.vx, 3,rd_data_vx+7520, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 741,  vsmul.vx, 0,rd_data_vx+7552, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 742,  vsmul.vx, 1,rd_data_vx+7584, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 743,  vsmul.vx, 2,rd_data_vx+7616, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 744,  vsmul.vx, 3,rd_data_vx+7648, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 745,  vsmul.vx, 0,rd_data_vx+7680, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 746,  vsmul.vx, 1,rd_data_vx+7712, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 747,  vsmul.vx, 2,rd_data_vx+7744, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 748,  vsmul.vx, 3,rd_data_vx+7776, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 749,  vsmul.vx, 0,rd_data_vx+7808, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 750,  vsmul.vx, 1,rd_data_vx+7840, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 751,  vsmul.vx, 2,rd_data_vx+7872, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 752,  vsmul.vx, 3,rd_data_vx+7904, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 753,  vsmul.vx, 0,rd_data_vx+7936, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 754,  vsmul.vx, 1,rd_data_vx+7968, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 755,  vsmul.vx, 2,rd_data_vx+8000, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 756,  vsmul.vx, 3,rd_data_vx+8032, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 757,  vsmul.vx, 0,rd_data_vx+8064, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 758,  vsmul.vx, 1,rd_data_vx+8096, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 759,  vsmul.vx, 2,rd_data_vx+8128, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 760,  vsmul.vx, 3,rd_data_vx+8160, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 761,  vsmul.vx, 0,rd_data_vx+8192, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 762,  vsmul.vx, 1,rd_data_vx+8224, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 763,  vsmul.vx, 2,rd_data_vx+8256, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 764,  vsmul.vx, 3,rd_data_vx+8288, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 765,  vsmul.vx, 0,rd_data_vx+8320, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 766,  vsmul.vx, 1,rd_data_vx+8352, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 767,  vsmul.vx, 2,rd_data_vx+8384, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 768,  vsmul.vx, 3,rd_data_vx+8416, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 769,  vsmul.vx, 0,rd_data_vx+8448, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 770,  vsmul.vx, 1,rd_data_vx+8480, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 771,  vsmul.vx, 2,rd_data_vx+8512, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 772,  vsmul.vx, 3,rd_data_vx+8544, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 773,  vsmul.vx, 0,rd_data_vx+8576, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 774,  vsmul.vx, 1,rd_data_vx+8608, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 775,  vsmul.vx, 2,rd_data_vx+8640, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 776,  vsmul.vx, 3,rd_data_vx+8672, rs2_data+2144, 0xfffffffffffffffe)
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
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000201
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222222
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222222
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e3a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e3a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e39
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e39
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8752
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8752
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8751
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8751
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000003
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
.word	0x22222222
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222222
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004869
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f31
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f31
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
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d1
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
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
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
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
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
.word	0x00000003
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
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e38
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e38
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e38
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e39
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000003
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
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222220
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004869
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444443
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444443
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000078ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090cf
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
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x38e38e3a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x38e38e3a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x38e38e39
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x38e38e39
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
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
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
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
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222223
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c290
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222223
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c290
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c28f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222223
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c28f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c28f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c28f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c28f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222223
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x28f5c28f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004868
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004868
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004868
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004869
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090d0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090d0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090d0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000090d1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444445
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444445
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444445
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444445
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb8520
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb8520
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb851f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb851f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff6f31
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff6f31
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff6f30
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff6f31
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff6f31
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff6f31
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff6f30
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff6f31
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
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000201
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000201
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02000000
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
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222222
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222222
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222222
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222222
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8753
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e3a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e3a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e39
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x38e38e39
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8752
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8752
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8752
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8752
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8751
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8751
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8751
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8751
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000003
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
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
.word	0x22222222
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222222
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222222
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222222
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22222221
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x28f5c28f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004868
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004869
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090cf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x51eb851f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f31
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f31
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8752
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f30
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f31
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8753
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff6f31
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000078ad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000090d1
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
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
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
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
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
.word	0x00000001
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
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0xffffffff
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
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
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
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
.word	0xffffffff
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
.word	0xfffffffe
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
    

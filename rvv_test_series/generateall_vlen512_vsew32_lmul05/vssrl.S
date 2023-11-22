#----------------------------------------------------------------------------- 
    # vssrl.S
    #-----------------------------------------------------------------------------
    #
    # Test vssrl instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vssrl)
    
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
  TEST_AVG_VV_OP( 1,  vssrl.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 2,  vssrl.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 3,  vssrl.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 4,  vssrl.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 5,  vssrl.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 6,  vssrl.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 7,  vssrl.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 8,  vssrl.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 9,  vssrl.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 10,  vssrl.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 11,  vssrl.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 12,  vssrl.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 13,  vssrl.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 14,  vssrl.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 15,  vssrl.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 16,  vssrl.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 17,  vssrl.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 18,  vssrl.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 19,  vssrl.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 20,  vssrl.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 21,  vssrl.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 22,  vssrl.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 23,  vssrl.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 24,  vssrl.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 25,  vssrl.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 26,  vssrl.vv, 1, rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 27,  vssrl.vv, 2, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 28,  vssrl.vv, 3, rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 29,  vssrl.vv, 0, rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 30,  vssrl.vv, 1, rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 31,  vssrl.vv, 2, rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 32,  vssrl.vv, 3, rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 33,  vssrl.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 34,  vssrl.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 35,  vssrl.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 36,  vssrl.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 37,  vssrl.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 38,  vssrl.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 39,  vssrl.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 40,  vssrl.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 41,  vssrl.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 42,  vssrl.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 43,  vssrl.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 44,  vssrl.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 45,  vssrl.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 46,  vssrl.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 47,  vssrl.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 48,  vssrl.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 49,  vssrl.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 50,  vssrl.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 51,  vssrl.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 52,  vssrl.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 53,  vssrl.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 54,  vssrl.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 55,  vssrl.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 56,  vssrl.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 57,  vssrl.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 58,  vssrl.vv, 1, rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 59,  vssrl.vv, 2, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 60,  vssrl.vv, 3, rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 61,  vssrl.vv, 0, rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 62,  vssrl.vv, 1, rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 63,  vssrl.vv, 2, rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 64,  vssrl.vv, 3, rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 65,  vssrl.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 66,  vssrl.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 67,  vssrl.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 68,  vssrl.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 69,  vssrl.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 70,  vssrl.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 71,  vssrl.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 72,  vssrl.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 73,  vssrl.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 74,  vssrl.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 75,  vssrl.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 76,  vssrl.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 77,  vssrl.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 78,  vssrl.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 79,  vssrl.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 80,  vssrl.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 81,  vssrl.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 82,  vssrl.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 83,  vssrl.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 84,  vssrl.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 85,  vssrl.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 86,  vssrl.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 87,  vssrl.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 88,  vssrl.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 89,  vssrl.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 90,  vssrl.vv, 1, rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 91,  vssrl.vv, 2, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 92,  vssrl.vv, 3, rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 93,  vssrl.vv, 0, rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 94,  vssrl.vv, 1, rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 95,  vssrl.vv, 2, rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 96,  vssrl.vv, 3, rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 97,  vssrl.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 98,  vssrl.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 99,  vssrl.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 100,  vssrl.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 101,  vssrl.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 102,  vssrl.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 103,  vssrl.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 104,  vssrl.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 105,  vssrl.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 106,  vssrl.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 107,  vssrl.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 108,  vssrl.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 109,  vssrl.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 110,  vssrl.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 111,  vssrl.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 112,  vssrl.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 113,  vssrl.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 114,  vssrl.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 115,  vssrl.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 116,  vssrl.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 117,  vssrl.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 118,  vssrl.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 119,  vssrl.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 120,  vssrl.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 121,  vssrl.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 122,  vssrl.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 123,  vssrl.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 124,  vssrl.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 125,  vssrl.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 126,  vssrl.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 127,  vssrl.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 128,  vssrl.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 129,  vssrl.vv, 0, rd_data_vv+4096, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 130,  vssrl.vv, 1, rd_data_vv+4128, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 131,  vssrl.vv, 2, rd_data_vv+4160, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 132,  vssrl.vv, 3, rd_data_vv+4192, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 133,  vssrl.vv, 0, rd_data_vv+4224, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 134,  vssrl.vv, 1, rd_data_vv+4256, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 135,  vssrl.vv, 2, rd_data_vv+4288, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 136,  vssrl.vv, 3, rd_data_vv+4320, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 137,  vssrl.vv, 0, rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 138,  vssrl.vv, 1, rd_data_vv+4384, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 139,  vssrl.vv, 2, rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 140,  vssrl.vv, 3, rd_data_vv+4448, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 141,  vssrl.vv, 0, rd_data_vv+4480, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 142,  vssrl.vv, 1, rd_data_vv+4512, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 143,  vssrl.vv, 2, rd_data_vv+4544, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 144,  vssrl.vv, 3, rd_data_vv+4576, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 145,  vssrl.vv, 0, rd_data_vv+4608, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 146,  vssrl.vv, 1, rd_data_vv+4640, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 147,  vssrl.vv, 2, rd_data_vv+4672, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 148,  vssrl.vv, 3, rd_data_vv+4704, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 149,  vssrl.vv, 0, rd_data_vv+4736, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 150,  vssrl.vv, 1, rd_data_vv+4768, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 151,  vssrl.vv, 2, rd_data_vv+4800, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 152,  vssrl.vv, 3, rd_data_vv+4832, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 153,  vssrl.vv, 0, rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 154,  vssrl.vv, 1, rd_data_vv+4896, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 155,  vssrl.vv, 2, rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 156,  vssrl.vv, 3, rd_data_vv+4960, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 157,  vssrl.vv, 0, rd_data_vv+4992, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 158,  vssrl.vv, 1, rd_data_vv+5024, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 159,  vssrl.vv, 2, rd_data_vv+5056, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 160,  vssrl.vv, 3, rd_data_vv+5088, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 161,  vssrl.vv, 0, rd_data_vv+5120, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 162,  vssrl.vv, 1, rd_data_vv+5152, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 163,  vssrl.vv, 2, rd_data_vv+5184, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 164,  vssrl.vv, 3, rd_data_vv+5216, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 165,  vssrl.vv, 0, rd_data_vv+5248, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 166,  vssrl.vv, 1, rd_data_vv+5280, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 167,  vssrl.vv, 2, rd_data_vv+5312, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 168,  vssrl.vv, 3, rd_data_vv+5344, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 169,  vssrl.vv, 0, rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 170,  vssrl.vv, 1, rd_data_vv+5408, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 171,  vssrl.vv, 2, rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 172,  vssrl.vv, 3, rd_data_vv+5472, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 173,  vssrl.vv, 0, rd_data_vv+5504, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 174,  vssrl.vv, 1, rd_data_vv+5536, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 175,  vssrl.vv, 2, rd_data_vv+5568, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 176,  vssrl.vv, 3, rd_data_vv+5600, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 177,  vssrl.vv, 0, rd_data_vv+5632, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 178,  vssrl.vv, 1, rd_data_vv+5664, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 179,  vssrl.vv, 2, rd_data_vv+5696, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 180,  vssrl.vv, 3, rd_data_vv+5728, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 181,  vssrl.vv, 0, rd_data_vv+5760, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 182,  vssrl.vv, 1, rd_data_vv+5792, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 183,  vssrl.vv, 2, rd_data_vv+5824, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 184,  vssrl.vv, 3, rd_data_vv+5856, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 185,  vssrl.vv, 0, rd_data_vv+5888, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 186,  vssrl.vv, 1, rd_data_vv+5920, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 187,  vssrl.vv, 2, rd_data_vv+5952, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 188,  vssrl.vv, 3, rd_data_vv+5984, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 189,  vssrl.vv, 0, rd_data_vv+6016, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 190,  vssrl.vv, 1, rd_data_vv+6048, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 191,  vssrl.vv, 2, rd_data_vv+6080, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 192,  vssrl.vv, 3, rd_data_vv+6112, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 193,  vssrl.vv, 0, rd_data_vv+6144, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 194,  vssrl.vv, 1, rd_data_vv+6176, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 195,  vssrl.vv, 2, rd_data_vv+6208, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 196,  vssrl.vv, 3, rd_data_vv+6240, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 197,  vssrl.vv, 0, rd_data_vv+6272, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 198,  vssrl.vv, 1, rd_data_vv+6304, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 199,  vssrl.vv, 2, rd_data_vv+6336, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 200,  vssrl.vv, 3, rd_data_vv+6368, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 201,  vssrl.vv, 0, rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 202,  vssrl.vv, 1, rd_data_vv+6432, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 203,  vssrl.vv, 2, rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 204,  vssrl.vv, 3, rd_data_vv+6496, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 205,  vssrl.vv, 0, rd_data_vv+6528, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 206,  vssrl.vv, 1, rd_data_vv+6560, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 207,  vssrl.vv, 2, rd_data_vv+6592, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 208,  vssrl.vv, 3, rd_data_vv+6624, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 209,  vssrl.vv, 0, rd_data_vv+6656, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 210,  vssrl.vv, 1, rd_data_vv+6688, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 211,  vssrl.vv, 2, rd_data_vv+6720, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 212,  vssrl.vv, 3, rd_data_vv+6752, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 213,  vssrl.vv, 0, rd_data_vv+6784, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 214,  vssrl.vv, 1, rd_data_vv+6816, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 215,  vssrl.vv, 2, rd_data_vv+6848, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 216,  vssrl.vv, 3, rd_data_vv+6880, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 217,  vssrl.vv, 0, rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 218,  vssrl.vv, 1, rd_data_vv+6944, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 219,  vssrl.vv, 2, rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 220,  vssrl.vv, 3, rd_data_vv+7008, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 221,  vssrl.vv, 0, rd_data_vv+7040, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 222,  vssrl.vv, 1, rd_data_vv+7072, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 223,  vssrl.vv, 2, rd_data_vv+7104, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 224,  vssrl.vv, 3, rd_data_vv+7136, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 225,  vssrl.vv, 0, rd_data_vv+7168, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 226,  vssrl.vv, 1, rd_data_vv+7200, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 227,  vssrl.vv, 2, rd_data_vv+7232, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 228,  vssrl.vv, 3, rd_data_vv+7264, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 229,  vssrl.vv, 0, rd_data_vv+7296, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 230,  vssrl.vv, 1, rd_data_vv+7328, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 231,  vssrl.vv, 2, rd_data_vv+7360, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 232,  vssrl.vv, 3, rd_data_vv+7392, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 233,  vssrl.vv, 0, rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 234,  vssrl.vv, 1, rd_data_vv+7456, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 235,  vssrl.vv, 2, rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 236,  vssrl.vv, 3, rd_data_vv+7520, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 237,  vssrl.vv, 0, rd_data_vv+7552, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 238,  vssrl.vv, 1, rd_data_vv+7584, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 239,  vssrl.vv, 2, rd_data_vv+7616, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 240,  vssrl.vv, 3, rd_data_vv+7648, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 241,  vssrl.vv, 0, rd_data_vv+7680, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 242,  vssrl.vv, 1, rd_data_vv+7712, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 243,  vssrl.vv, 2, rd_data_vv+7744, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 244,  vssrl.vv, 3, rd_data_vv+7776, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 245,  vssrl.vv, 0, rd_data_vv+7808, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 246,  vssrl.vv, 1, rd_data_vv+7840, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 247,  vssrl.vv, 2, rd_data_vv+7872, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 248,  vssrl.vv, 3, rd_data_vv+7904, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 249,  vssrl.vv, 0, rd_data_vv+7936, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 250,  vssrl.vv, 1, rd_data_vv+7968, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 251,  vssrl.vv, 2, rd_data_vv+8000, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 252,  vssrl.vv, 3, rd_data_vv+8032, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 253,  vssrl.vv, 0, rd_data_vv+8064, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 254,  vssrl.vv, 1, rd_data_vv+8096, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 255,  vssrl.vv, 2, rd_data_vv+8128, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 256,  vssrl.vv, 3, rd_data_vv+8160, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 257,  vssrl.vv, 0, rd_data_vv+8192, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 258,  vssrl.vv, 1, rd_data_vv+8224, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 259,  vssrl.vv, 2, rd_data_vv+8256, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 260,  vssrl.vv, 3, rd_data_vv+8288, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 261,  vssrl.vv, 0, rd_data_vv+8320, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 262,  vssrl.vv, 1, rd_data_vv+8352, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 263,  vssrl.vv, 2, rd_data_vv+8384, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 264,  vssrl.vv, 3, rd_data_vv+8416, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 265,  vssrl.vv, 0, rd_data_vv+8448, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 266,  vssrl.vv, 1, rd_data_vv+8480, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 267,  vssrl.vv, 2, rd_data_vv+8512, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 268,  vssrl.vv, 3, rd_data_vv+8544, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 269,  vssrl.vv, 0, rd_data_vv+8576, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 270,  vssrl.vv, 1, rd_data_vv+8608, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 271,  vssrl.vv, 2, rd_data_vv+8640, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 272,  vssrl.vv, 3, rd_data_vv+8672, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP_rd1( 273,  vssrl.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 274,  vssrl.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 275,  vssrl.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 276,  vssrl.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 277,  vssrl.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 278,  vssrl.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 279,  vssrl.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 280,  vssrl.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd2( 281,  vssrl.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 282,  vssrl.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 283,  vssrl.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 284,  vssrl.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 285,  vssrl.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 286,  vssrl.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 287,  vssrl.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 288,  vssrl.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd3( 289,  vssrl.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 290,  vssrl.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 291,  vssrl.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 292,  vssrl.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 293,  vssrl.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 294,  vssrl.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 295,  vssrl.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 296,  vssrl.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd4( 297,  vssrl.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 298,  vssrl.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 299,  vssrl.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 300,  vssrl.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 301,  vssrl.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 302,  vssrl.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 303,  vssrl.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 304,  vssrl.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd5( 305,  vssrl.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 306,  vssrl.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 307,  vssrl.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 308,  vssrl.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 309,  vssrl.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 310,  vssrl.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 311,  vssrl.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 312,  vssrl.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd6( 313,  vssrl.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 314,  vssrl.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 315,  vssrl.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 316,  vssrl.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 317,  vssrl.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 318,  vssrl.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 319,  vssrl.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 320,  vssrl.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd7( 321,  vssrl.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 322,  vssrl.vv, 1, rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 323,  vssrl.vv, 2, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 324,  vssrl.vv, 3, rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_9( 325,  vssrl.vv, 0, rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 326,  vssrl.vv, 1, rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 327,  vssrl.vv, 2, rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 328,  vssrl.vv, 3, rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_rd9( 329,  vssrl.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 330,  vssrl.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 331,  vssrl.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 332,  vssrl.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 333,  vssrl.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 334,  vssrl.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 335,  vssrl.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 336,  vssrl.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd10( 337,  vssrl.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 338,  vssrl.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 339,  vssrl.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 340,  vssrl.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 341,  vssrl.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 342,  vssrl.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 343,  vssrl.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 344,  vssrl.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd11( 345,  vssrl.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 346,  vssrl.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 347,  vssrl.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 348,  vssrl.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 349,  vssrl.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 350,  vssrl.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 351,  vssrl.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 352,  vssrl.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd12( 353,  vssrl.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 354,  vssrl.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 355,  vssrl.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 356,  vssrl.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 357,  vssrl.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 358,  vssrl.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 359,  vssrl.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 360,  vssrl.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd13( 361,  vssrl.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 362,  vssrl.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 363,  vssrl.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 364,  vssrl.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 365,  vssrl.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 366,  vssrl.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 367,  vssrl.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 368,  vssrl.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd14( 369,  vssrl.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 370,  vssrl.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 371,  vssrl.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 372,  vssrl.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 373,  vssrl.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 374,  vssrl.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 375,  vssrl.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 376,  vssrl.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd15( 377,  vssrl.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 378,  vssrl.vv, 1, rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 379,  vssrl.vv, 2, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 380,  vssrl.vv, 3, rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_1_17( 381,  vssrl.vv, 0, rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 382,  vssrl.vv, 1, rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 383,  vssrl.vv, 2, rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 384,  vssrl.vv, 3, rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_rd17( 385,  vssrl.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 386,  vssrl.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 387,  vssrl.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 388,  vssrl.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 389,  vssrl.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 390,  vssrl.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 391,  vssrl.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 392,  vssrl.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd18( 393,  vssrl.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 394,  vssrl.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 395,  vssrl.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 396,  vssrl.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 397,  vssrl.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 398,  vssrl.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 399,  vssrl.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 400,  vssrl.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd19( 401,  vssrl.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 402,  vssrl.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 403,  vssrl.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 404,  vssrl.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 405,  vssrl.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 406,  vssrl.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 407,  vssrl.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 408,  vssrl.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd20( 409,  vssrl.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 410,  vssrl.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 411,  vssrl.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 412,  vssrl.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 413,  vssrl.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 414,  vssrl.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 415,  vssrl.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 416,  vssrl.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd21( 417,  vssrl.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 418,  vssrl.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 419,  vssrl.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 420,  vssrl.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 421,  vssrl.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 422,  vssrl.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 423,  vssrl.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 424,  vssrl.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd22( 425,  vssrl.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 426,  vssrl.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 427,  vssrl.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 428,  vssrl.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 429,  vssrl.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 430,  vssrl.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 431,  vssrl.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 432,  vssrl.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd23( 433,  vssrl.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 434,  vssrl.vv, 1, rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 435,  vssrl.vv, 2, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 436,  vssrl.vv, 3, rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_25( 437,  vssrl.vv, 0, rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 438,  vssrl.vv, 1, rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 439,  vssrl.vv, 2, rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 440,  vssrl.vv, 3, rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_rd25( 441,  vssrl.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 442,  vssrl.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 443,  vssrl.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 444,  vssrl.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 445,  vssrl.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 446,  vssrl.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 447,  vssrl.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 448,  vssrl.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd26( 449,  vssrl.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 450,  vssrl.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 451,  vssrl.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 452,  vssrl.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 453,  vssrl.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 454,  vssrl.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 455,  vssrl.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 456,  vssrl.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd27( 457,  vssrl.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 458,  vssrl.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 459,  vssrl.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 460,  vssrl.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 461,  vssrl.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 462,  vssrl.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 463,  vssrl.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 464,  vssrl.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd28( 465,  vssrl.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 466,  vssrl.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 467,  vssrl.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 468,  vssrl.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 469,  vssrl.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 470,  vssrl.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 471,  vssrl.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 472,  vssrl.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd29( 473,  vssrl.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 474,  vssrl.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 475,  vssrl.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 476,  vssrl.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 477,  vssrl.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 478,  vssrl.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 479,  vssrl.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 480,  vssrl.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd30( 481,  vssrl.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 482,  vssrl.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 483,  vssrl.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 484,  vssrl.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 485,  vssrl.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 486,  vssrl.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 487,  vssrl.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 488,  vssrl.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd31( 489,  vssrl.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 490,  vssrl.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 491,  vssrl.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 492,  vssrl.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 493,  vssrl.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 494,  vssrl.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 495,  vssrl.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 496,  vssrl.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd1( 497,  vssrl.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 498,  vssrl.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 499,  vssrl.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 500,  vssrl.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 501,  vssrl.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 502,  vssrl.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 503,  vssrl.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 504,  vssrl.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_VX_OP( 505,  vssrl.vx, 0,rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 506,  vssrl.vx, 1,rd_data_vx+32, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 507,  vssrl.vx, 2,rd_data_vx+64, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 508,  vssrl.vx, 3,rd_data_vx+96, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 509,  vssrl.vx, 0,rd_data_vx+128, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 510,  vssrl.vx, 1,rd_data_vx+160, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 511,  vssrl.vx, 2,rd_data_vx+192, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 512,  vssrl.vx, 3,rd_data_vx+224, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 513,  vssrl.vx, 0,rd_data_vx+256, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 514,  vssrl.vx, 1,rd_data_vx+288, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 515,  vssrl.vx, 2,rd_data_vx+320, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 516,  vssrl.vx, 3,rd_data_vx+352, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 517,  vssrl.vx, 0,rd_data_vx+384, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 518,  vssrl.vx, 1,rd_data_vx+416, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 519,  vssrl.vx, 2,rd_data_vx+448, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 520,  vssrl.vx, 3,rd_data_vx+480, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 521,  vssrl.vx, 0,rd_data_vx+512, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 522,  vssrl.vx, 1,rd_data_vx+544, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 523,  vssrl.vx, 2,rd_data_vx+576, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 524,  vssrl.vx, 3,rd_data_vx+608, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 525,  vssrl.vx, 0,rd_data_vx+640, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 526,  vssrl.vx, 1,rd_data_vx+672, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 527,  vssrl.vx, 2,rd_data_vx+704, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 528,  vssrl.vx, 3,rd_data_vx+736, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 529,  vssrl.vx, 0,rd_data_vx+768, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 530,  vssrl.vx, 1,rd_data_vx+800, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 531,  vssrl.vx, 2,rd_data_vx+832, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 532,  vssrl.vx, 3,rd_data_vx+864, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 533,  vssrl.vx, 0,rd_data_vx+896, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 534,  vssrl.vx, 1,rd_data_vx+928, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 535,  vssrl.vx, 2,rd_data_vx+960, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 536,  vssrl.vx, 3,rd_data_vx+992, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 537,  vssrl.vx, 0,rd_data_vx+1024, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 538,  vssrl.vx, 1,rd_data_vx+1056, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 539,  vssrl.vx, 2,rd_data_vx+1088, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 540,  vssrl.vx, 3,rd_data_vx+1120, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 541,  vssrl.vx, 0,rd_data_vx+1152, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 542,  vssrl.vx, 1,rd_data_vx+1184, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 543,  vssrl.vx, 2,rd_data_vx+1216, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 544,  vssrl.vx, 3,rd_data_vx+1248, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 545,  vssrl.vx, 0,rd_data_vx+1280, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 546,  vssrl.vx, 1,rd_data_vx+1312, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 547,  vssrl.vx, 2,rd_data_vx+1344, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 548,  vssrl.vx, 3,rd_data_vx+1376, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 549,  vssrl.vx, 0,rd_data_vx+1408, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 550,  vssrl.vx, 1,rd_data_vx+1440, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 551,  vssrl.vx, 2,rd_data_vx+1472, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 552,  vssrl.vx, 3,rd_data_vx+1504, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 553,  vssrl.vx, 0,rd_data_vx+1536, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 554,  vssrl.vx, 1,rd_data_vx+1568, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 555,  vssrl.vx, 2,rd_data_vx+1600, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 556,  vssrl.vx, 3,rd_data_vx+1632, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 557,  vssrl.vx, 0,rd_data_vx+1664, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 558,  vssrl.vx, 1,rd_data_vx+1696, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 559,  vssrl.vx, 2,rd_data_vx+1728, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 560,  vssrl.vx, 3,rd_data_vx+1760, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 561,  vssrl.vx, 0,rd_data_vx+1792, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 562,  vssrl.vx, 1,rd_data_vx+1824, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 563,  vssrl.vx, 2,rd_data_vx+1856, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 564,  vssrl.vx, 3,rd_data_vx+1888, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 565,  vssrl.vx, 0,rd_data_vx+1920, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 566,  vssrl.vx, 1,rd_data_vx+1952, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 567,  vssrl.vx, 2,rd_data_vx+1984, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 568,  vssrl.vx, 3,rd_data_vx+2016, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 569,  vssrl.vx, 0,rd_data_vx+2048, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 570,  vssrl.vx, 1,rd_data_vx+2080, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 571,  vssrl.vx, 2,rd_data_vx+2112, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 572,  vssrl.vx, 3,rd_data_vx+2144, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 573,  vssrl.vx, 0,rd_data_vx+2176, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 574,  vssrl.vx, 1,rd_data_vx+2208, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 575,  vssrl.vx, 2,rd_data_vx+2240, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 576,  vssrl.vx, 3,rd_data_vx+2272, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 577,  vssrl.vx, 0,rd_data_vx+2304, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 578,  vssrl.vx, 1,rd_data_vx+2336, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 579,  vssrl.vx, 2,rd_data_vx+2368, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 580,  vssrl.vx, 3,rd_data_vx+2400, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 581,  vssrl.vx, 0,rd_data_vx+2432, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 582,  vssrl.vx, 1,rd_data_vx+2464, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 583,  vssrl.vx, 2,rd_data_vx+2496, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 584,  vssrl.vx, 3,rd_data_vx+2528, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 585,  vssrl.vx, 0,rd_data_vx+2560, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 586,  vssrl.vx, 1,rd_data_vx+2592, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 587,  vssrl.vx, 2,rd_data_vx+2624, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 588,  vssrl.vx, 3,rd_data_vx+2656, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 589,  vssrl.vx, 0,rd_data_vx+2688, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 590,  vssrl.vx, 1,rd_data_vx+2720, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 591,  vssrl.vx, 2,rd_data_vx+2752, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 592,  vssrl.vx, 3,rd_data_vx+2784, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 593,  vssrl.vx, 0,rd_data_vx+2816, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 594,  vssrl.vx, 1,rd_data_vx+2848, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 595,  vssrl.vx, 2,rd_data_vx+2880, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 596,  vssrl.vx, 3,rd_data_vx+2912, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 597,  vssrl.vx, 0,rd_data_vx+2944, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 598,  vssrl.vx, 1,rd_data_vx+2976, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 599,  vssrl.vx, 2,rd_data_vx+3008, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 600,  vssrl.vx, 3,rd_data_vx+3040, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 601,  vssrl.vx, 0,rd_data_vx+3072, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 602,  vssrl.vx, 1,rd_data_vx+3104, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 603,  vssrl.vx, 2,rd_data_vx+3136, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 604,  vssrl.vx, 3,rd_data_vx+3168, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 605,  vssrl.vx, 0,rd_data_vx+3200, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 606,  vssrl.vx, 1,rd_data_vx+3232, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 607,  vssrl.vx, 2,rd_data_vx+3264, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 608,  vssrl.vx, 3,rd_data_vx+3296, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 609,  vssrl.vx, 0,rd_data_vx+3328, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 610,  vssrl.vx, 1,rd_data_vx+3360, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 611,  vssrl.vx, 2,rd_data_vx+3392, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 612,  vssrl.vx, 3,rd_data_vx+3424, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 613,  vssrl.vx, 0,rd_data_vx+3456, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 614,  vssrl.vx, 1,rd_data_vx+3488, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 615,  vssrl.vx, 2,rd_data_vx+3520, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 616,  vssrl.vx, 3,rd_data_vx+3552, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 617,  vssrl.vx, 0,rd_data_vx+3584, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 618,  vssrl.vx, 1,rd_data_vx+3616, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 619,  vssrl.vx, 2,rd_data_vx+3648, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 620,  vssrl.vx, 3,rd_data_vx+3680, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 621,  vssrl.vx, 0,rd_data_vx+3712, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 622,  vssrl.vx, 1,rd_data_vx+3744, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 623,  vssrl.vx, 2,rd_data_vx+3776, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 624,  vssrl.vx, 3,rd_data_vx+3808, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 625,  vssrl.vx, 0,rd_data_vx+3840, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 626,  vssrl.vx, 1,rd_data_vx+3872, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 627,  vssrl.vx, 2,rd_data_vx+3904, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 628,  vssrl.vx, 3,rd_data_vx+3936, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 629,  vssrl.vx, 0,rd_data_vx+3968, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 630,  vssrl.vx, 1,rd_data_vx+4000, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 631,  vssrl.vx, 2,rd_data_vx+4032, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 632,  vssrl.vx, 3,rd_data_vx+4064, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 633,  vssrl.vx, 0,rd_data_vx+4096, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 634,  vssrl.vx, 1,rd_data_vx+4128, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 635,  vssrl.vx, 2,rd_data_vx+4160, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 636,  vssrl.vx, 3,rd_data_vx+4192, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 637,  vssrl.vx, 0,rd_data_vx+4224, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 638,  vssrl.vx, 1,rd_data_vx+4256, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 639,  vssrl.vx, 2,rd_data_vx+4288, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 640,  vssrl.vx, 3,rd_data_vx+4320, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 641,  vssrl.vx, 0,rd_data_vx+4352, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 642,  vssrl.vx, 1,rd_data_vx+4384, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 643,  vssrl.vx, 2,rd_data_vx+4416, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 644,  vssrl.vx, 3,rd_data_vx+4448, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 645,  vssrl.vx, 0,rd_data_vx+4480, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 646,  vssrl.vx, 1,rd_data_vx+4512, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 647,  vssrl.vx, 2,rd_data_vx+4544, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 648,  vssrl.vx, 3,rd_data_vx+4576, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 649,  vssrl.vx, 0,rd_data_vx+4608, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 650,  vssrl.vx, 1,rd_data_vx+4640, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 651,  vssrl.vx, 2,rd_data_vx+4672, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 652,  vssrl.vx, 3,rd_data_vx+4704, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 653,  vssrl.vx, 0,rd_data_vx+4736, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 654,  vssrl.vx, 1,rd_data_vx+4768, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 655,  vssrl.vx, 2,rd_data_vx+4800, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 656,  vssrl.vx, 3,rd_data_vx+4832, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 657,  vssrl.vx, 0,rd_data_vx+4864, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 658,  vssrl.vx, 1,rd_data_vx+4896, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 659,  vssrl.vx, 2,rd_data_vx+4928, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 660,  vssrl.vx, 3,rd_data_vx+4960, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 661,  vssrl.vx, 0,rd_data_vx+4992, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 662,  vssrl.vx, 1,rd_data_vx+5024, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 663,  vssrl.vx, 2,rd_data_vx+5056, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 664,  vssrl.vx, 3,rd_data_vx+5088, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 665,  vssrl.vx, 0,rd_data_vx+5120, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 666,  vssrl.vx, 1,rd_data_vx+5152, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 667,  vssrl.vx, 2,rd_data_vx+5184, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 668,  vssrl.vx, 3,rd_data_vx+5216, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 669,  vssrl.vx, 0,rd_data_vx+5248, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 670,  vssrl.vx, 1,rd_data_vx+5280, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 671,  vssrl.vx, 2,rd_data_vx+5312, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 672,  vssrl.vx, 3,rd_data_vx+5344, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 673,  vssrl.vx, 0,rd_data_vx+5376, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 674,  vssrl.vx, 1,rd_data_vx+5408, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 675,  vssrl.vx, 2,rd_data_vx+5440, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 676,  vssrl.vx, 3,rd_data_vx+5472, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 677,  vssrl.vx, 0,rd_data_vx+5504, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 678,  vssrl.vx, 1,rd_data_vx+5536, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 679,  vssrl.vx, 2,rd_data_vx+5568, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 680,  vssrl.vx, 3,rd_data_vx+5600, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 681,  vssrl.vx, 0,rd_data_vx+5632, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 682,  vssrl.vx, 1,rd_data_vx+5664, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 683,  vssrl.vx, 2,rd_data_vx+5696, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 684,  vssrl.vx, 3,rd_data_vx+5728, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 685,  vssrl.vx, 0,rd_data_vx+5760, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 686,  vssrl.vx, 1,rd_data_vx+5792, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 687,  vssrl.vx, 2,rd_data_vx+5824, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 688,  vssrl.vx, 3,rd_data_vx+5856, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 689,  vssrl.vx, 0,rd_data_vx+5888, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 690,  vssrl.vx, 1,rd_data_vx+5920, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 691,  vssrl.vx, 2,rd_data_vx+5952, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 692,  vssrl.vx, 3,rd_data_vx+5984, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 693,  vssrl.vx, 0,rd_data_vx+6016, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 694,  vssrl.vx, 1,rd_data_vx+6048, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 695,  vssrl.vx, 2,rd_data_vx+6080, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 696,  vssrl.vx, 3,rd_data_vx+6112, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 697,  vssrl.vx, 0,rd_data_vx+6144, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 698,  vssrl.vx, 1,rd_data_vx+6176, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 699,  vssrl.vx, 2,rd_data_vx+6208, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 700,  vssrl.vx, 3,rd_data_vx+6240, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 701,  vssrl.vx, 0,rd_data_vx+6272, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 702,  vssrl.vx, 1,rd_data_vx+6304, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 703,  vssrl.vx, 2,rd_data_vx+6336, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 704,  vssrl.vx, 3,rd_data_vx+6368, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 705,  vssrl.vx, 0,rd_data_vx+6400, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 706,  vssrl.vx, 1,rd_data_vx+6432, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 707,  vssrl.vx, 2,rd_data_vx+6464, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 708,  vssrl.vx, 3,rd_data_vx+6496, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 709,  vssrl.vx, 0,rd_data_vx+6528, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 710,  vssrl.vx, 1,rd_data_vx+6560, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 711,  vssrl.vx, 2,rd_data_vx+6592, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 712,  vssrl.vx, 3,rd_data_vx+6624, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 713,  vssrl.vx, 0,rd_data_vx+6656, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 714,  vssrl.vx, 1,rd_data_vx+6688, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 715,  vssrl.vx, 2,rd_data_vx+6720, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 716,  vssrl.vx, 3,rd_data_vx+6752, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 717,  vssrl.vx, 0,rd_data_vx+6784, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 718,  vssrl.vx, 1,rd_data_vx+6816, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 719,  vssrl.vx, 2,rd_data_vx+6848, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 720,  vssrl.vx, 3,rd_data_vx+6880, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 721,  vssrl.vx, 0,rd_data_vx+6912, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 722,  vssrl.vx, 1,rd_data_vx+6944, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 723,  vssrl.vx, 2,rd_data_vx+6976, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 724,  vssrl.vx, 3,rd_data_vx+7008, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 725,  vssrl.vx, 0,rd_data_vx+7040, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 726,  vssrl.vx, 1,rd_data_vx+7072, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 727,  vssrl.vx, 2,rd_data_vx+7104, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 728,  vssrl.vx, 3,rd_data_vx+7136, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 729,  vssrl.vx, 0,rd_data_vx+7168, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 730,  vssrl.vx, 1,rd_data_vx+7200, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 731,  vssrl.vx, 2,rd_data_vx+7232, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 732,  vssrl.vx, 3,rd_data_vx+7264, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 733,  vssrl.vx, 0,rd_data_vx+7296, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 734,  vssrl.vx, 1,rd_data_vx+7328, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 735,  vssrl.vx, 2,rd_data_vx+7360, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 736,  vssrl.vx, 3,rd_data_vx+7392, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 737,  vssrl.vx, 0,rd_data_vx+7424, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 738,  vssrl.vx, 1,rd_data_vx+7456, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 739,  vssrl.vx, 2,rd_data_vx+7488, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 740,  vssrl.vx, 3,rd_data_vx+7520, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 741,  vssrl.vx, 0,rd_data_vx+7552, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 742,  vssrl.vx, 1,rd_data_vx+7584, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 743,  vssrl.vx, 2,rd_data_vx+7616, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 744,  vssrl.vx, 3,rd_data_vx+7648, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 745,  vssrl.vx, 0,rd_data_vx+7680, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 746,  vssrl.vx, 1,rd_data_vx+7712, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 747,  vssrl.vx, 2,rd_data_vx+7744, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 748,  vssrl.vx, 3,rd_data_vx+7776, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 749,  vssrl.vx, 0,rd_data_vx+7808, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 750,  vssrl.vx, 1,rd_data_vx+7840, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 751,  vssrl.vx, 2,rd_data_vx+7872, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 752,  vssrl.vx, 3,rd_data_vx+7904, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 753,  vssrl.vx, 0,rd_data_vx+7936, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 754,  vssrl.vx, 1,rd_data_vx+7968, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 755,  vssrl.vx, 2,rd_data_vx+8000, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 756,  vssrl.vx, 3,rd_data_vx+8032, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 757,  vssrl.vx, 0,rd_data_vx+8064, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 758,  vssrl.vx, 1,rd_data_vx+8096, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 759,  vssrl.vx, 2,rd_data_vx+8128, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 760,  vssrl.vx, 3,rd_data_vx+8160, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 761,  vssrl.vx, 0,rd_data_vx+8192, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 762,  vssrl.vx, 1,rd_data_vx+8224, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 763,  vssrl.vx, 2,rd_data_vx+8256, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 764,  vssrl.vx, 3,rd_data_vx+8288, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 765,  vssrl.vx, 0,rd_data_vx+8320, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 766,  vssrl.vx, 1,rd_data_vx+8352, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 767,  vssrl.vx, 2,rd_data_vx+8384, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 768,  vssrl.vx, 3,rd_data_vx+8416, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 769,  vssrl.vx, 0,rd_data_vx+8448, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 770,  vssrl.vx, 1,rd_data_vx+8480, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 771,  vssrl.vx, 2,rd_data_vx+8512, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 772,  vssrl.vx, 3,rd_data_vx+8544, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 773,  vssrl.vx, 0,rd_data_vx+8576, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 774,  vssrl.vx, 1,rd_data_vx+8608, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 775,  vssrl.vx, 2,rd_data_vx+8640, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 776,  vssrl.vx, 3,rd_data_vx+8672, rs2_data+2144, 0xfffffffffffffffe)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_VI_OP( 777,  vssrl.vi, 0,rd_data_vi+0, rs2_data+0, 15)
  TEST_AVG_VI_OP( 778,  vssrl.vi, 1,rd_data_vi+32, rs2_data+0, 15)
  TEST_AVG_VI_OP( 779,  vssrl.vi, 2,rd_data_vi+64, rs2_data+0, 15)
  TEST_AVG_VI_OP( 780,  vssrl.vi, 3,rd_data_vi+96, rs2_data+0, 15)
  TEST_AVG_VI_OP( 781,  vssrl.vi, 0,rd_data_vi+128, rs2_data+32, 15)
  TEST_AVG_VI_OP( 782,  vssrl.vi, 1,rd_data_vi+160, rs2_data+32, 15)
  TEST_AVG_VI_OP( 783,  vssrl.vi, 2,rd_data_vi+192, rs2_data+32, 15)
  TEST_AVG_VI_OP( 784,  vssrl.vi, 3,rd_data_vi+224, rs2_data+32, 15)
  TEST_AVG_VI_OP( 785,  vssrl.vi, 0,rd_data_vi+256, rs2_data+64, 15)
  TEST_AVG_VI_OP( 786,  vssrl.vi, 1,rd_data_vi+288, rs2_data+64, 15)
  TEST_AVG_VI_OP( 787,  vssrl.vi, 2,rd_data_vi+320, rs2_data+64, 15)
  TEST_AVG_VI_OP( 788,  vssrl.vi, 3,rd_data_vi+352, rs2_data+64, 15)
  TEST_AVG_VI_OP( 789,  vssrl.vi, 0,rd_data_vi+384, rs2_data+96, 15)
  TEST_AVG_VI_OP( 790,  vssrl.vi, 1,rd_data_vi+416, rs2_data+96, 15)
  TEST_AVG_VI_OP( 791,  vssrl.vi, 2,rd_data_vi+448, rs2_data+96, 15)
  TEST_AVG_VI_OP( 792,  vssrl.vi, 3,rd_data_vi+480, rs2_data+96, 15)
  TEST_AVG_VI_OP( 793,  vssrl.vi, 0,rd_data_vi+512, rs2_data+128, 15)
  TEST_AVG_VI_OP( 794,  vssrl.vi, 1,rd_data_vi+544, rs2_data+128, 15)
  TEST_AVG_VI_OP( 795,  vssrl.vi, 2,rd_data_vi+576, rs2_data+128, 15)
  TEST_AVG_VI_OP( 796,  vssrl.vi, 3,rd_data_vi+608, rs2_data+128, 15)
  TEST_AVG_VI_OP( 797,  vssrl.vi, 0,rd_data_vi+640, rs2_data+160, 15)
  TEST_AVG_VI_OP( 798,  vssrl.vi, 1,rd_data_vi+672, rs2_data+160, 15)
  TEST_AVG_VI_OP( 799,  vssrl.vi, 2,rd_data_vi+704, rs2_data+160, 15)
  TEST_AVG_VI_OP( 800,  vssrl.vi, 3,rd_data_vi+736, rs2_data+160, 15)
  TEST_AVG_VI_OP( 801,  vssrl.vi, 0,rd_data_vi+768, rs2_data+192, 15)
  TEST_AVG_VI_OP( 802,  vssrl.vi, 1,rd_data_vi+800, rs2_data+192, 15)
  TEST_AVG_VI_OP( 803,  vssrl.vi, 2,rd_data_vi+832, rs2_data+192, 15)
  TEST_AVG_VI_OP( 804,  vssrl.vi, 3,rd_data_vi+864, rs2_data+192, 15)
  TEST_AVG_VI_OP( 805,  vssrl.vi, 0,rd_data_vi+896, rs2_data+224, 15)
  TEST_AVG_VI_OP( 806,  vssrl.vi, 1,rd_data_vi+928, rs2_data+224, 15)
  TEST_AVG_VI_OP( 807,  vssrl.vi, 2,rd_data_vi+960, rs2_data+224, 15)
  TEST_AVG_VI_OP( 808,  vssrl.vi, 3,rd_data_vi+992, rs2_data+224, 15)
  TEST_AVG_VI_OP( 809,  vssrl.vi, 0,rd_data_vi+1024, rs2_data+256, 15)
  TEST_AVG_VI_OP( 810,  vssrl.vi, 1,rd_data_vi+1056, rs2_data+256, 15)
  TEST_AVG_VI_OP( 811,  vssrl.vi, 2,rd_data_vi+1088, rs2_data+256, 15)
  TEST_AVG_VI_OP( 812,  vssrl.vi, 3,rd_data_vi+1120, rs2_data+256, 15)
  TEST_AVG_VI_OP( 813,  vssrl.vi, 0,rd_data_vi+1152, rs2_data+288, 15)
  TEST_AVG_VI_OP( 814,  vssrl.vi, 1,rd_data_vi+1184, rs2_data+288, 15)
  TEST_AVG_VI_OP( 815,  vssrl.vi, 2,rd_data_vi+1216, rs2_data+288, 15)
  TEST_AVG_VI_OP( 816,  vssrl.vi, 3,rd_data_vi+1248, rs2_data+288, 15)
  TEST_AVG_VI_OP( 817,  vssrl.vi, 0,rd_data_vi+1280, rs2_data+320, 15)
  TEST_AVG_VI_OP( 818,  vssrl.vi, 1,rd_data_vi+1312, rs2_data+320, 15)
  TEST_AVG_VI_OP( 819,  vssrl.vi, 2,rd_data_vi+1344, rs2_data+320, 15)
  TEST_AVG_VI_OP( 820,  vssrl.vi, 3,rd_data_vi+1376, rs2_data+320, 15)
  TEST_AVG_VI_OP( 821,  vssrl.vi, 0,rd_data_vi+1408, rs2_data+352, 15)
  TEST_AVG_VI_OP( 822,  vssrl.vi, 1,rd_data_vi+1440, rs2_data+352, 15)
  TEST_AVG_VI_OP( 823,  vssrl.vi, 2,rd_data_vi+1472, rs2_data+352, 15)
  TEST_AVG_VI_OP( 824,  vssrl.vi, 3,rd_data_vi+1504, rs2_data+352, 15)
  TEST_AVG_VI_OP( 825,  vssrl.vi, 0,rd_data_vi+1536, rs2_data+384, 15)
  TEST_AVG_VI_OP( 826,  vssrl.vi, 1,rd_data_vi+1568, rs2_data+384, 15)
  TEST_AVG_VI_OP( 827,  vssrl.vi, 2,rd_data_vi+1600, rs2_data+384, 15)
  TEST_AVG_VI_OP( 828,  vssrl.vi, 3,rd_data_vi+1632, rs2_data+384, 15)
  TEST_AVG_VI_OP( 829,  vssrl.vi, 0,rd_data_vi+1664, rs2_data+416, 15)
  TEST_AVG_VI_OP( 830,  vssrl.vi, 1,rd_data_vi+1696, rs2_data+416, 15)
  TEST_AVG_VI_OP( 831,  vssrl.vi, 2,rd_data_vi+1728, rs2_data+416, 15)
  TEST_AVG_VI_OP( 832,  vssrl.vi, 3,rd_data_vi+1760, rs2_data+416, 15)
  TEST_AVG_VI_OP( 833,  vssrl.vi, 0,rd_data_vi+1792, rs2_data+448, 15)
  TEST_AVG_VI_OP( 834,  vssrl.vi, 1,rd_data_vi+1824, rs2_data+448, 15)
  TEST_AVG_VI_OP( 835,  vssrl.vi, 2,rd_data_vi+1856, rs2_data+448, 15)
  TEST_AVG_VI_OP( 836,  vssrl.vi, 3,rd_data_vi+1888, rs2_data+448, 15)
  TEST_AVG_VI_OP( 837,  vssrl.vi, 0,rd_data_vi+1920, rs2_data+480, 15)
  TEST_AVG_VI_OP( 838,  vssrl.vi, 1,rd_data_vi+1952, rs2_data+480, 15)
  TEST_AVG_VI_OP( 839,  vssrl.vi, 2,rd_data_vi+1984, rs2_data+480, 15)
  TEST_AVG_VI_OP( 840,  vssrl.vi, 3,rd_data_vi+2016, rs2_data+480, 15)
  TEST_AVG_VI_OP( 841,  vssrl.vi, 0,rd_data_vi+2048, rs2_data+512, 15)
  TEST_AVG_VI_OP( 842,  vssrl.vi, 1,rd_data_vi+2080, rs2_data+512, 15)
  TEST_AVG_VI_OP( 843,  vssrl.vi, 2,rd_data_vi+2112, rs2_data+512, 15)
  TEST_AVG_VI_OP( 844,  vssrl.vi, 3,rd_data_vi+2144, rs2_data+512, 15)
  TEST_AVG_VI_OP( 845,  vssrl.vi, 0,rd_data_vi+2176, rs2_data+544, 15)
  TEST_AVG_VI_OP( 846,  vssrl.vi, 1,rd_data_vi+2208, rs2_data+544, 15)
  TEST_AVG_VI_OP( 847,  vssrl.vi, 2,rd_data_vi+2240, rs2_data+544, 15)
  TEST_AVG_VI_OP( 848,  vssrl.vi, 3,rd_data_vi+2272, rs2_data+544, 15)
  TEST_AVG_VI_OP( 849,  vssrl.vi, 0,rd_data_vi+2304, rs2_data+576, 15)
  TEST_AVG_VI_OP( 850,  vssrl.vi, 1,rd_data_vi+2336, rs2_data+576, 15)
  TEST_AVG_VI_OP( 851,  vssrl.vi, 2,rd_data_vi+2368, rs2_data+576, 15)
  TEST_AVG_VI_OP( 852,  vssrl.vi, 3,rd_data_vi+2400, rs2_data+576, 15)
  TEST_AVG_VI_OP( 853,  vssrl.vi, 0,rd_data_vi+2432, rs2_data+608, 15)
  TEST_AVG_VI_OP( 854,  vssrl.vi, 1,rd_data_vi+2464, rs2_data+608, 15)
  TEST_AVG_VI_OP( 855,  vssrl.vi, 2,rd_data_vi+2496, rs2_data+608, 15)
  TEST_AVG_VI_OP( 856,  vssrl.vi, 3,rd_data_vi+2528, rs2_data+608, 15)
  TEST_AVG_VI_OP( 857,  vssrl.vi, 0,rd_data_vi+2560, rs2_data+640, 15)
  TEST_AVG_VI_OP( 858,  vssrl.vi, 1,rd_data_vi+2592, rs2_data+640, 15)
  TEST_AVG_VI_OP( 859,  vssrl.vi, 2,rd_data_vi+2624, rs2_data+640, 15)
  TEST_AVG_VI_OP( 860,  vssrl.vi, 3,rd_data_vi+2656, rs2_data+640, 15)
  TEST_AVG_VI_OP( 861,  vssrl.vi, 0,rd_data_vi+2688, rs2_data+672, 15)
  TEST_AVG_VI_OP( 862,  vssrl.vi, 1,rd_data_vi+2720, rs2_data+672, 15)
  TEST_AVG_VI_OP( 863,  vssrl.vi, 2,rd_data_vi+2752, rs2_data+672, 15)
  TEST_AVG_VI_OP( 864,  vssrl.vi, 3,rd_data_vi+2784, rs2_data+672, 15)
  TEST_AVG_VI_OP( 865,  vssrl.vi, 0,rd_data_vi+2816, rs2_data+704, 15)
  TEST_AVG_VI_OP( 866,  vssrl.vi, 1,rd_data_vi+2848, rs2_data+704, 15)
  TEST_AVG_VI_OP( 867,  vssrl.vi, 2,rd_data_vi+2880, rs2_data+704, 15)
  TEST_AVG_VI_OP( 868,  vssrl.vi, 3,rd_data_vi+2912, rs2_data+704, 15)
  TEST_AVG_VI_OP( 869,  vssrl.vi, 0,rd_data_vi+2944, rs2_data+736, 15)
  TEST_AVG_VI_OP( 870,  vssrl.vi, 1,rd_data_vi+2976, rs2_data+736, 15)
  TEST_AVG_VI_OP( 871,  vssrl.vi, 2,rd_data_vi+3008, rs2_data+736, 15)
  TEST_AVG_VI_OP( 872,  vssrl.vi, 3,rd_data_vi+3040, rs2_data+736, 15)
  TEST_AVG_VI_OP( 873,  vssrl.vi, 0,rd_data_vi+3072, rs2_data+768, 15)
  TEST_AVG_VI_OP( 874,  vssrl.vi, 1,rd_data_vi+3104, rs2_data+768, 15)
  TEST_AVG_VI_OP( 875,  vssrl.vi, 2,rd_data_vi+3136, rs2_data+768, 15)
  TEST_AVG_VI_OP( 876,  vssrl.vi, 3,rd_data_vi+3168, rs2_data+768, 15)
  TEST_AVG_VI_OP( 877,  vssrl.vi, 0,rd_data_vi+3200, rs2_data+800, 15)
  TEST_AVG_VI_OP( 878,  vssrl.vi, 1,rd_data_vi+3232, rs2_data+800, 15)
  TEST_AVG_VI_OP( 879,  vssrl.vi, 2,rd_data_vi+3264, rs2_data+800, 15)
  TEST_AVG_VI_OP( 880,  vssrl.vi, 3,rd_data_vi+3296, rs2_data+800, 15)
  TEST_AVG_VI_OP( 881,  vssrl.vi, 0,rd_data_vi+3328, rs2_data+832, 15)
  TEST_AVG_VI_OP( 882,  vssrl.vi, 1,rd_data_vi+3360, rs2_data+832, 15)
  TEST_AVG_VI_OP( 883,  vssrl.vi, 2,rd_data_vi+3392, rs2_data+832, 15)
  TEST_AVG_VI_OP( 884,  vssrl.vi, 3,rd_data_vi+3424, rs2_data+832, 15)
  TEST_AVG_VI_OP( 885,  vssrl.vi, 0,rd_data_vi+3456, rs2_data+864, 15)
  TEST_AVG_VI_OP( 886,  vssrl.vi, 1,rd_data_vi+3488, rs2_data+864, 15)
  TEST_AVG_VI_OP( 887,  vssrl.vi, 2,rd_data_vi+3520, rs2_data+864, 15)
  TEST_AVG_VI_OP( 888,  vssrl.vi, 3,rd_data_vi+3552, rs2_data+864, 15)
  TEST_AVG_VI_OP( 889,  vssrl.vi, 0,rd_data_vi+3584, rs2_data+896, 15)
  TEST_AVG_VI_OP( 890,  vssrl.vi, 1,rd_data_vi+3616, rs2_data+896, 15)
  TEST_AVG_VI_OP( 891,  vssrl.vi, 2,rd_data_vi+3648, rs2_data+896, 15)
  TEST_AVG_VI_OP( 892,  vssrl.vi, 3,rd_data_vi+3680, rs2_data+896, 15)
  TEST_AVG_VI_OP( 893,  vssrl.vi, 0,rd_data_vi+3712, rs2_data+928, 15)
  TEST_AVG_VI_OP( 894,  vssrl.vi, 1,rd_data_vi+3744, rs2_data+928, 15)
  TEST_AVG_VI_OP( 895,  vssrl.vi, 2,rd_data_vi+3776, rs2_data+928, 15)
  TEST_AVG_VI_OP( 896,  vssrl.vi, 3,rd_data_vi+3808, rs2_data+928, 15)
  TEST_AVG_VI_OP( 897,  vssrl.vi, 0,rd_data_vi+3840, rs2_data+960, 15)
  TEST_AVG_VI_OP( 898,  vssrl.vi, 1,rd_data_vi+3872, rs2_data+960, 15)
  TEST_AVG_VI_OP( 899,  vssrl.vi, 2,rd_data_vi+3904, rs2_data+960, 15)
  TEST_AVG_VI_OP( 900,  vssrl.vi, 3,rd_data_vi+3936, rs2_data+960, 15)
  TEST_AVG_VI_OP( 901,  vssrl.vi, 0,rd_data_vi+3968, rs2_data+992, 15)
  TEST_AVG_VI_OP( 902,  vssrl.vi, 1,rd_data_vi+4000, rs2_data+992, 15)
  TEST_AVG_VI_OP( 903,  vssrl.vi, 2,rd_data_vi+4032, rs2_data+992, 15)
  TEST_AVG_VI_OP( 904,  vssrl.vi, 3,rd_data_vi+4064, rs2_data+992, 15)
  TEST_AVG_VI_OP( 905,  vssrl.vi, 0,rd_data_vi+4096, rs2_data+1024, 15)
  TEST_AVG_VI_OP( 906,  vssrl.vi, 1,rd_data_vi+4128, rs2_data+1024, 15)
  TEST_AVG_VI_OP( 907,  vssrl.vi, 2,rd_data_vi+4160, rs2_data+1024, 15)
  TEST_AVG_VI_OP( 908,  vssrl.vi, 3,rd_data_vi+4192, rs2_data+1024, 15)
  TEST_AVG_VI_OP( 909,  vssrl.vi, 0,rd_data_vi+4224, rs2_data+1056, 15)
  TEST_AVG_VI_OP( 910,  vssrl.vi, 1,rd_data_vi+4256, rs2_data+1056, 15)
  TEST_AVG_VI_OP( 911,  vssrl.vi, 2,rd_data_vi+4288, rs2_data+1056, 15)
  TEST_AVG_VI_OP( 912,  vssrl.vi, 3,rd_data_vi+4320, rs2_data+1056, 15)
  TEST_AVG_VI_OP( 913,  vssrl.vi, 0,rd_data_vi+4352, rs2_data+1088, 15)
  TEST_AVG_VI_OP( 914,  vssrl.vi, 1,rd_data_vi+4384, rs2_data+1088, 15)
  TEST_AVG_VI_OP( 915,  vssrl.vi, 2,rd_data_vi+4416, rs2_data+1088, 15)
  TEST_AVG_VI_OP( 916,  vssrl.vi, 3,rd_data_vi+4448, rs2_data+1088, 15)
  TEST_AVG_VI_OP( 917,  vssrl.vi, 0,rd_data_vi+4480, rs2_data+1120, 15)
  TEST_AVG_VI_OP( 918,  vssrl.vi, 1,rd_data_vi+4512, rs2_data+1120, 15)
  TEST_AVG_VI_OP( 919,  vssrl.vi, 2,rd_data_vi+4544, rs2_data+1120, 15)
  TEST_AVG_VI_OP( 920,  vssrl.vi, 3,rd_data_vi+4576, rs2_data+1120, 15)
  TEST_AVG_VI_OP( 921,  vssrl.vi, 0,rd_data_vi+4608, rs2_data+1152, 15)
  TEST_AVG_VI_OP( 922,  vssrl.vi, 1,rd_data_vi+4640, rs2_data+1152, 15)
  TEST_AVG_VI_OP( 923,  vssrl.vi, 2,rd_data_vi+4672, rs2_data+1152, 15)
  TEST_AVG_VI_OP( 924,  vssrl.vi, 3,rd_data_vi+4704, rs2_data+1152, 15)
  TEST_AVG_VI_OP( 925,  vssrl.vi, 0,rd_data_vi+4736, rs2_data+1184, 15)
  TEST_AVG_VI_OP( 926,  vssrl.vi, 1,rd_data_vi+4768, rs2_data+1184, 15)
  TEST_AVG_VI_OP( 927,  vssrl.vi, 2,rd_data_vi+4800, rs2_data+1184, 15)
  TEST_AVG_VI_OP( 928,  vssrl.vi, 3,rd_data_vi+4832, rs2_data+1184, 15)
  TEST_AVG_VI_OP( 929,  vssrl.vi, 0,rd_data_vi+4864, rs2_data+1216, 15)
  TEST_AVG_VI_OP( 930,  vssrl.vi, 1,rd_data_vi+4896, rs2_data+1216, 15)
  TEST_AVG_VI_OP( 931,  vssrl.vi, 2,rd_data_vi+4928, rs2_data+1216, 15)
  TEST_AVG_VI_OP( 932,  vssrl.vi, 3,rd_data_vi+4960, rs2_data+1216, 15)
  TEST_AVG_VI_OP( 933,  vssrl.vi, 0,rd_data_vi+4992, rs2_data+1248, 15)
  TEST_AVG_VI_OP( 934,  vssrl.vi, 1,rd_data_vi+5024, rs2_data+1248, 15)
  TEST_AVG_VI_OP( 935,  vssrl.vi, 2,rd_data_vi+5056, rs2_data+1248, 15)
  TEST_AVG_VI_OP( 936,  vssrl.vi, 3,rd_data_vi+5088, rs2_data+1248, 15)
  TEST_AVG_VI_OP( 937,  vssrl.vi, 0,rd_data_vi+5120, rs2_data+1280, 15)
  TEST_AVG_VI_OP( 938,  vssrl.vi, 1,rd_data_vi+5152, rs2_data+1280, 15)
  TEST_AVG_VI_OP( 939,  vssrl.vi, 2,rd_data_vi+5184, rs2_data+1280, 15)
  TEST_AVG_VI_OP( 940,  vssrl.vi, 3,rd_data_vi+5216, rs2_data+1280, 15)
  TEST_AVG_VI_OP( 941,  vssrl.vi, 0,rd_data_vi+5248, rs2_data+1312, 15)
  TEST_AVG_VI_OP( 942,  vssrl.vi, 1,rd_data_vi+5280, rs2_data+1312, 15)
  TEST_AVG_VI_OP( 943,  vssrl.vi, 2,rd_data_vi+5312, rs2_data+1312, 15)
  TEST_AVG_VI_OP( 944,  vssrl.vi, 3,rd_data_vi+5344, rs2_data+1312, 15)
  TEST_AVG_VI_OP( 945,  vssrl.vi, 0,rd_data_vi+5376, rs2_data+1344, 15)
  TEST_AVG_VI_OP( 946,  vssrl.vi, 1,rd_data_vi+5408, rs2_data+1344, 15)
  TEST_AVG_VI_OP( 947,  vssrl.vi, 2,rd_data_vi+5440, rs2_data+1344, 15)
  TEST_AVG_VI_OP( 948,  vssrl.vi, 3,rd_data_vi+5472, rs2_data+1344, 15)
  TEST_AVG_VI_OP( 949,  vssrl.vi, 0,rd_data_vi+5504, rs2_data+1376, 15)
  TEST_AVG_VI_OP( 950,  vssrl.vi, 1,rd_data_vi+5536, rs2_data+1376, 15)
  TEST_AVG_VI_OP( 951,  vssrl.vi, 2,rd_data_vi+5568, rs2_data+1376, 15)
  TEST_AVG_VI_OP( 952,  vssrl.vi, 3,rd_data_vi+5600, rs2_data+1376, 15)
  TEST_AVG_VI_OP( 953,  vssrl.vi, 0,rd_data_vi+5632, rs2_data+1408, 15)
  TEST_AVG_VI_OP( 954,  vssrl.vi, 1,rd_data_vi+5664, rs2_data+1408, 15)
  TEST_AVG_VI_OP( 955,  vssrl.vi, 2,rd_data_vi+5696, rs2_data+1408, 15)
  TEST_AVG_VI_OP( 956,  vssrl.vi, 3,rd_data_vi+5728, rs2_data+1408, 15)
  TEST_AVG_VI_OP( 957,  vssrl.vi, 0,rd_data_vi+5760, rs2_data+1440, 15)
  TEST_AVG_VI_OP( 958,  vssrl.vi, 1,rd_data_vi+5792, rs2_data+1440, 15)
  TEST_AVG_VI_OP( 959,  vssrl.vi, 2,rd_data_vi+5824, rs2_data+1440, 15)
  TEST_AVG_VI_OP( 960,  vssrl.vi, 3,rd_data_vi+5856, rs2_data+1440, 15)
  TEST_AVG_VI_OP( 961,  vssrl.vi, 0,rd_data_vi+5888, rs2_data+1472, 15)
  TEST_AVG_VI_OP( 962,  vssrl.vi, 1,rd_data_vi+5920, rs2_data+1472, 15)
  TEST_AVG_VI_OP( 963,  vssrl.vi, 2,rd_data_vi+5952, rs2_data+1472, 15)
  TEST_AVG_VI_OP( 964,  vssrl.vi, 3,rd_data_vi+5984, rs2_data+1472, 15)
  TEST_AVG_VI_OP( 965,  vssrl.vi, 0,rd_data_vi+6016, rs2_data+1504, 15)
  TEST_AVG_VI_OP( 966,  vssrl.vi, 1,rd_data_vi+6048, rs2_data+1504, 15)
  TEST_AVG_VI_OP( 967,  vssrl.vi, 2,rd_data_vi+6080, rs2_data+1504, 15)
  TEST_AVG_VI_OP( 968,  vssrl.vi, 3,rd_data_vi+6112, rs2_data+1504, 15)
  TEST_AVG_VI_OP( 969,  vssrl.vi, 0,rd_data_vi+6144, rs2_data+1536, 15)
  TEST_AVG_VI_OP( 970,  vssrl.vi, 1,rd_data_vi+6176, rs2_data+1536, 15)
  TEST_AVG_VI_OP( 971,  vssrl.vi, 2,rd_data_vi+6208, rs2_data+1536, 15)
  TEST_AVG_VI_OP( 972,  vssrl.vi, 3,rd_data_vi+6240, rs2_data+1536, 15)
  TEST_AVG_VI_OP( 973,  vssrl.vi, 0,rd_data_vi+6272, rs2_data+1568, 15)
  TEST_AVG_VI_OP( 974,  vssrl.vi, 1,rd_data_vi+6304, rs2_data+1568, 15)
  TEST_AVG_VI_OP( 975,  vssrl.vi, 2,rd_data_vi+6336, rs2_data+1568, 15)
  TEST_AVG_VI_OP( 976,  vssrl.vi, 3,rd_data_vi+6368, rs2_data+1568, 15)
  TEST_AVG_VI_OP( 977,  vssrl.vi, 0,rd_data_vi+6400, rs2_data+1600, 15)
  TEST_AVG_VI_OP( 978,  vssrl.vi, 1,rd_data_vi+6432, rs2_data+1600, 15)
  TEST_AVG_VI_OP( 979,  vssrl.vi, 2,rd_data_vi+6464, rs2_data+1600, 15)
  TEST_AVG_VI_OP( 980,  vssrl.vi, 3,rd_data_vi+6496, rs2_data+1600, 15)
  TEST_AVG_VI_OP( 981,  vssrl.vi, 0,rd_data_vi+6528, rs2_data+1632, 15)
  TEST_AVG_VI_OP( 982,  vssrl.vi, 1,rd_data_vi+6560, rs2_data+1632, 15)
  TEST_AVG_VI_OP( 983,  vssrl.vi, 2,rd_data_vi+6592, rs2_data+1632, 15)
  TEST_AVG_VI_OP( 984,  vssrl.vi, 3,rd_data_vi+6624, rs2_data+1632, 15)
  TEST_AVG_VI_OP( 985,  vssrl.vi, 0,rd_data_vi+6656, rs2_data+1664, 15)
  TEST_AVG_VI_OP( 986,  vssrl.vi, 1,rd_data_vi+6688, rs2_data+1664, 15)
  TEST_AVG_VI_OP( 987,  vssrl.vi, 2,rd_data_vi+6720, rs2_data+1664, 15)
  TEST_AVG_VI_OP( 988,  vssrl.vi, 3,rd_data_vi+6752, rs2_data+1664, 15)
  TEST_AVG_VI_OP( 989,  vssrl.vi, 0,rd_data_vi+6784, rs2_data+1696, 15)
  TEST_AVG_VI_OP( 990,  vssrl.vi, 1,rd_data_vi+6816, rs2_data+1696, 15)
  TEST_AVG_VI_OP( 991,  vssrl.vi, 2,rd_data_vi+6848, rs2_data+1696, 15)
  TEST_AVG_VI_OP( 992,  vssrl.vi, 3,rd_data_vi+6880, rs2_data+1696, 15)
  TEST_AVG_VI_OP( 993,  vssrl.vi, 0,rd_data_vi+6912, rs2_data+1728, 15)
  TEST_AVG_VI_OP( 994,  vssrl.vi, 1,rd_data_vi+6944, rs2_data+1728, 15)
  TEST_AVG_VI_OP( 995,  vssrl.vi, 2,rd_data_vi+6976, rs2_data+1728, 15)
  TEST_AVG_VI_OP( 996,  vssrl.vi, 3,rd_data_vi+7008, rs2_data+1728, 15)
  TEST_AVG_VI_OP( 997,  vssrl.vi, 0,rd_data_vi+7040, rs2_data+1760, 15)
  TEST_AVG_VI_OP( 998,  vssrl.vi, 1,rd_data_vi+7072, rs2_data+1760, 15)
  TEST_AVG_VI_OP( 999,  vssrl.vi, 2,rd_data_vi+7104, rs2_data+1760, 15)
  TEST_AVG_VI_OP( 1000,  vssrl.vi, 3,rd_data_vi+7136, rs2_data+1760, 15)
  TEST_AVG_VI_OP( 1001,  vssrl.vi, 0,rd_data_vi+7168, rs2_data+1792, 15)
  TEST_AVG_VI_OP( 1002,  vssrl.vi, 1,rd_data_vi+7200, rs2_data+1792, 15)
  TEST_AVG_VI_OP( 1003,  vssrl.vi, 2,rd_data_vi+7232, rs2_data+1792, 15)
  TEST_AVG_VI_OP( 1004,  vssrl.vi, 3,rd_data_vi+7264, rs2_data+1792, 15)
  TEST_AVG_VI_OP( 1005,  vssrl.vi, 0,rd_data_vi+7296, rs2_data+1824, 15)
  TEST_AVG_VI_OP( 1006,  vssrl.vi, 1,rd_data_vi+7328, rs2_data+1824, 15)
  TEST_AVG_VI_OP( 1007,  vssrl.vi, 2,rd_data_vi+7360, rs2_data+1824, 15)
  TEST_AVG_VI_OP( 1008,  vssrl.vi, 3,rd_data_vi+7392, rs2_data+1824, 15)
  TEST_AVG_VI_OP( 1009,  vssrl.vi, 0,rd_data_vi+7424, rs2_data+1856, 15)
  TEST_AVG_VI_OP( 1010,  vssrl.vi, 1,rd_data_vi+7456, rs2_data+1856, 15)
  TEST_AVG_VI_OP( 1011,  vssrl.vi, 2,rd_data_vi+7488, rs2_data+1856, 15)
  TEST_AVG_VI_OP( 1012,  vssrl.vi, 3,rd_data_vi+7520, rs2_data+1856, 15)
  TEST_AVG_VI_OP( 1013,  vssrl.vi, 0,rd_data_vi+7552, rs2_data+1888, 15)
  TEST_AVG_VI_OP( 1014,  vssrl.vi, 1,rd_data_vi+7584, rs2_data+1888, 15)
  TEST_AVG_VI_OP( 1015,  vssrl.vi, 2,rd_data_vi+7616, rs2_data+1888, 15)
  TEST_AVG_VI_OP( 1016,  vssrl.vi, 3,rd_data_vi+7648, rs2_data+1888, 15)
  TEST_AVG_VI_OP( 1017,  vssrl.vi, 0,rd_data_vi+7680, rs2_data+1920, 15)
  TEST_AVG_VI_OP( 1018,  vssrl.vi, 1,rd_data_vi+7712, rs2_data+1920, 15)
  TEST_AVG_VI_OP( 1019,  vssrl.vi, 2,rd_data_vi+7744, rs2_data+1920, 15)
  TEST_AVG_VI_OP( 1020,  vssrl.vi, 3,rd_data_vi+7776, rs2_data+1920, 15)
  TEST_AVG_VI_OP( 1021,  vssrl.vi, 0,rd_data_vi+7808, rs2_data+1952, 15)
  TEST_AVG_VI_OP( 1022,  vssrl.vi, 1,rd_data_vi+7840, rs2_data+1952, 15)
  TEST_AVG_VI_OP( 1023,  vssrl.vi, 2,rd_data_vi+7872, rs2_data+1952, 15)
  TEST_AVG_VI_OP( 1024,  vssrl.vi, 3,rd_data_vi+7904, rs2_data+1952, 15)
  TEST_AVG_VI_OP( 1025,  vssrl.vi, 0,rd_data_vi+7936, rs2_data+1984, 15)
  TEST_AVG_VI_OP( 1026,  vssrl.vi, 1,rd_data_vi+7968, rs2_data+1984, 15)
  TEST_AVG_VI_OP( 1027,  vssrl.vi, 2,rd_data_vi+8000, rs2_data+1984, 15)
  TEST_AVG_VI_OP( 1028,  vssrl.vi, 3,rd_data_vi+8032, rs2_data+1984, 15)
  TEST_AVG_VI_OP( 1029,  vssrl.vi, 0,rd_data_vi+8064, rs2_data+2016, 15)
  TEST_AVG_VI_OP( 1030,  vssrl.vi, 1,rd_data_vi+8096, rs2_data+2016, 15)
  TEST_AVG_VI_OP( 1031,  vssrl.vi, 2,rd_data_vi+8128, rs2_data+2016, 15)
  TEST_AVG_VI_OP( 1032,  vssrl.vi, 3,rd_data_vi+8160, rs2_data+2016, 15)
  TEST_AVG_VI_OP( 1033,  vssrl.vi, 0,rd_data_vi+8192, rs2_data+2048, 15)
  TEST_AVG_VI_OP( 1034,  vssrl.vi, 1,rd_data_vi+8224, rs2_data+2048, 15)
  TEST_AVG_VI_OP( 1035,  vssrl.vi, 2,rd_data_vi+8256, rs2_data+2048, 15)
  TEST_AVG_VI_OP( 1036,  vssrl.vi, 3,rd_data_vi+8288, rs2_data+2048, 15)
  TEST_AVG_VI_OP( 1037,  vssrl.vi, 0,rd_data_vi+8320, rs2_data+2080, 15)
  TEST_AVG_VI_OP( 1038,  vssrl.vi, 1,rd_data_vi+8352, rs2_data+2080, 15)
  TEST_AVG_VI_OP( 1039,  vssrl.vi, 2,rd_data_vi+8384, rs2_data+2080, 15)
  TEST_AVG_VI_OP( 1040,  vssrl.vi, 3,rd_data_vi+8416, rs2_data+2080, 15)
  TEST_AVG_VI_OP( 1041,  vssrl.vi, 0,rd_data_vi+8448, rs2_data+2112, 15)
  TEST_AVG_VI_OP( 1042,  vssrl.vi, 1,rd_data_vi+8480, rs2_data+2112, 15)
  TEST_AVG_VI_OP( 1043,  vssrl.vi, 2,rd_data_vi+8512, rs2_data+2112, 15)
  TEST_AVG_VI_OP( 1044,  vssrl.vi, 3,rd_data_vi+8544, rs2_data+2112, 15)
  TEST_AVG_VI_OP( 1045,  vssrl.vi, 0,rd_data_vi+8576, rs2_data+2144, 15)
  TEST_AVG_VI_OP( 1046,  vssrl.vi, 1,rd_data_vi+8608, rs2_data+2144, 15)
  TEST_AVG_VI_OP( 1047,  vssrl.vi, 2,rd_data_vi+8640, rs2_data+2144, 15)
  TEST_AVG_VI_OP( 1048,  vssrl.vi, 3,rd_data_vi+8672, rs2_data+2144, 15)
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
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x10000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x10000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x10000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x10000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000016a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000016a0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000016a0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000016a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000002d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000002d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000002d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000002d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000800
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000800
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000007ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000007ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x002aaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x003fffd3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x002aaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x003fffd3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x002aaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x003fffd2
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x002aaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x003fffd3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000002d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000002d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000002d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000002d
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
.word	0x02aaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02aaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02aaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02aaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
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
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0199999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0199999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x01999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x01999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b51
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
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
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
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
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b505
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b505
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b505
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b505
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b51
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
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
.word	0x00001555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000199a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000199a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00001999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00001999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000199a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000199a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00001999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00001999
.word	0xf682191a
.word	0xfd2ce83f
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
.word	0x02aaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x03333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x02aaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x03333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x02aaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x03333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x02aaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x03333333
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
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000016a1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000016a1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000016a0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000016a1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000155
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000155
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000155
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
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
.word	0x000aaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000019a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000aaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000199
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000aaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000199
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000aaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000ccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000aaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000ccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000aaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000ccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000aaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000ccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000aaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000ccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000ccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000ccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000ccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000017
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000017
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000016
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000017
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
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
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0199999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0199999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x01999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x01999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x0000016a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000016a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000016a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000016b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00aaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00aaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00aaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00aaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00cccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00cccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00cccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00cccccd
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
.word	0x00000002
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x10000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x10000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x10000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x10000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000016a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000016a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000016a0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000016a0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000016a0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000016a0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000016a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000016a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000002d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000002d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000002d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000002d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000002d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000002d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000002d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000002d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000019a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000199
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000800
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000800
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000800
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000800
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000007ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000007ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000007ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000007ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x002aaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x003fffd3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x002aaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x003fffd3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x002aaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x003fffd2
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x002aaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x003fffd3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000002d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000002d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000002d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000002d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000002d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000002d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000002d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000002d
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
.word	0x02aaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02aaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02aaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02aaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02aaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02aaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02aaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02aaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000aab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000ccd
.word	0xf682191a
.word	0xfd2ce83f
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
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0199999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0199999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0199999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0199999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x01999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x01999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x01999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x01999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b51
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b51
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
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
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x15555555
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
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
.word	0x00000003
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
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0001ffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0001ffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0001ffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0001ffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0001fffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffe0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0001fffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffe0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0001fffd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffdf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0001fffd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffdf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0001fe00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001e000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0001fe00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001e000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0001fdff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001dfff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0001fdff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001dfff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00015555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00015555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00015555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001fffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00015555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00015555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00015555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00015555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001fffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00015555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0001ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
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
    

#----------------------------------------------------------------------------- 
    # vssra.S
    #-----------------------------------------------------------------------------
    #
    # Test vssra instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vssra)
    
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
  TEST_AVG_VV_OP( 1,  vssra.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 2,  vssra.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 3,  vssra.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 4,  vssra.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 5,  vssra.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 6,  vssra.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 7,  vssra.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 8,  vssra.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 9,  vssra.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 10,  vssra.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 11,  vssra.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 12,  vssra.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 13,  vssra.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 14,  vssra.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 15,  vssra.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 16,  vssra.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 17,  vssra.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 18,  vssra.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 19,  vssra.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 20,  vssra.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 21,  vssra.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 22,  vssra.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 23,  vssra.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 24,  vssra.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 25,  vssra.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 26,  vssra.vv, 1, rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 27,  vssra.vv, 2, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 28,  vssra.vv, 3, rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 29,  vssra.vv, 0, rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 30,  vssra.vv, 1, rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 31,  vssra.vv, 2, rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 32,  vssra.vv, 3, rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 33,  vssra.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 34,  vssra.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 35,  vssra.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 36,  vssra.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 37,  vssra.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 38,  vssra.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 39,  vssra.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 40,  vssra.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 41,  vssra.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 42,  vssra.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 43,  vssra.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 44,  vssra.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 45,  vssra.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 46,  vssra.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 47,  vssra.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 48,  vssra.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 49,  vssra.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 50,  vssra.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 51,  vssra.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 52,  vssra.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 53,  vssra.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 54,  vssra.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 55,  vssra.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 56,  vssra.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 57,  vssra.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 58,  vssra.vv, 1, rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 59,  vssra.vv, 2, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 60,  vssra.vv, 3, rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 61,  vssra.vv, 0, rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 62,  vssra.vv, 1, rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 63,  vssra.vv, 2, rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 64,  vssra.vv, 3, rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 65,  vssra.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 66,  vssra.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 67,  vssra.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 68,  vssra.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 69,  vssra.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 70,  vssra.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 71,  vssra.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 72,  vssra.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 73,  vssra.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 74,  vssra.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 75,  vssra.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 76,  vssra.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 77,  vssra.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 78,  vssra.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 79,  vssra.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 80,  vssra.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 81,  vssra.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 82,  vssra.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 83,  vssra.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 84,  vssra.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 85,  vssra.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 86,  vssra.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 87,  vssra.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 88,  vssra.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 89,  vssra.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 90,  vssra.vv, 1, rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 91,  vssra.vv, 2, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 92,  vssra.vv, 3, rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 93,  vssra.vv, 0, rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 94,  vssra.vv, 1, rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 95,  vssra.vv, 2, rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 96,  vssra.vv, 3, rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 97,  vssra.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 98,  vssra.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 99,  vssra.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 100,  vssra.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 101,  vssra.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 102,  vssra.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 103,  vssra.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 104,  vssra.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 105,  vssra.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 106,  vssra.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 107,  vssra.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 108,  vssra.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 109,  vssra.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 110,  vssra.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 111,  vssra.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 112,  vssra.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 113,  vssra.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 114,  vssra.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 115,  vssra.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 116,  vssra.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 117,  vssra.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 118,  vssra.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 119,  vssra.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 120,  vssra.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 121,  vssra.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 122,  vssra.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 123,  vssra.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 124,  vssra.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 125,  vssra.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 126,  vssra.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 127,  vssra.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 128,  vssra.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 129,  vssra.vv, 0, rd_data_vv+4096, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 130,  vssra.vv, 1, rd_data_vv+4128, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 131,  vssra.vv, 2, rd_data_vv+4160, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 132,  vssra.vv, 3, rd_data_vv+4192, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 133,  vssra.vv, 0, rd_data_vv+4224, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 134,  vssra.vv, 1, rd_data_vv+4256, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 135,  vssra.vv, 2, rd_data_vv+4288, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 136,  vssra.vv, 3, rd_data_vv+4320, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 137,  vssra.vv, 0, rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 138,  vssra.vv, 1, rd_data_vv+4384, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 139,  vssra.vv, 2, rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 140,  vssra.vv, 3, rd_data_vv+4448, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 141,  vssra.vv, 0, rd_data_vv+4480, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 142,  vssra.vv, 1, rd_data_vv+4512, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 143,  vssra.vv, 2, rd_data_vv+4544, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 144,  vssra.vv, 3, rd_data_vv+4576, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 145,  vssra.vv, 0, rd_data_vv+4608, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 146,  vssra.vv, 1, rd_data_vv+4640, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 147,  vssra.vv, 2, rd_data_vv+4672, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 148,  vssra.vv, 3, rd_data_vv+4704, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 149,  vssra.vv, 0, rd_data_vv+4736, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 150,  vssra.vv, 1, rd_data_vv+4768, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 151,  vssra.vv, 2, rd_data_vv+4800, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 152,  vssra.vv, 3, rd_data_vv+4832, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 153,  vssra.vv, 0, rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 154,  vssra.vv, 1, rd_data_vv+4896, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 155,  vssra.vv, 2, rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 156,  vssra.vv, 3, rd_data_vv+4960, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 157,  vssra.vv, 0, rd_data_vv+4992, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 158,  vssra.vv, 1, rd_data_vv+5024, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 159,  vssra.vv, 2, rd_data_vv+5056, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 160,  vssra.vv, 3, rd_data_vv+5088, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 161,  vssra.vv, 0, rd_data_vv+5120, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 162,  vssra.vv, 1, rd_data_vv+5152, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 163,  vssra.vv, 2, rd_data_vv+5184, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 164,  vssra.vv, 3, rd_data_vv+5216, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 165,  vssra.vv, 0, rd_data_vv+5248, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 166,  vssra.vv, 1, rd_data_vv+5280, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 167,  vssra.vv, 2, rd_data_vv+5312, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 168,  vssra.vv, 3, rd_data_vv+5344, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 169,  vssra.vv, 0, rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 170,  vssra.vv, 1, rd_data_vv+5408, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 171,  vssra.vv, 2, rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 172,  vssra.vv, 3, rd_data_vv+5472, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 173,  vssra.vv, 0, rd_data_vv+5504, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 174,  vssra.vv, 1, rd_data_vv+5536, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 175,  vssra.vv, 2, rd_data_vv+5568, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 176,  vssra.vv, 3, rd_data_vv+5600, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 177,  vssra.vv, 0, rd_data_vv+5632, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 178,  vssra.vv, 1, rd_data_vv+5664, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 179,  vssra.vv, 2, rd_data_vv+5696, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 180,  vssra.vv, 3, rd_data_vv+5728, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 181,  vssra.vv, 0, rd_data_vv+5760, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 182,  vssra.vv, 1, rd_data_vv+5792, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 183,  vssra.vv, 2, rd_data_vv+5824, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 184,  vssra.vv, 3, rd_data_vv+5856, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 185,  vssra.vv, 0, rd_data_vv+5888, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 186,  vssra.vv, 1, rd_data_vv+5920, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 187,  vssra.vv, 2, rd_data_vv+5952, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 188,  vssra.vv, 3, rd_data_vv+5984, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 189,  vssra.vv, 0, rd_data_vv+6016, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 190,  vssra.vv, 1, rd_data_vv+6048, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 191,  vssra.vv, 2, rd_data_vv+6080, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 192,  vssra.vv, 3, rd_data_vv+6112, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 193,  vssra.vv, 0, rd_data_vv+6144, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 194,  vssra.vv, 1, rd_data_vv+6176, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 195,  vssra.vv, 2, rd_data_vv+6208, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 196,  vssra.vv, 3, rd_data_vv+6240, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 197,  vssra.vv, 0, rd_data_vv+6272, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 198,  vssra.vv, 1, rd_data_vv+6304, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 199,  vssra.vv, 2, rd_data_vv+6336, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 200,  vssra.vv, 3, rd_data_vv+6368, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 201,  vssra.vv, 0, rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 202,  vssra.vv, 1, rd_data_vv+6432, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 203,  vssra.vv, 2, rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 204,  vssra.vv, 3, rd_data_vv+6496, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 205,  vssra.vv, 0, rd_data_vv+6528, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 206,  vssra.vv, 1, rd_data_vv+6560, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 207,  vssra.vv, 2, rd_data_vv+6592, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 208,  vssra.vv, 3, rd_data_vv+6624, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 209,  vssra.vv, 0, rd_data_vv+6656, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 210,  vssra.vv, 1, rd_data_vv+6688, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 211,  vssra.vv, 2, rd_data_vv+6720, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 212,  vssra.vv, 3, rd_data_vv+6752, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 213,  vssra.vv, 0, rd_data_vv+6784, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 214,  vssra.vv, 1, rd_data_vv+6816, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 215,  vssra.vv, 2, rd_data_vv+6848, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 216,  vssra.vv, 3, rd_data_vv+6880, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 217,  vssra.vv, 0, rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 218,  vssra.vv, 1, rd_data_vv+6944, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 219,  vssra.vv, 2, rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 220,  vssra.vv, 3, rd_data_vv+7008, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 221,  vssra.vv, 0, rd_data_vv+7040, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 222,  vssra.vv, 1, rd_data_vv+7072, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 223,  vssra.vv, 2, rd_data_vv+7104, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 224,  vssra.vv, 3, rd_data_vv+7136, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 225,  vssra.vv, 0, rd_data_vv+7168, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 226,  vssra.vv, 1, rd_data_vv+7200, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 227,  vssra.vv, 2, rd_data_vv+7232, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 228,  vssra.vv, 3, rd_data_vv+7264, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 229,  vssra.vv, 0, rd_data_vv+7296, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 230,  vssra.vv, 1, rd_data_vv+7328, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 231,  vssra.vv, 2, rd_data_vv+7360, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 232,  vssra.vv, 3, rd_data_vv+7392, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 233,  vssra.vv, 0, rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 234,  vssra.vv, 1, rd_data_vv+7456, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 235,  vssra.vv, 2, rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 236,  vssra.vv, 3, rd_data_vv+7520, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 237,  vssra.vv, 0, rd_data_vv+7552, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 238,  vssra.vv, 1, rd_data_vv+7584, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 239,  vssra.vv, 2, rd_data_vv+7616, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 240,  vssra.vv, 3, rd_data_vv+7648, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 241,  vssra.vv, 0, rd_data_vv+7680, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 242,  vssra.vv, 1, rd_data_vv+7712, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 243,  vssra.vv, 2, rd_data_vv+7744, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 244,  vssra.vv, 3, rd_data_vv+7776, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 245,  vssra.vv, 0, rd_data_vv+7808, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 246,  vssra.vv, 1, rd_data_vv+7840, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 247,  vssra.vv, 2, rd_data_vv+7872, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 248,  vssra.vv, 3, rd_data_vv+7904, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 249,  vssra.vv, 0, rd_data_vv+7936, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 250,  vssra.vv, 1, rd_data_vv+7968, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 251,  vssra.vv, 2, rd_data_vv+8000, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 252,  vssra.vv, 3, rd_data_vv+8032, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 253,  vssra.vv, 0, rd_data_vv+8064, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 254,  vssra.vv, 1, rd_data_vv+8096, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 255,  vssra.vv, 2, rd_data_vv+8128, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 256,  vssra.vv, 3, rd_data_vv+8160, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 257,  vssra.vv, 0, rd_data_vv+8192, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 258,  vssra.vv, 1, rd_data_vv+8224, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 259,  vssra.vv, 2, rd_data_vv+8256, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 260,  vssra.vv, 3, rd_data_vv+8288, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 261,  vssra.vv, 0, rd_data_vv+8320, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 262,  vssra.vv, 1, rd_data_vv+8352, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 263,  vssra.vv, 2, rd_data_vv+8384, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 264,  vssra.vv, 3, rd_data_vv+8416, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 265,  vssra.vv, 0, rd_data_vv+8448, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 266,  vssra.vv, 1, rd_data_vv+8480, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 267,  vssra.vv, 2, rd_data_vv+8512, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 268,  vssra.vv, 3, rd_data_vv+8544, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 269,  vssra.vv, 0, rd_data_vv+8576, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 270,  vssra.vv, 1, rd_data_vv+8608, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 271,  vssra.vv, 2, rd_data_vv+8640, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 272,  vssra.vv, 3, rd_data_vv+8672, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP_rd1( 273,  vssra.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 274,  vssra.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 275,  vssra.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 276,  vssra.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 277,  vssra.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 278,  vssra.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 279,  vssra.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 280,  vssra.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd2( 281,  vssra.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 282,  vssra.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 283,  vssra.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 284,  vssra.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 285,  vssra.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 286,  vssra.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 287,  vssra.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 288,  vssra.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd3( 289,  vssra.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 290,  vssra.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 291,  vssra.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 292,  vssra.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 293,  vssra.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 294,  vssra.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 295,  vssra.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 296,  vssra.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd4( 297,  vssra.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 298,  vssra.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 299,  vssra.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 300,  vssra.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 301,  vssra.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 302,  vssra.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 303,  vssra.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 304,  vssra.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd5( 305,  vssra.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 306,  vssra.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 307,  vssra.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 308,  vssra.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 309,  vssra.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 310,  vssra.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 311,  vssra.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 312,  vssra.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd6( 313,  vssra.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 314,  vssra.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 315,  vssra.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 316,  vssra.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 317,  vssra.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 318,  vssra.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 319,  vssra.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 320,  vssra.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd7( 321,  vssra.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 322,  vssra.vv, 1, rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 323,  vssra.vv, 2, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 324,  vssra.vv, 3, rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_9( 325,  vssra.vv, 0, rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 326,  vssra.vv, 1, rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 327,  vssra.vv, 2, rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 328,  vssra.vv, 3, rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_rd9( 329,  vssra.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 330,  vssra.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 331,  vssra.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 332,  vssra.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 333,  vssra.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 334,  vssra.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 335,  vssra.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 336,  vssra.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd10( 337,  vssra.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 338,  vssra.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 339,  vssra.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 340,  vssra.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 341,  vssra.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 342,  vssra.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 343,  vssra.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 344,  vssra.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd11( 345,  vssra.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 346,  vssra.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 347,  vssra.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 348,  vssra.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 349,  vssra.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 350,  vssra.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 351,  vssra.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 352,  vssra.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd12( 353,  vssra.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 354,  vssra.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 355,  vssra.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 356,  vssra.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 357,  vssra.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 358,  vssra.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 359,  vssra.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 360,  vssra.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd13( 361,  vssra.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 362,  vssra.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 363,  vssra.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 364,  vssra.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 365,  vssra.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 366,  vssra.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 367,  vssra.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 368,  vssra.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd14( 369,  vssra.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 370,  vssra.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 371,  vssra.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 372,  vssra.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 373,  vssra.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 374,  vssra.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 375,  vssra.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 376,  vssra.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd15( 377,  vssra.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 378,  vssra.vv, 1, rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 379,  vssra.vv, 2, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 380,  vssra.vv, 3, rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_1_17( 381,  vssra.vv, 0, rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 382,  vssra.vv, 1, rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 383,  vssra.vv, 2, rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 384,  vssra.vv, 3, rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_rd17( 385,  vssra.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 386,  vssra.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 387,  vssra.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 388,  vssra.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 389,  vssra.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 390,  vssra.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 391,  vssra.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 392,  vssra.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd18( 393,  vssra.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 394,  vssra.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 395,  vssra.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 396,  vssra.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 397,  vssra.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 398,  vssra.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 399,  vssra.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 400,  vssra.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd19( 401,  vssra.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 402,  vssra.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 403,  vssra.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 404,  vssra.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 405,  vssra.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 406,  vssra.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 407,  vssra.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 408,  vssra.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd20( 409,  vssra.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 410,  vssra.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 411,  vssra.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 412,  vssra.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 413,  vssra.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 414,  vssra.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 415,  vssra.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 416,  vssra.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd21( 417,  vssra.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 418,  vssra.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 419,  vssra.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 420,  vssra.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 421,  vssra.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 422,  vssra.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 423,  vssra.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 424,  vssra.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd22( 425,  vssra.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 426,  vssra.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 427,  vssra.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 428,  vssra.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 429,  vssra.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 430,  vssra.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 431,  vssra.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 432,  vssra.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd23( 433,  vssra.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 434,  vssra.vv, 1, rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 435,  vssra.vv, 2, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 436,  vssra.vv, 3, rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_25( 437,  vssra.vv, 0, rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 438,  vssra.vv, 1, rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 439,  vssra.vv, 2, rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 440,  vssra.vv, 3, rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_rd25( 441,  vssra.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 442,  vssra.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 443,  vssra.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 444,  vssra.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 445,  vssra.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 446,  vssra.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 447,  vssra.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 448,  vssra.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd26( 449,  vssra.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 450,  vssra.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 451,  vssra.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 452,  vssra.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 453,  vssra.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 454,  vssra.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 455,  vssra.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 456,  vssra.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd27( 457,  vssra.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 458,  vssra.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 459,  vssra.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 460,  vssra.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 461,  vssra.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 462,  vssra.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 463,  vssra.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 464,  vssra.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd28( 465,  vssra.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 466,  vssra.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 467,  vssra.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 468,  vssra.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 469,  vssra.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 470,  vssra.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 471,  vssra.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 472,  vssra.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd29( 473,  vssra.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 474,  vssra.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 475,  vssra.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 476,  vssra.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 477,  vssra.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 478,  vssra.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 479,  vssra.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 480,  vssra.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd30( 481,  vssra.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 482,  vssra.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 483,  vssra.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 484,  vssra.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 485,  vssra.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 486,  vssra.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 487,  vssra.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 488,  vssra.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd31( 489,  vssra.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 490,  vssra.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 491,  vssra.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 492,  vssra.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 493,  vssra.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 494,  vssra.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 495,  vssra.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 496,  vssra.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd1( 497,  vssra.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 498,  vssra.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 499,  vssra.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 500,  vssra.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 501,  vssra.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 502,  vssra.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 503,  vssra.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 504,  vssra.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_VX_OP( 505,  vssra.vx, 0,rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 506,  vssra.vx, 1,rd_data_vx+32, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 507,  vssra.vx, 2,rd_data_vx+64, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 508,  vssra.vx, 3,rd_data_vx+96, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 509,  vssra.vx, 0,rd_data_vx+128, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 510,  vssra.vx, 1,rd_data_vx+160, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 511,  vssra.vx, 2,rd_data_vx+192, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 512,  vssra.vx, 3,rd_data_vx+224, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 513,  vssra.vx, 0,rd_data_vx+256, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 514,  vssra.vx, 1,rd_data_vx+288, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 515,  vssra.vx, 2,rd_data_vx+320, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 516,  vssra.vx, 3,rd_data_vx+352, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 517,  vssra.vx, 0,rd_data_vx+384, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 518,  vssra.vx, 1,rd_data_vx+416, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 519,  vssra.vx, 2,rd_data_vx+448, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 520,  vssra.vx, 3,rd_data_vx+480, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 521,  vssra.vx, 0,rd_data_vx+512, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 522,  vssra.vx, 1,rd_data_vx+544, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 523,  vssra.vx, 2,rd_data_vx+576, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 524,  vssra.vx, 3,rd_data_vx+608, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 525,  vssra.vx, 0,rd_data_vx+640, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 526,  vssra.vx, 1,rd_data_vx+672, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 527,  vssra.vx, 2,rd_data_vx+704, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 528,  vssra.vx, 3,rd_data_vx+736, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 529,  vssra.vx, 0,rd_data_vx+768, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 530,  vssra.vx, 1,rd_data_vx+800, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 531,  vssra.vx, 2,rd_data_vx+832, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 532,  vssra.vx, 3,rd_data_vx+864, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 533,  vssra.vx, 0,rd_data_vx+896, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 534,  vssra.vx, 1,rd_data_vx+928, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 535,  vssra.vx, 2,rd_data_vx+960, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 536,  vssra.vx, 3,rd_data_vx+992, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 537,  vssra.vx, 0,rd_data_vx+1024, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 538,  vssra.vx, 1,rd_data_vx+1056, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 539,  vssra.vx, 2,rd_data_vx+1088, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 540,  vssra.vx, 3,rd_data_vx+1120, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 541,  vssra.vx, 0,rd_data_vx+1152, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 542,  vssra.vx, 1,rd_data_vx+1184, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 543,  vssra.vx, 2,rd_data_vx+1216, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 544,  vssra.vx, 3,rd_data_vx+1248, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 545,  vssra.vx, 0,rd_data_vx+1280, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 546,  vssra.vx, 1,rd_data_vx+1312, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 547,  vssra.vx, 2,rd_data_vx+1344, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 548,  vssra.vx, 3,rd_data_vx+1376, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 549,  vssra.vx, 0,rd_data_vx+1408, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 550,  vssra.vx, 1,rd_data_vx+1440, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 551,  vssra.vx, 2,rd_data_vx+1472, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 552,  vssra.vx, 3,rd_data_vx+1504, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 553,  vssra.vx, 0,rd_data_vx+1536, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 554,  vssra.vx, 1,rd_data_vx+1568, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 555,  vssra.vx, 2,rd_data_vx+1600, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 556,  vssra.vx, 3,rd_data_vx+1632, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 557,  vssra.vx, 0,rd_data_vx+1664, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 558,  vssra.vx, 1,rd_data_vx+1696, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 559,  vssra.vx, 2,rd_data_vx+1728, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 560,  vssra.vx, 3,rd_data_vx+1760, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 561,  vssra.vx, 0,rd_data_vx+1792, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 562,  vssra.vx, 1,rd_data_vx+1824, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 563,  vssra.vx, 2,rd_data_vx+1856, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 564,  vssra.vx, 3,rd_data_vx+1888, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 565,  vssra.vx, 0,rd_data_vx+1920, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 566,  vssra.vx, 1,rd_data_vx+1952, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 567,  vssra.vx, 2,rd_data_vx+1984, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 568,  vssra.vx, 3,rd_data_vx+2016, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 569,  vssra.vx, 0,rd_data_vx+2048, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 570,  vssra.vx, 1,rd_data_vx+2080, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 571,  vssra.vx, 2,rd_data_vx+2112, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 572,  vssra.vx, 3,rd_data_vx+2144, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 573,  vssra.vx, 0,rd_data_vx+2176, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 574,  vssra.vx, 1,rd_data_vx+2208, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 575,  vssra.vx, 2,rd_data_vx+2240, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 576,  vssra.vx, 3,rd_data_vx+2272, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 577,  vssra.vx, 0,rd_data_vx+2304, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 578,  vssra.vx, 1,rd_data_vx+2336, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 579,  vssra.vx, 2,rd_data_vx+2368, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 580,  vssra.vx, 3,rd_data_vx+2400, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 581,  vssra.vx, 0,rd_data_vx+2432, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 582,  vssra.vx, 1,rd_data_vx+2464, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 583,  vssra.vx, 2,rd_data_vx+2496, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 584,  vssra.vx, 3,rd_data_vx+2528, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 585,  vssra.vx, 0,rd_data_vx+2560, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 586,  vssra.vx, 1,rd_data_vx+2592, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 587,  vssra.vx, 2,rd_data_vx+2624, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 588,  vssra.vx, 3,rd_data_vx+2656, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 589,  vssra.vx, 0,rd_data_vx+2688, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 590,  vssra.vx, 1,rd_data_vx+2720, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 591,  vssra.vx, 2,rd_data_vx+2752, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 592,  vssra.vx, 3,rd_data_vx+2784, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 593,  vssra.vx, 0,rd_data_vx+2816, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 594,  vssra.vx, 1,rd_data_vx+2848, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 595,  vssra.vx, 2,rd_data_vx+2880, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 596,  vssra.vx, 3,rd_data_vx+2912, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 597,  vssra.vx, 0,rd_data_vx+2944, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 598,  vssra.vx, 1,rd_data_vx+2976, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 599,  vssra.vx, 2,rd_data_vx+3008, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 600,  vssra.vx, 3,rd_data_vx+3040, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 601,  vssra.vx, 0,rd_data_vx+3072, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 602,  vssra.vx, 1,rd_data_vx+3104, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 603,  vssra.vx, 2,rd_data_vx+3136, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 604,  vssra.vx, 3,rd_data_vx+3168, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 605,  vssra.vx, 0,rd_data_vx+3200, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 606,  vssra.vx, 1,rd_data_vx+3232, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 607,  vssra.vx, 2,rd_data_vx+3264, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 608,  vssra.vx, 3,rd_data_vx+3296, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 609,  vssra.vx, 0,rd_data_vx+3328, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 610,  vssra.vx, 1,rd_data_vx+3360, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 611,  vssra.vx, 2,rd_data_vx+3392, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 612,  vssra.vx, 3,rd_data_vx+3424, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 613,  vssra.vx, 0,rd_data_vx+3456, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 614,  vssra.vx, 1,rd_data_vx+3488, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 615,  vssra.vx, 2,rd_data_vx+3520, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 616,  vssra.vx, 3,rd_data_vx+3552, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 617,  vssra.vx, 0,rd_data_vx+3584, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 618,  vssra.vx, 1,rd_data_vx+3616, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 619,  vssra.vx, 2,rd_data_vx+3648, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 620,  vssra.vx, 3,rd_data_vx+3680, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 621,  vssra.vx, 0,rd_data_vx+3712, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 622,  vssra.vx, 1,rd_data_vx+3744, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 623,  vssra.vx, 2,rd_data_vx+3776, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 624,  vssra.vx, 3,rd_data_vx+3808, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 625,  vssra.vx, 0,rd_data_vx+3840, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 626,  vssra.vx, 1,rd_data_vx+3872, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 627,  vssra.vx, 2,rd_data_vx+3904, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 628,  vssra.vx, 3,rd_data_vx+3936, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 629,  vssra.vx, 0,rd_data_vx+3968, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 630,  vssra.vx, 1,rd_data_vx+4000, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 631,  vssra.vx, 2,rd_data_vx+4032, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 632,  vssra.vx, 3,rd_data_vx+4064, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 633,  vssra.vx, 0,rd_data_vx+4096, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 634,  vssra.vx, 1,rd_data_vx+4128, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 635,  vssra.vx, 2,rd_data_vx+4160, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 636,  vssra.vx, 3,rd_data_vx+4192, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 637,  vssra.vx, 0,rd_data_vx+4224, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 638,  vssra.vx, 1,rd_data_vx+4256, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 639,  vssra.vx, 2,rd_data_vx+4288, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 640,  vssra.vx, 3,rd_data_vx+4320, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 641,  vssra.vx, 0,rd_data_vx+4352, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 642,  vssra.vx, 1,rd_data_vx+4384, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 643,  vssra.vx, 2,rd_data_vx+4416, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 644,  vssra.vx, 3,rd_data_vx+4448, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 645,  vssra.vx, 0,rd_data_vx+4480, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 646,  vssra.vx, 1,rd_data_vx+4512, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 647,  vssra.vx, 2,rd_data_vx+4544, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 648,  vssra.vx, 3,rd_data_vx+4576, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 649,  vssra.vx, 0,rd_data_vx+4608, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 650,  vssra.vx, 1,rd_data_vx+4640, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 651,  vssra.vx, 2,rd_data_vx+4672, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 652,  vssra.vx, 3,rd_data_vx+4704, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 653,  vssra.vx, 0,rd_data_vx+4736, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 654,  vssra.vx, 1,rd_data_vx+4768, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 655,  vssra.vx, 2,rd_data_vx+4800, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 656,  vssra.vx, 3,rd_data_vx+4832, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 657,  vssra.vx, 0,rd_data_vx+4864, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 658,  vssra.vx, 1,rd_data_vx+4896, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 659,  vssra.vx, 2,rd_data_vx+4928, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 660,  vssra.vx, 3,rd_data_vx+4960, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 661,  vssra.vx, 0,rd_data_vx+4992, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 662,  vssra.vx, 1,rd_data_vx+5024, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 663,  vssra.vx, 2,rd_data_vx+5056, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 664,  vssra.vx, 3,rd_data_vx+5088, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 665,  vssra.vx, 0,rd_data_vx+5120, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 666,  vssra.vx, 1,rd_data_vx+5152, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 667,  vssra.vx, 2,rd_data_vx+5184, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 668,  vssra.vx, 3,rd_data_vx+5216, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 669,  vssra.vx, 0,rd_data_vx+5248, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 670,  vssra.vx, 1,rd_data_vx+5280, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 671,  vssra.vx, 2,rd_data_vx+5312, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 672,  vssra.vx, 3,rd_data_vx+5344, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 673,  vssra.vx, 0,rd_data_vx+5376, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 674,  vssra.vx, 1,rd_data_vx+5408, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 675,  vssra.vx, 2,rd_data_vx+5440, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 676,  vssra.vx, 3,rd_data_vx+5472, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 677,  vssra.vx, 0,rd_data_vx+5504, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 678,  vssra.vx, 1,rd_data_vx+5536, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 679,  vssra.vx, 2,rd_data_vx+5568, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 680,  vssra.vx, 3,rd_data_vx+5600, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 681,  vssra.vx, 0,rd_data_vx+5632, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 682,  vssra.vx, 1,rd_data_vx+5664, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 683,  vssra.vx, 2,rd_data_vx+5696, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 684,  vssra.vx, 3,rd_data_vx+5728, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 685,  vssra.vx, 0,rd_data_vx+5760, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 686,  vssra.vx, 1,rd_data_vx+5792, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 687,  vssra.vx, 2,rd_data_vx+5824, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 688,  vssra.vx, 3,rd_data_vx+5856, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 689,  vssra.vx, 0,rd_data_vx+5888, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 690,  vssra.vx, 1,rd_data_vx+5920, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 691,  vssra.vx, 2,rd_data_vx+5952, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 692,  vssra.vx, 3,rd_data_vx+5984, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 693,  vssra.vx, 0,rd_data_vx+6016, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 694,  vssra.vx, 1,rd_data_vx+6048, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 695,  vssra.vx, 2,rd_data_vx+6080, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 696,  vssra.vx, 3,rd_data_vx+6112, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 697,  vssra.vx, 0,rd_data_vx+6144, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 698,  vssra.vx, 1,rd_data_vx+6176, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 699,  vssra.vx, 2,rd_data_vx+6208, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 700,  vssra.vx, 3,rd_data_vx+6240, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 701,  vssra.vx, 0,rd_data_vx+6272, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 702,  vssra.vx, 1,rd_data_vx+6304, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 703,  vssra.vx, 2,rd_data_vx+6336, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 704,  vssra.vx, 3,rd_data_vx+6368, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 705,  vssra.vx, 0,rd_data_vx+6400, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 706,  vssra.vx, 1,rd_data_vx+6432, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 707,  vssra.vx, 2,rd_data_vx+6464, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 708,  vssra.vx, 3,rd_data_vx+6496, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 709,  vssra.vx, 0,rd_data_vx+6528, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 710,  vssra.vx, 1,rd_data_vx+6560, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 711,  vssra.vx, 2,rd_data_vx+6592, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 712,  vssra.vx, 3,rd_data_vx+6624, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 713,  vssra.vx, 0,rd_data_vx+6656, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 714,  vssra.vx, 1,rd_data_vx+6688, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 715,  vssra.vx, 2,rd_data_vx+6720, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 716,  vssra.vx, 3,rd_data_vx+6752, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 717,  vssra.vx, 0,rd_data_vx+6784, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 718,  vssra.vx, 1,rd_data_vx+6816, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 719,  vssra.vx, 2,rd_data_vx+6848, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 720,  vssra.vx, 3,rd_data_vx+6880, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 721,  vssra.vx, 0,rd_data_vx+6912, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 722,  vssra.vx, 1,rd_data_vx+6944, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 723,  vssra.vx, 2,rd_data_vx+6976, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 724,  vssra.vx, 3,rd_data_vx+7008, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 725,  vssra.vx, 0,rd_data_vx+7040, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 726,  vssra.vx, 1,rd_data_vx+7072, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 727,  vssra.vx, 2,rd_data_vx+7104, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 728,  vssra.vx, 3,rd_data_vx+7136, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 729,  vssra.vx, 0,rd_data_vx+7168, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 730,  vssra.vx, 1,rd_data_vx+7200, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 731,  vssra.vx, 2,rd_data_vx+7232, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 732,  vssra.vx, 3,rd_data_vx+7264, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 733,  vssra.vx, 0,rd_data_vx+7296, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 734,  vssra.vx, 1,rd_data_vx+7328, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 735,  vssra.vx, 2,rd_data_vx+7360, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 736,  vssra.vx, 3,rd_data_vx+7392, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 737,  vssra.vx, 0,rd_data_vx+7424, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 738,  vssra.vx, 1,rd_data_vx+7456, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 739,  vssra.vx, 2,rd_data_vx+7488, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 740,  vssra.vx, 3,rd_data_vx+7520, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 741,  vssra.vx, 0,rd_data_vx+7552, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 742,  vssra.vx, 1,rd_data_vx+7584, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 743,  vssra.vx, 2,rd_data_vx+7616, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 744,  vssra.vx, 3,rd_data_vx+7648, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 745,  vssra.vx, 0,rd_data_vx+7680, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 746,  vssra.vx, 1,rd_data_vx+7712, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 747,  vssra.vx, 2,rd_data_vx+7744, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 748,  vssra.vx, 3,rd_data_vx+7776, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 749,  vssra.vx, 0,rd_data_vx+7808, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 750,  vssra.vx, 1,rd_data_vx+7840, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 751,  vssra.vx, 2,rd_data_vx+7872, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 752,  vssra.vx, 3,rd_data_vx+7904, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 753,  vssra.vx, 0,rd_data_vx+7936, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 754,  vssra.vx, 1,rd_data_vx+7968, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 755,  vssra.vx, 2,rd_data_vx+8000, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 756,  vssra.vx, 3,rd_data_vx+8032, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 757,  vssra.vx, 0,rd_data_vx+8064, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 758,  vssra.vx, 1,rd_data_vx+8096, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 759,  vssra.vx, 2,rd_data_vx+8128, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 760,  vssra.vx, 3,rd_data_vx+8160, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 761,  vssra.vx, 0,rd_data_vx+8192, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 762,  vssra.vx, 1,rd_data_vx+8224, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 763,  vssra.vx, 2,rd_data_vx+8256, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 764,  vssra.vx, 3,rd_data_vx+8288, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 765,  vssra.vx, 0,rd_data_vx+8320, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 766,  vssra.vx, 1,rd_data_vx+8352, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 767,  vssra.vx, 2,rd_data_vx+8384, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 768,  vssra.vx, 3,rd_data_vx+8416, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 769,  vssra.vx, 0,rd_data_vx+8448, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 770,  vssra.vx, 1,rd_data_vx+8480, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 771,  vssra.vx, 2,rd_data_vx+8512, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 772,  vssra.vx, 3,rd_data_vx+8544, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 773,  vssra.vx, 0,rd_data_vx+8576, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 774,  vssra.vx, 1,rd_data_vx+8608, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 775,  vssra.vx, 2,rd_data_vx+8640, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 776,  vssra.vx, 3,rd_data_vx+8672, rs2_data+2144, 0xfffffffffffffffe)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_VI_OP( 777,  vssra.vi, 0,rd_data_vi+0, rs2_data+0, 15)
  TEST_AVG_VI_OP( 778,  vssra.vi, 1,rd_data_vi+32, rs2_data+0, 15)
  TEST_AVG_VI_OP( 779,  vssra.vi, 2,rd_data_vi+64, rs2_data+0, 15)
  TEST_AVG_VI_OP( 780,  vssra.vi, 3,rd_data_vi+96, rs2_data+0, 15)
  TEST_AVG_VI_OP( 781,  vssra.vi, 0,rd_data_vi+128, rs2_data+32, 15)
  TEST_AVG_VI_OP( 782,  vssra.vi, 1,rd_data_vi+160, rs2_data+32, 15)
  TEST_AVG_VI_OP( 783,  vssra.vi, 2,rd_data_vi+192, rs2_data+32, 15)
  TEST_AVG_VI_OP( 784,  vssra.vi, 3,rd_data_vi+224, rs2_data+32, 15)
  TEST_AVG_VI_OP( 785,  vssra.vi, 0,rd_data_vi+256, rs2_data+64, 15)
  TEST_AVG_VI_OP( 786,  vssra.vi, 1,rd_data_vi+288, rs2_data+64, 15)
  TEST_AVG_VI_OP( 787,  vssra.vi, 2,rd_data_vi+320, rs2_data+64, 15)
  TEST_AVG_VI_OP( 788,  vssra.vi, 3,rd_data_vi+352, rs2_data+64, 15)
  TEST_AVG_VI_OP( 789,  vssra.vi, 0,rd_data_vi+384, rs2_data+96, 15)
  TEST_AVG_VI_OP( 790,  vssra.vi, 1,rd_data_vi+416, rs2_data+96, 15)
  TEST_AVG_VI_OP( 791,  vssra.vi, 2,rd_data_vi+448, rs2_data+96, 15)
  TEST_AVG_VI_OP( 792,  vssra.vi, 3,rd_data_vi+480, rs2_data+96, 15)
  TEST_AVG_VI_OP( 793,  vssra.vi, 0,rd_data_vi+512, rs2_data+128, 15)
  TEST_AVG_VI_OP( 794,  vssra.vi, 1,rd_data_vi+544, rs2_data+128, 15)
  TEST_AVG_VI_OP( 795,  vssra.vi, 2,rd_data_vi+576, rs2_data+128, 15)
  TEST_AVG_VI_OP( 796,  vssra.vi, 3,rd_data_vi+608, rs2_data+128, 15)
  TEST_AVG_VI_OP( 797,  vssra.vi, 0,rd_data_vi+640, rs2_data+160, 15)
  TEST_AVG_VI_OP( 798,  vssra.vi, 1,rd_data_vi+672, rs2_data+160, 15)
  TEST_AVG_VI_OP( 799,  vssra.vi, 2,rd_data_vi+704, rs2_data+160, 15)
  TEST_AVG_VI_OP( 800,  vssra.vi, 3,rd_data_vi+736, rs2_data+160, 15)
  TEST_AVG_VI_OP( 801,  vssra.vi, 0,rd_data_vi+768, rs2_data+192, 15)
  TEST_AVG_VI_OP( 802,  vssra.vi, 1,rd_data_vi+800, rs2_data+192, 15)
  TEST_AVG_VI_OP( 803,  vssra.vi, 2,rd_data_vi+832, rs2_data+192, 15)
  TEST_AVG_VI_OP( 804,  vssra.vi, 3,rd_data_vi+864, rs2_data+192, 15)
  TEST_AVG_VI_OP( 805,  vssra.vi, 0,rd_data_vi+896, rs2_data+224, 15)
  TEST_AVG_VI_OP( 806,  vssra.vi, 1,rd_data_vi+928, rs2_data+224, 15)
  TEST_AVG_VI_OP( 807,  vssra.vi, 2,rd_data_vi+960, rs2_data+224, 15)
  TEST_AVG_VI_OP( 808,  vssra.vi, 3,rd_data_vi+992, rs2_data+224, 15)
  TEST_AVG_VI_OP( 809,  vssra.vi, 0,rd_data_vi+1024, rs2_data+256, 15)
  TEST_AVG_VI_OP( 810,  vssra.vi, 1,rd_data_vi+1056, rs2_data+256, 15)
  TEST_AVG_VI_OP( 811,  vssra.vi, 2,rd_data_vi+1088, rs2_data+256, 15)
  TEST_AVG_VI_OP( 812,  vssra.vi, 3,rd_data_vi+1120, rs2_data+256, 15)
  TEST_AVG_VI_OP( 813,  vssra.vi, 0,rd_data_vi+1152, rs2_data+288, 15)
  TEST_AVG_VI_OP( 814,  vssra.vi, 1,rd_data_vi+1184, rs2_data+288, 15)
  TEST_AVG_VI_OP( 815,  vssra.vi, 2,rd_data_vi+1216, rs2_data+288, 15)
  TEST_AVG_VI_OP( 816,  vssra.vi, 3,rd_data_vi+1248, rs2_data+288, 15)
  TEST_AVG_VI_OP( 817,  vssra.vi, 0,rd_data_vi+1280, rs2_data+320, 15)
  TEST_AVG_VI_OP( 818,  vssra.vi, 1,rd_data_vi+1312, rs2_data+320, 15)
  TEST_AVG_VI_OP( 819,  vssra.vi, 2,rd_data_vi+1344, rs2_data+320, 15)
  TEST_AVG_VI_OP( 820,  vssra.vi, 3,rd_data_vi+1376, rs2_data+320, 15)
  TEST_AVG_VI_OP( 821,  vssra.vi, 0,rd_data_vi+1408, rs2_data+352, 15)
  TEST_AVG_VI_OP( 822,  vssra.vi, 1,rd_data_vi+1440, rs2_data+352, 15)
  TEST_AVG_VI_OP( 823,  vssra.vi, 2,rd_data_vi+1472, rs2_data+352, 15)
  TEST_AVG_VI_OP( 824,  vssra.vi, 3,rd_data_vi+1504, rs2_data+352, 15)
  TEST_AVG_VI_OP( 825,  vssra.vi, 0,rd_data_vi+1536, rs2_data+384, 15)
  TEST_AVG_VI_OP( 826,  vssra.vi, 1,rd_data_vi+1568, rs2_data+384, 15)
  TEST_AVG_VI_OP( 827,  vssra.vi, 2,rd_data_vi+1600, rs2_data+384, 15)
  TEST_AVG_VI_OP( 828,  vssra.vi, 3,rd_data_vi+1632, rs2_data+384, 15)
  TEST_AVG_VI_OP( 829,  vssra.vi, 0,rd_data_vi+1664, rs2_data+416, 15)
  TEST_AVG_VI_OP( 830,  vssra.vi, 1,rd_data_vi+1696, rs2_data+416, 15)
  TEST_AVG_VI_OP( 831,  vssra.vi, 2,rd_data_vi+1728, rs2_data+416, 15)
  TEST_AVG_VI_OP( 832,  vssra.vi, 3,rd_data_vi+1760, rs2_data+416, 15)
  TEST_AVG_VI_OP( 833,  vssra.vi, 0,rd_data_vi+1792, rs2_data+448, 15)
  TEST_AVG_VI_OP( 834,  vssra.vi, 1,rd_data_vi+1824, rs2_data+448, 15)
  TEST_AVG_VI_OP( 835,  vssra.vi, 2,rd_data_vi+1856, rs2_data+448, 15)
  TEST_AVG_VI_OP( 836,  vssra.vi, 3,rd_data_vi+1888, rs2_data+448, 15)
  TEST_AVG_VI_OP( 837,  vssra.vi, 0,rd_data_vi+1920, rs2_data+480, 15)
  TEST_AVG_VI_OP( 838,  vssra.vi, 1,rd_data_vi+1952, rs2_data+480, 15)
  TEST_AVG_VI_OP( 839,  vssra.vi, 2,rd_data_vi+1984, rs2_data+480, 15)
  TEST_AVG_VI_OP( 840,  vssra.vi, 3,rd_data_vi+2016, rs2_data+480, 15)
  TEST_AVG_VI_OP( 841,  vssra.vi, 0,rd_data_vi+2048, rs2_data+512, 15)
  TEST_AVG_VI_OP( 842,  vssra.vi, 1,rd_data_vi+2080, rs2_data+512, 15)
  TEST_AVG_VI_OP( 843,  vssra.vi, 2,rd_data_vi+2112, rs2_data+512, 15)
  TEST_AVG_VI_OP( 844,  vssra.vi, 3,rd_data_vi+2144, rs2_data+512, 15)
  TEST_AVG_VI_OP( 845,  vssra.vi, 0,rd_data_vi+2176, rs2_data+544, 15)
  TEST_AVG_VI_OP( 846,  vssra.vi, 1,rd_data_vi+2208, rs2_data+544, 15)
  TEST_AVG_VI_OP( 847,  vssra.vi, 2,rd_data_vi+2240, rs2_data+544, 15)
  TEST_AVG_VI_OP( 848,  vssra.vi, 3,rd_data_vi+2272, rs2_data+544, 15)
  TEST_AVG_VI_OP( 849,  vssra.vi, 0,rd_data_vi+2304, rs2_data+576, 15)
  TEST_AVG_VI_OP( 850,  vssra.vi, 1,rd_data_vi+2336, rs2_data+576, 15)
  TEST_AVG_VI_OP( 851,  vssra.vi, 2,rd_data_vi+2368, rs2_data+576, 15)
  TEST_AVG_VI_OP( 852,  vssra.vi, 3,rd_data_vi+2400, rs2_data+576, 15)
  TEST_AVG_VI_OP( 853,  vssra.vi, 0,rd_data_vi+2432, rs2_data+608, 15)
  TEST_AVG_VI_OP( 854,  vssra.vi, 1,rd_data_vi+2464, rs2_data+608, 15)
  TEST_AVG_VI_OP( 855,  vssra.vi, 2,rd_data_vi+2496, rs2_data+608, 15)
  TEST_AVG_VI_OP( 856,  vssra.vi, 3,rd_data_vi+2528, rs2_data+608, 15)
  TEST_AVG_VI_OP( 857,  vssra.vi, 0,rd_data_vi+2560, rs2_data+640, 15)
  TEST_AVG_VI_OP( 858,  vssra.vi, 1,rd_data_vi+2592, rs2_data+640, 15)
  TEST_AVG_VI_OP( 859,  vssra.vi, 2,rd_data_vi+2624, rs2_data+640, 15)
  TEST_AVG_VI_OP( 860,  vssra.vi, 3,rd_data_vi+2656, rs2_data+640, 15)
  TEST_AVG_VI_OP( 861,  vssra.vi, 0,rd_data_vi+2688, rs2_data+672, 15)
  TEST_AVG_VI_OP( 862,  vssra.vi, 1,rd_data_vi+2720, rs2_data+672, 15)
  TEST_AVG_VI_OP( 863,  vssra.vi, 2,rd_data_vi+2752, rs2_data+672, 15)
  TEST_AVG_VI_OP( 864,  vssra.vi, 3,rd_data_vi+2784, rs2_data+672, 15)
  TEST_AVG_VI_OP( 865,  vssra.vi, 0,rd_data_vi+2816, rs2_data+704, 15)
  TEST_AVG_VI_OP( 866,  vssra.vi, 1,rd_data_vi+2848, rs2_data+704, 15)
  TEST_AVG_VI_OP( 867,  vssra.vi, 2,rd_data_vi+2880, rs2_data+704, 15)
  TEST_AVG_VI_OP( 868,  vssra.vi, 3,rd_data_vi+2912, rs2_data+704, 15)
  TEST_AVG_VI_OP( 869,  vssra.vi, 0,rd_data_vi+2944, rs2_data+736, 15)
  TEST_AVG_VI_OP( 870,  vssra.vi, 1,rd_data_vi+2976, rs2_data+736, 15)
  TEST_AVG_VI_OP( 871,  vssra.vi, 2,rd_data_vi+3008, rs2_data+736, 15)
  TEST_AVG_VI_OP( 872,  vssra.vi, 3,rd_data_vi+3040, rs2_data+736, 15)
  TEST_AVG_VI_OP( 873,  vssra.vi, 0,rd_data_vi+3072, rs2_data+768, 15)
  TEST_AVG_VI_OP( 874,  vssra.vi, 1,rd_data_vi+3104, rs2_data+768, 15)
  TEST_AVG_VI_OP( 875,  vssra.vi, 2,rd_data_vi+3136, rs2_data+768, 15)
  TEST_AVG_VI_OP( 876,  vssra.vi, 3,rd_data_vi+3168, rs2_data+768, 15)
  TEST_AVG_VI_OP( 877,  vssra.vi, 0,rd_data_vi+3200, rs2_data+800, 15)
  TEST_AVG_VI_OP( 878,  vssra.vi, 1,rd_data_vi+3232, rs2_data+800, 15)
  TEST_AVG_VI_OP( 879,  vssra.vi, 2,rd_data_vi+3264, rs2_data+800, 15)
  TEST_AVG_VI_OP( 880,  vssra.vi, 3,rd_data_vi+3296, rs2_data+800, 15)
  TEST_AVG_VI_OP( 881,  vssra.vi, 0,rd_data_vi+3328, rs2_data+832, 15)
  TEST_AVG_VI_OP( 882,  vssra.vi, 1,rd_data_vi+3360, rs2_data+832, 15)
  TEST_AVG_VI_OP( 883,  vssra.vi, 2,rd_data_vi+3392, rs2_data+832, 15)
  TEST_AVG_VI_OP( 884,  vssra.vi, 3,rd_data_vi+3424, rs2_data+832, 15)
  TEST_AVG_VI_OP( 885,  vssra.vi, 0,rd_data_vi+3456, rs2_data+864, 15)
  TEST_AVG_VI_OP( 886,  vssra.vi, 1,rd_data_vi+3488, rs2_data+864, 15)
  TEST_AVG_VI_OP( 887,  vssra.vi, 2,rd_data_vi+3520, rs2_data+864, 15)
  TEST_AVG_VI_OP( 888,  vssra.vi, 3,rd_data_vi+3552, rs2_data+864, 15)
  TEST_AVG_VI_OP( 889,  vssra.vi, 0,rd_data_vi+3584, rs2_data+896, 15)
  TEST_AVG_VI_OP( 890,  vssra.vi, 1,rd_data_vi+3616, rs2_data+896, 15)
  TEST_AVG_VI_OP( 891,  vssra.vi, 2,rd_data_vi+3648, rs2_data+896, 15)
  TEST_AVG_VI_OP( 892,  vssra.vi, 3,rd_data_vi+3680, rs2_data+896, 15)
  TEST_AVG_VI_OP( 893,  vssra.vi, 0,rd_data_vi+3712, rs2_data+928, 15)
  TEST_AVG_VI_OP( 894,  vssra.vi, 1,rd_data_vi+3744, rs2_data+928, 15)
  TEST_AVG_VI_OP( 895,  vssra.vi, 2,rd_data_vi+3776, rs2_data+928, 15)
  TEST_AVG_VI_OP( 896,  vssra.vi, 3,rd_data_vi+3808, rs2_data+928, 15)
  TEST_AVG_VI_OP( 897,  vssra.vi, 0,rd_data_vi+3840, rs2_data+960, 15)
  TEST_AVG_VI_OP( 898,  vssra.vi, 1,rd_data_vi+3872, rs2_data+960, 15)
  TEST_AVG_VI_OP( 899,  vssra.vi, 2,rd_data_vi+3904, rs2_data+960, 15)
  TEST_AVG_VI_OP( 900,  vssra.vi, 3,rd_data_vi+3936, rs2_data+960, 15)
  TEST_AVG_VI_OP( 901,  vssra.vi, 0,rd_data_vi+3968, rs2_data+992, 15)
  TEST_AVG_VI_OP( 902,  vssra.vi, 1,rd_data_vi+4000, rs2_data+992, 15)
  TEST_AVG_VI_OP( 903,  vssra.vi, 2,rd_data_vi+4032, rs2_data+992, 15)
  TEST_AVG_VI_OP( 904,  vssra.vi, 3,rd_data_vi+4064, rs2_data+992, 15)
  TEST_AVG_VI_OP( 905,  vssra.vi, 0,rd_data_vi+4096, rs2_data+1024, 15)
  TEST_AVG_VI_OP( 906,  vssra.vi, 1,rd_data_vi+4128, rs2_data+1024, 15)
  TEST_AVG_VI_OP( 907,  vssra.vi, 2,rd_data_vi+4160, rs2_data+1024, 15)
  TEST_AVG_VI_OP( 908,  vssra.vi, 3,rd_data_vi+4192, rs2_data+1024, 15)
  TEST_AVG_VI_OP( 909,  vssra.vi, 0,rd_data_vi+4224, rs2_data+1056, 15)
  TEST_AVG_VI_OP( 910,  vssra.vi, 1,rd_data_vi+4256, rs2_data+1056, 15)
  TEST_AVG_VI_OP( 911,  vssra.vi, 2,rd_data_vi+4288, rs2_data+1056, 15)
  TEST_AVG_VI_OP( 912,  vssra.vi, 3,rd_data_vi+4320, rs2_data+1056, 15)
  TEST_AVG_VI_OP( 913,  vssra.vi, 0,rd_data_vi+4352, rs2_data+1088, 15)
  TEST_AVG_VI_OP( 914,  vssra.vi, 1,rd_data_vi+4384, rs2_data+1088, 15)
  TEST_AVG_VI_OP( 915,  vssra.vi, 2,rd_data_vi+4416, rs2_data+1088, 15)
  TEST_AVG_VI_OP( 916,  vssra.vi, 3,rd_data_vi+4448, rs2_data+1088, 15)
  TEST_AVG_VI_OP( 917,  vssra.vi, 0,rd_data_vi+4480, rs2_data+1120, 15)
  TEST_AVG_VI_OP( 918,  vssra.vi, 1,rd_data_vi+4512, rs2_data+1120, 15)
  TEST_AVG_VI_OP( 919,  vssra.vi, 2,rd_data_vi+4544, rs2_data+1120, 15)
  TEST_AVG_VI_OP( 920,  vssra.vi, 3,rd_data_vi+4576, rs2_data+1120, 15)
  TEST_AVG_VI_OP( 921,  vssra.vi, 0,rd_data_vi+4608, rs2_data+1152, 15)
  TEST_AVG_VI_OP( 922,  vssra.vi, 1,rd_data_vi+4640, rs2_data+1152, 15)
  TEST_AVG_VI_OP( 923,  vssra.vi, 2,rd_data_vi+4672, rs2_data+1152, 15)
  TEST_AVG_VI_OP( 924,  vssra.vi, 3,rd_data_vi+4704, rs2_data+1152, 15)
  TEST_AVG_VI_OP( 925,  vssra.vi, 0,rd_data_vi+4736, rs2_data+1184, 15)
  TEST_AVG_VI_OP( 926,  vssra.vi, 1,rd_data_vi+4768, rs2_data+1184, 15)
  TEST_AVG_VI_OP( 927,  vssra.vi, 2,rd_data_vi+4800, rs2_data+1184, 15)
  TEST_AVG_VI_OP( 928,  vssra.vi, 3,rd_data_vi+4832, rs2_data+1184, 15)
  TEST_AVG_VI_OP( 929,  vssra.vi, 0,rd_data_vi+4864, rs2_data+1216, 15)
  TEST_AVG_VI_OP( 930,  vssra.vi, 1,rd_data_vi+4896, rs2_data+1216, 15)
  TEST_AVG_VI_OP( 931,  vssra.vi, 2,rd_data_vi+4928, rs2_data+1216, 15)
  TEST_AVG_VI_OP( 932,  vssra.vi, 3,rd_data_vi+4960, rs2_data+1216, 15)
  TEST_AVG_VI_OP( 933,  vssra.vi, 0,rd_data_vi+4992, rs2_data+1248, 15)
  TEST_AVG_VI_OP( 934,  vssra.vi, 1,rd_data_vi+5024, rs2_data+1248, 15)
  TEST_AVG_VI_OP( 935,  vssra.vi, 2,rd_data_vi+5056, rs2_data+1248, 15)
  TEST_AVG_VI_OP( 936,  vssra.vi, 3,rd_data_vi+5088, rs2_data+1248, 15)
  TEST_AVG_VI_OP( 937,  vssra.vi, 0,rd_data_vi+5120, rs2_data+1280, 15)
  TEST_AVG_VI_OP( 938,  vssra.vi, 1,rd_data_vi+5152, rs2_data+1280, 15)
  TEST_AVG_VI_OP( 939,  vssra.vi, 2,rd_data_vi+5184, rs2_data+1280, 15)
  TEST_AVG_VI_OP( 940,  vssra.vi, 3,rd_data_vi+5216, rs2_data+1280, 15)
  TEST_AVG_VI_OP( 941,  vssra.vi, 0,rd_data_vi+5248, rs2_data+1312, 15)
  TEST_AVG_VI_OP( 942,  vssra.vi, 1,rd_data_vi+5280, rs2_data+1312, 15)
  TEST_AVG_VI_OP( 943,  vssra.vi, 2,rd_data_vi+5312, rs2_data+1312, 15)
  TEST_AVG_VI_OP( 944,  vssra.vi, 3,rd_data_vi+5344, rs2_data+1312, 15)
  TEST_AVG_VI_OP( 945,  vssra.vi, 0,rd_data_vi+5376, rs2_data+1344, 15)
  TEST_AVG_VI_OP( 946,  vssra.vi, 1,rd_data_vi+5408, rs2_data+1344, 15)
  TEST_AVG_VI_OP( 947,  vssra.vi, 2,rd_data_vi+5440, rs2_data+1344, 15)
  TEST_AVG_VI_OP( 948,  vssra.vi, 3,rd_data_vi+5472, rs2_data+1344, 15)
  TEST_AVG_VI_OP( 949,  vssra.vi, 0,rd_data_vi+5504, rs2_data+1376, 15)
  TEST_AVG_VI_OP( 950,  vssra.vi, 1,rd_data_vi+5536, rs2_data+1376, 15)
  TEST_AVG_VI_OP( 951,  vssra.vi, 2,rd_data_vi+5568, rs2_data+1376, 15)
  TEST_AVG_VI_OP( 952,  vssra.vi, 3,rd_data_vi+5600, rs2_data+1376, 15)
  TEST_AVG_VI_OP( 953,  vssra.vi, 0,rd_data_vi+5632, rs2_data+1408, 15)
  TEST_AVG_VI_OP( 954,  vssra.vi, 1,rd_data_vi+5664, rs2_data+1408, 15)
  TEST_AVG_VI_OP( 955,  vssra.vi, 2,rd_data_vi+5696, rs2_data+1408, 15)
  TEST_AVG_VI_OP( 956,  vssra.vi, 3,rd_data_vi+5728, rs2_data+1408, 15)
  TEST_AVG_VI_OP( 957,  vssra.vi, 0,rd_data_vi+5760, rs2_data+1440, 15)
  TEST_AVG_VI_OP( 958,  vssra.vi, 1,rd_data_vi+5792, rs2_data+1440, 15)
  TEST_AVG_VI_OP( 959,  vssra.vi, 2,rd_data_vi+5824, rs2_data+1440, 15)
  TEST_AVG_VI_OP( 960,  vssra.vi, 3,rd_data_vi+5856, rs2_data+1440, 15)
  TEST_AVG_VI_OP( 961,  vssra.vi, 0,rd_data_vi+5888, rs2_data+1472, 15)
  TEST_AVG_VI_OP( 962,  vssra.vi, 1,rd_data_vi+5920, rs2_data+1472, 15)
  TEST_AVG_VI_OP( 963,  vssra.vi, 2,rd_data_vi+5952, rs2_data+1472, 15)
  TEST_AVG_VI_OP( 964,  vssra.vi, 3,rd_data_vi+5984, rs2_data+1472, 15)
  TEST_AVG_VI_OP( 965,  vssra.vi, 0,rd_data_vi+6016, rs2_data+1504, 15)
  TEST_AVG_VI_OP( 966,  vssra.vi, 1,rd_data_vi+6048, rs2_data+1504, 15)
  TEST_AVG_VI_OP( 967,  vssra.vi, 2,rd_data_vi+6080, rs2_data+1504, 15)
  TEST_AVG_VI_OP( 968,  vssra.vi, 3,rd_data_vi+6112, rs2_data+1504, 15)
  TEST_AVG_VI_OP( 969,  vssra.vi, 0,rd_data_vi+6144, rs2_data+1536, 15)
  TEST_AVG_VI_OP( 970,  vssra.vi, 1,rd_data_vi+6176, rs2_data+1536, 15)
  TEST_AVG_VI_OP( 971,  vssra.vi, 2,rd_data_vi+6208, rs2_data+1536, 15)
  TEST_AVG_VI_OP( 972,  vssra.vi, 3,rd_data_vi+6240, rs2_data+1536, 15)
  TEST_AVG_VI_OP( 973,  vssra.vi, 0,rd_data_vi+6272, rs2_data+1568, 15)
  TEST_AVG_VI_OP( 974,  vssra.vi, 1,rd_data_vi+6304, rs2_data+1568, 15)
  TEST_AVG_VI_OP( 975,  vssra.vi, 2,rd_data_vi+6336, rs2_data+1568, 15)
  TEST_AVG_VI_OP( 976,  vssra.vi, 3,rd_data_vi+6368, rs2_data+1568, 15)
  TEST_AVG_VI_OP( 977,  vssra.vi, 0,rd_data_vi+6400, rs2_data+1600, 15)
  TEST_AVG_VI_OP( 978,  vssra.vi, 1,rd_data_vi+6432, rs2_data+1600, 15)
  TEST_AVG_VI_OP( 979,  vssra.vi, 2,rd_data_vi+6464, rs2_data+1600, 15)
  TEST_AVG_VI_OP( 980,  vssra.vi, 3,rd_data_vi+6496, rs2_data+1600, 15)
  TEST_AVG_VI_OP( 981,  vssra.vi, 0,rd_data_vi+6528, rs2_data+1632, 15)
  TEST_AVG_VI_OP( 982,  vssra.vi, 1,rd_data_vi+6560, rs2_data+1632, 15)
  TEST_AVG_VI_OP( 983,  vssra.vi, 2,rd_data_vi+6592, rs2_data+1632, 15)
  TEST_AVG_VI_OP( 984,  vssra.vi, 3,rd_data_vi+6624, rs2_data+1632, 15)
  TEST_AVG_VI_OP( 985,  vssra.vi, 0,rd_data_vi+6656, rs2_data+1664, 15)
  TEST_AVG_VI_OP( 986,  vssra.vi, 1,rd_data_vi+6688, rs2_data+1664, 15)
  TEST_AVG_VI_OP( 987,  vssra.vi, 2,rd_data_vi+6720, rs2_data+1664, 15)
  TEST_AVG_VI_OP( 988,  vssra.vi, 3,rd_data_vi+6752, rs2_data+1664, 15)
  TEST_AVG_VI_OP( 989,  vssra.vi, 0,rd_data_vi+6784, rs2_data+1696, 15)
  TEST_AVG_VI_OP( 990,  vssra.vi, 1,rd_data_vi+6816, rs2_data+1696, 15)
  TEST_AVG_VI_OP( 991,  vssra.vi, 2,rd_data_vi+6848, rs2_data+1696, 15)
  TEST_AVG_VI_OP( 992,  vssra.vi, 3,rd_data_vi+6880, rs2_data+1696, 15)
  TEST_AVG_VI_OP( 993,  vssra.vi, 0,rd_data_vi+6912, rs2_data+1728, 15)
  TEST_AVG_VI_OP( 994,  vssra.vi, 1,rd_data_vi+6944, rs2_data+1728, 15)
  TEST_AVG_VI_OP( 995,  vssra.vi, 2,rd_data_vi+6976, rs2_data+1728, 15)
  TEST_AVG_VI_OP( 996,  vssra.vi, 3,rd_data_vi+7008, rs2_data+1728, 15)
  TEST_AVG_VI_OP( 997,  vssra.vi, 0,rd_data_vi+7040, rs2_data+1760, 15)
  TEST_AVG_VI_OP( 998,  vssra.vi, 1,rd_data_vi+7072, rs2_data+1760, 15)
  TEST_AVG_VI_OP( 999,  vssra.vi, 2,rd_data_vi+7104, rs2_data+1760, 15)
  TEST_AVG_VI_OP( 1000,  vssra.vi, 3,rd_data_vi+7136, rs2_data+1760, 15)
  TEST_AVG_VI_OP( 1001,  vssra.vi, 0,rd_data_vi+7168, rs2_data+1792, 15)
  TEST_AVG_VI_OP( 1002,  vssra.vi, 1,rd_data_vi+7200, rs2_data+1792, 15)
  TEST_AVG_VI_OP( 1003,  vssra.vi, 2,rd_data_vi+7232, rs2_data+1792, 15)
  TEST_AVG_VI_OP( 1004,  vssra.vi, 3,rd_data_vi+7264, rs2_data+1792, 15)
  TEST_AVG_VI_OP( 1005,  vssra.vi, 0,rd_data_vi+7296, rs2_data+1824, 15)
  TEST_AVG_VI_OP( 1006,  vssra.vi, 1,rd_data_vi+7328, rs2_data+1824, 15)
  TEST_AVG_VI_OP( 1007,  vssra.vi, 2,rd_data_vi+7360, rs2_data+1824, 15)
  TEST_AVG_VI_OP( 1008,  vssra.vi, 3,rd_data_vi+7392, rs2_data+1824, 15)
  TEST_AVG_VI_OP( 1009,  vssra.vi, 0,rd_data_vi+7424, rs2_data+1856, 15)
  TEST_AVG_VI_OP( 1010,  vssra.vi, 1,rd_data_vi+7456, rs2_data+1856, 15)
  TEST_AVG_VI_OP( 1011,  vssra.vi, 2,rd_data_vi+7488, rs2_data+1856, 15)
  TEST_AVG_VI_OP( 1012,  vssra.vi, 3,rd_data_vi+7520, rs2_data+1856, 15)
  TEST_AVG_VI_OP( 1013,  vssra.vi, 0,rd_data_vi+7552, rs2_data+1888, 15)
  TEST_AVG_VI_OP( 1014,  vssra.vi, 1,rd_data_vi+7584, rs2_data+1888, 15)
  TEST_AVG_VI_OP( 1015,  vssra.vi, 2,rd_data_vi+7616, rs2_data+1888, 15)
  TEST_AVG_VI_OP( 1016,  vssra.vi, 3,rd_data_vi+7648, rs2_data+1888, 15)
  TEST_AVG_VI_OP( 1017,  vssra.vi, 0,rd_data_vi+7680, rs2_data+1920, 15)
  TEST_AVG_VI_OP( 1018,  vssra.vi, 1,rd_data_vi+7712, rs2_data+1920, 15)
  TEST_AVG_VI_OP( 1019,  vssra.vi, 2,rd_data_vi+7744, rs2_data+1920, 15)
  TEST_AVG_VI_OP( 1020,  vssra.vi, 3,rd_data_vi+7776, rs2_data+1920, 15)
  TEST_AVG_VI_OP( 1021,  vssra.vi, 0,rd_data_vi+7808, rs2_data+1952, 15)
  TEST_AVG_VI_OP( 1022,  vssra.vi, 1,rd_data_vi+7840, rs2_data+1952, 15)
  TEST_AVG_VI_OP( 1023,  vssra.vi, 2,rd_data_vi+7872, rs2_data+1952, 15)
  TEST_AVG_VI_OP( 1024,  vssra.vi, 3,rd_data_vi+7904, rs2_data+1952, 15)
  TEST_AVG_VI_OP( 1025,  vssra.vi, 0,rd_data_vi+7936, rs2_data+1984, 15)
  TEST_AVG_VI_OP( 1026,  vssra.vi, 1,rd_data_vi+7968, rs2_data+1984, 15)
  TEST_AVG_VI_OP( 1027,  vssra.vi, 2,rd_data_vi+8000, rs2_data+1984, 15)
  TEST_AVG_VI_OP( 1028,  vssra.vi, 3,rd_data_vi+8032, rs2_data+1984, 15)
  TEST_AVG_VI_OP( 1029,  vssra.vi, 0,rd_data_vi+8064, rs2_data+2016, 15)
  TEST_AVG_VI_OP( 1030,  vssra.vi, 1,rd_data_vi+8096, rs2_data+2016, 15)
  TEST_AVG_VI_OP( 1031,  vssra.vi, 2,rd_data_vi+8128, rs2_data+2016, 15)
  TEST_AVG_VI_OP( 1032,  vssra.vi, 3,rd_data_vi+8160, rs2_data+2016, 15)
  TEST_AVG_VI_OP( 1033,  vssra.vi, 0,rd_data_vi+8192, rs2_data+2048, 15)
  TEST_AVG_VI_OP( 1034,  vssra.vi, 1,rd_data_vi+8224, rs2_data+2048, 15)
  TEST_AVG_VI_OP( 1035,  vssra.vi, 2,rd_data_vi+8256, rs2_data+2048, 15)
  TEST_AVG_VI_OP( 1036,  vssra.vi, 3,rd_data_vi+8288, rs2_data+2048, 15)
  TEST_AVG_VI_OP( 1037,  vssra.vi, 0,rd_data_vi+8320, rs2_data+2080, 15)
  TEST_AVG_VI_OP( 1038,  vssra.vi, 1,rd_data_vi+8352, rs2_data+2080, 15)
  TEST_AVG_VI_OP( 1039,  vssra.vi, 2,rd_data_vi+8384, rs2_data+2080, 15)
  TEST_AVG_VI_OP( 1040,  vssra.vi, 3,rd_data_vi+8416, rs2_data+2080, 15)
  TEST_AVG_VI_OP( 1041,  vssra.vi, 0,rd_data_vi+8448, rs2_data+2112, 15)
  TEST_AVG_VI_OP( 1042,  vssra.vi, 1,rd_data_vi+8480, rs2_data+2112, 15)
  TEST_AVG_VI_OP( 1043,  vssra.vi, 2,rd_data_vi+8512, rs2_data+2112, 15)
  TEST_AVG_VI_OP( 1044,  vssra.vi, 3,rd_data_vi+8544, rs2_data+2112, 15)
  TEST_AVG_VI_OP( 1045,  vssra.vi, 0,rd_data_vi+8576, rs2_data+2144, 15)
  TEST_AVG_VI_OP( 1046,  vssra.vi, 1,rd_data_vi+8608, rs2_data+2144, 15)
  TEST_AVG_VI_OP( 1047,  vssra.vi, 2,rd_data_vi+8640, rs2_data+2144, 15)
  TEST_AVG_VI_OP( 1048,  vssra.vi, 3,rd_data_vi+8672, rs2_data+2144, 15)
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
.word	0xfffffd55
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffd55
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffd55
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffd55
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffeaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffd3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffeaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffd3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffeaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffd2
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffeaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffd3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0xfffffd55
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffd55
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffd55
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffd55
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffd55
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffd55
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffd55
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffd55
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffeaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffd3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffeaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffd3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffeaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffd2
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffeaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffd3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
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
    

#----------------------------------------------------------------------------- 
    # vaaddu.S
    #-----------------------------------------------------------------------------
    #
    # Test vaaddu instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vaaddu)
    
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
  TEST_AVG_VV_OP( 1,  vaaddu.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 2,  vaaddu.vv, 1, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 3,  vaaddu.vv, 2, rd_data_vv+128, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 4,  vaaddu.vv, 3, rd_data_vv+192, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 5,  vaaddu.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 6,  vaaddu.vv, 1, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 7,  vaaddu.vv, 2, rd_data_vv+384, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 8,  vaaddu.vv, 3, rd_data_vv+448, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 9,  vaaddu.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 10,  vaaddu.vv, 1, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 11,  vaaddu.vv, 2, rd_data_vv+640, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 12,  vaaddu.vv, 3, rd_data_vv+704, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 13,  vaaddu.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 14,  vaaddu.vv, 1, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 15,  vaaddu.vv, 2, rd_data_vv+896, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 16,  vaaddu.vv, 3, rd_data_vv+960, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 17,  vaaddu.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 18,  vaaddu.vv, 1, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 19,  vaaddu.vv, 2, rd_data_vv+1152, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 20,  vaaddu.vv, 3, rd_data_vv+1216, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 21,  vaaddu.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 22,  vaaddu.vv, 1, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 23,  vaaddu.vv, 2, rd_data_vv+1408, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 24,  vaaddu.vv, 3, rd_data_vv+1472, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 25,  vaaddu.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 26,  vaaddu.vv, 1, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 27,  vaaddu.vv, 2, rd_data_vv+1664, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 28,  vaaddu.vv, 3, rd_data_vv+1728, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 29,  vaaddu.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 30,  vaaddu.vv, 1, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 31,  vaaddu.vv, 2, rd_data_vv+1920, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 32,  vaaddu.vv, 3, rd_data_vv+1984, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 33,  vaaddu.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 34,  vaaddu.vv, 1, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 35,  vaaddu.vv, 2, rd_data_vv+2176, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 36,  vaaddu.vv, 3, rd_data_vv+2240, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 37,  vaaddu.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 38,  vaaddu.vv, 1, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 39,  vaaddu.vv, 2, rd_data_vv+2432, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 40,  vaaddu.vv, 3, rd_data_vv+2496, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 41,  vaaddu.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 42,  vaaddu.vv, 1, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 43,  vaaddu.vv, 2, rd_data_vv+2688, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 44,  vaaddu.vv, 3, rd_data_vv+2752, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 45,  vaaddu.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 46,  vaaddu.vv, 1, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 47,  vaaddu.vv, 2, rd_data_vv+2944, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 48,  vaaddu.vv, 3, rd_data_vv+3008, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 49,  vaaddu.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 50,  vaaddu.vv, 1, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 51,  vaaddu.vv, 2, rd_data_vv+3200, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 52,  vaaddu.vv, 3, rd_data_vv+3264, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 53,  vaaddu.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 54,  vaaddu.vv, 1, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 55,  vaaddu.vv, 2, rd_data_vv+3456, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 56,  vaaddu.vv, 3, rd_data_vv+3520, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 57,  vaaddu.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 58,  vaaddu.vv, 1, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 59,  vaaddu.vv, 2, rd_data_vv+3712, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 60,  vaaddu.vv, 3, rd_data_vv+3776, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 61,  vaaddu.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 62,  vaaddu.vv, 1, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 63,  vaaddu.vv, 2, rd_data_vv+3968, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 64,  vaaddu.vv, 3, rd_data_vv+4032, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 65,  vaaddu.vv, 0, rd_data_vv+4096, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 66,  vaaddu.vv, 1, rd_data_vv+4160, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 67,  vaaddu.vv, 2, rd_data_vv+4224, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 68,  vaaddu.vv, 3, rd_data_vv+4288, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 69,  vaaddu.vv, 0, rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 70,  vaaddu.vv, 1, rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 71,  vaaddu.vv, 2, rd_data_vv+4480, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 72,  vaaddu.vv, 3, rd_data_vv+4544, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 73,  vaaddu.vv, 0, rd_data_vv+4608, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 74,  vaaddu.vv, 1, rd_data_vv+4672, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 75,  vaaddu.vv, 2, rd_data_vv+4736, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 76,  vaaddu.vv, 3, rd_data_vv+4800, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 77,  vaaddu.vv, 0, rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 78,  vaaddu.vv, 1, rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 79,  vaaddu.vv, 2, rd_data_vv+4992, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 80,  vaaddu.vv, 3, rd_data_vv+5056, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 81,  vaaddu.vv, 0, rd_data_vv+5120, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 82,  vaaddu.vv, 1, rd_data_vv+5184, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 83,  vaaddu.vv, 2, rd_data_vv+5248, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 84,  vaaddu.vv, 3, rd_data_vv+5312, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 85,  vaaddu.vv, 0, rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 86,  vaaddu.vv, 1, rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 87,  vaaddu.vv, 2, rd_data_vv+5504, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 88,  vaaddu.vv, 3, rd_data_vv+5568, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 89,  vaaddu.vv, 0, rd_data_vv+5632, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 90,  vaaddu.vv, 1, rd_data_vv+5696, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 91,  vaaddu.vv, 2, rd_data_vv+5760, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 92,  vaaddu.vv, 3, rd_data_vv+5824, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 93,  vaaddu.vv, 0, rd_data_vv+5888, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 94,  vaaddu.vv, 1, rd_data_vv+5952, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 95,  vaaddu.vv, 2, rd_data_vv+6016, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 96,  vaaddu.vv, 3, rd_data_vv+6080, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 97,  vaaddu.vv, 0, rd_data_vv+6144, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 98,  vaaddu.vv, 1, rd_data_vv+6208, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 99,  vaaddu.vv, 2, rd_data_vv+6272, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 100,  vaaddu.vv, 3, rd_data_vv+6336, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 101,  vaaddu.vv, 0, rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 102,  vaaddu.vv, 1, rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 103,  vaaddu.vv, 2, rd_data_vv+6528, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 104,  vaaddu.vv, 3, rd_data_vv+6592, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 105,  vaaddu.vv, 0, rd_data_vv+6656, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 106,  vaaddu.vv, 1, rd_data_vv+6720, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 107,  vaaddu.vv, 2, rd_data_vv+6784, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 108,  vaaddu.vv, 3, rd_data_vv+6848, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 109,  vaaddu.vv, 0, rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 110,  vaaddu.vv, 1, rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 111,  vaaddu.vv, 2, rd_data_vv+7040, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 112,  vaaddu.vv, 3, rd_data_vv+7104, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 113,  vaaddu.vv, 0, rd_data_vv+7168, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 114,  vaaddu.vv, 1, rd_data_vv+7232, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 115,  vaaddu.vv, 2, rd_data_vv+7296, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 116,  vaaddu.vv, 3, rd_data_vv+7360, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 117,  vaaddu.vv, 0, rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 118,  vaaddu.vv, 1, rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 119,  vaaddu.vv, 2, rd_data_vv+7552, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 120,  vaaddu.vv, 3, rd_data_vv+7616, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 121,  vaaddu.vv, 0, rd_data_vv+7680, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 122,  vaaddu.vv, 1, rd_data_vv+7744, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 123,  vaaddu.vv, 2, rd_data_vv+7808, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 124,  vaaddu.vv, 3, rd_data_vv+7872, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 125,  vaaddu.vv, 0, rd_data_vv+7936, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 126,  vaaddu.vv, 1, rd_data_vv+8000, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 127,  vaaddu.vv, 2, rd_data_vv+8064, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 128,  vaaddu.vv, 3, rd_data_vv+8128, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 129,  vaaddu.vv, 0, rd_data_vv+8192, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 130,  vaaddu.vv, 1, rd_data_vv+8256, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 131,  vaaddu.vv, 2, rd_data_vv+8320, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 132,  vaaddu.vv, 3, rd_data_vv+8384, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 133,  vaaddu.vv, 0, rd_data_vv+8448, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 134,  vaaddu.vv, 1, rd_data_vv+8512, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 135,  vaaddu.vv, 2, rd_data_vv+8576, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 136,  vaaddu.vv, 3, rd_data_vv+8640, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP_1_2( 137,  vaaddu.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 138,  vaaddu.vv, 1, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 139,  vaaddu.vv, 2, rd_data_vv+128, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 140,  vaaddu.vv, 3, rd_data_vv+192, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd2( 141,  vaaddu.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_3( 142,  vaaddu.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd2( 143,  vaaddu.vv, 1, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_3( 144,  vaaddu.vv, 1, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd2( 145,  vaaddu.vv, 2, rd_data_vv+384, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_3( 146,  vaaddu.vv, 2, rd_data_vv+384, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd2( 147,  vaaddu.vv, 3, rd_data_vv+448, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_3( 148,  vaaddu.vv, 3, rd_data_vv+448, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 149,  vaaddu.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_4( 150,  vaaddu.vv, 1, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_4( 151,  vaaddu.vv, 2, rd_data_vv+640, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_4( 152,  vaaddu.vv, 3, rd_data_vv+704, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd4( 153,  vaaddu.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_5( 154,  vaaddu.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd4( 155,  vaaddu.vv, 1, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_5( 156,  vaaddu.vv, 1, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd4( 157,  vaaddu.vv, 2, rd_data_vv+896, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_5( 158,  vaaddu.vv, 2, rd_data_vv+896, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd4( 159,  vaaddu.vv, 3, rd_data_vv+960, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_5( 160,  vaaddu.vv, 3, rd_data_vv+960, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_6( 161,  vaaddu.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_6( 162,  vaaddu.vv, 1, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_6( 163,  vaaddu.vv, 2, rd_data_vv+1152, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_6( 164,  vaaddu.vv, 3, rd_data_vv+1216, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd6( 165,  vaaddu.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_7( 166,  vaaddu.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd6( 167,  vaaddu.vv, 1, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_7( 168,  vaaddu.vv, 1, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd6( 169,  vaaddu.vv, 2, rd_data_vv+1408, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_7( 170,  vaaddu.vv, 2, rd_data_vv+1408, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd6( 171,  vaaddu.vv, 3, rd_data_vv+1472, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_7( 172,  vaaddu.vv, 3, rd_data_vv+1472, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_9( 173,  vaaddu.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_1_9( 174,  vaaddu.vv, 1, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_1_9( 175,  vaaddu.vv, 2, rd_data_vv+1920, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_1_9( 176,  vaaddu.vv, 3, rd_data_vv+1984, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_1_10( 177,  vaaddu.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_10( 178,  vaaddu.vv, 1, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_10( 179,  vaaddu.vv, 2, rd_data_vv+2176, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_10( 180,  vaaddu.vv, 3, rd_data_vv+2240, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd10( 181,  vaaddu.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_11( 182,  vaaddu.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd10( 183,  vaaddu.vv, 1, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_11( 184,  vaaddu.vv, 1, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd10( 185,  vaaddu.vv, 2, rd_data_vv+2432, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_11( 186,  vaaddu.vv, 2, rd_data_vv+2432, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd10( 187,  vaaddu.vv, 3, rd_data_vv+2496, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_11( 188,  vaaddu.vv, 3, rd_data_vv+2496, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_12( 189,  vaaddu.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_12( 190,  vaaddu.vv, 1, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_12( 191,  vaaddu.vv, 2, rd_data_vv+2688, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_12( 192,  vaaddu.vv, 3, rd_data_vv+2752, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd12( 193,  vaaddu.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_13( 194,  vaaddu.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd12( 195,  vaaddu.vv, 1, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_13( 196,  vaaddu.vv, 1, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd12( 197,  vaaddu.vv, 2, rd_data_vv+2944, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_13( 198,  vaaddu.vv, 2, rd_data_vv+2944, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd12( 199,  vaaddu.vv, 3, rd_data_vv+3008, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_13( 200,  vaaddu.vv, 3, rd_data_vv+3008, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_14( 201,  vaaddu.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_14( 202,  vaaddu.vv, 1, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_14( 203,  vaaddu.vv, 2, rd_data_vv+3200, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_14( 204,  vaaddu.vv, 3, rd_data_vv+3264, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd14( 205,  vaaddu.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_15( 206,  vaaddu.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd14( 207,  vaaddu.vv, 1, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_15( 208,  vaaddu.vv, 1, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd14( 209,  vaaddu.vv, 2, rd_data_vv+3456, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_15( 210,  vaaddu.vv, 2, rd_data_vv+3456, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd14( 211,  vaaddu.vv, 3, rd_data_vv+3520, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_15( 212,  vaaddu.vv, 3, rd_data_vv+3520, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_17( 213,  vaaddu.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_17( 214,  vaaddu.vv, 1, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_17( 215,  vaaddu.vv, 2, rd_data_vv+3968, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_17( 216,  vaaddu.vv, 3, rd_data_vv+4032, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_18( 217,  vaaddu.vv, 0, rd_data_vv+4096, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP_1_18( 218,  vaaddu.vv, 1, rd_data_vv+4160, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP_1_18( 219,  vaaddu.vv, 2, rd_data_vv+4224, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP_1_18( 220,  vaaddu.vv, 3, rd_data_vv+4288, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP_rd18( 221,  vaaddu.vv, 0, rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_1_19( 222,  vaaddu.vv, 0, rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_rd18( 223,  vaaddu.vv, 1, rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_1_19( 224,  vaaddu.vv, 1, rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_rd18( 225,  vaaddu.vv, 2, rd_data_vv+4480, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_1_19( 226,  vaaddu.vv, 2, rd_data_vv+4480, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_rd18( 227,  vaaddu.vv, 3, rd_data_vv+4544, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_1_19( 228,  vaaddu.vv, 3, rd_data_vv+4544, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP_1_20( 229,  vaaddu.vv, 0, rd_data_vv+4608, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP_1_20( 230,  vaaddu.vv, 1, rd_data_vv+4672, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP_1_20( 231,  vaaddu.vv, 2, rd_data_vv+4736, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP_1_20( 232,  vaaddu.vv, 3, rd_data_vv+4800, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP_rd20( 233,  vaaddu.vv, 0, rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_1_21( 234,  vaaddu.vv, 0, rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_rd20( 235,  vaaddu.vv, 1, rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_1_21( 236,  vaaddu.vv, 1, rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_rd20( 237,  vaaddu.vv, 2, rd_data_vv+4992, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_1_21( 238,  vaaddu.vv, 2, rd_data_vv+4992, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_rd20( 239,  vaaddu.vv, 3, rd_data_vv+5056, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_1_21( 240,  vaaddu.vv, 3, rd_data_vv+5056, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP_1_22( 241,  vaaddu.vv, 0, rd_data_vv+5120, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP_1_22( 242,  vaaddu.vv, 1, rd_data_vv+5184, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP_1_22( 243,  vaaddu.vv, 2, rd_data_vv+5248, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP_1_22( 244,  vaaddu.vv, 3, rd_data_vv+5312, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP_rd22( 245,  vaaddu.vv, 0, rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_1_23( 246,  vaaddu.vv, 0, rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_rd22( 247,  vaaddu.vv, 1, rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_1_23( 248,  vaaddu.vv, 1, rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_rd22( 249,  vaaddu.vv, 2, rd_data_vv+5504, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_1_23( 250,  vaaddu.vv, 2, rd_data_vv+5504, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_rd22( 251,  vaaddu.vv, 3, rd_data_vv+5568, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_1_23( 252,  vaaddu.vv, 3, rd_data_vv+5568, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP_1_25( 253,  vaaddu.vv, 0, rd_data_vv+5888, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP_1_25( 254,  vaaddu.vv, 1, rd_data_vv+5952, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP_1_25( 255,  vaaddu.vv, 2, rd_data_vv+6016, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP_1_25( 256,  vaaddu.vv, 3, rd_data_vv+6080, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP_1_26( 257,  vaaddu.vv, 0, rd_data_vv+6144, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP_1_26( 258,  vaaddu.vv, 1, rd_data_vv+6208, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP_1_26( 259,  vaaddu.vv, 2, rd_data_vv+6272, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP_1_26( 260,  vaaddu.vv, 3, rd_data_vv+6336, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP_rd26( 261,  vaaddu.vv, 0, rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_1_27( 262,  vaaddu.vv, 0, rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_rd26( 263,  vaaddu.vv, 1, rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_1_27( 264,  vaaddu.vv, 1, rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_rd26( 265,  vaaddu.vv, 2, rd_data_vv+6528, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_1_27( 266,  vaaddu.vv, 2, rd_data_vv+6528, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_rd26( 267,  vaaddu.vv, 3, rd_data_vv+6592, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_1_27( 268,  vaaddu.vv, 3, rd_data_vv+6592, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP_1_28( 269,  vaaddu.vv, 0, rd_data_vv+6656, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP_1_28( 270,  vaaddu.vv, 1, rd_data_vv+6720, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP_1_28( 271,  vaaddu.vv, 2, rd_data_vv+6784, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP_1_28( 272,  vaaddu.vv, 3, rd_data_vv+6848, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP_rd28( 273,  vaaddu.vv, 0, rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_1_29( 274,  vaaddu.vv, 0, rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_rd28( 275,  vaaddu.vv, 1, rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_1_29( 276,  vaaddu.vv, 1, rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_rd28( 277,  vaaddu.vv, 2, rd_data_vv+7040, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_1_29( 278,  vaaddu.vv, 2, rd_data_vv+7040, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_rd28( 279,  vaaddu.vv, 3, rd_data_vv+7104, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_1_29( 280,  vaaddu.vv, 3, rd_data_vv+7104, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP_1_30( 281,  vaaddu.vv, 0, rd_data_vv+7168, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP_1_30( 282,  vaaddu.vv, 1, rd_data_vv+7232, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP_1_30( 283,  vaaddu.vv, 2, rd_data_vv+7296, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP_1_30( 284,  vaaddu.vv, 3, rd_data_vv+7360, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP_rd30( 285,  vaaddu.vv, 0, rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_1_31( 286,  vaaddu.vv, 0, rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_rd30( 287,  vaaddu.vv, 1, rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_1_31( 288,  vaaddu.vv, 1, rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_rd30( 289,  vaaddu.vv, 2, rd_data_vv+7552, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_1_31( 290,  vaaddu.vv, 2, rd_data_vv+7552, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_rd30( 291,  vaaddu.vv, 3, rd_data_vv+7616, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_1_31( 292,  vaaddu.vv, 3, rd_data_vv+7616, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP_1_2( 293,  vaaddu.vv, 0, rd_data_vv+7680, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP_1_2( 294,  vaaddu.vv, 1, rd_data_vv+7744, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP_1_2( 295,  vaaddu.vv, 2, rd_data_vv+7808, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP_1_2( 296,  vaaddu.vv, 3, rd_data_vv+7872, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP_1_3( 297,  vaaddu.vv, 0, rd_data_vv+7936, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP_1_3( 298,  vaaddu.vv, 1, rd_data_vv+8000, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP_1_3( 299,  vaaddu.vv, 2, rd_data_vv+8064, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP_1_3( 300,  vaaddu.vv, 3, rd_data_vv+8128, rs2_data+1984, rs1_data+1984)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_VX_OP( 301,  vaaddu.vx, 0,rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 302,  vaaddu.vx, 1,rd_data_vx+64, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 303,  vaaddu.vx, 2,rd_data_vx+128, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 304,  vaaddu.vx, 3,rd_data_vx+192, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 305,  vaaddu.vx, 0,rd_data_vx+256, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 306,  vaaddu.vx, 1,rd_data_vx+320, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 307,  vaaddu.vx, 2,rd_data_vx+384, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 308,  vaaddu.vx, 3,rd_data_vx+448, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 309,  vaaddu.vx, 0,rd_data_vx+512, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 310,  vaaddu.vx, 1,rd_data_vx+576, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 311,  vaaddu.vx, 2,rd_data_vx+640, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 312,  vaaddu.vx, 3,rd_data_vx+704, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 313,  vaaddu.vx, 0,rd_data_vx+768, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 314,  vaaddu.vx, 1,rd_data_vx+832, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 315,  vaaddu.vx, 2,rd_data_vx+896, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 316,  vaaddu.vx, 3,rd_data_vx+960, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 317,  vaaddu.vx, 0,rd_data_vx+1024, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 318,  vaaddu.vx, 1,rd_data_vx+1088, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 319,  vaaddu.vx, 2,rd_data_vx+1152, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 320,  vaaddu.vx, 3,rd_data_vx+1216, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 321,  vaaddu.vx, 0,rd_data_vx+1280, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 322,  vaaddu.vx, 1,rd_data_vx+1344, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 323,  vaaddu.vx, 2,rd_data_vx+1408, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 324,  vaaddu.vx, 3,rd_data_vx+1472, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 325,  vaaddu.vx, 0,rd_data_vx+1536, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 326,  vaaddu.vx, 1,rd_data_vx+1600, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 327,  vaaddu.vx, 2,rd_data_vx+1664, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 328,  vaaddu.vx, 3,rd_data_vx+1728, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 329,  vaaddu.vx, 0,rd_data_vx+1792, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 330,  vaaddu.vx, 1,rd_data_vx+1856, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 331,  vaaddu.vx, 2,rd_data_vx+1920, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 332,  vaaddu.vx, 3,rd_data_vx+1984, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 333,  vaaddu.vx, 0,rd_data_vx+2048, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 334,  vaaddu.vx, 1,rd_data_vx+2112, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 335,  vaaddu.vx, 2,rd_data_vx+2176, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 336,  vaaddu.vx, 3,rd_data_vx+2240, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 337,  vaaddu.vx, 0,rd_data_vx+2304, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 338,  vaaddu.vx, 1,rd_data_vx+2368, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 339,  vaaddu.vx, 2,rd_data_vx+2432, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 340,  vaaddu.vx, 3,rd_data_vx+2496, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 341,  vaaddu.vx, 0,rd_data_vx+2560, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 342,  vaaddu.vx, 1,rd_data_vx+2624, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 343,  vaaddu.vx, 2,rd_data_vx+2688, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 344,  vaaddu.vx, 3,rd_data_vx+2752, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 345,  vaaddu.vx, 0,rd_data_vx+2816, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 346,  vaaddu.vx, 1,rd_data_vx+2880, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 347,  vaaddu.vx, 2,rd_data_vx+2944, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 348,  vaaddu.vx, 3,rd_data_vx+3008, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 349,  vaaddu.vx, 0,rd_data_vx+3072, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 350,  vaaddu.vx, 1,rd_data_vx+3136, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 351,  vaaddu.vx, 2,rd_data_vx+3200, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 352,  vaaddu.vx, 3,rd_data_vx+3264, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 353,  vaaddu.vx, 0,rd_data_vx+3328, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 354,  vaaddu.vx, 1,rd_data_vx+3392, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 355,  vaaddu.vx, 2,rd_data_vx+3456, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 356,  vaaddu.vx, 3,rd_data_vx+3520, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 357,  vaaddu.vx, 0,rd_data_vx+3584, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 358,  vaaddu.vx, 1,rd_data_vx+3648, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 359,  vaaddu.vx, 2,rd_data_vx+3712, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 360,  vaaddu.vx, 3,rd_data_vx+3776, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 361,  vaaddu.vx, 0,rd_data_vx+3840, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 362,  vaaddu.vx, 1,rd_data_vx+3904, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 363,  vaaddu.vx, 2,rd_data_vx+3968, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 364,  vaaddu.vx, 3,rd_data_vx+4032, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 365,  vaaddu.vx, 0,rd_data_vx+4096, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 366,  vaaddu.vx, 1,rd_data_vx+4160, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 367,  vaaddu.vx, 2,rd_data_vx+4224, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 368,  vaaddu.vx, 3,rd_data_vx+4288, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 369,  vaaddu.vx, 0,rd_data_vx+4352, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 370,  vaaddu.vx, 1,rd_data_vx+4416, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 371,  vaaddu.vx, 2,rd_data_vx+4480, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 372,  vaaddu.vx, 3,rd_data_vx+4544, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 373,  vaaddu.vx, 0,rd_data_vx+4608, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 374,  vaaddu.vx, 1,rd_data_vx+4672, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 375,  vaaddu.vx, 2,rd_data_vx+4736, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 376,  vaaddu.vx, 3,rd_data_vx+4800, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 377,  vaaddu.vx, 0,rd_data_vx+4864, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 378,  vaaddu.vx, 1,rd_data_vx+4928, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 379,  vaaddu.vx, 2,rd_data_vx+4992, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 380,  vaaddu.vx, 3,rd_data_vx+5056, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 381,  vaaddu.vx, 0,rd_data_vx+5120, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 382,  vaaddu.vx, 1,rd_data_vx+5184, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 383,  vaaddu.vx, 2,rd_data_vx+5248, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 384,  vaaddu.vx, 3,rd_data_vx+5312, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 385,  vaaddu.vx, 0,rd_data_vx+5376, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 386,  vaaddu.vx, 1,rd_data_vx+5440, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 387,  vaaddu.vx, 2,rd_data_vx+5504, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 388,  vaaddu.vx, 3,rd_data_vx+5568, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 389,  vaaddu.vx, 0,rd_data_vx+5632, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 390,  vaaddu.vx, 1,rd_data_vx+5696, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 391,  vaaddu.vx, 2,rd_data_vx+5760, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 392,  vaaddu.vx, 3,rd_data_vx+5824, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 393,  vaaddu.vx, 0,rd_data_vx+5888, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 394,  vaaddu.vx, 1,rd_data_vx+5952, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 395,  vaaddu.vx, 2,rd_data_vx+6016, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 396,  vaaddu.vx, 3,rd_data_vx+6080, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 397,  vaaddu.vx, 0,rd_data_vx+6144, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 398,  vaaddu.vx, 1,rd_data_vx+6208, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 399,  vaaddu.vx, 2,rd_data_vx+6272, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 400,  vaaddu.vx, 3,rd_data_vx+6336, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 401,  vaaddu.vx, 0,rd_data_vx+6400, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 402,  vaaddu.vx, 1,rd_data_vx+6464, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 403,  vaaddu.vx, 2,rd_data_vx+6528, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 404,  vaaddu.vx, 3,rd_data_vx+6592, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 405,  vaaddu.vx, 0,rd_data_vx+6656, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 406,  vaaddu.vx, 1,rd_data_vx+6720, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 407,  vaaddu.vx, 2,rd_data_vx+6784, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 408,  vaaddu.vx, 3,rd_data_vx+6848, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 409,  vaaddu.vx, 0,rd_data_vx+6912, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 410,  vaaddu.vx, 1,rd_data_vx+6976, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 411,  vaaddu.vx, 2,rd_data_vx+7040, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 412,  vaaddu.vx, 3,rd_data_vx+7104, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 413,  vaaddu.vx, 0,rd_data_vx+7168, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 414,  vaaddu.vx, 1,rd_data_vx+7232, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 415,  vaaddu.vx, 2,rd_data_vx+7296, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 416,  vaaddu.vx, 3,rd_data_vx+7360, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 417,  vaaddu.vx, 0,rd_data_vx+7424, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 418,  vaaddu.vx, 1,rd_data_vx+7488, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 419,  vaaddu.vx, 2,rd_data_vx+7552, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 420,  vaaddu.vx, 3,rd_data_vx+7616, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 421,  vaaddu.vx, 0,rd_data_vx+7680, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 422,  vaaddu.vx, 1,rd_data_vx+7744, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 423,  vaaddu.vx, 2,rd_data_vx+7808, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 424,  vaaddu.vx, 3,rd_data_vx+7872, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 425,  vaaddu.vx, 0,rd_data_vx+7936, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 426,  vaaddu.vx, 1,rd_data_vx+8000, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 427,  vaaddu.vx, 2,rd_data_vx+8064, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 428,  vaaddu.vx, 3,rd_data_vx+8128, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 429,  vaaddu.vx, 0,rd_data_vx+8192, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 430,  vaaddu.vx, 1,rd_data_vx+8256, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 431,  vaaddu.vx, 2,rd_data_vx+8320, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 432,  vaaddu.vx, 3,rd_data_vx+8384, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 433,  vaaddu.vx, 0,rd_data_vx+8448, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 434,  vaaddu.vx, 1,rd_data_vx+8512, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 435,  vaaddu.vx, 2,rd_data_vx+8576, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 436,  vaaddu.vx, 3,rd_data_vx+8640, rs2_data+2112, 0xfffffffffffffffe)
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
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffefff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffefff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffefff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffefff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00001000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00001000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00001000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00001000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x10000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x10000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x10000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x10000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000004
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000004
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5555afd7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5555afd6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5555afd6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5555afd7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa5029
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa5029
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa5029
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa5029
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a85
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a85
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5029
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb332d8b1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb332d8b1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb332d8b1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5029
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb332d8b1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aab052d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aab052d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aab052d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aab052d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33338db6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33338db6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaad
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaac
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaac
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaad
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5dddddde
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5dddddde
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5ddddddd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5ddddddd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333335
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444443
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333335
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444443
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db4
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333334
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db4
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333334
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5ddddddd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5ddddddd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b504
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b504
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b504
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b504
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5ddddddf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888889
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888888
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888888
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5ddddddf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888889
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555559
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555559
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333337
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333336
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333336
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333337
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4ccccccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4ccccccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999999d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999f41d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db6
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999999d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999f41c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db6
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999999d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999f41c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999999d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999f41d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5ddddddf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa5029
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5dddddde
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa5029
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5dddddde
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa5029
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5ddddddf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa5029
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb332d8b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb332d8b1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fffa582
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb332d8b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5028
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb332d8b1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fffa582
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5028
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb332d8b1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fffa581
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb332d8b1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fffa581
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b505
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a85
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b504
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b504
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b505
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a85
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffefff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffefff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffefff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffefff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00001000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00001000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00001000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00001000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x10000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x10000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x10000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x10000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x10000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x10000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x10000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x10000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000004
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000004
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5555afd7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5555afd7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5555afd6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5555afd6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5555afd6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5555afd6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5555afd7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5555afd7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a85
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a85
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333335
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5029
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb332d8b1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb332d8b1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb332d8b1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5029
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb332d8b1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33338db6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33338db6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaad
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaac
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaac
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaad
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5dddddde
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5dddddde
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5dddddde
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5dddddde
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5ddddddd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5ddddddd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5ddddddd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5ddddddd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005a84
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444444
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333335
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444443
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333335
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44444443
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1999999c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5ddddddd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5ddddddd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b504
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b504
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b504
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aab052b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b504
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2aaaaaad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5ddddddf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888889
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888888
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888888
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5ddddddf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888889
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555559
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555559
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555559
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555559
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333337
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333336
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333336
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333337
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4ccccccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4ccccccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4ccccccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4ccccccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4ccccccd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999999d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999f41d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db6
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999999d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999f41c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db6
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999999d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999f41c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1999999d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999f41d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338db5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5ddddddf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa5029
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5dddddde
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa5029
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5dddddde
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa5029
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5ddddddf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa5029
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf

rd_data_vx:
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff7f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffff7ff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff7e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffff7fe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff7e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffff7fe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff7f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffff7ff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff7ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff7fffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf7ffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff7ffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff7fffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff7ffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf7fffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff7ffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff7fffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff7ffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf7fffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff7ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff7fffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf7ffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8000007f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x800007ff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8000007f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x800007ff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8000007f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x800007ff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8000007f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x800007ff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80007fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8007ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x807fffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x87ffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80007fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8007ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x807fffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x87ffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80007fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8007ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x807fffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x87ffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80007fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8007ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x807fffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x87ffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99999999
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a80
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99999998
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a80
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99999998
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99999999
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffa57e
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555554
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffa57e
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555554
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffa57d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffa57d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd5555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd5555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd5555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd5555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a82
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a82
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333331
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333331
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a82
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a82
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333331
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb3333331
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80005a81
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000001
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
    

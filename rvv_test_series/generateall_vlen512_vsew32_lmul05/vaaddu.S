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
  TEST_AVG_VV_OP( 1,  vaaddu.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 2,  vaaddu.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 3,  vaaddu.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 4,  vaaddu.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 5,  vaaddu.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 6,  vaaddu.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 7,  vaaddu.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 8,  vaaddu.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 9,  vaaddu.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 10,  vaaddu.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 11,  vaaddu.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 12,  vaaddu.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 13,  vaaddu.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 14,  vaaddu.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 15,  vaaddu.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 16,  vaaddu.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 17,  vaaddu.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 18,  vaaddu.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 19,  vaaddu.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 20,  vaaddu.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 21,  vaaddu.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 22,  vaaddu.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 23,  vaaddu.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 24,  vaaddu.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 25,  vaaddu.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 26,  vaaddu.vv, 1, rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 27,  vaaddu.vv, 2, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 28,  vaaddu.vv, 3, rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 29,  vaaddu.vv, 0, rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 30,  vaaddu.vv, 1, rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 31,  vaaddu.vv, 2, rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 32,  vaaddu.vv, 3, rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 33,  vaaddu.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 34,  vaaddu.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 35,  vaaddu.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 36,  vaaddu.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 37,  vaaddu.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 38,  vaaddu.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 39,  vaaddu.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 40,  vaaddu.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 41,  vaaddu.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 42,  vaaddu.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 43,  vaaddu.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 44,  vaaddu.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 45,  vaaddu.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 46,  vaaddu.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 47,  vaaddu.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 48,  vaaddu.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 49,  vaaddu.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 50,  vaaddu.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 51,  vaaddu.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 52,  vaaddu.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 53,  vaaddu.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 54,  vaaddu.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 55,  vaaddu.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 56,  vaaddu.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 57,  vaaddu.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 58,  vaaddu.vv, 1, rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 59,  vaaddu.vv, 2, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 60,  vaaddu.vv, 3, rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 61,  vaaddu.vv, 0, rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 62,  vaaddu.vv, 1, rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 63,  vaaddu.vv, 2, rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 64,  vaaddu.vv, 3, rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 65,  vaaddu.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 66,  vaaddu.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 67,  vaaddu.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 68,  vaaddu.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 69,  vaaddu.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 70,  vaaddu.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 71,  vaaddu.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 72,  vaaddu.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 73,  vaaddu.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 74,  vaaddu.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 75,  vaaddu.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 76,  vaaddu.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 77,  vaaddu.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 78,  vaaddu.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 79,  vaaddu.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 80,  vaaddu.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 81,  vaaddu.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 82,  vaaddu.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 83,  vaaddu.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 84,  vaaddu.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 85,  vaaddu.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 86,  vaaddu.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 87,  vaaddu.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 88,  vaaddu.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 89,  vaaddu.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 90,  vaaddu.vv, 1, rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 91,  vaaddu.vv, 2, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 92,  vaaddu.vv, 3, rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 93,  vaaddu.vv, 0, rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 94,  vaaddu.vv, 1, rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 95,  vaaddu.vv, 2, rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 96,  vaaddu.vv, 3, rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 97,  vaaddu.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 98,  vaaddu.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 99,  vaaddu.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 100,  vaaddu.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 101,  vaaddu.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 102,  vaaddu.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 103,  vaaddu.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 104,  vaaddu.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 105,  vaaddu.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 106,  vaaddu.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 107,  vaaddu.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 108,  vaaddu.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 109,  vaaddu.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 110,  vaaddu.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 111,  vaaddu.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 112,  vaaddu.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 113,  vaaddu.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 114,  vaaddu.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 115,  vaaddu.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 116,  vaaddu.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 117,  vaaddu.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 118,  vaaddu.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 119,  vaaddu.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 120,  vaaddu.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 121,  vaaddu.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 122,  vaaddu.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 123,  vaaddu.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 124,  vaaddu.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 125,  vaaddu.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 126,  vaaddu.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 127,  vaaddu.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 128,  vaaddu.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 129,  vaaddu.vv, 0, rd_data_vv+4096, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 130,  vaaddu.vv, 1, rd_data_vv+4128, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 131,  vaaddu.vv, 2, rd_data_vv+4160, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 132,  vaaddu.vv, 3, rd_data_vv+4192, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 133,  vaaddu.vv, 0, rd_data_vv+4224, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 134,  vaaddu.vv, 1, rd_data_vv+4256, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 135,  vaaddu.vv, 2, rd_data_vv+4288, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 136,  vaaddu.vv, 3, rd_data_vv+4320, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 137,  vaaddu.vv, 0, rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 138,  vaaddu.vv, 1, rd_data_vv+4384, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 139,  vaaddu.vv, 2, rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 140,  vaaddu.vv, 3, rd_data_vv+4448, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 141,  vaaddu.vv, 0, rd_data_vv+4480, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 142,  vaaddu.vv, 1, rd_data_vv+4512, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 143,  vaaddu.vv, 2, rd_data_vv+4544, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 144,  vaaddu.vv, 3, rd_data_vv+4576, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 145,  vaaddu.vv, 0, rd_data_vv+4608, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 146,  vaaddu.vv, 1, rd_data_vv+4640, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 147,  vaaddu.vv, 2, rd_data_vv+4672, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 148,  vaaddu.vv, 3, rd_data_vv+4704, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 149,  vaaddu.vv, 0, rd_data_vv+4736, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 150,  vaaddu.vv, 1, rd_data_vv+4768, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 151,  vaaddu.vv, 2, rd_data_vv+4800, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 152,  vaaddu.vv, 3, rd_data_vv+4832, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 153,  vaaddu.vv, 0, rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 154,  vaaddu.vv, 1, rd_data_vv+4896, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 155,  vaaddu.vv, 2, rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 156,  vaaddu.vv, 3, rd_data_vv+4960, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 157,  vaaddu.vv, 0, rd_data_vv+4992, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 158,  vaaddu.vv, 1, rd_data_vv+5024, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 159,  vaaddu.vv, 2, rd_data_vv+5056, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 160,  vaaddu.vv, 3, rd_data_vv+5088, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 161,  vaaddu.vv, 0, rd_data_vv+5120, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 162,  vaaddu.vv, 1, rd_data_vv+5152, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 163,  vaaddu.vv, 2, rd_data_vv+5184, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 164,  vaaddu.vv, 3, rd_data_vv+5216, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 165,  vaaddu.vv, 0, rd_data_vv+5248, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 166,  vaaddu.vv, 1, rd_data_vv+5280, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 167,  vaaddu.vv, 2, rd_data_vv+5312, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 168,  vaaddu.vv, 3, rd_data_vv+5344, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 169,  vaaddu.vv, 0, rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 170,  vaaddu.vv, 1, rd_data_vv+5408, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 171,  vaaddu.vv, 2, rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 172,  vaaddu.vv, 3, rd_data_vv+5472, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 173,  vaaddu.vv, 0, rd_data_vv+5504, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 174,  vaaddu.vv, 1, rd_data_vv+5536, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 175,  vaaddu.vv, 2, rd_data_vv+5568, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 176,  vaaddu.vv, 3, rd_data_vv+5600, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 177,  vaaddu.vv, 0, rd_data_vv+5632, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 178,  vaaddu.vv, 1, rd_data_vv+5664, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 179,  vaaddu.vv, 2, rd_data_vv+5696, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 180,  vaaddu.vv, 3, rd_data_vv+5728, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 181,  vaaddu.vv, 0, rd_data_vv+5760, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 182,  vaaddu.vv, 1, rd_data_vv+5792, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 183,  vaaddu.vv, 2, rd_data_vv+5824, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 184,  vaaddu.vv, 3, rd_data_vv+5856, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 185,  vaaddu.vv, 0, rd_data_vv+5888, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 186,  vaaddu.vv, 1, rd_data_vv+5920, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 187,  vaaddu.vv, 2, rd_data_vv+5952, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 188,  vaaddu.vv, 3, rd_data_vv+5984, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 189,  vaaddu.vv, 0, rd_data_vv+6016, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 190,  vaaddu.vv, 1, rd_data_vv+6048, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 191,  vaaddu.vv, 2, rd_data_vv+6080, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 192,  vaaddu.vv, 3, rd_data_vv+6112, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 193,  vaaddu.vv, 0, rd_data_vv+6144, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 194,  vaaddu.vv, 1, rd_data_vv+6176, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 195,  vaaddu.vv, 2, rd_data_vv+6208, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 196,  vaaddu.vv, 3, rd_data_vv+6240, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 197,  vaaddu.vv, 0, rd_data_vv+6272, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 198,  vaaddu.vv, 1, rd_data_vv+6304, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 199,  vaaddu.vv, 2, rd_data_vv+6336, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 200,  vaaddu.vv, 3, rd_data_vv+6368, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 201,  vaaddu.vv, 0, rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 202,  vaaddu.vv, 1, rd_data_vv+6432, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 203,  vaaddu.vv, 2, rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 204,  vaaddu.vv, 3, rd_data_vv+6496, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 205,  vaaddu.vv, 0, rd_data_vv+6528, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 206,  vaaddu.vv, 1, rd_data_vv+6560, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 207,  vaaddu.vv, 2, rd_data_vv+6592, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 208,  vaaddu.vv, 3, rd_data_vv+6624, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 209,  vaaddu.vv, 0, rd_data_vv+6656, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 210,  vaaddu.vv, 1, rd_data_vv+6688, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 211,  vaaddu.vv, 2, rd_data_vv+6720, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 212,  vaaddu.vv, 3, rd_data_vv+6752, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 213,  vaaddu.vv, 0, rd_data_vv+6784, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 214,  vaaddu.vv, 1, rd_data_vv+6816, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 215,  vaaddu.vv, 2, rd_data_vv+6848, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 216,  vaaddu.vv, 3, rd_data_vv+6880, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 217,  vaaddu.vv, 0, rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 218,  vaaddu.vv, 1, rd_data_vv+6944, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 219,  vaaddu.vv, 2, rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 220,  vaaddu.vv, 3, rd_data_vv+7008, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 221,  vaaddu.vv, 0, rd_data_vv+7040, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 222,  vaaddu.vv, 1, rd_data_vv+7072, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 223,  vaaddu.vv, 2, rd_data_vv+7104, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 224,  vaaddu.vv, 3, rd_data_vv+7136, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 225,  vaaddu.vv, 0, rd_data_vv+7168, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 226,  vaaddu.vv, 1, rd_data_vv+7200, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 227,  vaaddu.vv, 2, rd_data_vv+7232, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 228,  vaaddu.vv, 3, rd_data_vv+7264, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 229,  vaaddu.vv, 0, rd_data_vv+7296, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 230,  vaaddu.vv, 1, rd_data_vv+7328, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 231,  vaaddu.vv, 2, rd_data_vv+7360, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 232,  vaaddu.vv, 3, rd_data_vv+7392, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 233,  vaaddu.vv, 0, rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 234,  vaaddu.vv, 1, rd_data_vv+7456, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 235,  vaaddu.vv, 2, rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 236,  vaaddu.vv, 3, rd_data_vv+7520, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 237,  vaaddu.vv, 0, rd_data_vv+7552, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 238,  vaaddu.vv, 1, rd_data_vv+7584, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 239,  vaaddu.vv, 2, rd_data_vv+7616, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 240,  vaaddu.vv, 3, rd_data_vv+7648, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 241,  vaaddu.vv, 0, rd_data_vv+7680, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 242,  vaaddu.vv, 1, rd_data_vv+7712, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 243,  vaaddu.vv, 2, rd_data_vv+7744, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 244,  vaaddu.vv, 3, rd_data_vv+7776, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 245,  vaaddu.vv, 0, rd_data_vv+7808, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 246,  vaaddu.vv, 1, rd_data_vv+7840, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 247,  vaaddu.vv, 2, rd_data_vv+7872, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 248,  vaaddu.vv, 3, rd_data_vv+7904, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 249,  vaaddu.vv, 0, rd_data_vv+7936, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 250,  vaaddu.vv, 1, rd_data_vv+7968, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 251,  vaaddu.vv, 2, rd_data_vv+8000, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 252,  vaaddu.vv, 3, rd_data_vv+8032, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 253,  vaaddu.vv, 0, rd_data_vv+8064, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 254,  vaaddu.vv, 1, rd_data_vv+8096, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 255,  vaaddu.vv, 2, rd_data_vv+8128, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 256,  vaaddu.vv, 3, rd_data_vv+8160, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 257,  vaaddu.vv, 0, rd_data_vv+8192, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 258,  vaaddu.vv, 1, rd_data_vv+8224, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 259,  vaaddu.vv, 2, rd_data_vv+8256, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 260,  vaaddu.vv, 3, rd_data_vv+8288, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 261,  vaaddu.vv, 0, rd_data_vv+8320, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 262,  vaaddu.vv, 1, rd_data_vv+8352, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 263,  vaaddu.vv, 2, rd_data_vv+8384, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 264,  vaaddu.vv, 3, rd_data_vv+8416, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 265,  vaaddu.vv, 0, rd_data_vv+8448, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 266,  vaaddu.vv, 1, rd_data_vv+8480, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 267,  vaaddu.vv, 2, rd_data_vv+8512, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 268,  vaaddu.vv, 3, rd_data_vv+8544, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 269,  vaaddu.vv, 0, rd_data_vv+8576, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 270,  vaaddu.vv, 1, rd_data_vv+8608, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 271,  vaaddu.vv, 2, rd_data_vv+8640, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 272,  vaaddu.vv, 3, rd_data_vv+8672, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP_rd1( 273,  vaaddu.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 274,  vaaddu.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 275,  vaaddu.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 276,  vaaddu.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 277,  vaaddu.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 278,  vaaddu.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 279,  vaaddu.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 280,  vaaddu.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd2( 281,  vaaddu.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 282,  vaaddu.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 283,  vaaddu.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 284,  vaaddu.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 285,  vaaddu.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 286,  vaaddu.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 287,  vaaddu.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 288,  vaaddu.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd3( 289,  vaaddu.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 290,  vaaddu.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 291,  vaaddu.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 292,  vaaddu.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 293,  vaaddu.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 294,  vaaddu.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 295,  vaaddu.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 296,  vaaddu.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd4( 297,  vaaddu.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 298,  vaaddu.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 299,  vaaddu.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 300,  vaaddu.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 301,  vaaddu.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 302,  vaaddu.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 303,  vaaddu.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 304,  vaaddu.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd5( 305,  vaaddu.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 306,  vaaddu.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 307,  vaaddu.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 308,  vaaddu.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 309,  vaaddu.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 310,  vaaddu.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 311,  vaaddu.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 312,  vaaddu.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd6( 313,  vaaddu.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 314,  vaaddu.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 315,  vaaddu.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 316,  vaaddu.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 317,  vaaddu.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 318,  vaaddu.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 319,  vaaddu.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 320,  vaaddu.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd7( 321,  vaaddu.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 322,  vaaddu.vv, 1, rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 323,  vaaddu.vv, 2, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 324,  vaaddu.vv, 3, rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_9( 325,  vaaddu.vv, 0, rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 326,  vaaddu.vv, 1, rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 327,  vaaddu.vv, 2, rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 328,  vaaddu.vv, 3, rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_rd9( 329,  vaaddu.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 330,  vaaddu.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 331,  vaaddu.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 332,  vaaddu.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 333,  vaaddu.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 334,  vaaddu.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 335,  vaaddu.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 336,  vaaddu.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd10( 337,  vaaddu.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 338,  vaaddu.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 339,  vaaddu.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 340,  vaaddu.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 341,  vaaddu.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 342,  vaaddu.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 343,  vaaddu.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 344,  vaaddu.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd11( 345,  vaaddu.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 346,  vaaddu.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 347,  vaaddu.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 348,  vaaddu.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 349,  vaaddu.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 350,  vaaddu.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 351,  vaaddu.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 352,  vaaddu.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd12( 353,  vaaddu.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 354,  vaaddu.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 355,  vaaddu.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 356,  vaaddu.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 357,  vaaddu.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 358,  vaaddu.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 359,  vaaddu.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 360,  vaaddu.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd13( 361,  vaaddu.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 362,  vaaddu.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 363,  vaaddu.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 364,  vaaddu.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 365,  vaaddu.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 366,  vaaddu.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 367,  vaaddu.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 368,  vaaddu.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd14( 369,  vaaddu.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 370,  vaaddu.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 371,  vaaddu.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 372,  vaaddu.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 373,  vaaddu.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 374,  vaaddu.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 375,  vaaddu.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 376,  vaaddu.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd15( 377,  vaaddu.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 378,  vaaddu.vv, 1, rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 379,  vaaddu.vv, 2, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 380,  vaaddu.vv, 3, rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_1_17( 381,  vaaddu.vv, 0, rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 382,  vaaddu.vv, 1, rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 383,  vaaddu.vv, 2, rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 384,  vaaddu.vv, 3, rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_rd17( 385,  vaaddu.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 386,  vaaddu.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 387,  vaaddu.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 388,  vaaddu.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 389,  vaaddu.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 390,  vaaddu.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 391,  vaaddu.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 392,  vaaddu.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd18( 393,  vaaddu.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 394,  vaaddu.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 395,  vaaddu.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 396,  vaaddu.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 397,  vaaddu.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 398,  vaaddu.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 399,  vaaddu.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 400,  vaaddu.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd19( 401,  vaaddu.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 402,  vaaddu.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 403,  vaaddu.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 404,  vaaddu.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 405,  vaaddu.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 406,  vaaddu.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 407,  vaaddu.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 408,  vaaddu.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd20( 409,  vaaddu.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 410,  vaaddu.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 411,  vaaddu.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 412,  vaaddu.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 413,  vaaddu.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 414,  vaaddu.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 415,  vaaddu.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 416,  vaaddu.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd21( 417,  vaaddu.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 418,  vaaddu.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 419,  vaaddu.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 420,  vaaddu.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 421,  vaaddu.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 422,  vaaddu.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 423,  vaaddu.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 424,  vaaddu.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd22( 425,  vaaddu.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 426,  vaaddu.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 427,  vaaddu.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 428,  vaaddu.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 429,  vaaddu.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 430,  vaaddu.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 431,  vaaddu.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 432,  vaaddu.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd23( 433,  vaaddu.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 434,  vaaddu.vv, 1, rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 435,  vaaddu.vv, 2, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 436,  vaaddu.vv, 3, rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_25( 437,  vaaddu.vv, 0, rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 438,  vaaddu.vv, 1, rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 439,  vaaddu.vv, 2, rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 440,  vaaddu.vv, 3, rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_rd25( 441,  vaaddu.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 442,  vaaddu.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 443,  vaaddu.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 444,  vaaddu.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 445,  vaaddu.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 446,  vaaddu.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 447,  vaaddu.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 448,  vaaddu.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd26( 449,  vaaddu.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 450,  vaaddu.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 451,  vaaddu.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 452,  vaaddu.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 453,  vaaddu.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 454,  vaaddu.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 455,  vaaddu.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 456,  vaaddu.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd27( 457,  vaaddu.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 458,  vaaddu.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 459,  vaaddu.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 460,  vaaddu.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 461,  vaaddu.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 462,  vaaddu.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 463,  vaaddu.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 464,  vaaddu.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd28( 465,  vaaddu.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 466,  vaaddu.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 467,  vaaddu.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 468,  vaaddu.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 469,  vaaddu.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 470,  vaaddu.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 471,  vaaddu.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 472,  vaaddu.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd29( 473,  vaaddu.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 474,  vaaddu.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 475,  vaaddu.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 476,  vaaddu.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 477,  vaaddu.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 478,  vaaddu.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 479,  vaaddu.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 480,  vaaddu.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd30( 481,  vaaddu.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 482,  vaaddu.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 483,  vaaddu.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 484,  vaaddu.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 485,  vaaddu.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 486,  vaaddu.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 487,  vaaddu.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 488,  vaaddu.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd31( 489,  vaaddu.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 490,  vaaddu.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 491,  vaaddu.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 492,  vaaddu.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 493,  vaaddu.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 494,  vaaddu.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 495,  vaaddu.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 496,  vaaddu.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd1( 497,  vaaddu.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 498,  vaaddu.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 499,  vaaddu.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 500,  vaaddu.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 501,  vaaddu.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 502,  vaaddu.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 503,  vaaddu.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 504,  vaaddu.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_VX_OP( 505,  vaaddu.vx, 0,rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 506,  vaaddu.vx, 1,rd_data_vx+32, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 507,  vaaddu.vx, 2,rd_data_vx+64, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 508,  vaaddu.vx, 3,rd_data_vx+96, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 509,  vaaddu.vx, 0,rd_data_vx+128, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 510,  vaaddu.vx, 1,rd_data_vx+160, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 511,  vaaddu.vx, 2,rd_data_vx+192, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 512,  vaaddu.vx, 3,rd_data_vx+224, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 513,  vaaddu.vx, 0,rd_data_vx+256, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 514,  vaaddu.vx, 1,rd_data_vx+288, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 515,  vaaddu.vx, 2,rd_data_vx+320, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 516,  vaaddu.vx, 3,rd_data_vx+352, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 517,  vaaddu.vx, 0,rd_data_vx+384, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 518,  vaaddu.vx, 1,rd_data_vx+416, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 519,  vaaddu.vx, 2,rd_data_vx+448, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 520,  vaaddu.vx, 3,rd_data_vx+480, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 521,  vaaddu.vx, 0,rd_data_vx+512, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 522,  vaaddu.vx, 1,rd_data_vx+544, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 523,  vaaddu.vx, 2,rd_data_vx+576, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 524,  vaaddu.vx, 3,rd_data_vx+608, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 525,  vaaddu.vx, 0,rd_data_vx+640, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 526,  vaaddu.vx, 1,rd_data_vx+672, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 527,  vaaddu.vx, 2,rd_data_vx+704, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 528,  vaaddu.vx, 3,rd_data_vx+736, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 529,  vaaddu.vx, 0,rd_data_vx+768, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 530,  vaaddu.vx, 1,rd_data_vx+800, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 531,  vaaddu.vx, 2,rd_data_vx+832, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 532,  vaaddu.vx, 3,rd_data_vx+864, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 533,  vaaddu.vx, 0,rd_data_vx+896, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 534,  vaaddu.vx, 1,rd_data_vx+928, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 535,  vaaddu.vx, 2,rd_data_vx+960, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 536,  vaaddu.vx, 3,rd_data_vx+992, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 537,  vaaddu.vx, 0,rd_data_vx+1024, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 538,  vaaddu.vx, 1,rd_data_vx+1056, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 539,  vaaddu.vx, 2,rd_data_vx+1088, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 540,  vaaddu.vx, 3,rd_data_vx+1120, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 541,  vaaddu.vx, 0,rd_data_vx+1152, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 542,  vaaddu.vx, 1,rd_data_vx+1184, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 543,  vaaddu.vx, 2,rd_data_vx+1216, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 544,  vaaddu.vx, 3,rd_data_vx+1248, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 545,  vaaddu.vx, 0,rd_data_vx+1280, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 546,  vaaddu.vx, 1,rd_data_vx+1312, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 547,  vaaddu.vx, 2,rd_data_vx+1344, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 548,  vaaddu.vx, 3,rd_data_vx+1376, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 549,  vaaddu.vx, 0,rd_data_vx+1408, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 550,  vaaddu.vx, 1,rd_data_vx+1440, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 551,  vaaddu.vx, 2,rd_data_vx+1472, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 552,  vaaddu.vx, 3,rd_data_vx+1504, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 553,  vaaddu.vx, 0,rd_data_vx+1536, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 554,  vaaddu.vx, 1,rd_data_vx+1568, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 555,  vaaddu.vx, 2,rd_data_vx+1600, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 556,  vaaddu.vx, 3,rd_data_vx+1632, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 557,  vaaddu.vx, 0,rd_data_vx+1664, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 558,  vaaddu.vx, 1,rd_data_vx+1696, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 559,  vaaddu.vx, 2,rd_data_vx+1728, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 560,  vaaddu.vx, 3,rd_data_vx+1760, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 561,  vaaddu.vx, 0,rd_data_vx+1792, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 562,  vaaddu.vx, 1,rd_data_vx+1824, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 563,  vaaddu.vx, 2,rd_data_vx+1856, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 564,  vaaddu.vx, 3,rd_data_vx+1888, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 565,  vaaddu.vx, 0,rd_data_vx+1920, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 566,  vaaddu.vx, 1,rd_data_vx+1952, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 567,  vaaddu.vx, 2,rd_data_vx+1984, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 568,  vaaddu.vx, 3,rd_data_vx+2016, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 569,  vaaddu.vx, 0,rd_data_vx+2048, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 570,  vaaddu.vx, 1,rd_data_vx+2080, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 571,  vaaddu.vx, 2,rd_data_vx+2112, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 572,  vaaddu.vx, 3,rd_data_vx+2144, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 573,  vaaddu.vx, 0,rd_data_vx+2176, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 574,  vaaddu.vx, 1,rd_data_vx+2208, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 575,  vaaddu.vx, 2,rd_data_vx+2240, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 576,  vaaddu.vx, 3,rd_data_vx+2272, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 577,  vaaddu.vx, 0,rd_data_vx+2304, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 578,  vaaddu.vx, 1,rd_data_vx+2336, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 579,  vaaddu.vx, 2,rd_data_vx+2368, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 580,  vaaddu.vx, 3,rd_data_vx+2400, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 581,  vaaddu.vx, 0,rd_data_vx+2432, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 582,  vaaddu.vx, 1,rd_data_vx+2464, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 583,  vaaddu.vx, 2,rd_data_vx+2496, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 584,  vaaddu.vx, 3,rd_data_vx+2528, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 585,  vaaddu.vx, 0,rd_data_vx+2560, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 586,  vaaddu.vx, 1,rd_data_vx+2592, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 587,  vaaddu.vx, 2,rd_data_vx+2624, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 588,  vaaddu.vx, 3,rd_data_vx+2656, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 589,  vaaddu.vx, 0,rd_data_vx+2688, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 590,  vaaddu.vx, 1,rd_data_vx+2720, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 591,  vaaddu.vx, 2,rd_data_vx+2752, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 592,  vaaddu.vx, 3,rd_data_vx+2784, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 593,  vaaddu.vx, 0,rd_data_vx+2816, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 594,  vaaddu.vx, 1,rd_data_vx+2848, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 595,  vaaddu.vx, 2,rd_data_vx+2880, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 596,  vaaddu.vx, 3,rd_data_vx+2912, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 597,  vaaddu.vx, 0,rd_data_vx+2944, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 598,  vaaddu.vx, 1,rd_data_vx+2976, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 599,  vaaddu.vx, 2,rd_data_vx+3008, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 600,  vaaddu.vx, 3,rd_data_vx+3040, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 601,  vaaddu.vx, 0,rd_data_vx+3072, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 602,  vaaddu.vx, 1,rd_data_vx+3104, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 603,  vaaddu.vx, 2,rd_data_vx+3136, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 604,  vaaddu.vx, 3,rd_data_vx+3168, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 605,  vaaddu.vx, 0,rd_data_vx+3200, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 606,  vaaddu.vx, 1,rd_data_vx+3232, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 607,  vaaddu.vx, 2,rd_data_vx+3264, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 608,  vaaddu.vx, 3,rd_data_vx+3296, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 609,  vaaddu.vx, 0,rd_data_vx+3328, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 610,  vaaddu.vx, 1,rd_data_vx+3360, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 611,  vaaddu.vx, 2,rd_data_vx+3392, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 612,  vaaddu.vx, 3,rd_data_vx+3424, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 613,  vaaddu.vx, 0,rd_data_vx+3456, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 614,  vaaddu.vx, 1,rd_data_vx+3488, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 615,  vaaddu.vx, 2,rd_data_vx+3520, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 616,  vaaddu.vx, 3,rd_data_vx+3552, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 617,  vaaddu.vx, 0,rd_data_vx+3584, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 618,  vaaddu.vx, 1,rd_data_vx+3616, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 619,  vaaddu.vx, 2,rd_data_vx+3648, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 620,  vaaddu.vx, 3,rd_data_vx+3680, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 621,  vaaddu.vx, 0,rd_data_vx+3712, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 622,  vaaddu.vx, 1,rd_data_vx+3744, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 623,  vaaddu.vx, 2,rd_data_vx+3776, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 624,  vaaddu.vx, 3,rd_data_vx+3808, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 625,  vaaddu.vx, 0,rd_data_vx+3840, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 626,  vaaddu.vx, 1,rd_data_vx+3872, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 627,  vaaddu.vx, 2,rd_data_vx+3904, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 628,  vaaddu.vx, 3,rd_data_vx+3936, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 629,  vaaddu.vx, 0,rd_data_vx+3968, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 630,  vaaddu.vx, 1,rd_data_vx+4000, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 631,  vaaddu.vx, 2,rd_data_vx+4032, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 632,  vaaddu.vx, 3,rd_data_vx+4064, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 633,  vaaddu.vx, 0,rd_data_vx+4096, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 634,  vaaddu.vx, 1,rd_data_vx+4128, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 635,  vaaddu.vx, 2,rd_data_vx+4160, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 636,  vaaddu.vx, 3,rd_data_vx+4192, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 637,  vaaddu.vx, 0,rd_data_vx+4224, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 638,  vaaddu.vx, 1,rd_data_vx+4256, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 639,  vaaddu.vx, 2,rd_data_vx+4288, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 640,  vaaddu.vx, 3,rd_data_vx+4320, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 641,  vaaddu.vx, 0,rd_data_vx+4352, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 642,  vaaddu.vx, 1,rd_data_vx+4384, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 643,  vaaddu.vx, 2,rd_data_vx+4416, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 644,  vaaddu.vx, 3,rd_data_vx+4448, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 645,  vaaddu.vx, 0,rd_data_vx+4480, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 646,  vaaddu.vx, 1,rd_data_vx+4512, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 647,  vaaddu.vx, 2,rd_data_vx+4544, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 648,  vaaddu.vx, 3,rd_data_vx+4576, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 649,  vaaddu.vx, 0,rd_data_vx+4608, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 650,  vaaddu.vx, 1,rd_data_vx+4640, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 651,  vaaddu.vx, 2,rd_data_vx+4672, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 652,  vaaddu.vx, 3,rd_data_vx+4704, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 653,  vaaddu.vx, 0,rd_data_vx+4736, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 654,  vaaddu.vx, 1,rd_data_vx+4768, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 655,  vaaddu.vx, 2,rd_data_vx+4800, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 656,  vaaddu.vx, 3,rd_data_vx+4832, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 657,  vaaddu.vx, 0,rd_data_vx+4864, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 658,  vaaddu.vx, 1,rd_data_vx+4896, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 659,  vaaddu.vx, 2,rd_data_vx+4928, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 660,  vaaddu.vx, 3,rd_data_vx+4960, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 661,  vaaddu.vx, 0,rd_data_vx+4992, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 662,  vaaddu.vx, 1,rd_data_vx+5024, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 663,  vaaddu.vx, 2,rd_data_vx+5056, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 664,  vaaddu.vx, 3,rd_data_vx+5088, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 665,  vaaddu.vx, 0,rd_data_vx+5120, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 666,  vaaddu.vx, 1,rd_data_vx+5152, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 667,  vaaddu.vx, 2,rd_data_vx+5184, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 668,  vaaddu.vx, 3,rd_data_vx+5216, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 669,  vaaddu.vx, 0,rd_data_vx+5248, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 670,  vaaddu.vx, 1,rd_data_vx+5280, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 671,  vaaddu.vx, 2,rd_data_vx+5312, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 672,  vaaddu.vx, 3,rd_data_vx+5344, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 673,  vaaddu.vx, 0,rd_data_vx+5376, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 674,  vaaddu.vx, 1,rd_data_vx+5408, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 675,  vaaddu.vx, 2,rd_data_vx+5440, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 676,  vaaddu.vx, 3,rd_data_vx+5472, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 677,  vaaddu.vx, 0,rd_data_vx+5504, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 678,  vaaddu.vx, 1,rd_data_vx+5536, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 679,  vaaddu.vx, 2,rd_data_vx+5568, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 680,  vaaddu.vx, 3,rd_data_vx+5600, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 681,  vaaddu.vx, 0,rd_data_vx+5632, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 682,  vaaddu.vx, 1,rd_data_vx+5664, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 683,  vaaddu.vx, 2,rd_data_vx+5696, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 684,  vaaddu.vx, 3,rd_data_vx+5728, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 685,  vaaddu.vx, 0,rd_data_vx+5760, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 686,  vaaddu.vx, 1,rd_data_vx+5792, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 687,  vaaddu.vx, 2,rd_data_vx+5824, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 688,  vaaddu.vx, 3,rd_data_vx+5856, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 689,  vaaddu.vx, 0,rd_data_vx+5888, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 690,  vaaddu.vx, 1,rd_data_vx+5920, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 691,  vaaddu.vx, 2,rd_data_vx+5952, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 692,  vaaddu.vx, 3,rd_data_vx+5984, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 693,  vaaddu.vx, 0,rd_data_vx+6016, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 694,  vaaddu.vx, 1,rd_data_vx+6048, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 695,  vaaddu.vx, 2,rd_data_vx+6080, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 696,  vaaddu.vx, 3,rd_data_vx+6112, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 697,  vaaddu.vx, 0,rd_data_vx+6144, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 698,  vaaddu.vx, 1,rd_data_vx+6176, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 699,  vaaddu.vx, 2,rd_data_vx+6208, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 700,  vaaddu.vx, 3,rd_data_vx+6240, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 701,  vaaddu.vx, 0,rd_data_vx+6272, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 702,  vaaddu.vx, 1,rd_data_vx+6304, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 703,  vaaddu.vx, 2,rd_data_vx+6336, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 704,  vaaddu.vx, 3,rd_data_vx+6368, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 705,  vaaddu.vx, 0,rd_data_vx+6400, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 706,  vaaddu.vx, 1,rd_data_vx+6432, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 707,  vaaddu.vx, 2,rd_data_vx+6464, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 708,  vaaddu.vx, 3,rd_data_vx+6496, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 709,  vaaddu.vx, 0,rd_data_vx+6528, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 710,  vaaddu.vx, 1,rd_data_vx+6560, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 711,  vaaddu.vx, 2,rd_data_vx+6592, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 712,  vaaddu.vx, 3,rd_data_vx+6624, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 713,  vaaddu.vx, 0,rd_data_vx+6656, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 714,  vaaddu.vx, 1,rd_data_vx+6688, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 715,  vaaddu.vx, 2,rd_data_vx+6720, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 716,  vaaddu.vx, 3,rd_data_vx+6752, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 717,  vaaddu.vx, 0,rd_data_vx+6784, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 718,  vaaddu.vx, 1,rd_data_vx+6816, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 719,  vaaddu.vx, 2,rd_data_vx+6848, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 720,  vaaddu.vx, 3,rd_data_vx+6880, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 721,  vaaddu.vx, 0,rd_data_vx+6912, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 722,  vaaddu.vx, 1,rd_data_vx+6944, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 723,  vaaddu.vx, 2,rd_data_vx+6976, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 724,  vaaddu.vx, 3,rd_data_vx+7008, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 725,  vaaddu.vx, 0,rd_data_vx+7040, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 726,  vaaddu.vx, 1,rd_data_vx+7072, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 727,  vaaddu.vx, 2,rd_data_vx+7104, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 728,  vaaddu.vx, 3,rd_data_vx+7136, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 729,  vaaddu.vx, 0,rd_data_vx+7168, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 730,  vaaddu.vx, 1,rd_data_vx+7200, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 731,  vaaddu.vx, 2,rd_data_vx+7232, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 732,  vaaddu.vx, 3,rd_data_vx+7264, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 733,  vaaddu.vx, 0,rd_data_vx+7296, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 734,  vaaddu.vx, 1,rd_data_vx+7328, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 735,  vaaddu.vx, 2,rd_data_vx+7360, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 736,  vaaddu.vx, 3,rd_data_vx+7392, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 737,  vaaddu.vx, 0,rd_data_vx+7424, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 738,  vaaddu.vx, 1,rd_data_vx+7456, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 739,  vaaddu.vx, 2,rd_data_vx+7488, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 740,  vaaddu.vx, 3,rd_data_vx+7520, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 741,  vaaddu.vx, 0,rd_data_vx+7552, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 742,  vaaddu.vx, 1,rd_data_vx+7584, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 743,  vaaddu.vx, 2,rd_data_vx+7616, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 744,  vaaddu.vx, 3,rd_data_vx+7648, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 745,  vaaddu.vx, 0,rd_data_vx+7680, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 746,  vaaddu.vx, 1,rd_data_vx+7712, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 747,  vaaddu.vx, 2,rd_data_vx+7744, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 748,  vaaddu.vx, 3,rd_data_vx+7776, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 749,  vaaddu.vx, 0,rd_data_vx+7808, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 750,  vaaddu.vx, 1,rd_data_vx+7840, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 751,  vaaddu.vx, 2,rd_data_vx+7872, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 752,  vaaddu.vx, 3,rd_data_vx+7904, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 753,  vaaddu.vx, 0,rd_data_vx+7936, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 754,  vaaddu.vx, 1,rd_data_vx+7968, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 755,  vaaddu.vx, 2,rd_data_vx+8000, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 756,  vaaddu.vx, 3,rd_data_vx+8032, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 757,  vaaddu.vx, 0,rd_data_vx+8064, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 758,  vaaddu.vx, 1,rd_data_vx+8096, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 759,  vaaddu.vx, 2,rd_data_vx+8128, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 760,  vaaddu.vx, 3,rd_data_vx+8160, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 761,  vaaddu.vx, 0,rd_data_vx+8192, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 762,  vaaddu.vx, 1,rd_data_vx+8224, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 763,  vaaddu.vx, 2,rd_data_vx+8256, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 764,  vaaddu.vx, 3,rd_data_vx+8288, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 765,  vaaddu.vx, 0,rd_data_vx+8320, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 766,  vaaddu.vx, 1,rd_data_vx+8352, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 767,  vaaddu.vx, 2,rd_data_vx+8384, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 768,  vaaddu.vx, 3,rd_data_vx+8416, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 769,  vaaddu.vx, 0,rd_data_vx+8448, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 770,  vaaddu.vx, 1,rd_data_vx+8480, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 771,  vaaddu.vx, 2,rd_data_vx+8512, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 772,  vaaddu.vx, 3,rd_data_vx+8544, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 773,  vaaddu.vx, 0,rd_data_vx+8576, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 774,  vaaddu.vx, 1,rd_data_vx+8608, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 775,  vaaddu.vx, 2,rd_data_vx+8640, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 776,  vaaddu.vx, 3,rd_data_vx+8672, rs2_data+2144, 0xfffffffffffffffe)
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
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffefff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffefff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffefff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffefff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
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
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5029
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5029
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5dddddde
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5dddddde
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5ddddddd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5ddddddd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999f41b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999f41b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5ddddddd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5ddddddd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aab052b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5ddddddf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5ddddddf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888889
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888889
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555559
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555559
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333337
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333337
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444445
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4ccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999f41d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999f41c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999f41c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999f41d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5ddddddf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5dddddde
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5dddddde
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5ddddddf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb332d8b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb332d8b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5028
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5028
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fffa582
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fffa582
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fffa581
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fffa581
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b505
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b505
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffefff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffefff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffefff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffefff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffefff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffefff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffefff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffeff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffefff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffeffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffefffff
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
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000010
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
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555afd7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd554fad3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444444
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44444443
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ccccccc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1999999d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999f41c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5dddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5029
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5029
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5029
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5029
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e

rd_data_vx:
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff7f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff7ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff7e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff7fe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff7e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff7fe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff7f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff7ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff7ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff7ffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff7fffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff7ffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff7fffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff7fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff7ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff7fffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7ffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff7ffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7fffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff7ffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7fffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff7fffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7ffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8000007f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x800007ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8000007f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x800007ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8000007f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x800007ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8000007f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x800007ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80007fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8007ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80007fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8007ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80007fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8007ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80007fff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8007ffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x807fffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x87ffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x807fffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x87ffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x807fffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x87ffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x807fffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x87ffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a80
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a80
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a82
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
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
    

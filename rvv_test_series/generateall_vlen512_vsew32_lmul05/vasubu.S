#----------------------------------------------------------------------------- 
    # vasubu.S
    #-----------------------------------------------------------------------------
    #
    # Test vasubu instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vasubu)
    
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
  TEST_AVG_VV_OP( 1,  vasubu.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 2,  vasubu.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 3,  vasubu.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 4,  vasubu.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP( 5,  vasubu.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 6,  vasubu.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 7,  vasubu.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 8,  vasubu.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP( 9,  vasubu.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 10,  vasubu.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 11,  vasubu.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 12,  vasubu.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP( 13,  vasubu.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 14,  vasubu.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 15,  vasubu.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 16,  vasubu.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP( 17,  vasubu.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 18,  vasubu.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 19,  vasubu.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 20,  vasubu.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP( 21,  vasubu.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 22,  vasubu.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 23,  vasubu.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 24,  vasubu.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP( 25,  vasubu.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 26,  vasubu.vv, 1, rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 27,  vasubu.vv, 2, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 28,  vasubu.vv, 3, rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP( 29,  vasubu.vv, 0, rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 30,  vasubu.vv, 1, rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 31,  vasubu.vv, 2, rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 32,  vasubu.vv, 3, rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP( 33,  vasubu.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 34,  vasubu.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 35,  vasubu.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 36,  vasubu.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP( 37,  vasubu.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 38,  vasubu.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 39,  vasubu.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 40,  vasubu.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP( 41,  vasubu.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 42,  vasubu.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 43,  vasubu.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 44,  vasubu.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP( 45,  vasubu.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 46,  vasubu.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 47,  vasubu.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 48,  vasubu.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP( 49,  vasubu.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 50,  vasubu.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 51,  vasubu.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 52,  vasubu.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP( 53,  vasubu.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 54,  vasubu.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 55,  vasubu.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 56,  vasubu.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP( 57,  vasubu.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 58,  vasubu.vv, 1, rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 59,  vasubu.vv, 2, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 60,  vasubu.vv, 3, rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP( 61,  vasubu.vv, 0, rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 62,  vasubu.vv, 1, rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 63,  vasubu.vv, 2, rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 64,  vasubu.vv, 3, rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP( 65,  vasubu.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 66,  vasubu.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 67,  vasubu.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 68,  vasubu.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP( 69,  vasubu.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 70,  vasubu.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 71,  vasubu.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 72,  vasubu.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP( 73,  vasubu.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 74,  vasubu.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 75,  vasubu.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 76,  vasubu.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP( 77,  vasubu.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 78,  vasubu.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 79,  vasubu.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 80,  vasubu.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP( 81,  vasubu.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 82,  vasubu.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 83,  vasubu.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 84,  vasubu.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP( 85,  vasubu.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 86,  vasubu.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 87,  vasubu.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 88,  vasubu.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP( 89,  vasubu.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 90,  vasubu.vv, 1, rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 91,  vasubu.vv, 2, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 92,  vasubu.vv, 3, rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP( 93,  vasubu.vv, 0, rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 94,  vasubu.vv, 1, rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 95,  vasubu.vv, 2, rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 96,  vasubu.vv, 3, rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP( 97,  vasubu.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 98,  vasubu.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 99,  vasubu.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 100,  vasubu.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP( 101,  vasubu.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 102,  vasubu.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 103,  vasubu.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 104,  vasubu.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP( 105,  vasubu.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 106,  vasubu.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 107,  vasubu.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 108,  vasubu.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP( 109,  vasubu.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 110,  vasubu.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 111,  vasubu.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 112,  vasubu.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP( 113,  vasubu.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 114,  vasubu.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 115,  vasubu.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 116,  vasubu.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP( 117,  vasubu.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 118,  vasubu.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 119,  vasubu.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 120,  vasubu.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP( 121,  vasubu.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 122,  vasubu.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 123,  vasubu.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 124,  vasubu.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP( 125,  vasubu.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 126,  vasubu.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 127,  vasubu.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 128,  vasubu.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP( 129,  vasubu.vv, 0, rd_data_vv+4096, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 130,  vasubu.vv, 1, rd_data_vv+4128, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 131,  vasubu.vv, 2, rd_data_vv+4160, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 132,  vasubu.vv, 3, rd_data_vv+4192, rs2_data+1024, rs1_data+1024)
  TEST_AVG_VV_OP( 133,  vasubu.vv, 0, rd_data_vv+4224, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 134,  vasubu.vv, 1, rd_data_vv+4256, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 135,  vasubu.vv, 2, rd_data_vv+4288, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 136,  vasubu.vv, 3, rd_data_vv+4320, rs2_data+1056, rs1_data+1056)
  TEST_AVG_VV_OP( 137,  vasubu.vv, 0, rd_data_vv+4352, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 138,  vasubu.vv, 1, rd_data_vv+4384, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 139,  vasubu.vv, 2, rd_data_vv+4416, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 140,  vasubu.vv, 3, rd_data_vv+4448, rs2_data+1088, rs1_data+1088)
  TEST_AVG_VV_OP( 141,  vasubu.vv, 0, rd_data_vv+4480, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 142,  vasubu.vv, 1, rd_data_vv+4512, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 143,  vasubu.vv, 2, rd_data_vv+4544, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 144,  vasubu.vv, 3, rd_data_vv+4576, rs2_data+1120, rs1_data+1120)
  TEST_AVG_VV_OP( 145,  vasubu.vv, 0, rd_data_vv+4608, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 146,  vasubu.vv, 1, rd_data_vv+4640, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 147,  vasubu.vv, 2, rd_data_vv+4672, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 148,  vasubu.vv, 3, rd_data_vv+4704, rs2_data+1152, rs1_data+1152)
  TEST_AVG_VV_OP( 149,  vasubu.vv, 0, rd_data_vv+4736, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 150,  vasubu.vv, 1, rd_data_vv+4768, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 151,  vasubu.vv, 2, rd_data_vv+4800, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 152,  vasubu.vv, 3, rd_data_vv+4832, rs2_data+1184, rs1_data+1184)
  TEST_AVG_VV_OP( 153,  vasubu.vv, 0, rd_data_vv+4864, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 154,  vasubu.vv, 1, rd_data_vv+4896, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 155,  vasubu.vv, 2, rd_data_vv+4928, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 156,  vasubu.vv, 3, rd_data_vv+4960, rs2_data+1216, rs1_data+1216)
  TEST_AVG_VV_OP( 157,  vasubu.vv, 0, rd_data_vv+4992, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 158,  vasubu.vv, 1, rd_data_vv+5024, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 159,  vasubu.vv, 2, rd_data_vv+5056, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 160,  vasubu.vv, 3, rd_data_vv+5088, rs2_data+1248, rs1_data+1248)
  TEST_AVG_VV_OP( 161,  vasubu.vv, 0, rd_data_vv+5120, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 162,  vasubu.vv, 1, rd_data_vv+5152, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 163,  vasubu.vv, 2, rd_data_vv+5184, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 164,  vasubu.vv, 3, rd_data_vv+5216, rs2_data+1280, rs1_data+1280)
  TEST_AVG_VV_OP( 165,  vasubu.vv, 0, rd_data_vv+5248, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 166,  vasubu.vv, 1, rd_data_vv+5280, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 167,  vasubu.vv, 2, rd_data_vv+5312, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 168,  vasubu.vv, 3, rd_data_vv+5344, rs2_data+1312, rs1_data+1312)
  TEST_AVG_VV_OP( 169,  vasubu.vv, 0, rd_data_vv+5376, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 170,  vasubu.vv, 1, rd_data_vv+5408, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 171,  vasubu.vv, 2, rd_data_vv+5440, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 172,  vasubu.vv, 3, rd_data_vv+5472, rs2_data+1344, rs1_data+1344)
  TEST_AVG_VV_OP( 173,  vasubu.vv, 0, rd_data_vv+5504, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 174,  vasubu.vv, 1, rd_data_vv+5536, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 175,  vasubu.vv, 2, rd_data_vv+5568, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 176,  vasubu.vv, 3, rd_data_vv+5600, rs2_data+1376, rs1_data+1376)
  TEST_AVG_VV_OP( 177,  vasubu.vv, 0, rd_data_vv+5632, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 178,  vasubu.vv, 1, rd_data_vv+5664, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 179,  vasubu.vv, 2, rd_data_vv+5696, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 180,  vasubu.vv, 3, rd_data_vv+5728, rs2_data+1408, rs1_data+1408)
  TEST_AVG_VV_OP( 181,  vasubu.vv, 0, rd_data_vv+5760, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 182,  vasubu.vv, 1, rd_data_vv+5792, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 183,  vasubu.vv, 2, rd_data_vv+5824, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 184,  vasubu.vv, 3, rd_data_vv+5856, rs2_data+1440, rs1_data+1440)
  TEST_AVG_VV_OP( 185,  vasubu.vv, 0, rd_data_vv+5888, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 186,  vasubu.vv, 1, rd_data_vv+5920, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 187,  vasubu.vv, 2, rd_data_vv+5952, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 188,  vasubu.vv, 3, rd_data_vv+5984, rs2_data+1472, rs1_data+1472)
  TEST_AVG_VV_OP( 189,  vasubu.vv, 0, rd_data_vv+6016, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 190,  vasubu.vv, 1, rd_data_vv+6048, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 191,  vasubu.vv, 2, rd_data_vv+6080, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 192,  vasubu.vv, 3, rd_data_vv+6112, rs2_data+1504, rs1_data+1504)
  TEST_AVG_VV_OP( 193,  vasubu.vv, 0, rd_data_vv+6144, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 194,  vasubu.vv, 1, rd_data_vv+6176, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 195,  vasubu.vv, 2, rd_data_vv+6208, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 196,  vasubu.vv, 3, rd_data_vv+6240, rs2_data+1536, rs1_data+1536)
  TEST_AVG_VV_OP( 197,  vasubu.vv, 0, rd_data_vv+6272, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 198,  vasubu.vv, 1, rd_data_vv+6304, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 199,  vasubu.vv, 2, rd_data_vv+6336, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 200,  vasubu.vv, 3, rd_data_vv+6368, rs2_data+1568, rs1_data+1568)
  TEST_AVG_VV_OP( 201,  vasubu.vv, 0, rd_data_vv+6400, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 202,  vasubu.vv, 1, rd_data_vv+6432, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 203,  vasubu.vv, 2, rd_data_vv+6464, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 204,  vasubu.vv, 3, rd_data_vv+6496, rs2_data+1600, rs1_data+1600)
  TEST_AVG_VV_OP( 205,  vasubu.vv, 0, rd_data_vv+6528, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 206,  vasubu.vv, 1, rd_data_vv+6560, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 207,  vasubu.vv, 2, rd_data_vv+6592, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 208,  vasubu.vv, 3, rd_data_vv+6624, rs2_data+1632, rs1_data+1632)
  TEST_AVG_VV_OP( 209,  vasubu.vv, 0, rd_data_vv+6656, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 210,  vasubu.vv, 1, rd_data_vv+6688, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 211,  vasubu.vv, 2, rd_data_vv+6720, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 212,  vasubu.vv, 3, rd_data_vv+6752, rs2_data+1664, rs1_data+1664)
  TEST_AVG_VV_OP( 213,  vasubu.vv, 0, rd_data_vv+6784, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 214,  vasubu.vv, 1, rd_data_vv+6816, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 215,  vasubu.vv, 2, rd_data_vv+6848, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 216,  vasubu.vv, 3, rd_data_vv+6880, rs2_data+1696, rs1_data+1696)
  TEST_AVG_VV_OP( 217,  vasubu.vv, 0, rd_data_vv+6912, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 218,  vasubu.vv, 1, rd_data_vv+6944, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 219,  vasubu.vv, 2, rd_data_vv+6976, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 220,  vasubu.vv, 3, rd_data_vv+7008, rs2_data+1728, rs1_data+1728)
  TEST_AVG_VV_OP( 221,  vasubu.vv, 0, rd_data_vv+7040, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 222,  vasubu.vv, 1, rd_data_vv+7072, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 223,  vasubu.vv, 2, rd_data_vv+7104, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 224,  vasubu.vv, 3, rd_data_vv+7136, rs2_data+1760, rs1_data+1760)
  TEST_AVG_VV_OP( 225,  vasubu.vv, 0, rd_data_vv+7168, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 226,  vasubu.vv, 1, rd_data_vv+7200, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 227,  vasubu.vv, 2, rd_data_vv+7232, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 228,  vasubu.vv, 3, rd_data_vv+7264, rs2_data+1792, rs1_data+1792)
  TEST_AVG_VV_OP( 229,  vasubu.vv, 0, rd_data_vv+7296, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 230,  vasubu.vv, 1, rd_data_vv+7328, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 231,  vasubu.vv, 2, rd_data_vv+7360, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 232,  vasubu.vv, 3, rd_data_vv+7392, rs2_data+1824, rs1_data+1824)
  TEST_AVG_VV_OP( 233,  vasubu.vv, 0, rd_data_vv+7424, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 234,  vasubu.vv, 1, rd_data_vv+7456, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 235,  vasubu.vv, 2, rd_data_vv+7488, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 236,  vasubu.vv, 3, rd_data_vv+7520, rs2_data+1856, rs1_data+1856)
  TEST_AVG_VV_OP( 237,  vasubu.vv, 0, rd_data_vv+7552, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 238,  vasubu.vv, 1, rd_data_vv+7584, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 239,  vasubu.vv, 2, rd_data_vv+7616, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 240,  vasubu.vv, 3, rd_data_vv+7648, rs2_data+1888, rs1_data+1888)
  TEST_AVG_VV_OP( 241,  vasubu.vv, 0, rd_data_vv+7680, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 242,  vasubu.vv, 1, rd_data_vv+7712, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 243,  vasubu.vv, 2, rd_data_vv+7744, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 244,  vasubu.vv, 3, rd_data_vv+7776, rs2_data+1920, rs1_data+1920)
  TEST_AVG_VV_OP( 245,  vasubu.vv, 0, rd_data_vv+7808, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 246,  vasubu.vv, 1, rd_data_vv+7840, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 247,  vasubu.vv, 2, rd_data_vv+7872, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 248,  vasubu.vv, 3, rd_data_vv+7904, rs2_data+1952, rs1_data+1952)
  TEST_AVG_VV_OP( 249,  vasubu.vv, 0, rd_data_vv+7936, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 250,  vasubu.vv, 1, rd_data_vv+7968, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 251,  vasubu.vv, 2, rd_data_vv+8000, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 252,  vasubu.vv, 3, rd_data_vv+8032, rs2_data+1984, rs1_data+1984)
  TEST_AVG_VV_OP( 253,  vasubu.vv, 0, rd_data_vv+8064, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 254,  vasubu.vv, 1, rd_data_vv+8096, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 255,  vasubu.vv, 2, rd_data_vv+8128, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 256,  vasubu.vv, 3, rd_data_vv+8160, rs2_data+2016, rs1_data+2016)
  TEST_AVG_VV_OP( 257,  vasubu.vv, 0, rd_data_vv+8192, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 258,  vasubu.vv, 1, rd_data_vv+8224, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 259,  vasubu.vv, 2, rd_data_vv+8256, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 260,  vasubu.vv, 3, rd_data_vv+8288, rs2_data+2048, rs1_data+2048)
  TEST_AVG_VV_OP( 261,  vasubu.vv, 0, rd_data_vv+8320, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 262,  vasubu.vv, 1, rd_data_vv+8352, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 263,  vasubu.vv, 2, rd_data_vv+8384, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 264,  vasubu.vv, 3, rd_data_vv+8416, rs2_data+2080, rs1_data+2080)
  TEST_AVG_VV_OP( 265,  vasubu.vv, 0, rd_data_vv+8448, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 266,  vasubu.vv, 1, rd_data_vv+8480, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 267,  vasubu.vv, 2, rd_data_vv+8512, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 268,  vasubu.vv, 3, rd_data_vv+8544, rs2_data+2112, rs1_data+2112)
  TEST_AVG_VV_OP( 269,  vasubu.vv, 0, rd_data_vv+8576, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 270,  vasubu.vv, 1, rd_data_vv+8608, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 271,  vasubu.vv, 2, rd_data_vv+8640, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP( 272,  vasubu.vv, 3, rd_data_vv+8672, rs2_data+2144, rs1_data+2144)
  TEST_AVG_VV_OP_rd1( 273,  vasubu.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 274,  vasubu.vv, 0, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 275,  vasubu.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 276,  vasubu.vv, 1, rd_data_vv+32, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 277,  vasubu.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 278,  vasubu.vv, 2, rd_data_vv+64, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd1( 279,  vasubu.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_1_2( 280,  vasubu.vv, 3, rd_data_vv+96, rs2_data+0, rs1_data+0)
  TEST_AVG_VV_OP_rd2( 281,  vasubu.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 282,  vasubu.vv, 0, rd_data_vv+128, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 283,  vasubu.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 284,  vasubu.vv, 1, rd_data_vv+160, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 285,  vasubu.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 286,  vasubu.vv, 2, rd_data_vv+192, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd2( 287,  vasubu.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_1_3( 288,  vasubu.vv, 3, rd_data_vv+224, rs2_data+32, rs1_data+32)
  TEST_AVG_VV_OP_rd3( 289,  vasubu.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 290,  vasubu.vv, 0, rd_data_vv+256, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 291,  vasubu.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 292,  vasubu.vv, 1, rd_data_vv+288, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 293,  vasubu.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 294,  vasubu.vv, 2, rd_data_vv+320, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd3( 295,  vasubu.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_1_4( 296,  vasubu.vv, 3, rd_data_vv+352, rs2_data+64, rs1_data+64)
  TEST_AVG_VV_OP_rd4( 297,  vasubu.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 298,  vasubu.vv, 0, rd_data_vv+384, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 299,  vasubu.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 300,  vasubu.vv, 1, rd_data_vv+416, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 301,  vasubu.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 302,  vasubu.vv, 2, rd_data_vv+448, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd4( 303,  vasubu.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_1_5( 304,  vasubu.vv, 3, rd_data_vv+480, rs2_data+96, rs1_data+96)
  TEST_AVG_VV_OP_rd5( 305,  vasubu.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 306,  vasubu.vv, 0, rd_data_vv+512, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 307,  vasubu.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 308,  vasubu.vv, 1, rd_data_vv+544, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 309,  vasubu.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 310,  vasubu.vv, 2, rd_data_vv+576, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd5( 311,  vasubu.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_1_6( 312,  vasubu.vv, 3, rd_data_vv+608, rs2_data+128, rs1_data+128)
  TEST_AVG_VV_OP_rd6( 313,  vasubu.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 314,  vasubu.vv, 0, rd_data_vv+640, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 315,  vasubu.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 316,  vasubu.vv, 1, rd_data_vv+672, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 317,  vasubu.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 318,  vasubu.vv, 2, rd_data_vv+704, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd6( 319,  vasubu.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_1_7( 320,  vasubu.vv, 3, rd_data_vv+736, rs2_data+160, rs1_data+160)
  TEST_AVG_VV_OP_rd7( 321,  vasubu.vv, 0, rd_data_vv+768, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 322,  vasubu.vv, 1, rd_data_vv+800, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 323,  vasubu.vv, 2, rd_data_vv+832, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_rd7( 324,  vasubu.vv, 3, rd_data_vv+864, rs2_data+192, rs1_data+192)
  TEST_AVG_VV_OP_1_9( 325,  vasubu.vv, 0, rd_data_vv+896, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 326,  vasubu.vv, 1, rd_data_vv+928, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 327,  vasubu.vv, 2, rd_data_vv+960, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_1_9( 328,  vasubu.vv, 3, rd_data_vv+992, rs2_data+224, rs1_data+224)
  TEST_AVG_VV_OP_rd9( 329,  vasubu.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 330,  vasubu.vv, 0, rd_data_vv+1024, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 331,  vasubu.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 332,  vasubu.vv, 1, rd_data_vv+1056, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 333,  vasubu.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 334,  vasubu.vv, 2, rd_data_vv+1088, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd9( 335,  vasubu.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_1_10( 336,  vasubu.vv, 3, rd_data_vv+1120, rs2_data+256, rs1_data+256)
  TEST_AVG_VV_OP_rd10( 337,  vasubu.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 338,  vasubu.vv, 0, rd_data_vv+1152, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 339,  vasubu.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 340,  vasubu.vv, 1, rd_data_vv+1184, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 341,  vasubu.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 342,  vasubu.vv, 2, rd_data_vv+1216, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd10( 343,  vasubu.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_1_11( 344,  vasubu.vv, 3, rd_data_vv+1248, rs2_data+288, rs1_data+288)
  TEST_AVG_VV_OP_rd11( 345,  vasubu.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 346,  vasubu.vv, 0, rd_data_vv+1280, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 347,  vasubu.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 348,  vasubu.vv, 1, rd_data_vv+1312, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 349,  vasubu.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 350,  vasubu.vv, 2, rd_data_vv+1344, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd11( 351,  vasubu.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_1_12( 352,  vasubu.vv, 3, rd_data_vv+1376, rs2_data+320, rs1_data+320)
  TEST_AVG_VV_OP_rd12( 353,  vasubu.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 354,  vasubu.vv, 0, rd_data_vv+1408, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 355,  vasubu.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 356,  vasubu.vv, 1, rd_data_vv+1440, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 357,  vasubu.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 358,  vasubu.vv, 2, rd_data_vv+1472, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd12( 359,  vasubu.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_1_13( 360,  vasubu.vv, 3, rd_data_vv+1504, rs2_data+352, rs1_data+352)
  TEST_AVG_VV_OP_rd13( 361,  vasubu.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 362,  vasubu.vv, 0, rd_data_vv+1536, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 363,  vasubu.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 364,  vasubu.vv, 1, rd_data_vv+1568, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 365,  vasubu.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 366,  vasubu.vv, 2, rd_data_vv+1600, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd13( 367,  vasubu.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_1_14( 368,  vasubu.vv, 3, rd_data_vv+1632, rs2_data+384, rs1_data+384)
  TEST_AVG_VV_OP_rd14( 369,  vasubu.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 370,  vasubu.vv, 0, rd_data_vv+1664, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 371,  vasubu.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 372,  vasubu.vv, 1, rd_data_vv+1696, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 373,  vasubu.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 374,  vasubu.vv, 2, rd_data_vv+1728, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd14( 375,  vasubu.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_1_15( 376,  vasubu.vv, 3, rd_data_vv+1760, rs2_data+416, rs1_data+416)
  TEST_AVG_VV_OP_rd15( 377,  vasubu.vv, 0, rd_data_vv+1792, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 378,  vasubu.vv, 1, rd_data_vv+1824, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 379,  vasubu.vv, 2, rd_data_vv+1856, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_rd15( 380,  vasubu.vv, 3, rd_data_vv+1888, rs2_data+448, rs1_data+448)
  TEST_AVG_VV_OP_1_17( 381,  vasubu.vv, 0, rd_data_vv+1920, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 382,  vasubu.vv, 1, rd_data_vv+1952, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 383,  vasubu.vv, 2, rd_data_vv+1984, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_1_17( 384,  vasubu.vv, 3, rd_data_vv+2016, rs2_data+480, rs1_data+480)
  TEST_AVG_VV_OP_rd17( 385,  vasubu.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 386,  vasubu.vv, 0, rd_data_vv+2048, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 387,  vasubu.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 388,  vasubu.vv, 1, rd_data_vv+2080, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 389,  vasubu.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 390,  vasubu.vv, 2, rd_data_vv+2112, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd17( 391,  vasubu.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_1_18( 392,  vasubu.vv, 3, rd_data_vv+2144, rs2_data+512, rs1_data+512)
  TEST_AVG_VV_OP_rd18( 393,  vasubu.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 394,  vasubu.vv, 0, rd_data_vv+2176, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 395,  vasubu.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 396,  vasubu.vv, 1, rd_data_vv+2208, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 397,  vasubu.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 398,  vasubu.vv, 2, rd_data_vv+2240, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd18( 399,  vasubu.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_1_19( 400,  vasubu.vv, 3, rd_data_vv+2272, rs2_data+544, rs1_data+544)
  TEST_AVG_VV_OP_rd19( 401,  vasubu.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 402,  vasubu.vv, 0, rd_data_vv+2304, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 403,  vasubu.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 404,  vasubu.vv, 1, rd_data_vv+2336, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 405,  vasubu.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 406,  vasubu.vv, 2, rd_data_vv+2368, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd19( 407,  vasubu.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_1_20( 408,  vasubu.vv, 3, rd_data_vv+2400, rs2_data+576, rs1_data+576)
  TEST_AVG_VV_OP_rd20( 409,  vasubu.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 410,  vasubu.vv, 0, rd_data_vv+2432, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 411,  vasubu.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 412,  vasubu.vv, 1, rd_data_vv+2464, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 413,  vasubu.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 414,  vasubu.vv, 2, rd_data_vv+2496, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd20( 415,  vasubu.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_1_21( 416,  vasubu.vv, 3, rd_data_vv+2528, rs2_data+608, rs1_data+608)
  TEST_AVG_VV_OP_rd21( 417,  vasubu.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 418,  vasubu.vv, 0, rd_data_vv+2560, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 419,  vasubu.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 420,  vasubu.vv, 1, rd_data_vv+2592, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 421,  vasubu.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 422,  vasubu.vv, 2, rd_data_vv+2624, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd21( 423,  vasubu.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_1_22( 424,  vasubu.vv, 3, rd_data_vv+2656, rs2_data+640, rs1_data+640)
  TEST_AVG_VV_OP_rd22( 425,  vasubu.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 426,  vasubu.vv, 0, rd_data_vv+2688, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 427,  vasubu.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 428,  vasubu.vv, 1, rd_data_vv+2720, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 429,  vasubu.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 430,  vasubu.vv, 2, rd_data_vv+2752, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd22( 431,  vasubu.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_1_23( 432,  vasubu.vv, 3, rd_data_vv+2784, rs2_data+672, rs1_data+672)
  TEST_AVG_VV_OP_rd23( 433,  vasubu.vv, 0, rd_data_vv+2816, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 434,  vasubu.vv, 1, rd_data_vv+2848, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 435,  vasubu.vv, 2, rd_data_vv+2880, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_rd23( 436,  vasubu.vv, 3, rd_data_vv+2912, rs2_data+704, rs1_data+704)
  TEST_AVG_VV_OP_1_25( 437,  vasubu.vv, 0, rd_data_vv+2944, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 438,  vasubu.vv, 1, rd_data_vv+2976, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 439,  vasubu.vv, 2, rd_data_vv+3008, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_1_25( 440,  vasubu.vv, 3, rd_data_vv+3040, rs2_data+736, rs1_data+736)
  TEST_AVG_VV_OP_rd25( 441,  vasubu.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 442,  vasubu.vv, 0, rd_data_vv+3072, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 443,  vasubu.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 444,  vasubu.vv, 1, rd_data_vv+3104, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 445,  vasubu.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 446,  vasubu.vv, 2, rd_data_vv+3136, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd25( 447,  vasubu.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_1_26( 448,  vasubu.vv, 3, rd_data_vv+3168, rs2_data+768, rs1_data+768)
  TEST_AVG_VV_OP_rd26( 449,  vasubu.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 450,  vasubu.vv, 0, rd_data_vv+3200, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 451,  vasubu.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 452,  vasubu.vv, 1, rd_data_vv+3232, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 453,  vasubu.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 454,  vasubu.vv, 2, rd_data_vv+3264, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd26( 455,  vasubu.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_1_27( 456,  vasubu.vv, 3, rd_data_vv+3296, rs2_data+800, rs1_data+800)
  TEST_AVG_VV_OP_rd27( 457,  vasubu.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 458,  vasubu.vv, 0, rd_data_vv+3328, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 459,  vasubu.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 460,  vasubu.vv, 1, rd_data_vv+3360, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 461,  vasubu.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 462,  vasubu.vv, 2, rd_data_vv+3392, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd27( 463,  vasubu.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_1_28( 464,  vasubu.vv, 3, rd_data_vv+3424, rs2_data+832, rs1_data+832)
  TEST_AVG_VV_OP_rd28( 465,  vasubu.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 466,  vasubu.vv, 0, rd_data_vv+3456, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 467,  vasubu.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 468,  vasubu.vv, 1, rd_data_vv+3488, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 469,  vasubu.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 470,  vasubu.vv, 2, rd_data_vv+3520, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd28( 471,  vasubu.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_1_29( 472,  vasubu.vv, 3, rd_data_vv+3552, rs2_data+864, rs1_data+864)
  TEST_AVG_VV_OP_rd29( 473,  vasubu.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 474,  vasubu.vv, 0, rd_data_vv+3584, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 475,  vasubu.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 476,  vasubu.vv, 1, rd_data_vv+3616, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 477,  vasubu.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 478,  vasubu.vv, 2, rd_data_vv+3648, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd29( 479,  vasubu.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_1_30( 480,  vasubu.vv, 3, rd_data_vv+3680, rs2_data+896, rs1_data+896)
  TEST_AVG_VV_OP_rd30( 481,  vasubu.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 482,  vasubu.vv, 0, rd_data_vv+3712, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 483,  vasubu.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 484,  vasubu.vv, 1, rd_data_vv+3744, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 485,  vasubu.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 486,  vasubu.vv, 2, rd_data_vv+3776, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd30( 487,  vasubu.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_1_31( 488,  vasubu.vv, 3, rd_data_vv+3808, rs2_data+928, rs1_data+928)
  TEST_AVG_VV_OP_rd31( 489,  vasubu.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 490,  vasubu.vv, 0, rd_data_vv+3840, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 491,  vasubu.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 492,  vasubu.vv, 1, rd_data_vv+3872, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 493,  vasubu.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 494,  vasubu.vv, 2, rd_data_vv+3904, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd31( 495,  vasubu.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_1_2( 496,  vasubu.vv, 3, rd_data_vv+3936, rs2_data+960, rs1_data+960)
  TEST_AVG_VV_OP_rd1( 497,  vasubu.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 498,  vasubu.vv, 0, rd_data_vv+3968, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 499,  vasubu.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 500,  vasubu.vv, 1, rd_data_vv+4000, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 501,  vasubu.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 502,  vasubu.vv, 2, rd_data_vv+4032, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_rd1( 503,  vasubu.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  TEST_AVG_VV_OP_1_3( 504,  vasubu.vv, 3, rd_data_vv+4064, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_AVG_VX_OP( 505,  vasubu.vx, 0,rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 506,  vasubu.vx, 1,rd_data_vx+32, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 507,  vasubu.vx, 2,rd_data_vx+64, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 508,  vasubu.vx, 3,rd_data_vx+96, rs2_data+0, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 509,  vasubu.vx, 0,rd_data_vx+128, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 510,  vasubu.vx, 1,rd_data_vx+160, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 511,  vasubu.vx, 2,rd_data_vx+192, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 512,  vasubu.vx, 3,rd_data_vx+224, rs2_data+32, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 513,  vasubu.vx, 0,rd_data_vx+256, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 514,  vasubu.vx, 1,rd_data_vx+288, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 515,  vasubu.vx, 2,rd_data_vx+320, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 516,  vasubu.vx, 3,rd_data_vx+352, rs2_data+64, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 517,  vasubu.vx, 0,rd_data_vx+384, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 518,  vasubu.vx, 1,rd_data_vx+416, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 519,  vasubu.vx, 2,rd_data_vx+448, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 520,  vasubu.vx, 3,rd_data_vx+480, rs2_data+96, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 521,  vasubu.vx, 0,rd_data_vx+512, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 522,  vasubu.vx, 1,rd_data_vx+544, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 523,  vasubu.vx, 2,rd_data_vx+576, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 524,  vasubu.vx, 3,rd_data_vx+608, rs2_data+128, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 525,  vasubu.vx, 0,rd_data_vx+640, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 526,  vasubu.vx, 1,rd_data_vx+672, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 527,  vasubu.vx, 2,rd_data_vx+704, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 528,  vasubu.vx, 3,rd_data_vx+736, rs2_data+160, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 529,  vasubu.vx, 0,rd_data_vx+768, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 530,  vasubu.vx, 1,rd_data_vx+800, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 531,  vasubu.vx, 2,rd_data_vx+832, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 532,  vasubu.vx, 3,rd_data_vx+864, rs2_data+192, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 533,  vasubu.vx, 0,rd_data_vx+896, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 534,  vasubu.vx, 1,rd_data_vx+928, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 535,  vasubu.vx, 2,rd_data_vx+960, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 536,  vasubu.vx, 3,rd_data_vx+992, rs2_data+224, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 537,  vasubu.vx, 0,rd_data_vx+1024, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 538,  vasubu.vx, 1,rd_data_vx+1056, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 539,  vasubu.vx, 2,rd_data_vx+1088, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 540,  vasubu.vx, 3,rd_data_vx+1120, rs2_data+256, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 541,  vasubu.vx, 0,rd_data_vx+1152, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 542,  vasubu.vx, 1,rd_data_vx+1184, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 543,  vasubu.vx, 2,rd_data_vx+1216, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 544,  vasubu.vx, 3,rd_data_vx+1248, rs2_data+288, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 545,  vasubu.vx, 0,rd_data_vx+1280, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 546,  vasubu.vx, 1,rd_data_vx+1312, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 547,  vasubu.vx, 2,rd_data_vx+1344, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 548,  vasubu.vx, 3,rd_data_vx+1376, rs2_data+320, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 549,  vasubu.vx, 0,rd_data_vx+1408, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 550,  vasubu.vx, 1,rd_data_vx+1440, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 551,  vasubu.vx, 2,rd_data_vx+1472, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 552,  vasubu.vx, 3,rd_data_vx+1504, rs2_data+352, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 553,  vasubu.vx, 0,rd_data_vx+1536, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 554,  vasubu.vx, 1,rd_data_vx+1568, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 555,  vasubu.vx, 2,rd_data_vx+1600, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 556,  vasubu.vx, 3,rd_data_vx+1632, rs2_data+384, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 557,  vasubu.vx, 0,rd_data_vx+1664, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 558,  vasubu.vx, 1,rd_data_vx+1696, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 559,  vasubu.vx, 2,rd_data_vx+1728, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 560,  vasubu.vx, 3,rd_data_vx+1760, rs2_data+416, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 561,  vasubu.vx, 0,rd_data_vx+1792, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 562,  vasubu.vx, 1,rd_data_vx+1824, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 563,  vasubu.vx, 2,rd_data_vx+1856, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 564,  vasubu.vx, 3,rd_data_vx+1888, rs2_data+448, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 565,  vasubu.vx, 0,rd_data_vx+1920, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 566,  vasubu.vx, 1,rd_data_vx+1952, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 567,  vasubu.vx, 2,rd_data_vx+1984, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 568,  vasubu.vx, 3,rd_data_vx+2016, rs2_data+480, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 569,  vasubu.vx, 0,rd_data_vx+2048, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 570,  vasubu.vx, 1,rd_data_vx+2080, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 571,  vasubu.vx, 2,rd_data_vx+2112, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 572,  vasubu.vx, 3,rd_data_vx+2144, rs2_data+512, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 573,  vasubu.vx, 0,rd_data_vx+2176, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 574,  vasubu.vx, 1,rd_data_vx+2208, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 575,  vasubu.vx, 2,rd_data_vx+2240, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 576,  vasubu.vx, 3,rd_data_vx+2272, rs2_data+544, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 577,  vasubu.vx, 0,rd_data_vx+2304, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 578,  vasubu.vx, 1,rd_data_vx+2336, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 579,  vasubu.vx, 2,rd_data_vx+2368, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 580,  vasubu.vx, 3,rd_data_vx+2400, rs2_data+576, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 581,  vasubu.vx, 0,rd_data_vx+2432, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 582,  vasubu.vx, 1,rd_data_vx+2464, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 583,  vasubu.vx, 2,rd_data_vx+2496, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 584,  vasubu.vx, 3,rd_data_vx+2528, rs2_data+608, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 585,  vasubu.vx, 0,rd_data_vx+2560, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 586,  vasubu.vx, 1,rd_data_vx+2592, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 587,  vasubu.vx, 2,rd_data_vx+2624, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 588,  vasubu.vx, 3,rd_data_vx+2656, rs2_data+640, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 589,  vasubu.vx, 0,rd_data_vx+2688, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 590,  vasubu.vx, 1,rd_data_vx+2720, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 591,  vasubu.vx, 2,rd_data_vx+2752, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 592,  vasubu.vx, 3,rd_data_vx+2784, rs2_data+672, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 593,  vasubu.vx, 0,rd_data_vx+2816, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 594,  vasubu.vx, 1,rd_data_vx+2848, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 595,  vasubu.vx, 2,rd_data_vx+2880, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 596,  vasubu.vx, 3,rd_data_vx+2912, rs2_data+704, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 597,  vasubu.vx, 0,rd_data_vx+2944, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 598,  vasubu.vx, 1,rd_data_vx+2976, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 599,  vasubu.vx, 2,rd_data_vx+3008, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 600,  vasubu.vx, 3,rd_data_vx+3040, rs2_data+736, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 601,  vasubu.vx, 0,rd_data_vx+3072, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 602,  vasubu.vx, 1,rd_data_vx+3104, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 603,  vasubu.vx, 2,rd_data_vx+3136, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 604,  vasubu.vx, 3,rd_data_vx+3168, rs2_data+768, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 605,  vasubu.vx, 0,rd_data_vx+3200, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 606,  vasubu.vx, 1,rd_data_vx+3232, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 607,  vasubu.vx, 2,rd_data_vx+3264, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 608,  vasubu.vx, 3,rd_data_vx+3296, rs2_data+800, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 609,  vasubu.vx, 0,rd_data_vx+3328, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 610,  vasubu.vx, 1,rd_data_vx+3360, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 611,  vasubu.vx, 2,rd_data_vx+3392, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 612,  vasubu.vx, 3,rd_data_vx+3424, rs2_data+832, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 613,  vasubu.vx, 0,rd_data_vx+3456, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 614,  vasubu.vx, 1,rd_data_vx+3488, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 615,  vasubu.vx, 2,rd_data_vx+3520, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 616,  vasubu.vx, 3,rd_data_vx+3552, rs2_data+864, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 617,  vasubu.vx, 0,rd_data_vx+3584, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 618,  vasubu.vx, 1,rd_data_vx+3616, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 619,  vasubu.vx, 2,rd_data_vx+3648, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 620,  vasubu.vx, 3,rd_data_vx+3680, rs2_data+896, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 621,  vasubu.vx, 0,rd_data_vx+3712, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 622,  vasubu.vx, 1,rd_data_vx+3744, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 623,  vasubu.vx, 2,rd_data_vx+3776, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 624,  vasubu.vx, 3,rd_data_vx+3808, rs2_data+928, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 625,  vasubu.vx, 0,rd_data_vx+3840, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 626,  vasubu.vx, 1,rd_data_vx+3872, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 627,  vasubu.vx, 2,rd_data_vx+3904, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 628,  vasubu.vx, 3,rd_data_vx+3936, rs2_data+960, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 629,  vasubu.vx, 0,rd_data_vx+3968, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 630,  vasubu.vx, 1,rd_data_vx+4000, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 631,  vasubu.vx, 2,rd_data_vx+4032, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 632,  vasubu.vx, 3,rd_data_vx+4064, rs2_data+992, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 633,  vasubu.vx, 0,rd_data_vx+4096, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 634,  vasubu.vx, 1,rd_data_vx+4128, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 635,  vasubu.vx, 2,rd_data_vx+4160, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 636,  vasubu.vx, 3,rd_data_vx+4192, rs2_data+1024, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 637,  vasubu.vx, 0,rd_data_vx+4224, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 638,  vasubu.vx, 1,rd_data_vx+4256, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 639,  vasubu.vx, 2,rd_data_vx+4288, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 640,  vasubu.vx, 3,rd_data_vx+4320, rs2_data+1056, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 641,  vasubu.vx, 0,rd_data_vx+4352, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 642,  vasubu.vx, 1,rd_data_vx+4384, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 643,  vasubu.vx, 2,rd_data_vx+4416, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 644,  vasubu.vx, 3,rd_data_vx+4448, rs2_data+1088, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 645,  vasubu.vx, 0,rd_data_vx+4480, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 646,  vasubu.vx, 1,rd_data_vx+4512, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 647,  vasubu.vx, 2,rd_data_vx+4544, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 648,  vasubu.vx, 3,rd_data_vx+4576, rs2_data+1120, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 649,  vasubu.vx, 0,rd_data_vx+4608, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 650,  vasubu.vx, 1,rd_data_vx+4640, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 651,  vasubu.vx, 2,rd_data_vx+4672, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 652,  vasubu.vx, 3,rd_data_vx+4704, rs2_data+1152, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 653,  vasubu.vx, 0,rd_data_vx+4736, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 654,  vasubu.vx, 1,rd_data_vx+4768, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 655,  vasubu.vx, 2,rd_data_vx+4800, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 656,  vasubu.vx, 3,rd_data_vx+4832, rs2_data+1184, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 657,  vasubu.vx, 0,rd_data_vx+4864, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 658,  vasubu.vx, 1,rd_data_vx+4896, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 659,  vasubu.vx, 2,rd_data_vx+4928, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 660,  vasubu.vx, 3,rd_data_vx+4960, rs2_data+1216, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 661,  vasubu.vx, 0,rd_data_vx+4992, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 662,  vasubu.vx, 1,rd_data_vx+5024, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 663,  vasubu.vx, 2,rd_data_vx+5056, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 664,  vasubu.vx, 3,rd_data_vx+5088, rs2_data+1248, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 665,  vasubu.vx, 0,rd_data_vx+5120, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 666,  vasubu.vx, 1,rd_data_vx+5152, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 667,  vasubu.vx, 2,rd_data_vx+5184, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 668,  vasubu.vx, 3,rd_data_vx+5216, rs2_data+1280, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 669,  vasubu.vx, 0,rd_data_vx+5248, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 670,  vasubu.vx, 1,rd_data_vx+5280, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 671,  vasubu.vx, 2,rd_data_vx+5312, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 672,  vasubu.vx, 3,rd_data_vx+5344, rs2_data+1312, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 673,  vasubu.vx, 0,rd_data_vx+5376, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 674,  vasubu.vx, 1,rd_data_vx+5408, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 675,  vasubu.vx, 2,rd_data_vx+5440, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 676,  vasubu.vx, 3,rd_data_vx+5472, rs2_data+1344, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 677,  vasubu.vx, 0,rd_data_vx+5504, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 678,  vasubu.vx, 1,rd_data_vx+5536, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 679,  vasubu.vx, 2,rd_data_vx+5568, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 680,  vasubu.vx, 3,rd_data_vx+5600, rs2_data+1376, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 681,  vasubu.vx, 0,rd_data_vx+5632, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 682,  vasubu.vx, 1,rd_data_vx+5664, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 683,  vasubu.vx, 2,rd_data_vx+5696, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 684,  vasubu.vx, 3,rd_data_vx+5728, rs2_data+1408, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 685,  vasubu.vx, 0,rd_data_vx+5760, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 686,  vasubu.vx, 1,rd_data_vx+5792, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 687,  vasubu.vx, 2,rd_data_vx+5824, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 688,  vasubu.vx, 3,rd_data_vx+5856, rs2_data+1440, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 689,  vasubu.vx, 0,rd_data_vx+5888, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 690,  vasubu.vx, 1,rd_data_vx+5920, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 691,  vasubu.vx, 2,rd_data_vx+5952, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 692,  vasubu.vx, 3,rd_data_vx+5984, rs2_data+1472, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 693,  vasubu.vx, 0,rd_data_vx+6016, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 694,  vasubu.vx, 1,rd_data_vx+6048, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 695,  vasubu.vx, 2,rd_data_vx+6080, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 696,  vasubu.vx, 3,rd_data_vx+6112, rs2_data+1504, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 697,  vasubu.vx, 0,rd_data_vx+6144, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 698,  vasubu.vx, 1,rd_data_vx+6176, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 699,  vasubu.vx, 2,rd_data_vx+6208, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 700,  vasubu.vx, 3,rd_data_vx+6240, rs2_data+1536, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 701,  vasubu.vx, 0,rd_data_vx+6272, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 702,  vasubu.vx, 1,rd_data_vx+6304, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 703,  vasubu.vx, 2,rd_data_vx+6336, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 704,  vasubu.vx, 3,rd_data_vx+6368, rs2_data+1568, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 705,  vasubu.vx, 0,rd_data_vx+6400, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 706,  vasubu.vx, 1,rd_data_vx+6432, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 707,  vasubu.vx, 2,rd_data_vx+6464, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 708,  vasubu.vx, 3,rd_data_vx+6496, rs2_data+1600, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 709,  vasubu.vx, 0,rd_data_vx+6528, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 710,  vasubu.vx, 1,rd_data_vx+6560, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 711,  vasubu.vx, 2,rd_data_vx+6592, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 712,  vasubu.vx, 3,rd_data_vx+6624, rs2_data+1632, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 713,  vasubu.vx, 0,rd_data_vx+6656, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 714,  vasubu.vx, 1,rd_data_vx+6688, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 715,  vasubu.vx, 2,rd_data_vx+6720, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 716,  vasubu.vx, 3,rd_data_vx+6752, rs2_data+1664, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 717,  vasubu.vx, 0,rd_data_vx+6784, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 718,  vasubu.vx, 1,rd_data_vx+6816, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 719,  vasubu.vx, 2,rd_data_vx+6848, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 720,  vasubu.vx, 3,rd_data_vx+6880, rs2_data+1696, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 721,  vasubu.vx, 0,rd_data_vx+6912, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 722,  vasubu.vx, 1,rd_data_vx+6944, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 723,  vasubu.vx, 2,rd_data_vx+6976, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 724,  vasubu.vx, 3,rd_data_vx+7008, rs2_data+1728, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 725,  vasubu.vx, 0,rd_data_vx+7040, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 726,  vasubu.vx, 1,rd_data_vx+7072, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 727,  vasubu.vx, 2,rd_data_vx+7104, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 728,  vasubu.vx, 3,rd_data_vx+7136, rs2_data+1760, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 729,  vasubu.vx, 0,rd_data_vx+7168, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 730,  vasubu.vx, 1,rd_data_vx+7200, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 731,  vasubu.vx, 2,rd_data_vx+7232, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 732,  vasubu.vx, 3,rd_data_vx+7264, rs2_data+1792, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 733,  vasubu.vx, 0,rd_data_vx+7296, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 734,  vasubu.vx, 1,rd_data_vx+7328, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 735,  vasubu.vx, 2,rd_data_vx+7360, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 736,  vasubu.vx, 3,rd_data_vx+7392, rs2_data+1824, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 737,  vasubu.vx, 0,rd_data_vx+7424, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 738,  vasubu.vx, 1,rd_data_vx+7456, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 739,  vasubu.vx, 2,rd_data_vx+7488, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 740,  vasubu.vx, 3,rd_data_vx+7520, rs2_data+1856, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 741,  vasubu.vx, 0,rd_data_vx+7552, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 742,  vasubu.vx, 1,rd_data_vx+7584, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 743,  vasubu.vx, 2,rd_data_vx+7616, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 744,  vasubu.vx, 3,rd_data_vx+7648, rs2_data+1888, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 745,  vasubu.vx, 0,rd_data_vx+7680, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 746,  vasubu.vx, 1,rd_data_vx+7712, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 747,  vasubu.vx, 2,rd_data_vx+7744, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 748,  vasubu.vx, 3,rd_data_vx+7776, rs2_data+1920, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 749,  vasubu.vx, 0,rd_data_vx+7808, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 750,  vasubu.vx, 1,rd_data_vx+7840, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 751,  vasubu.vx, 2,rd_data_vx+7872, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 752,  vasubu.vx, 3,rd_data_vx+7904, rs2_data+1952, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 753,  vasubu.vx, 0,rd_data_vx+7936, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 754,  vasubu.vx, 1,rd_data_vx+7968, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 755,  vasubu.vx, 2,rd_data_vx+8000, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 756,  vasubu.vx, 3,rd_data_vx+8032, rs2_data+1984, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 757,  vasubu.vx, 0,rd_data_vx+8064, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 758,  vasubu.vx, 1,rd_data_vx+8096, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 759,  vasubu.vx, 2,rd_data_vx+8128, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 760,  vasubu.vx, 3,rd_data_vx+8160, rs2_data+2016, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 761,  vasubu.vx, 0,rd_data_vx+8192, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 762,  vasubu.vx, 1,rd_data_vx+8224, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 763,  vasubu.vx, 2,rd_data_vx+8256, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 764,  vasubu.vx, 3,rd_data_vx+8288, rs2_data+2048, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 765,  vasubu.vx, 0,rd_data_vx+8320, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 766,  vasubu.vx, 1,rd_data_vx+8352, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 767,  vasubu.vx, 2,rd_data_vx+8384, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 768,  vasubu.vx, 3,rd_data_vx+8416, rs2_data+2080, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 769,  vasubu.vx, 0,rd_data_vx+8448, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 770,  vasubu.vx, 1,rd_data_vx+8480, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 771,  vasubu.vx, 2,rd_data_vx+8512, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 772,  vasubu.vx, 3,rd_data_vx+8544, rs2_data+2112, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 773,  vasubu.vx, 0,rd_data_vx+8576, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 774,  vasubu.vx, 1,rd_data_vx+8608, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 775,  vasubu.vx, 2,rd_data_vx+8640, rs2_data+2144, 0xfffffffffffffffe)
  TEST_AVG_VX_OP( 776,  vasubu.vx, 3,rd_data_vx+8672, rs2_data+2144, 0xfffffffffffffffe)
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a80
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a80
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeee
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeee
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5554fad4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5554fad4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5554fad4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5554fad4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a80
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a80
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a7f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a7f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111110
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111110
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666666a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666666a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe6666669
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe6666669
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe666c0e9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccd0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe666c0e9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccd0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe666c0e9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe666c0e9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccd274f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccd274f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccd274f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccd274f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8000b505
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8000b505
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3332d8b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3332d8b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555559
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555559
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd555afd8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd555afd8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd555afd8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd555afd8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0888888a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0888888a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x08888889
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x08888889
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
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a80
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a80
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a80
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a80
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111112
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111112
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666666a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666666a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666666a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666666a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe666c0ea
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccd0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe666c0ea
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccd0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe666c0e9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccd0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe666c0e9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccd0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccd2750
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccd0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccd2750
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccd0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccd274f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccd274f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777779
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777779
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaa5029
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3332d8b2
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaa5029
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3332d8b2
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaa5029
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaa5029
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaa5029
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaa5028
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaa5029
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3332d8b1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa582
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa582
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd555afd7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x08888889
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x08888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x08888888
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x08888889
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xddddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xddddddde
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555554
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xdddddddd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555554
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xdddddddd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd5555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xdddddddd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xdddddddd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xdddddddd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xdddddddd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a7f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a7f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a7f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a7f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaa8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaa8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333330
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaa8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333330
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaa8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11111111
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11111110
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11111110
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11111111
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11111110
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11111110
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11111110
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11111110
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6666669
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666c0e9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6666669
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666c0e8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6666669
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666c0e8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6666669
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666c0e9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccccccf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccd274f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccccccf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccd274e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccccccf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccd274e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccccccf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccd274f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccccccf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7777778
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xccccccce
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7777778
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xccccccce
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7777777
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccccccf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7777777
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3338db4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3338db4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3338db5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3338db4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3338db4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3338db4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3338db4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a85
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8000b504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa580
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8000b504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa580
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8000b504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa580
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8000b504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa580
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa580
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa580
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a80
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a80
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a80
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a80
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005a81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x19999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeee
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeee
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeee
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeee
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeeeeeeef
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5554fad4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5554fad4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5554fad4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5554fad4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5554fad4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5554fad4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5554fad4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2aaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5554fad4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab052d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a80
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a80
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a80
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a80
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a7f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a7f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a7f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005a7f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333331
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111110
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111110
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111110
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111110
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11111111
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666666a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666666a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666666a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe666666a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe6666669
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe6666669
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe6666669
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe6666669
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe666c0e9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccd0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe666c0e9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccd0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe666c0e9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe666c0e9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccd274f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccd274f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccd274f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccd274f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7777778
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab052c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3338db5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8000b505
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8000b505
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8000b505
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a85
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x8000b505
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa581
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffa580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaa5029
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3332d8b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3332d8b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3332d8b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3332d8b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3332d8b1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e

rd_data_vx:
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff801
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff80
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff800
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff80
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff800
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff81
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff801
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff80001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff80000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff80000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff80001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf8000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf8000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf8000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf8000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000081
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000801
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000081
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000801
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000081
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000801
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000081
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000801
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80008001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80080001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80008001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80080001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80008001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80080001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80008001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80080001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80800001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x88000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80800001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x88000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80800001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x88000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80800001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x88000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a82
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa580
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa580
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd5555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffa57f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333335
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a84
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80005a83
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333335
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb3333333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80005a83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000003
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
    

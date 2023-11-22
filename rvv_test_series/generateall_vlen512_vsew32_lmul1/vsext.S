#----------------------------------------------------------------------------- 
    # vsext.S
    #-----------------------------------------------------------------------------
    #
    # Test vsext instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vsext)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_EXT_OP 
#define TEST_EXT_OP( testnum, inst, result, val1 ) \
    TEST_CASE_LOOP( testnum, v24, result,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle32.v v8, (x7); \
        inst v24, v8, v0.t; \
    )
#define TEST_EXT_OP_rs1_1( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v1, (x7); \
                inst v24, v1, v0.t;  \
            )
#define TEST_EXT_OP_rs1_2( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v2, (x7); \
                inst v24, v2, v0.t;  \
            )
#define TEST_EXT_OP_rs1_3( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v3, (x7); \
                inst v24, v3, v0.t;  \
            )
#define TEST_EXT_OP_rs1_4( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v4, (x7); \
                inst v24, v4, v0.t;  \
            )
#define TEST_EXT_OP_rs1_5( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v5, (x7); \
                inst v24, v5, v0.t;  \
            )
#define TEST_EXT_OP_rs1_6( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v6, (x7); \
                inst v24, v6, v0.t;  \
            )
#define TEST_EXT_OP_rs1_7( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v7, (x7); \
                inst v24, v7, v0.t;  \
            )
#define TEST_EXT_OP_rs1_8( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v24, v8, v0.t;  \
            )
#define TEST_EXT_OP_rs1_9( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v9, (x7); \
                inst v24, v9, v0.t;  \
            )
#define TEST_EXT_OP_rs1_10( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v10, (x7); \
                inst v24, v10, v0.t;  \
            )
#define TEST_EXT_OP_rs1_11( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v11, (x7); \
                inst v24, v11, v0.t;  \
            )
#define TEST_EXT_OP_rs1_12( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v12, (x7); \
                inst v24, v12, v0.t;  \
            )
#define TEST_EXT_OP_rs1_13( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v13, (x7); \
                inst v24, v13, v0.t;  \
            )
#define TEST_EXT_OP_rs1_14( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v14, (x7); \
                inst v24, v14, v0.t;  \
            )
#define TEST_EXT_OP_rs1_15( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v15, (x7); \
                inst v24, v15, v0.t;  \
            )
#define TEST_EXT_OP_rs1_16( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v16, (x7); \
                inst v24, v16, v0.t;  \
            )
#define TEST_EXT_OP_rs1_17( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v17, (x7); \
                inst v24, v17, v0.t;  \
            )
#define TEST_EXT_OP_rs1_18( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v18, (x7); \
                inst v24, v18, v0.t;  \
            )
#define TEST_EXT_OP_rs1_19( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v19, (x7); \
                inst v24, v19, v0.t;  \
            )
#define TEST_EXT_OP_rs1_20( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v20, (x7); \
                inst v24, v20, v0.t;  \
            )
#define TEST_EXT_OP_rs1_21( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v21, (x7); \
                inst v24, v21, v0.t;  \
            )
#define TEST_EXT_OP_rs1_22( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v22, (x7); \
                inst v24, v22, v0.t;  \
            )
#define TEST_EXT_OP_rs1_23( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v23, (x7); \
                inst v24, v23, v0.t;  \
            )
#define TEST_EXT_OP_rs1_25( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v25, (x7); \
                inst v24, v25, v0.t;  \
            )
#define TEST_EXT_OP_rs1_26( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v26, (x7); \
                inst v24, v26, v0.t;  \
            )
#define TEST_EXT_OP_rs1_27( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v27, (x7); \
                inst v24, v27, v0.t;  \
            )
#define TEST_EXT_OP_rs1_28( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v28, (x7); \
                inst v24, v28, v0.t;  \
            )
#define TEST_EXT_OP_rs1_29( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v29, (x7); \
                inst v24, v29, v0.t;  \
            )
#define TEST_EXT_OP_rs1_30( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v30, (x7); \
                inst v24, v30, v0.t;  \
            )
#define TEST_EXT_OP_rs1_31( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v31, (x7); \
                inst v24, v31, v0.t;  \
            )
#define TEST_EXT_OP_rd_1( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v1, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v1, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v1, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_2( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v2, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v2, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v2, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_3( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v3, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v3, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v3, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_4( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v4, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v4, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v4, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_5( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v5, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v5, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v5, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_6( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v6, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v6, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v6, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_7( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v7, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v7, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v7, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_9( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v9, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v9, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v9, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_10( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v10, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v10, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v10, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_11( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v11, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v11, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v11, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_12( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v12, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v12, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v12, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_13( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v13, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v13, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v13, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_14( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v14, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v14, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v14, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_15( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v15, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v15, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v15, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_16( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v16, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_17( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v17, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v17, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v17, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_18( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v18, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v18, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v18, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_19( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v19, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v19, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v19, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_20( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v20, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v20, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v20, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_21( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v21, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v21, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v21, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_22( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v22, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v22, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v22, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_23( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v23, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v23, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v23, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_24( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v24, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_25( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v25, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v25, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v25, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_26( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v26, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v26, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v26, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_27( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v27, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v27, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v27, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_28( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v28, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v28, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v28, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_29( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v29, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v29, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v29, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_30( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v30, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v30, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v30, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_31( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v31, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v31, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v31, v8, v0.t;  \
            )
  #-------------------------------------------------------------
  # vsext Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_EXT_OP( 0,  vsext.vf2, rd_data_vv+0, rs1_data+0);
TEST_EXT_OP( 1,  vsext.vf2, rd_data_vv+64, rs1_data+64);
TEST_EXT_OP( 2,  vsext.vf2, rd_data_vv+128, rs1_data+128);
TEST_EXT_OP( 3,  vsext.vf2, rd_data_vv+192, rs1_data+192);
TEST_EXT_OP( 4,  vsext.vf2, rd_data_vv+256, rs1_data+256);
TEST_EXT_OP( 5,  vsext.vf2, rd_data_vv+320, rs1_data+320);
TEST_EXT_OP( 6,  vsext.vf2, rd_data_vv+384, rs1_data+384);
TEST_EXT_OP( 7,  vsext.vf2, rd_data_vv+448, rs1_data+448);
TEST_EXT_OP( 8,  vsext.vf2, rd_data_vv+512, rs1_data+512);
TEST_EXT_OP( 9,  vsext.vf2, rd_data_vv+576, rs1_data+576);
TEST_EXT_OP( 10,  vsext.vf2, rd_data_vv+640, rs1_data+640);
TEST_EXT_OP( 11,  vsext.vf2, rd_data_vv+704, rs1_data+704);
TEST_EXT_OP( 12,  vsext.vf2, rd_data_vv+768, rs1_data+768);
TEST_EXT_OP( 13,  vsext.vf2, rd_data_vv+832, rs1_data+832);
TEST_EXT_OP( 14,  vsext.vf2, rd_data_vv+896, rs1_data+896);
TEST_EXT_OP( 15,  vsext.vf2, rd_data_vv+960, rs1_data+960);
TEST_EXT_OP( 16,  vsext.vf2, rd_data_vv+1024, rs1_data+1024);
TEST_EXT_OP( 17,  vsext.vf2, rd_data_vv+1088, rs1_data+1088);
TEST_EXT_OP( 18,  vsext.vf2, rd_data_vv+1152, rs1_data+1152);
TEST_EXT_OP( 19,  vsext.vf2, rd_data_vv+1216, rs1_data+1216);
TEST_EXT_OP( 20,  vsext.vf2, rd_data_vv+1280, rs1_data+1280);
TEST_EXT_OP( 21,  vsext.vf2, rd_data_vv+1344, rs1_data+1344);
TEST_EXT_OP( 22,  vsext.vf2, rd_data_vv+1408, rs1_data+1408);
TEST_EXT_OP( 23,  vsext.vf2, rd_data_vv+1472, rs1_data+1472);
TEST_EXT_OP( 24,  vsext.vf2, rd_data_vv+1536, rs1_data+1536);
TEST_EXT_OP( 25,  vsext.vf2, rd_data_vv+1600, rs1_data+1600);
TEST_EXT_OP( 26,  vsext.vf2, rd_data_vv+1664, rs1_data+1664);
TEST_EXT_OP( 27,  vsext.vf2, rd_data_vv+1728, rs1_data+1728);
TEST_EXT_OP( 28,  vsext.vf2, rd_data_vv+1792, rs1_data+1792);
TEST_EXT_OP( 29,  vsext.vf2, rd_data_vv+1856, rs1_data+1856);
TEST_EXT_OP( 30,  vsext.vf2, rd_data_vv+1920, rs1_data+1920);
TEST_EXT_OP( 31,  vsext.vf2, rd_data_vv+1984, rs1_data+1984);
TEST_EXT_OP( 32,  vsext.vf2, rd_data_vv+2048, rs1_data+2048);
TEST_EXT_OP( 33,  vsext.vf2, rd_data_vv+2112, rs1_data+2112);
TEST_EXT_OP( 34,  vsext.vf4, rd_data_vv+2176, rs1_data+0);
TEST_EXT_OP( 35,  vsext.vf4, rd_data_vv+2240, rs1_data+64);
TEST_EXT_OP( 36,  vsext.vf4, rd_data_vv+2304, rs1_data+128);
TEST_EXT_OP( 37,  vsext.vf4, rd_data_vv+2368, rs1_data+192);
TEST_EXT_OP( 38,  vsext.vf4, rd_data_vv+2432, rs1_data+256);
TEST_EXT_OP( 39,  vsext.vf4, rd_data_vv+2496, rs1_data+320);
TEST_EXT_OP( 40,  vsext.vf4, rd_data_vv+2560, rs1_data+384);
TEST_EXT_OP( 41,  vsext.vf4, rd_data_vv+2624, rs1_data+448);
TEST_EXT_OP( 42,  vsext.vf4, rd_data_vv+2688, rs1_data+512);
TEST_EXT_OP( 43,  vsext.vf4, rd_data_vv+2752, rs1_data+576);
TEST_EXT_OP( 44,  vsext.vf4, rd_data_vv+2816, rs1_data+640);
TEST_EXT_OP( 45,  vsext.vf4, rd_data_vv+2880, rs1_data+704);
TEST_EXT_OP( 46,  vsext.vf4, rd_data_vv+2944, rs1_data+768);
TEST_EXT_OP( 47,  vsext.vf4, rd_data_vv+3008, rs1_data+832);
TEST_EXT_OP( 48,  vsext.vf4, rd_data_vv+3072, rs1_data+896);
TEST_EXT_OP( 49,  vsext.vf4, rd_data_vv+3136, rs1_data+960);
TEST_EXT_OP( 50,  vsext.vf4, rd_data_vv+3200, rs1_data+1024);
TEST_EXT_OP( 51,  vsext.vf4, rd_data_vv+3264, rs1_data+1088);
TEST_EXT_OP( 52,  vsext.vf4, rd_data_vv+3328, rs1_data+1152);
TEST_EXT_OP( 53,  vsext.vf4, rd_data_vv+3392, rs1_data+1216);
TEST_EXT_OP( 54,  vsext.vf4, rd_data_vv+3456, rs1_data+1280);
TEST_EXT_OP( 55,  vsext.vf4, rd_data_vv+3520, rs1_data+1344);
TEST_EXT_OP( 56,  vsext.vf4, rd_data_vv+3584, rs1_data+1408);
TEST_EXT_OP( 57,  vsext.vf4, rd_data_vv+3648, rs1_data+1472);
TEST_EXT_OP( 58,  vsext.vf4, rd_data_vv+3712, rs1_data+1536);
TEST_EXT_OP( 59,  vsext.vf4, rd_data_vv+3776, rs1_data+1600);
TEST_EXT_OP( 60,  vsext.vf4, rd_data_vv+3840, rs1_data+1664);
TEST_EXT_OP( 61,  vsext.vf4, rd_data_vv+3904, rs1_data+1728);
TEST_EXT_OP( 62,  vsext.vf4, rd_data_vv+3968, rs1_data+1792);
TEST_EXT_OP( 63,  vsext.vf4, rd_data_vv+4032, rs1_data+1856);
TEST_EXT_OP( 64,  vsext.vf4, rd_data_vv+4096, rs1_data+1920);
TEST_EXT_OP( 65,  vsext.vf4, rd_data_vv+4160, rs1_data+1984);
TEST_EXT_OP( 66,  vsext.vf4, rd_data_vv+4224, rs1_data+2048);
TEST_EXT_OP( 67,  vsext.vf4, rd_data_vv+4288, rs1_data+2112);
  #-------------------------------------------------------------
  # vsext Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_EXT_OP_rd_1( 68,  vsext.vf2, rd_data_vv+0, rs1_data+0);
TEST_EXT_OP_rd_2( 69,  vsext.vf2, rd_data_vv+64, rs1_data+64);
TEST_EXT_OP_rd_3( 70,  vsext.vf2, rd_data_vv+128, rs1_data+128);
TEST_EXT_OP_rd_4( 71,  vsext.vf2, rd_data_vv+192, rs1_data+192);
TEST_EXT_OP_rd_5( 72,  vsext.vf2, rd_data_vv+256, rs1_data+256);
TEST_EXT_OP_rd_6( 73,  vsext.vf2, rd_data_vv+320, rs1_data+320);
TEST_EXT_OP_rd_7( 74,  vsext.vf2, rd_data_vv+384, rs1_data+384);
TEST_EXT_OP_rd_9( 75,  vsext.vf2, rd_data_vv+512, rs1_data+512);
TEST_EXT_OP_rd_10( 76,  vsext.vf2, rd_data_vv+576, rs1_data+576);
TEST_EXT_OP_rd_11( 77,  vsext.vf2, rd_data_vv+640, rs1_data+640);
TEST_EXT_OP_rd_12( 78,  vsext.vf2, rd_data_vv+704, rs1_data+704);
TEST_EXT_OP_rd_13( 79,  vsext.vf2, rd_data_vv+768, rs1_data+768);
TEST_EXT_OP_rd_14( 80,  vsext.vf2, rd_data_vv+832, rs1_data+832);
TEST_EXT_OP_rd_15( 81,  vsext.vf2, rd_data_vv+896, rs1_data+896);
TEST_EXT_OP_rd_16( 82,  vsext.vf2, rd_data_vv+960, rs1_data+960);
TEST_EXT_OP_rd_17( 83,  vsext.vf2, rd_data_vv+1024, rs1_data+1024);
TEST_EXT_OP_rd_18( 84,  vsext.vf2, rd_data_vv+1088, rs1_data+1088);
TEST_EXT_OP_rd_19( 85,  vsext.vf2, rd_data_vv+1152, rs1_data+1152);
TEST_EXT_OP_rd_20( 86,  vsext.vf2, rd_data_vv+1216, rs1_data+1216);
TEST_EXT_OP_rd_21( 87,  vsext.vf2, rd_data_vv+1280, rs1_data+1280);
TEST_EXT_OP_rd_22( 88,  vsext.vf2, rd_data_vv+1344, rs1_data+1344);
TEST_EXT_OP_rd_23( 89,  vsext.vf2, rd_data_vv+1408, rs1_data+1408);
TEST_EXT_OP_rd_24( 90,  vsext.vf2, rd_data_vv+1472, rs1_data+1472);
TEST_EXT_OP_rd_25( 91,  vsext.vf2, rd_data_vv+1536, rs1_data+1536);
TEST_EXT_OP_rd_26( 92,  vsext.vf2, rd_data_vv+1600, rs1_data+1600);
TEST_EXT_OP_rd_27( 93,  vsext.vf2, rd_data_vv+1664, rs1_data+1664);
TEST_EXT_OP_rd_28( 94,  vsext.vf2, rd_data_vv+1728, rs1_data+1728);
TEST_EXT_OP_rd_29( 95,  vsext.vf2, rd_data_vv+1792, rs1_data+1792);
TEST_EXT_OP_rd_30( 96,  vsext.vf2, rd_data_vv+1856, rs1_data+1856);
TEST_EXT_OP_rd_31( 97,  vsext.vf2, rd_data_vv+1920, rs1_data+1920);
TEST_EXT_OP_rd_1( 98,  vsext.vf2, rd_data_vv+1984, rs1_data+1984);
TEST_EXT_OP_rd_1( 99,  vsext.vf4, rd_data_vv+2176, rs1_data+0);
TEST_EXT_OP_rd_2( 100,  vsext.vf4, rd_data_vv+2240, rs1_data+64);
TEST_EXT_OP_rd_3( 101,  vsext.vf4, rd_data_vv+2304, rs1_data+128);
TEST_EXT_OP_rd_4( 102,  vsext.vf4, rd_data_vv+2368, rs1_data+192);
TEST_EXT_OP_rd_5( 103,  vsext.vf4, rd_data_vv+2432, rs1_data+256);
TEST_EXT_OP_rd_6( 104,  vsext.vf4, rd_data_vv+2496, rs1_data+320);
TEST_EXT_OP_rd_7( 105,  vsext.vf4, rd_data_vv+2560, rs1_data+384);
TEST_EXT_OP_rd_9( 106,  vsext.vf4, rd_data_vv+2688, rs1_data+512);
TEST_EXT_OP_rd_10( 107,  vsext.vf4, rd_data_vv+2752, rs1_data+576);
TEST_EXT_OP_rd_11( 108,  vsext.vf4, rd_data_vv+2816, rs1_data+640);
TEST_EXT_OP_rd_12( 109,  vsext.vf4, rd_data_vv+2880, rs1_data+704);
TEST_EXT_OP_rd_13( 110,  vsext.vf4, rd_data_vv+2944, rs1_data+768);
TEST_EXT_OP_rd_14( 111,  vsext.vf4, rd_data_vv+3008, rs1_data+832);
TEST_EXT_OP_rd_15( 112,  vsext.vf4, rd_data_vv+3072, rs1_data+896);
TEST_EXT_OP_rd_16( 113,  vsext.vf4, rd_data_vv+3136, rs1_data+960);
TEST_EXT_OP_rd_17( 114,  vsext.vf4, rd_data_vv+3200, rs1_data+1024);
TEST_EXT_OP_rd_18( 115,  vsext.vf4, rd_data_vv+3264, rs1_data+1088);
TEST_EXT_OP_rd_19( 116,  vsext.vf4, rd_data_vv+3328, rs1_data+1152);
TEST_EXT_OP_rd_20( 117,  vsext.vf4, rd_data_vv+3392, rs1_data+1216);
TEST_EXT_OP_rd_21( 118,  vsext.vf4, rd_data_vv+3456, rs1_data+1280);
TEST_EXT_OP_rd_22( 119,  vsext.vf4, rd_data_vv+3520, rs1_data+1344);
TEST_EXT_OP_rd_23( 120,  vsext.vf4, rd_data_vv+3584, rs1_data+1408);
TEST_EXT_OP_rd_24( 121,  vsext.vf4, rd_data_vv+3648, rs1_data+1472);
TEST_EXT_OP_rd_25( 122,  vsext.vf4, rd_data_vv+3712, rs1_data+1536);
TEST_EXT_OP_rd_26( 123,  vsext.vf4, rd_data_vv+3776, rs1_data+1600);
TEST_EXT_OP_rd_27( 124,  vsext.vf4, rd_data_vv+3840, rs1_data+1664);
TEST_EXT_OP_rd_28( 125,  vsext.vf4, rd_data_vv+3904, rs1_data+1728);
TEST_EXT_OP_rd_29( 126,  vsext.vf4, rd_data_vv+3968, rs1_data+1792);
TEST_EXT_OP_rd_30( 127,  vsext.vf4, rd_data_vv+4032, rs1_data+1856);
TEST_EXT_OP_rd_31( 128,  vsext.vf4, rd_data_vv+4096, rs1_data+1920);
TEST_EXT_OP_rd_1( 129,  vsext.vf4, rd_data_vv+4160, rs1_data+1984);
TEST_EXT_OP_rs1_1( 130,  vsext.vf2, rd_data_vv+0, rs1_data+0);
TEST_EXT_OP_rs1_2( 131,  vsext.vf2, rd_data_vv+64, rs1_data+64);
TEST_EXT_OP_rs1_3( 132,  vsext.vf2, rd_data_vv+128, rs1_data+128);
TEST_EXT_OP_rs1_4( 133,  vsext.vf2, rd_data_vv+192, rs1_data+192);
TEST_EXT_OP_rs1_5( 134,  vsext.vf2, rd_data_vv+256, rs1_data+256);
TEST_EXT_OP_rs1_6( 135,  vsext.vf2, rd_data_vv+320, rs1_data+320);
TEST_EXT_OP_rs1_7( 136,  vsext.vf2, rd_data_vv+384, rs1_data+384);
TEST_EXT_OP_rs1_8( 137,  vsext.vf2, rd_data_vv+448, rs1_data+448);
TEST_EXT_OP_rs1_9( 138,  vsext.vf2, rd_data_vv+512, rs1_data+512);
TEST_EXT_OP_rs1_10( 139,  vsext.vf2, rd_data_vv+576, rs1_data+576);
TEST_EXT_OP_rs1_11( 140,  vsext.vf2, rd_data_vv+640, rs1_data+640);
TEST_EXT_OP_rs1_12( 141,  vsext.vf2, rd_data_vv+704, rs1_data+704);
TEST_EXT_OP_rs1_13( 142,  vsext.vf2, rd_data_vv+768, rs1_data+768);
TEST_EXT_OP_rs1_14( 143,  vsext.vf2, rd_data_vv+832, rs1_data+832);
TEST_EXT_OP_rs1_15( 144,  vsext.vf2, rd_data_vv+896, rs1_data+896);
TEST_EXT_OP_rs1_16( 145,  vsext.vf2, rd_data_vv+960, rs1_data+960);
TEST_EXT_OP_rs1_17( 146,  vsext.vf2, rd_data_vv+1024, rs1_data+1024);
TEST_EXT_OP_rs1_18( 147,  vsext.vf2, rd_data_vv+1088, rs1_data+1088);
TEST_EXT_OP_rs1_19( 148,  vsext.vf2, rd_data_vv+1152, rs1_data+1152);
TEST_EXT_OP_rs1_20( 149,  vsext.vf2, rd_data_vv+1216, rs1_data+1216);
TEST_EXT_OP_rs1_21( 150,  vsext.vf2, rd_data_vv+1280, rs1_data+1280);
TEST_EXT_OP_rs1_22( 151,  vsext.vf2, rd_data_vv+1344, rs1_data+1344);
TEST_EXT_OP_rs1_23( 152,  vsext.vf2, rd_data_vv+1408, rs1_data+1408);
TEST_EXT_OP_rs1_25( 153,  vsext.vf2, rd_data_vv+1536, rs1_data+1536);
TEST_EXT_OP_rs1_26( 154,  vsext.vf2, rd_data_vv+1600, rs1_data+1600);
TEST_EXT_OP_rs1_27( 155,  vsext.vf2, rd_data_vv+1664, rs1_data+1664);
TEST_EXT_OP_rs1_28( 156,  vsext.vf2, rd_data_vv+1728, rs1_data+1728);
TEST_EXT_OP_rs1_29( 157,  vsext.vf2, rd_data_vv+1792, rs1_data+1792);
TEST_EXT_OP_rs1_30( 158,  vsext.vf2, rd_data_vv+1856, rs1_data+1856);
TEST_EXT_OP_rs1_31( 159,  vsext.vf2, rd_data_vv+1920, rs1_data+1920);
TEST_EXT_OP_rs1_1( 160,  vsext.vf2, rd_data_vv+1984, rs1_data+1984);
TEST_EXT_OP_rs1_1( 161,  vsext.vf4, rd_data_vv+2176, rs1_data+0);
TEST_EXT_OP_rs1_2( 162,  vsext.vf4, rd_data_vv+2240, rs1_data+64);
TEST_EXT_OP_rs1_3( 163,  vsext.vf4, rd_data_vv+2304, rs1_data+128);
TEST_EXT_OP_rs1_4( 164,  vsext.vf4, rd_data_vv+2368, rs1_data+192);
TEST_EXT_OP_rs1_5( 165,  vsext.vf4, rd_data_vv+2432, rs1_data+256);
TEST_EXT_OP_rs1_6( 166,  vsext.vf4, rd_data_vv+2496, rs1_data+320);
TEST_EXT_OP_rs1_7( 167,  vsext.vf4, rd_data_vv+2560, rs1_data+384);
TEST_EXT_OP_rs1_8( 168,  vsext.vf4, rd_data_vv+2624, rs1_data+448);
TEST_EXT_OP_rs1_9( 169,  vsext.vf4, rd_data_vv+2688, rs1_data+512);
TEST_EXT_OP_rs1_10( 170,  vsext.vf4, rd_data_vv+2752, rs1_data+576);
TEST_EXT_OP_rs1_11( 171,  vsext.vf4, rd_data_vv+2816, rs1_data+640);
TEST_EXT_OP_rs1_12( 172,  vsext.vf4, rd_data_vv+2880, rs1_data+704);
TEST_EXT_OP_rs1_13( 173,  vsext.vf4, rd_data_vv+2944, rs1_data+768);
TEST_EXT_OP_rs1_14( 174,  vsext.vf4, rd_data_vv+3008, rs1_data+832);
TEST_EXT_OP_rs1_15( 175,  vsext.vf4, rd_data_vv+3072, rs1_data+896);
TEST_EXT_OP_rs1_16( 176,  vsext.vf4, rd_data_vv+3136, rs1_data+960);
TEST_EXT_OP_rs1_17( 177,  vsext.vf4, rd_data_vv+3200, rs1_data+1024);
TEST_EXT_OP_rs1_18( 178,  vsext.vf4, rd_data_vv+3264, rs1_data+1088);
TEST_EXT_OP_rs1_19( 179,  vsext.vf4, rd_data_vv+3328, rs1_data+1152);
TEST_EXT_OP_rs1_20( 180,  vsext.vf4, rd_data_vv+3392, rs1_data+1216);
TEST_EXT_OP_rs1_21( 181,  vsext.vf4, rd_data_vv+3456, rs1_data+1280);
TEST_EXT_OP_rs1_22( 182,  vsext.vf4, rd_data_vv+3520, rs1_data+1344);
TEST_EXT_OP_rs1_23( 183,  vsext.vf4, rd_data_vv+3584, rs1_data+1408);
TEST_EXT_OP_rs1_25( 184,  vsext.vf4, rd_data_vv+3712, rs1_data+1536);
TEST_EXT_OP_rs1_26( 185,  vsext.vf4, rd_data_vv+3776, rs1_data+1600);
TEST_EXT_OP_rs1_27( 186,  vsext.vf4, rd_data_vv+3840, rs1_data+1664);
TEST_EXT_OP_rs1_28( 187,  vsext.vf4, rd_data_vv+3904, rs1_data+1728);
TEST_EXT_OP_rs1_29( 188,  vsext.vf4, rd_data_vv+3968, rs1_data+1792);
TEST_EXT_OP_rs1_30( 189,  vsext.vf4, rd_data_vv+4032, rs1_data+1856);
TEST_EXT_OP_rs1_31( 190,  vsext.vf4, rd_data_vv+4096, rs1_data+1920);
TEST_EXT_OP_rs1_1( 191,  vsext.vf4, rd_data_vv+4160, rs1_data+1984);
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
.word	0xfffffffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffef
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffbf
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
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000040
.word	0xe85755eb
.word	0x1cd86c0a
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
.word	0x00000003
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffaaaa
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
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
.word	0x00003333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003333
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00003333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004afc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004afc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004afc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00004afc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffb504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffb504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffb504
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffb504
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffb504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffb504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005554
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005554
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005554
.word	0xe85755eb
.word	0x1cd86c0a
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
.word	0x00000004
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
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
.word	0x00003332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00003332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006665
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006665
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006665
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006665
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006665
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffb503
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffb503
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffb503
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffb503
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005556
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000006
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00003334
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006667
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006667
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004afd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004afd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004afd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00004afd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004afd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffb505
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffb505
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffb505
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffff7
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
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000008
.word	0xe85755eb
.word	0x1cd86c0a
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
.word	0x00000003
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffaa
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000055
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000055
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000055
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000055
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
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
.word	0x00000033
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000033
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000033
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000033
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000033
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000066
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000066
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000066
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000066
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000066
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000066
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000066
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
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
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000054
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000054
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000054
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000054
.word	0xe85755eb
.word	0x1cd86c0a
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
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
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
.word	0x00000032
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000032
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000032
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000032
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000032
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000065
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000065
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000065
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000065
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000065
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000065
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000065
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000056
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000056
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000056
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000056
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000056
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000056
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000056
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000006
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000034
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000034
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000034
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000034
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000034
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000034
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000034
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000034
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000067
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000067
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000067
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000067
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
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
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffef
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffbf
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
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000040
.word	0xe85755eb
.word	0x1cd86c0a
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
.word	0x00000003
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffaaaa
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
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
.word	0x00003333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003333
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00003333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004afc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004afc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004afc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00004afc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffb504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffb504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffb504
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffb504
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffb504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffb504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005554
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005554
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005554
.word	0xe85755eb
.word	0x1cd86c0a
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
.word	0x00000004
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
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
.word	0x00003332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00003332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006665
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006665
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006665
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006665
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006665
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffb503
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffb503
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffb503
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffb503
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005556
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000006
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00003334
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006667
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006667
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffff7
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
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000008
.word	0xe85755eb
.word	0x1cd86c0a
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
.word	0x00000003
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffaa
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000055
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000055
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000055
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000055
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
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
.word	0x00000033
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000033
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000033
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000033
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000033
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000066
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000066
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000066
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000066
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000066
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000066
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000066
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
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
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000054
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000054
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000054
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000054
.word	0xe85755eb
.word	0x1cd86c0a
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
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
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
.word	0x00000032
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000032
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000032
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000032
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000032
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000065
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000065
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000065
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000065
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000065
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000065
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000065
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000056
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000056
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000056
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000056
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000056
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000056
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000056
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000006
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000034
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000034
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000034
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000034
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000034
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000034
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000034
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000034
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000067
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000067
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000067
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000067
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffef
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffbf
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
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000040
.word	0xe85755eb
.word	0x1cd86c0a
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
.word	0x00000003
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffaaaa
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
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
.word	0x00003333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003333
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00003333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004afc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004afc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004afc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00004afc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffb504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffb504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffb504
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffb504
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffb504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffb504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005554
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005554
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005554
.word	0xe85755eb
.word	0x1cd86c0a
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
.word	0x00000004
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
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
.word	0x00003332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00003332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006665
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006665
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffb503
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffb503
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffb503
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffb503
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005556
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000006
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00003334
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006667
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006667
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006667
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffff7
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
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000008
.word	0xe85755eb
.word	0x1cd86c0a
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
.word	0x00000003
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffaa
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000055
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000055
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000055
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000055
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000005
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000005
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
.word	0x00000033
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000033
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000033
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000033
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000033
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000066
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000066
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000066
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000066
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000066
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000066
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000066
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffffc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
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
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000054
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000054
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000054
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000054
.word	0xe85755eb
.word	0x1cd86c0a
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
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
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
.word	0x00000032
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000032
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000032
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000032
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000032
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000065
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000065
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000065
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
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
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000056
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000056
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000056
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000056
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000056
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000056
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000056
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000006
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000034
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000034
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000034
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000034
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000034
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000034
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000034
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000034
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000067
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000067
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000067
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000067
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf

rd_data_vx:

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
    

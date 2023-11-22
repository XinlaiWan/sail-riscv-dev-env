#----------------------------------------------------------------------------- 
    # vfsqrt.S
    #-----------------------------------------------------------------------------
    #
    # Test vfsqrt instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vfsqrt)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_FP_V_OP 
#define TEST_FP_V_OP( testnum, inst, flags, result, val1 ) \
    TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle32.v v8, (x7); \
        inst v24, v8, v0.t; \
    )
#define TEST_FP_V_OP_rs1_1( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v1, (x7); \
                inst v24, v1, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_2( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v2, (x7); \
                inst v24, v2, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_3( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v3, (x7); \
                inst v24, v3, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_4( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v4, (x7); \
                inst v24, v4, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_5( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v5, (x7); \
                inst v24, v5, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_6( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v6, (x7); \
                inst v24, v6, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_7( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v7, (x7); \
                inst v24, v7, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_8( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v24, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_9( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v9, (x7); \
                inst v24, v9, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_10( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v10, (x7); \
                inst v24, v10, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_11( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v11, (x7); \
                inst v24, v11, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_12( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v12, (x7); \
                inst v24, v12, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_13( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v13, (x7); \
                inst v24, v13, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_14( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v14, (x7); \
                inst v24, v14, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_15( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v15, (x7); \
                inst v24, v15, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_16( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v16, (x7); \
                inst v24, v16, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_17( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v17, (x7); \
                inst v24, v17, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_18( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v18, (x7); \
                inst v24, v18, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_19( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v19, (x7); \
                inst v24, v19, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_20( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v20, (x7); \
                inst v24, v20, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_21( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v21, (x7); \
                inst v24, v21, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_22( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v22, (x7); \
                inst v24, v22, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_23( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v23, (x7); \
                inst v24, v23, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_25( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v25, (x7); \
                inst v24, v25, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_26( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v26, (x7); \
                inst v24, v26, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_27( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v27, (x7); \
                inst v24, v27, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_28( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v28, (x7); \
                inst v24, v28, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_29( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v29, (x7); \
                inst v24, v29, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_30( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v30, (x7); \
                inst v24, v30, v0.t;  \
            )
#define TEST_FP_V_OP_rs1_31( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v31, (x7); \
                inst v24, v31, v0.t;  \
            )
#define TEST_FP_V_OP_rd_1( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v1, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v1, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v1, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_2( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v2, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v2, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v2, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_3( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v3, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v3, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v3, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_4( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v4, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v4, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v4, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_5( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v5, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v5, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v5, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_6( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v6, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v6, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v6, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_7( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v7, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v7, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v7, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_9( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v9, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v9, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v9, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_10( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v10, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v10, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v10, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_11( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v11, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v11, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v11, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_12( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v12, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v12, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v12, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_13( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v13, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v13, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v13, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_14( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v14, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v14, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v14, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_15( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v15, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v15, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v15, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_16( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v16, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_17( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v17, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v17, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v17, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_18( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v18, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v18, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v18, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_19( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v19, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v19, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v19, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_20( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v20, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v20, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v20, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_21( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v21, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v21, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v21, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_22( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v22, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v22, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v22, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_23( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v23, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v23, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v23, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_24( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v24, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_25( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v25, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v25, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v25, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_26( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v26, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v26, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v26, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_27( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v27, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v27, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v27, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_28( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v28, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v28, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v28, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_29( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v29, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v29, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v29, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_30( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v30, flags, result, v8,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v30, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v30, v8, v0.t;  \
            )
#define TEST_FP_V_OP_rd_31( testnum, inst, flags, result, val1 ) \
            TEST_CASE_LOOP_FP( testnum, v31, flags, result, v8,  \
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
  # vfclass.v Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_FP_V_OP( 0,  vfsqrt.v, 0x0000000000000010, rd_data_vv+0, rs1_data+0);
TEST_FP_V_OP( 1,  vfsqrt.v, 0x0000000000000010, rd_data_vv+64, rs1_data+64);
TEST_FP_V_OP( 2,  vfsqrt.v, 0x0000000000000010, rd_data_vv+128, rs1_data+128);
TEST_FP_V_OP( 3,  vfsqrt.v, 0x0000000000000011, rd_data_vv+192, rs1_data+192);
TEST_FP_V_OP( 4,  vfsqrt.v, 0x0000000000000011, rd_data_vv+256, rs1_data+256);
TEST_FP_V_OP( 5,  vfsqrt.v, 0x0000000000000011, rd_data_vv+320, rs1_data+320);
TEST_FP_V_OP( 6,  vfsqrt.v, 0x0000000000000011, rd_data_vv+384, rs1_data+384);
TEST_FP_V_OP( 7,  vfsqrt.v, 0x0000000000000011, rd_data_vv+448, rs1_data+448);
TEST_FP_V_OP( 8,  vfsqrt.v, 0x0000000000000011, rd_data_vv+512, rs1_data+512);
TEST_FP_V_OP( 9,  vfsqrt.v, 0x0000000000000011, rd_data_vv+576, rs1_data+576);
TEST_FP_V_OP( 10,  vfsqrt.v, 0x0000000000000011, rd_data_vv+640, rs1_data+640);
TEST_FP_V_OP( 11,  vfsqrt.v, 0x0000000000000011, rd_data_vv+704, rs1_data+704);
TEST_FP_V_OP( 12,  vfsqrt.v, 0x0000000000000011, rd_data_vv+768, rs1_data+768);
TEST_FP_V_OP( 13,  vfsqrt.v, 0x0000000000000011, rd_data_vv+832, rs1_data+832);
TEST_FP_V_OP( 14,  vfsqrt.v, 0x0000000000000011, rd_data_vv+896, rs1_data+896);
TEST_FP_V_OP( 15,  vfsqrt.v, 0x0000000000000011, rd_data_vv+960, rs1_data+960);
TEST_FP_V_OP( 16,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1024, rs1_data+1024);
TEST_FP_V_OP( 17,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1088, rs1_data+1088);
TEST_FP_V_OP( 18,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1152, rs1_data+1152);
TEST_FP_V_OP( 19,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1216, rs1_data+1216);
TEST_FP_V_OP( 20,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1280, rs1_data+1280);
TEST_FP_V_OP( 21,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1344, rs1_data+1344);
TEST_FP_V_OP( 22,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1408, rs1_data+1408);
TEST_FP_V_OP( 23,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1472, rs1_data+1472);
TEST_FP_V_OP( 24,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1536, rs1_data+1536);
TEST_FP_V_OP( 25,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1600, rs1_data+1600);
TEST_FP_V_OP( 26,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1664, rs1_data+1664);
TEST_FP_V_OP( 27,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1728, rs1_data+1728);
TEST_FP_V_OP( 28,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1792, rs1_data+1792);
TEST_FP_V_OP( 29,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1856, rs1_data+1856);
TEST_FP_V_OP( 30,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1920, rs1_data+1920);
TEST_FP_V_OP( 31,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1984, rs1_data+1984);
TEST_FP_V_OP( 32,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2048, rs1_data+2048);
TEST_FP_V_OP( 33,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2112, rs1_data+2112);
TEST_FP_V_OP( 34,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2176, rs1_data+2176);
TEST_FP_V_OP( 35,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2240, rs1_data+2240);
TEST_FP_V_OP( 36,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2304, rs1_data+2304);
TEST_FP_V_OP( 37,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2368, rs1_data+2368);
TEST_FP_V_OP( 38,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2432, rs1_data+2432);
TEST_FP_V_OP( 39,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2496, rs1_data+2496);
TEST_FP_V_OP( 40,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2560, rs1_data+2560);
TEST_FP_V_OP( 41,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2624, rs1_data+2624);
TEST_FP_V_OP( 42,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2688, rs1_data+2688);
TEST_FP_V_OP( 43,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2752, rs1_data+2752);
TEST_FP_V_OP( 44,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2816, rs1_data+2816);
TEST_FP_V_OP( 45,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2880, rs1_data+2880);
TEST_FP_V_OP( 46,  vfsqrt.v, 0x0000000000000011, rd_data_vv+2944, rs1_data+2944);
TEST_FP_V_OP( 47,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3008, rs1_data+3008);
TEST_FP_V_OP( 48,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3072, rs1_data+3072);
TEST_FP_V_OP( 49,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3136, rs1_data+3136);
TEST_FP_V_OP( 50,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3200, rs1_data+3200);
TEST_FP_V_OP( 51,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3264, rs1_data+3264);
TEST_FP_V_OP( 52,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3328, rs1_data+3328);
TEST_FP_V_OP( 53,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3392, rs1_data+3392);
TEST_FP_V_OP( 54,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3456, rs1_data+3456);
TEST_FP_V_OP( 55,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3520, rs1_data+3520);
TEST_FP_V_OP( 56,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3584, rs1_data+3584);
TEST_FP_V_OP( 57,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3648, rs1_data+3648);
TEST_FP_V_OP( 58,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3712, rs1_data+3712);
TEST_FP_V_OP( 59,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3776, rs1_data+3776);
TEST_FP_V_OP( 60,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3840, rs1_data+3840);
TEST_FP_V_OP( 61,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3904, rs1_data+3904);
TEST_FP_V_OP( 62,  vfsqrt.v, 0x0000000000000011, rd_data_vv+3968, rs1_data+3968);
TEST_FP_V_OP( 63,  vfsqrt.v, 0x0000000000000011, rd_data_vv+4032, rs1_data+4032);
  #-------------------------------------------------------------
  # vfclass.v Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_FP_V_OP_rd_1( 64,  vfsqrt.v, 0x0000000000000011, rd_data_vv+0, rs1_data+0);
  TEST_FP_V_OP_rs1_1( 65,  vfsqrt.v, 0x0000000000000011, rd_data_vv+0, rs1_data+0);
  TEST_FP_V_OP_rd_2( 66,  vfsqrt.v, 0x0000000000000011, rd_data_vv+64, rs1_data+64);
  TEST_FP_V_OP_rs1_2( 67,  vfsqrt.v, 0x0000000000000011, rd_data_vv+64, rs1_data+64);
  TEST_FP_V_OP_rd_3( 68,  vfsqrt.v, 0x0000000000000011, rd_data_vv+128, rs1_data+128);
  TEST_FP_V_OP_rs1_3( 69,  vfsqrt.v, 0x0000000000000011, rd_data_vv+128, rs1_data+128);
  TEST_FP_V_OP_rd_4( 70,  vfsqrt.v, 0x0000000000000011, rd_data_vv+192, rs1_data+192);
  TEST_FP_V_OP_rs1_4( 71,  vfsqrt.v, 0x0000000000000011, rd_data_vv+192, rs1_data+192);
  TEST_FP_V_OP_rd_5( 72,  vfsqrt.v, 0x0000000000000011, rd_data_vv+256, rs1_data+256);
  TEST_FP_V_OP_rs1_5( 73,  vfsqrt.v, 0x0000000000000011, rd_data_vv+256, rs1_data+256);
  TEST_FP_V_OP_rd_6( 74,  vfsqrt.v, 0x0000000000000011, rd_data_vv+320, rs1_data+320);
  TEST_FP_V_OP_rs1_6( 75,  vfsqrt.v, 0x0000000000000011, rd_data_vv+320, rs1_data+320);
  TEST_FP_V_OP_rd_7( 76,  vfsqrt.v, 0x0000000000000011, rd_data_vv+384, rs1_data+384);
  TEST_FP_V_OP_rs1_7( 77,  vfsqrt.v, 0x0000000000000011, rd_data_vv+384, rs1_data+384);
  TEST_FP_V_OP_rd_9( 78,  vfsqrt.v, 0x0000000000000011, rd_data_vv+512, rs1_data+512);
  TEST_FP_V_OP_rs1_9( 79,  vfsqrt.v, 0x0000000000000011, rd_data_vv+512, rs1_data+512);
  TEST_FP_V_OP_rd_10( 80,  vfsqrt.v, 0x0000000000000011, rd_data_vv+576, rs1_data+576);
  TEST_FP_V_OP_rs1_10( 81,  vfsqrt.v, 0x0000000000000011, rd_data_vv+576, rs1_data+576);
  TEST_FP_V_OP_rd_11( 82,  vfsqrt.v, 0x0000000000000011, rd_data_vv+640, rs1_data+640);
  TEST_FP_V_OP_rs1_11( 83,  vfsqrt.v, 0x0000000000000011, rd_data_vv+640, rs1_data+640);
  TEST_FP_V_OP_rd_12( 84,  vfsqrt.v, 0x0000000000000011, rd_data_vv+704, rs1_data+704);
  TEST_FP_V_OP_rs1_12( 85,  vfsqrt.v, 0x0000000000000011, rd_data_vv+704, rs1_data+704);
  TEST_FP_V_OP_rd_13( 86,  vfsqrt.v, 0x0000000000000011, rd_data_vv+768, rs1_data+768);
  TEST_FP_V_OP_rs1_13( 87,  vfsqrt.v, 0x0000000000000011, rd_data_vv+768, rs1_data+768);
  TEST_FP_V_OP_rd_14( 88,  vfsqrt.v, 0x0000000000000011, rd_data_vv+832, rs1_data+832);
  TEST_FP_V_OP_rs1_14( 89,  vfsqrt.v, 0x0000000000000011, rd_data_vv+832, rs1_data+832);
  TEST_FP_V_OP_rd_15( 90,  vfsqrt.v, 0x0000000000000011, rd_data_vv+896, rs1_data+896);
  TEST_FP_V_OP_rs1_15( 91,  vfsqrt.v, 0x0000000000000011, rd_data_vv+896, rs1_data+896);
  TEST_FP_V_OP_rd_16( 92,  vfsqrt.v, 0x0000000000000011, rd_data_vv+960, rs1_data+960);
  TEST_FP_V_OP_rs1_16( 93,  vfsqrt.v, 0x0000000000000011, rd_data_vv+960, rs1_data+960);
  TEST_FP_V_OP_rd_17( 94,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1024, rs1_data+1024);
  TEST_FP_V_OP_rs1_17( 95,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1024, rs1_data+1024);
  TEST_FP_V_OP_rd_18( 96,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1088, rs1_data+1088);
  TEST_FP_V_OP_rs1_18( 97,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1088, rs1_data+1088);
  TEST_FP_V_OP_rd_19( 98,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1152, rs1_data+1152);
  TEST_FP_V_OP_rs1_19( 99,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1152, rs1_data+1152);
  TEST_FP_V_OP_rd_20( 100,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1216, rs1_data+1216);
  TEST_FP_V_OP_rs1_20( 101,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1216, rs1_data+1216);
  TEST_FP_V_OP_rd_21( 102,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1280, rs1_data+1280);
  TEST_FP_V_OP_rs1_21( 103,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1280, rs1_data+1280);
  TEST_FP_V_OP_rd_22( 104,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1344, rs1_data+1344);
  TEST_FP_V_OP_rs1_22( 105,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1344, rs1_data+1344);
  TEST_FP_V_OP_rd_23( 106,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1408, rs1_data+1408);
  TEST_FP_V_OP_rs1_23( 107,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1408, rs1_data+1408);
  TEST_FP_V_OP_rd_24( 108,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1472, rs1_data+1472);
  TEST_FP_V_OP_rd_25( 109,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1536, rs1_data+1536);
  TEST_FP_V_OP_rs1_25( 110,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1536, rs1_data+1536);
  TEST_FP_V_OP_rd_26( 111,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1600, rs1_data+1600);
  TEST_FP_V_OP_rs1_26( 112,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1600, rs1_data+1600);
  TEST_FP_V_OP_rd_27( 113,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1664, rs1_data+1664);
  TEST_FP_V_OP_rs1_27( 114,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1664, rs1_data+1664);
  TEST_FP_V_OP_rd_28( 115,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1728, rs1_data+1728);
  TEST_FP_V_OP_rs1_28( 116,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1728, rs1_data+1728);
  TEST_FP_V_OP_rd_29( 117,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1792, rs1_data+1792);
  TEST_FP_V_OP_rs1_29( 118,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1792, rs1_data+1792);
  TEST_FP_V_OP_rd_30( 119,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1856, rs1_data+1856);
  TEST_FP_V_OP_rs1_30( 120,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1856, rs1_data+1856);
  TEST_FP_V_OP_rd_31( 121,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1920, rs1_data+1920);
  TEST_FP_V_OP_rs1_31( 122,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1920, rs1_data+1920);
  TEST_FP_V_OP_rd_1( 123,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1984, rs1_data+1984);
  TEST_FP_V_OP_rs1_1( 124,  vfsqrt.v, 0x0000000000000011, rd_data_vv+1984, rs1_data+1984);
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
.word	0x7F800000
.word	0x00000000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0xBF800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x80855555
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x00800001
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x80800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x00800000
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x807FFFFE
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x00000002
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x80000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x00000001
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x80000000
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0x16b77bce
.word	0x85a8a33c
.word	0xbe82002a
.word	0x6b4eed81
.word	0xfcf2b7b2
.word	0xb1a3f397
.word	0x81815039
.word	0x7df4c24f
.word	0x0827c929
.word	0xe1f1c6ec
.word	0x9b111081
.word	0x08c53c5a
.word	0x16e35174
.word	0x20553b83
.word	0xf4ed3db2
.word	0x5879b2ca
.word	0xf80d83b9
.word	0x7b48384f
.word	0x89a6c1a0
.word	0x31fe5439
.word	0x6ee2f5aa
.word	0x330f5715
.word	0x9f46020f
.word	0xb697e1c3
.word	0xf518acf6
.word	0x3958ea56
.word	0x56a29c95
.word	0xef286e01
.word	0xf6cad350
.word	0xe95400f6
.word	0x0b2ac811
.word	0x3ced78db
.word	0x75809524
.word	0xc5e59fb2
.word	0xdd81fa0a
.word	0xec9fb18d
.word	0x30e1830a
.word	0x21d2bbb0
.word	0x731a1760
.word	0x19167ebd
.word	0x7e537a04
.word	0xcf9dc475
.word	0x17f847a1
.word	0x5f4e2f05
.word	0x11065906
.word	0xa9663dbb
.word	0xb6d5707b
.word	0xef201e7b
.word	0xb4a84974
.word	0xc9feb8d1
.word	0xba38c7b1
.word	0x1877b042
.word	0x91778cbb
.word	0x2e715ec9
.word	0xebc88fd7
.word	0x6947de05
.word	0xaec12b86
.word	0x6164c29e
.word	0xba68fa1d
.word	0x17a54142
.word	0xbb7b049e
.word	0x08fab1e5
.word	0x1af6bb18
.word	0x74348a1d
.word	0xf41f5f9b
.word	0x604f267a
.word	0x8543a485
.word	0x17fca002
.word	0x3777625d
.word	0xca42df1f
.word	0xe9591298
.word	0x655428d1
.word	0x678995cf
.word	0x7ea84660
.word	0x049f1faf
.word	0x9a6ccdab
.word	0xf75264e4
.word	0x5b832e4f
.word	0x047e6b3b
.word	0xc18c4e25
.word	0x6676bf0e
.word	0x86738089
.word	0x1ee4a5ed
.word	0xb9545c29
.word	0x2c7cb95f
.word	0x8ab6881d
.word	0x32dc44c0
.word	0x7915e449
.word	0xb68216c7
.word	0x53c4ffc4
.word	0xc01a2b07
.word	0x6d56c00d
.word	0x231896cb
.word	0x3a6c685c
.word	0xe57e27bd
.word	0x3e6f7cbe
.word	0x8e74e2da
.word	0xfcea6243
.word	0x80eedc35
.word	0x048d92fb
.word	0xe8e803f4
.word	0x12c54b7b
.word	0x2d633cae
.word	0xbe8c5af3
.word	0x379def6c
.word	0xe298ae9a
.word	0x626b7cc5
.word	0x8f61b3a5
.word	0xe4219193
.word	0x01b8cfcd
.word	0x04bfcdf8
.word	0xd6cbbf81
.word	0x4bd075af
.word	0xe291d09b
.word	0xf0503b64
.word	0x21124d60
.word	0x17d5856b
.word	0x7989bf32
.word	0x6b84a91f
.word	0x3019a087
.word	0x01c79214
.word	0xea939be7
.word	0xc375122d
.word	0x116ec3d2
.word	0x2d7eeffe
.word	0xe013be07
.word	0xb45484fc
.word	0x2dcda7f1
.word	0x2e2151fa
.word	0x500c5f17
.word	0x984b6942
.word	0x9960c98a
.word	0xc0c7c26a
.word	0xc714bae1
.word	0x7c086243
.word	0x9a4397f5
.word	0xb02b37fb
.word	0xec0ac4f0
.word	0xabb5045d
.word	0x4de1938f
.word	0x4ef87036
.word	0x477553ed
.word	0xdf884a52
.word	0xe364a2c3
.word	0x5e3d04d3
.word	0xa37172c6
.word	0x39c33e1d
.word	0x5fa55642
.word	0xc6588c96
.word	0x57aa9ec7
.word	0x52a373c8
.word	0x868a5027
.word	0xafc3fa5e
.word	0x804beeba
.word	0xbf812338
.word	0x53cf2324
.word	0x1c2a2099
.word	0x77275ab3
.word	0x8f53143f
.word	0x7868d163
.word	0x3362ef56
.word	0xf5c4c30d
.word	0x3413c9a6
.word	0xbae49486
.word	0x4d195ecf
.word	0x55085e69
.word	0x497af66c
.word	0x776d41f0
.word	0x6b06fcef
.word	0xec9c3cae
.word	0xbbcdcd90
.word	0xa78b9e5d
.word	0xb517d569
.word	0x58ecb82f
.word	0x897683b0
.word	0x017fed42
.word	0x7ac46a81
.word	0x6b3424e3
.word	0xf78c7be0
.word	0x225c9001
.word	0x716f74e5
.word	0x5ea07308
.word	0x9cb1f841
.word	0x69773182
.word	0xba7c2bc1
.word	0x3615b6cd
.word	0xb7cbdb1c
.word	0x57503bd7
.word	0x08d9043f
.word	0xde4c459d
.word	0x7a26c712
.word	0x563028c3
.word	0x795e33bf
.word	0xf2d19a38
.word	0xf20bed88
.word	0x7e91e990
.word	0x28403d8f
.word	0xe451d935
.word	0x6cbd6936
.word	0x4bb4197f
.word	0xb2301f0d
.word	0xc0fe2faf
.word	0x16598049
.word	0x8b074d85
.word	0xb3044c5f
.word	0x52e624b8
.word	0xe4b5a3ae
.word	0x223b3100
.word	0x60e69e76
.word	0x7b1ae2f0
.word	0x8837caa2
.word	0xa64768d4
.word	0xe3cafbaa
.word	0x409e0a27
.word	0x8bca7953
.word	0x54110db1
.word	0xdd376b5e
.word	0x82997f29
.word	0x355719f2
.word	0x409cf5f2
.word	0xd0f04044
.word	0xb1f11cd7
.word	0xde5e4fa6
.word	0xd82dd4fd
.word	0xe58d530d
.word	0x4949dc26
.word	0x8e5f9ede
.word	0x8e4a63c9
.word	0x3e0b7f6a
.word	0x721e2d49
.word	0xb9420e82
.word	0x9f300bb4
.word	0xdaf09bbc
.word	0x33939602
.word	0x22d815c2
.word	0xdd6461b8
.word	0xa0c1de71
.word	0x8412c769
.word	0xe03a03d1
.word	0x1d7e0df1
.word	0xaa1ba77a
.word	0x1fd16c33
.word	0xe6b2620f
.word	0xd80b4e8d
.word	0x8c57dfcc
.word	0x72d00ff0
.word	0x8d71f3bd
.word	0x90df5366
.word	0x65e2e213
.word	0xd4af903f
.word	0x0b402769
.word	0xe520a1a5
.word	0x2fd98a32
.word	0x8d31c277
.word	0x431be53f
.word	0x163af993
.word	0x62d5fe2f
.word	0xbbbfcaf3
.word	0x8ad27026
.word	0x599ec422
.word	0xd0e57884
.word	0x315858ad
.word	0xbb79a22b
.word	0x80c7fec6
.word	0xb8a4eaba
.word	0x893e4f51
.word	0xa204c639
.word	0x092d4ba0
.word	0x8787ab14
.word	0x61ce2443
.word	0x8ac8c0d1
.word	0x2a519200
.word	0x156dd6bc
.word	0x35ceb876
.word	0x766125a9
.word	0x05269d43
.word	0x1591c3bb
.word	0x7f19aaaa
.word	0xb68e62d5
.word	0x98c5df64
.word	0x58a4f5f8
.word	0x1b5d4991
.word	0x02046b89
.word	0xf4223dde
.word	0xcf05164e
.word	0xaa67f476
.word	0x5e100e5a
.word	0x8f51944a
.word	0x01d283cd
.word	0x19ea57fc
.word	0xe246d9c3
.word	0xb3ede2cf
.word	0x661a98bb
.word	0xd2e52100
.word	0xb54c779c
.word	0x8b890ead
.word	0x6f6d8ebb
.word	0x701a72e3
.word	0x18854a53
.word	0xd8b646c3
.word	0x7a859a9b
.word	0x99fb1285
.word	0x6a49fdb6
.word	0xe54c4797
.word	0xa13e91a2
.word	0x56a16ea4
.word	0x8dc0e4ff
.word	0x267eb8c3
.word	0xbcdd3109
.word	0xd18cf677
.word	0xc592af51
.word	0x639952be
.word	0x5ecc40d7
.word	0x08e1872a
.word	0x699b0430
.word	0x515deb63
.word	0x55107f38
.word	0x5ed38442
.word	0x9444a8cf
.word	0x3b6f020e
.word	0x3d7a2c1a
.word	0xe12d2042
.word	0xddc02bcf
.word	0xd793ec85
.word	0x89179c2a
.word	0x7b5bb683
.word	0xf3060550
.word	0xeb6622a3
.word	0x370df4fd
.word	0xe7026d7d
.word	0xa7ef2bad
.word	0x5d994fff
.word	0x6ab30fe4
.word	0x72d35639
.word	0x27c70109
.word	0xf283b49c
.word	0x3c70fd0b
.word	0x1f46077b
.word	0xc626d7b5
.word	0xd8664806
.word	0xa37e6d45
.word	0x69155a81
.word	0xe78f6b83
.word	0x9aba564b
.word	0x3616aeda
.word	0xb6b43b38
.word	0x48363fc9
.word	0x18fd8be4
.word	0x4f1f58ba
.word	0x19e51db5
.word	0xe0c53c63
.word	0x192352ad
.word	0x5639134a
.word	0x3b3c24ec
.word	0x8376196a
.word	0x24fcba35
.word	0x2cd12f68
.word	0x5b91a296
.word	0x0a9edbe9
.word	0xbc4fb8ab
.word	0x68714601
.word	0xf6077257
.word	0x6baa10f2
.word	0x210eee6d
.word	0x9d9d1deb
.word	0x52a2c944
.word	0x69da5807
.word	0x5643827a
.word	0x548fa17d
.word	0x0125e3bc
.word	0x34294c82
.word	0xd612accc
.word	0x7c624102
.word	0x81457ac4
.word	0x169e8d7e
.word	0x82d5d8cc
.word	0x2afa1e78
.word	0xdb9ca373
.word	0x8a002b93
.word	0xb686377f
.word	0xc0570d1e
.word	0x6682aa99
.word	0xd3ab2b5b
.word	0x32ce890a
.word	0x50408aba
.word	0xb4ea3655
.word	0x57385489
.word	0xeef03e8d
.word	0xde17d645
.word	0x0e7f9a32
.word	0xeeca2f3b
.word	0xf14f95f4
.word	0x63b7a76e
.word	0xbcc9ab43
.word	0xdfeeae1d
.word	0x65eed45a
.word	0xc8e4911e
.word	0x61bee6e3
.word	0x5a888b0b
.word	0xe8b9b2cd
.word	0x1bc3cb1f
.word	0x6c9a9490
.word	0x94518e9b
.word	0x89b67375
.word	0xd4bea2c1
.word	0xd7ac95f6
.word	0xb4fe5b7c
.word	0x59dac688
.word	0xd864b555
.word	0xf0a45c48
.word	0x8debdd64
.word	0x78f0b6be
.word	0xea5bd793
.word	0x837bb1b9
.word	0xb8879ad6
.word	0xa62bf1a5
.word	0x27457e6e
.word	0xc42dea11
.word	0xbc0e79b9
.word	0x72ae0ac9
.word	0xe29df404
.word	0xb117f9b7
.word	0xf0abe8ea
.word	0x5b82f781
.word	0x3aba4a26
.word	0xefea5e67
.word	0x688be24b
.word	0x21ad1582
.word	0xa294f0b8
.word	0xa6440f97
.word	0x5ea2d0b9
.word	0xbdc0571c
.word	0x2442a91b
.word	0x0c377326
.word	0x533c8dfe
.word	0xe21ef6aa
.word	0x919fa67d
.word	0x873f1671
.word	0x2a9f2e23
.word	0xbe22927b
.word	0xa992efc3
.word	0x75ce1220
.word	0x4447a68d
.word	0x3f78b414
.word	0xbd72133e
.word	0x0cee6997
.word	0x1a1b49f6
.word	0x74cefef0
.word	0xdb8a3bd9
.word	0x4b329421
.word	0x3a31ab60
.word	0xe953c01f
.word	0x0f147ddf
.word	0xcf457330
.word	0x19f95636
.word	0x30610d6c
.word	0x7cfe6ad7
.word	0x51a59b6f
.word	0xbe384770
.word	0x336dc41b
.word	0xa87f271a
.word	0x6c9121e1
.word	0xa73c95c4
.word	0xcaf0a32c
.word	0x46f5a171
.word	0x251c1e00
.word	0xac7c3863
.word	0x8f02a18c
.word	0x91fd21c8
.word	0x4453aa24
.word	0x8cc4c438
.word	0xbcafd1ca
.word	0x767634b8
.word	0x177434a8
.word	0x4602bb95
.word	0xbb2a44f6
.word	0xe1cd9683
.word	0xc649858c
.word	0x834794d4
.word	0xe226001f
.word	0x3bbf119a
.word	0x0aeac265
.word	0x41649ded
.word	0x54d909fd
.word	0x82c44d2b
.word	0x85371e54
.word	0x91074282
.word	0x61ae58b5
.word	0xc611ba41
.word	0xd0fb779f
.word	0x999f8b26
.word	0xa113808e
.word	0x675a54fd
.word	0x8864b1ab
.word	0xcd9e4966
.word	0xecdb94a3
.word	0x50fb73b8
.word	0x1566303a
.word	0xf77c3228
.word	0xde7da192
.word	0x1a2510c7
.word	0x8c4f914e
.word	0xae52acb6
.word	0x269ca43a
.word	0x112bfa6f
.word	0xe6388e69
.word	0x9f9c2d14
.word	0x85d763a6
.word	0xac497736
.word	0x8a462146
.word	0xd2300ca6
.word	0xab04b597
.word	0xd5173d3b
.word	0x1c954c88
.word	0xae8f2f8a
.word	0xe18cd6d3
.word	0xe7128ead
.word	0x430c45f2
.word	0x1fece821
.word	0xdbe8db2f
.word	0x9deac411
.word	0xd578536b
.word	0x5a2112c5
.word	0x33755502
.word	0x41f512c8
.word	0x5b07c90e
.word	0x30e95eba
.word	0xdc43d0d7
.word	0xce250988
.word	0x546ef0b9
.word	0x7c69a228
.word	0x540da0bc
.word	0xb917bde6
.word	0x2b14a548
.word	0x5c51c72f
.word	0xe66cd16e
.word	0xf8e67fb0
.word	0x45b5c5f1
.word	0x6bd9ba9a
.word	0x9c1e8667
.word	0x8a2c7d45
.word	0xaf61ac13
.word	0xcc06f22d
.word	0x6ac84f04
.word	0x581f3afc
.word	0x6122b26e
.word	0xff4914a8
.word	0xf0a80a4a
.word	0x44577dfa
.word	0xe31172b1
.word	0x30b00f6c
.word	0x9cd4367e
.word	0x53266571
.word	0x39a2b9a9
.word	0xf628feb7
.word	0x519a8397
.word	0xd949e747
.word	0xfe0b7d68
.word	0xd2ec6f9d
.word	0x7b9f0a06
.word	0xe25828a9
.word	0x6ff72e08
.word	0xae72d34d
.word	0xf61fde3e
.word	0x1cb57d88
.word	0x3bb5e465
.word	0x89b4574b
.word	0xae23f858
.word	0x32b4b342
.word	0x9c5034c7
.word	0x6129cabb
.word	0x9af4bc9a
.word	0xc729acef
.word	0x7d485219
.word	0x4a3b445a
.word	0x276f4a82
.word	0xdd7bf9fc
.word	0x6797c5aa
.word	0x9c739bc0
.word	0x37e6587a
.word	0x292fa2d6
.word	0x57b6f48d
.word	0xa87ebd39
.word	0xda3b9803
.word	0xcf98db80
.word	0xa1993841
.word	0x214c72b3
.word	0x4a289aa8
.word	0x3d7777d1
.word	0x579e0114
.word	0x13d30cfc
.word	0x8a19a62b
.word	0x07041e7d
.word	0x3b192289
.word	0xb8f72c52
.word	0x3a7c4f91
.word	0x2eadf0ac
.word	0xdbfec094
.word	0x8c1ae516
.word	0xbb97f344
.word	0x2d614a74
.word	0xdbb7bc69
.word	0x75160c80
.word	0x026513b2
.word	0xb3301eb1
.word	0x513b24cd
.word	0xd2d18754
.word	0x0fccea6a
.word	0xb4e15b15
.word	0xb546b05b
.word	0x0f952852
.word	0x7dbe9d89
.word	0xf8791ac8
.word	0xd924a386
.word	0xdf5f99f4
.word	0x6618d504
.word	0x8849a498
.word	0xf2961261
.word	0xe303d466
.word	0xd9d90f64
.word	0x9ceb7bc1
.word	0x07b60686
.word	0x92dc0a8a
.word	0x93997373
.word	0xe19d8f2e
.word	0xdd4ad4c7
.word	0x0b3419eb
.word	0x46365e84
.word	0x92db17e9
.word	0x65cdd905
.word	0xdd60629d
.word	0x16478c58
.word	0xd11c290e
.word	0x0d899e08
.word	0xc9770a1f
.word	0xac39d155
.word	0x0f7a7733
.word	0xa946bce1
.word	0x4e00d0f3
.word	0x3aa41dc4
.word	0x0a9f9511
.word	0x5398487b
.word	0xf3782028
.word	0x69b76600
.word	0x8ca3efb3
.word	0xcb7da0de
.word	0x552d23d2
.word	0x3436f14c
.word	0x6f5f3f35
.word	0x53b5a207
.word	0xd20dfb9f
.word	0x8723b674
.word	0x0f348d99
.word	0x3886ab90
.word	0x0334f85a
.word	0xea1670df
.word	0xd13744b3
.word	0x883fe017
.word	0x1daf3b01
.word	0xa9c63a58
.word	0xec747b1c
.word	0x0c6eccf7
.word	0x4cad30bc
.word	0x477b3771
.word	0xaeef6b3d
.word	0x1555f68c
.word	0xb7e378a2
.word	0xb602bd3e
.word	0xaf130fb6
.word	0x31a4314a
.word	0xc723b3d7
.word	0x7015aa42
.word	0x0928aa3e
.word	0x22ef3704
.word	0xf352256b
.word	0x4da52bc4
.word	0x546d8880
.word	0xf78ee9c7
.word	0xc95bd691
.word	0x5239bc94
.word	0xb48c2fbf
.word	0x67e301b5
.word	0x240451c9
.word	0x27c6864f
.word	0x26c6f274
.word	0x25f55d4e
.word	0x5d2eb86f
.word	0x828a97e7
.word	0x67e912e1
.word	0x3d4617ee
.word	0x09322d7d
.word	0x1eca00ff
.word	0x2ecc47d2
.word	0xf3bb23d6
.word	0xab05bda1
.word	0xbebbadd8
.word	0x76ca2ed2
.word	0x2b20cd36
.word	0x524f229d
.word	0x5254e959
.word	0x2aef92ad
.word	0x31229858
.word	0xb06bc8f6
.word	0x5dcce032
.word	0x310e5031
.word	0xf2069096
.word	0x072a3060
.word	0x9c33042c
.word	0x06dd7d38
.word	0xe4b100b8
.word	0x04c5e517
.word	0x3b50cc02
.word	0x6f0086f2
.word	0xc583b3da
.word	0xae6ff135
.word	0x7815f9b0
.word	0x5cc84607
.word	0x754bced3
.word	0xaec59a2a
.word	0x8542dc85
.word	0x3af43c9d
.word	0xae8c12b8
.word	0x67be397d
.word	0x8758cfc4
.word	0x1de4f6af
.word	0x1a455288
.word	0x88db7d8c
.word	0xf937aafa
.word	0xca3650e2
.word	0xc7044eb3
.word	0x58933db0
.word	0x0545acbb
.word	0xb379a614
.word	0x9b3eb4cc
.word	0xe9519192
.word	0x2eb0d339
.word	0xf575e7bb
.word	0xee907664
.word	0x53960a4c
.word	0x87973a27
.word	0xa925b817
.word	0x1c1a1e45
.word	0x20dcdbeb
.word	0x2d3e0667
.word	0x53d05d72
.word	0xb822ad39
.word	0x4ffe6390
.word	0x9ef29035
.word	0xd0450fa2
.word	0x0d89744e
.word	0x346489f5
.word	0xd48dd733
.word	0x5d857c31
.word	0x9b185404
.word	0x41059de4
.word	0x12d11883
.word	0xa647e794
.word	0xd5710481
.word	0xcca75bc9
.word	0x28ea8990
.word	0x4914fd85
.word	0x9edd447a
.word	0x1a012a8e
.word	0x697d2a85
.word	0x0e3deb9d
.word	0x9da1bcd6
.word	0x5254ddf9
.word	0x0c3eab36

.align 4
rs2_data:
.word	0xd5173d3b
.word	0x1c954c88
.word	0xae8f2f8a
.word	0xe18cd6d3
.word	0xe7128ead
.word	0x430c45f2
.word	0x1fece821
.word	0xdbe8db2f
.word	0x9deac411
.word	0xd578536b
.word	0x5a2112c5
.word	0x33755502
.word	0x41f512c8
.word	0x5b07c90e
.word	0x30e95eba
.word	0xdc43d0d7
.word	0xce250988
.word	0x546ef0b9
.word	0x7c69a228
.word	0x540da0bc
.word	0xb917bde6
.word	0x2b14a548
.word	0x5c51c72f
.word	0xe66cd16e
.word	0xf8e67fb0
.word	0x45b5c5f1
.word	0x6bd9ba9a
.word	0x9c1e8667
.word	0x8a2c7d45
.word	0xaf61ac13
.word	0xcc06f22d
.word	0x6ac84f04
.word	0x581f3afc
.word	0x6122b26e
.word	0xff4914a8
.word	0xf0a80a4a
.word	0x44577dfa
.word	0xe31172b1
.word	0x30b00f6c
.word	0x9cd4367e
.word	0x53266571
.word	0x39a2b9a9
.word	0xf628feb7
.word	0x519a8397
.word	0xd949e747
.word	0xfe0b7d68
.word	0xd2ec6f9d
.word	0x7b9f0a06
.word	0xe25828a9
.word	0x6ff72e08
.word	0xae72d34d
.word	0xf61fde3e
.word	0x1cb57d88
.word	0x3bb5e465
.word	0x89b4574b
.word	0xae23f858
.word	0x32b4b342
.word	0x9c5034c7
.word	0x6129cabb
.word	0x9af4bc9a
.word	0xc729acef
.word	0x7d485219
.word	0x4a3b445a
.word	0x276f4a82
.word	0xdd7bf9fc
.word	0x6797c5aa
.word	0x9c739bc0
.word	0x37e6587a
.word	0x292fa2d6
.word	0x57b6f48d
.word	0xa87ebd39
.word	0xda3b9803
.word	0xcf98db80
.word	0xa1993841
.word	0x214c72b3
.word	0x4a289aa8
.word	0x3d7777d1
.word	0x579e0114
.word	0x13d30cfc
.word	0x8a19a62b
.word	0x07041e7d
.word	0x3b192289
.word	0xb8f72c52
.word	0x3a7c4f91
.word	0x2eadf0ac
.word	0xdbfec094
.word	0x8c1ae516
.word	0xbb97f344
.word	0x2d614a74
.word	0xdbb7bc69
.word	0x75160c80
.word	0x026513b2
.word	0xb3301eb1
.word	0x513b24cd
.word	0xd2d18754
.word	0x0fccea6a
.word	0xb4e15b15
.word	0xb546b05b
.word	0x0f952852
.word	0x7dbe9d89
.word	0xf8791ac8
.word	0xd924a386
.word	0xdf5f99f4
.word	0x6618d504
.word	0x8849a498
.word	0xf2961261
.word	0xe303d466
.word	0xd9d90f64
.word	0x9ceb7bc1
.word	0x07b60686
.word	0x92dc0a8a
.word	0x93997373
.word	0xe19d8f2e
.word	0xdd4ad4c7
.word	0x0b3419eb
.word	0x46365e84
.word	0x92db17e9
.word	0x65cdd905
.word	0xdd60629d
.word	0x16478c58
.word	0xd11c290e
.word	0x0d899e08
.word	0xc9770a1f
.word	0xac39d155
.word	0x0f7a7733
.word	0xa946bce1
.word	0x4e00d0f3
.word	0x3aa41dc4
.word	0x0a9f9511
.word	0x5398487b
.word	0xf3782028
.word	0x69b76600
.word	0x8ca3efb3
.word	0xcb7da0de
.word	0x552d23d2
.word	0x3436f14c
.word	0x6f5f3f35
.word	0x53b5a207
.word	0xd20dfb9f
.word	0x8723b674
.word	0x0f348d99
.word	0x3886ab90
.word	0x0334f85a
.word	0xea1670df
.word	0xd13744b3
.word	0x883fe017
.word	0x1daf3b01
.word	0xa9c63a58
.word	0xec747b1c
.word	0x0c6eccf7
.word	0x4cad30bc
.word	0x477b3771
.word	0xaeef6b3d
.word	0x1555f68c
.word	0xb7e378a2
.word	0xb602bd3e
.word	0xaf130fb6
.word	0x31a4314a
.word	0xc723b3d7
.word	0x7015aa42
.word	0x0928aa3e
.word	0x22ef3704
.word	0xf352256b
.word	0x4da52bc4
.word	0x546d8880
.word	0xf78ee9c7
.word	0xc95bd691
.word	0x5239bc94
.word	0xb48c2fbf
.word	0x67e301b5
.word	0x240451c9
.word	0x27c6864f
.word	0x26c6f274
.word	0x25f55d4e
.word	0x5d2eb86f
.word	0x828a97e7
.word	0x67e912e1
.word	0x3d4617ee
.word	0x09322d7d
.word	0x1eca00ff
.word	0x2ecc47d2
.word	0xf3bb23d6
.word	0xab05bda1
.word	0xbebbadd8
.word	0x76ca2ed2
.word	0x2b20cd36
.word	0x524f229d
.word	0x5254e959
.word	0x2aef92ad
.word	0x31229858
.word	0xb06bc8f6
.word	0x5dcce032
.word	0x310e5031
.word	0xf2069096
.word	0x072a3060
.word	0x9c33042c
.word	0x06dd7d38
.word	0xe4b100b8
.word	0x04c5e517
.word	0x3b50cc02
.word	0x6f0086f2
.word	0xc583b3da
.word	0xae6ff135
.word	0x7815f9b0
.word	0x5cc84607
.word	0x754bced3
.word	0xaec59a2a
.word	0x8542dc85
.word	0x3af43c9d
.word	0xae8c12b8
.word	0x67be397d
.word	0x8758cfc4
.word	0x1de4f6af
.word	0x1a455288
.word	0x88db7d8c
.word	0xf937aafa
.word	0xca3650e2
.word	0xc7044eb3
.word	0x58933db0
.word	0x0545acbb
.word	0xb379a614
.word	0x9b3eb4cc
.word	0xe9519192
.word	0x2eb0d339
.word	0xf575e7bb
.word	0xee907664
.word	0x53960a4c
.word	0x87973a27
.word	0xa925b817
.word	0x1c1a1e45
.word	0x20dcdbeb
.word	0x2d3e0667
.word	0x53d05d72
.word	0xb822ad39
.word	0x4ffe6390
.word	0x9ef29035
.word	0xd0450fa2
.word	0x0d89744e
.word	0x346489f5
.word	0xd48dd733
.word	0x5d857c31
.word	0x9b185404
.word	0x41059de4
.word	0x12d11883
.word	0xa647e794
.word	0xd5710481
.word	0xcca75bc9
.word	0x28ea8990
.word	0x4914fd85
.word	0x9edd447a
.word	0x1a012a8e
.word	0x697d2a85
.word	0x0e3deb9d
.word	0x9da1bcd6
.word	0x5254ddf9
.word	0x0c3eab36
.word	0x16b77bce
.word	0x85a8a33c
.word	0xbe82002a
.word	0x6b4eed81
.word	0xfcf2b7b2
.word	0xb1a3f397
.word	0x81815039
.word	0x7df4c24f
.word	0x0827c929
.word	0xe1f1c6ec
.word	0x9b111081
.word	0x08c53c5a
.word	0x16e35174
.word	0x20553b83
.word	0xf4ed3db2
.word	0x5879b2ca
.word	0xf80d83b9
.word	0x7b48384f
.word	0x89a6c1a0
.word	0x31fe5439
.word	0x6ee2f5aa
.word	0x330f5715
.word	0x9f46020f
.word	0xb697e1c3
.word	0xf518acf6
.word	0x3958ea56
.word	0x56a29c95
.word	0xef286e01
.word	0xf6cad350
.word	0xe95400f6
.word	0x0b2ac811
.word	0x3ced78db
.word	0x75809524
.word	0xc5e59fb2
.word	0xdd81fa0a
.word	0xec9fb18d
.word	0x30e1830a
.word	0x21d2bbb0
.word	0x731a1760
.word	0x19167ebd
.word	0x7e537a04
.word	0xcf9dc475
.word	0x17f847a1
.word	0x5f4e2f05
.word	0x11065906
.word	0xa9663dbb
.word	0xb6d5707b
.word	0xef201e7b
.word	0xb4a84974
.word	0xc9feb8d1
.word	0xba38c7b1
.word	0x1877b042
.word	0x91778cbb
.word	0x2e715ec9
.word	0xebc88fd7
.word	0x6947de05
.word	0xaec12b86
.word	0x6164c29e
.word	0xba68fa1d
.word	0x17a54142
.word	0xbb7b049e
.word	0x08fab1e5
.word	0x1af6bb18
.word	0x74348a1d
.word	0xf41f5f9b
.word	0x604f267a
.word	0x8543a485
.word	0x17fca002
.word	0x3777625d
.word	0xca42df1f
.word	0xe9591298
.word	0x655428d1
.word	0x678995cf
.word	0x7ea84660
.word	0x049f1faf
.word	0x9a6ccdab
.word	0xf75264e4
.word	0x5b832e4f
.word	0x047e6b3b
.word	0xc18c4e25
.word	0x6676bf0e
.word	0x86738089
.word	0x1ee4a5ed
.word	0xb9545c29
.word	0x2c7cb95f
.word	0x8ab6881d
.word	0x32dc44c0
.word	0x7915e449
.word	0xb68216c7
.word	0x53c4ffc4
.word	0xc01a2b07
.word	0x6d56c00d
.word	0x231896cb
.word	0x3a6c685c
.word	0xe57e27bd
.word	0x3e6f7cbe
.word	0x8e74e2da
.word	0xfcea6243
.word	0x80eedc35
.word	0x048d92fb
.word	0xe8e803f4
.word	0x12c54b7b
.word	0x2d633cae
.word	0xbe8c5af3
.word	0x379def6c
.word	0xe298ae9a
.word	0x626b7cc5
.word	0x8f61b3a5
.word	0xe4219193
.word	0x01b8cfcd
.word	0x04bfcdf8
.word	0xd6cbbf81
.word	0x4bd075af
.word	0xe291d09b
.word	0xf0503b64
.word	0x21124d60
.word	0x17d5856b
.word	0x7989bf32
.word	0x6b84a91f
.word	0x3019a087
.word	0x01c79214
.word	0xea939be7
.word	0xc375122d
.word	0x116ec3d2
.word	0x2d7eeffe
.word	0xe013be07
.word	0xb45484fc
.word	0x2dcda7f1
.word	0x2e2151fa
.word	0x500c5f17
.word	0x984b6942
.word	0x9960c98a
.word	0xc0c7c26a
.word	0xc714bae1
.word	0x7c086243
.word	0x9a4397f5
.word	0xb02b37fb
.word	0xec0ac4f0
.word	0xabb5045d
.word	0x4de1938f
.word	0x4ef87036
.word	0x477553ed
.word	0xdf884a52
.word	0xe364a2c3
.word	0x5e3d04d3
.word	0xa37172c6
.word	0x39c33e1d
.word	0x5fa55642
.word	0xc6588c96
.word	0x57aa9ec7
.word	0x52a373c8
.word	0x868a5027
.word	0xafc3fa5e
.word	0x804beeba
.word	0xbf812338
.word	0x53cf2324
.word	0x1c2a2099
.word	0x77275ab3
.word	0x8f53143f
.word	0x7868d163
.word	0x3362ef56
.word	0xf5c4c30d
.word	0x3413c9a6
.word	0xbae49486
.word	0x4d195ecf
.word	0x55085e69
.word	0x497af66c
.word	0x776d41f0
.word	0x6b06fcef
.word	0xec9c3cae
.word	0xbbcdcd90
.word	0xa78b9e5d
.word	0xb517d569
.word	0x58ecb82f
.word	0x897683b0
.word	0x017fed42
.word	0x7ac46a81
.word	0x6b3424e3
.word	0xf78c7be0
.word	0x225c9001
.word	0x716f74e5
.word	0x5ea07308
.word	0x9cb1f841
.word	0x69773182
.word	0xba7c2bc1
.word	0x3615b6cd
.word	0xb7cbdb1c
.word	0x57503bd7
.word	0x08d9043f
.word	0xde4c459d
.word	0x7a26c712
.word	0x563028c3
.word	0x795e33bf
.word	0xf2d19a38
.word	0xf20bed88
.word	0x7e91e990
.word	0x28403d8f
.word	0xe451d935
.word	0x6cbd6936
.word	0x4bb4197f
.word	0xb2301f0d
.word	0xc0fe2faf
.word	0x16598049
.word	0x8b074d85
.word	0xb3044c5f
.word	0x52e624b8
.word	0xe4b5a3ae
.word	0x223b3100
.word	0x60e69e76
.word	0x7b1ae2f0
.word	0x8837caa2
.word	0xa64768d4
.word	0xe3cafbaa
.word	0x409e0a27
.word	0x8bca7953
.word	0x54110db1
.word	0xdd376b5e
.word	0x82997f29
.word	0x355719f2
.word	0x409cf5f2
.word	0xd0f04044
.word	0xb1f11cd7
.word	0xde5e4fa6
.word	0xd82dd4fd
.word	0xe58d530d
.word	0x4949dc26
.word	0x8e5f9ede
.word	0x8e4a63c9
.word	0x3e0b7f6a
.word	0x721e2d49
.word	0xb9420e82
.word	0x9f300bb4
.word	0xdaf09bbc
.word	0x33939602
.word	0x22d815c2
.word	0xdd6461b8
.word	0xa0c1de71
.word	0x8412c769
.word	0xe03a03d1
.word	0x1d7e0df1
.word	0xaa1ba77a
.word	0x1fd16c33
.word	0xe6b2620f
.word	0xd80b4e8d
.word	0x8c57dfcc
.word	0x72d00ff0
.word	0x8d71f3bd
.word	0x90df5366
.word	0x65e2e213
.word	0xd4af903f
.word	0x0b402769
.word	0xe520a1a5
.word	0x2fd98a32
.word	0x8d31c277
.word	0x431be53f
.word	0x163af993
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x00000000
.word	0xBF800000
.word	0x3F800000
.word	0xFF7FFFFF
.word	0x7F7FFFFF
.word	0x80855555
.word	0x00800001
.word	0x80800000
.word	0x00800000
.word	0x807FFFFF
.word	0x007FFFFF
.word	0x807FFFFE
.word	0x00000002
.word	0x80000001
.word	0x00000001
.word	0x80000000
.word	0x62d5fe2f
.word	0xbbbfcaf3
.word	0x8ad27026
.word	0x599ec422
.word	0xd0e57884
.word	0x315858ad
.word	0xbb79a22b
.word	0x80c7fec6
.word	0xb8a4eaba
.word	0x893e4f51
.word	0xa204c639
.word	0x092d4ba0
.word	0x8787ab14
.word	0x61ce2443
.word	0x8ac8c0d1
.word	0x2a519200
.word	0x156dd6bc
.word	0x35ceb876
.word	0x766125a9
.word	0x05269d43
.word	0x1591c3bb
.word	0x7f19aaaa
.word	0xb68e62d5
.word	0x98c5df64
.word	0x58a4f5f8
.word	0x1b5d4991
.word	0x02046b89
.word	0xf4223dde
.word	0xcf05164e
.word	0xaa67f476
.word	0x5e100e5a
.word	0x8f51944a
.word	0x01d283cd
.word	0x19ea57fc
.word	0xe246d9c3
.word	0xb3ede2cf
.word	0x661a98bb
.word	0xd2e52100
.word	0xb54c779c
.word	0x8b890ead
.word	0x6f6d8ebb
.word	0x701a72e3
.word	0x18854a53
.word	0xd8b646c3
.word	0x7a859a9b
.word	0x99fb1285
.word	0x6a49fdb6
.word	0xe54c4797
.word	0xa13e91a2
.word	0x56a16ea4
.word	0x8dc0e4ff
.word	0x267eb8c3
.word	0xbcdd3109
.word	0xd18cf677
.word	0xc592af51
.word	0x639952be
.word	0x5ecc40d7
.word	0x08e1872a
.word	0x699b0430
.word	0x515deb63
.word	0x55107f38
.word	0x5ed38442
.word	0x9444a8cf
.word	0x3b6f020e
.word	0x3d7a2c1a
.word	0xe12d2042
.word	0xddc02bcf
.word	0xd793ec85
.word	0x89179c2a
.word	0x7b5bb683
.word	0xf3060550
.word	0xeb6622a3
.word	0x370df4fd
.word	0xe7026d7d
.word	0xa7ef2bad
.word	0x5d994fff
.word	0x6ab30fe4
.word	0x72d35639
.word	0x27c70109
.word	0xf283b49c
.word	0x3c70fd0b
.word	0x1f46077b
.word	0xc626d7b5
.word	0xd8664806
.word	0xa37e6d45
.word	0x69155a81
.word	0xe78f6b83
.word	0x9aba564b
.word	0x3616aeda
.word	0xb6b43b38
.word	0x48363fc9
.word	0x18fd8be4
.word	0x4f1f58ba
.word	0x19e51db5
.word	0xe0c53c63
.word	0x192352ad
.word	0x5639134a
.word	0x3b3c24ec
.word	0x8376196a
.word	0x24fcba35
.word	0x2cd12f68
.word	0x5b91a296
.word	0x0a9edbe9
.word	0xbc4fb8ab
.word	0x68714601
.word	0xf6077257
.word	0x6baa10f2
.word	0x210eee6d
.word	0x9d9d1deb
.word	0x52a2c944
.word	0x69da5807
.word	0x5643827a
.word	0x548fa17d
.word	0x0125e3bc
.word	0x34294c82
.word	0xd612accc
.word	0x7c624102
.word	0x81457ac4
.word	0x169e8d7e
.word	0x82d5d8cc
.word	0x2afa1e78
.word	0xdb9ca373
.word	0x8a002b93
.word	0xb686377f
.word	0xc0570d1e
.word	0x6682aa99
.word	0xd3ab2b5b
.word	0x32ce890a
.word	0x50408aba
.word	0xb4ea3655
.word	0x57385489
.word	0xeef03e8d
.word	0xde17d645
.word	0x0e7f9a32
.word	0xeeca2f3b
.word	0xf14f95f4
.word	0x63b7a76e
.word	0xbcc9ab43
.word	0xdfeeae1d
.word	0x65eed45a
.word	0xc8e4911e
.word	0x61bee6e3
.word	0x5a888b0b
.word	0xe8b9b2cd
.word	0x1bc3cb1f
.word	0x6c9a9490
.word	0x94518e9b
.word	0x89b67375
.word	0xd4bea2c1
.word	0xd7ac95f6
.word	0xb4fe5b7c
.word	0x59dac688
.word	0xd864b555
.word	0xf0a45c48
.word	0x8debdd64
.word	0x78f0b6be
.word	0xea5bd793
.word	0x837bb1b9
.word	0xb8879ad6
.word	0xa62bf1a5
.word	0x27457e6e
.word	0xc42dea11
.word	0xbc0e79b9
.word	0x72ae0ac9
.word	0xe29df404
.word	0xb117f9b7
.word	0xf0abe8ea
.word	0x5b82f781
.word	0x3aba4a26
.word	0xefea5e67
.word	0x688be24b
.word	0x21ad1582
.word	0xa294f0b8
.word	0xa6440f97
.word	0x5ea2d0b9
.word	0xbdc0571c
.word	0x2442a91b
.word	0x0c377326
.word	0x533c8dfe
.word	0xe21ef6aa
.word	0x919fa67d
.word	0x873f1671
.word	0x2a9f2e23
.word	0xbe22927b
.word	0xa992efc3
.word	0x75ce1220
.word	0x4447a68d
.word	0x3f78b414
.word	0xbd72133e
.word	0x0cee6997
.word	0x1a1b49f6
.word	0x74cefef0
.word	0xdb8a3bd9
.word	0x4b329421
.word	0x3a31ab60
.word	0xe953c01f
.word	0x0f147ddf
.word	0xcf457330
.word	0x19f95636
.word	0x30610d6c
.word	0x7cfe6ad7
.word	0x51a59b6f
.word	0xbe384770
.word	0x336dc41b
.word	0xa87f271a
.word	0x6c9121e1
.word	0xa73c95c4
.word	0xcaf0a32c
.word	0x46f5a171
.word	0x251c1e00
.word	0xac7c3863
.word	0x8f02a18c
.word	0x91fd21c8
.word	0x4453aa24
.word	0x8cc4c438
.word	0xbcafd1ca
.word	0x767634b8
.word	0x177434a8
.word	0x4602bb95
.word	0xbb2a44f6
.word	0xe1cd9683
.word	0xc649858c
.word	0x834794d4
.word	0xe226001f
.word	0x3bbf119a
.word	0x0aeac265
.word	0x41649ded
.word	0x54d909fd
.word	0x82c44d2b
.word	0x85371e54
.word	0x91074282
.word	0x61ae58b5
.word	0xc611ba41
.word	0xd0fb779f
.word	0x999f8b26
.word	0xa113808e
.word	0x675a54fd
.word	0x8864b1ab
.word	0xcd9e4966
.word	0xecdb94a3
.word	0x50fb73b8
.word	0x1566303a
.word	0xf77c3228
.word	0xde7da192
.word	0x1a2510c7
.word	0x8c4f914e
.word	0xae52acb6
.word	0x269ca43a
.word	0x112bfa6f
.word	0xe6388e69
.word	0x9f9c2d14
.word	0x85d763a6
.word	0xac497736
.word	0x8a462146
.word	0xd2300ca6
.word	0xab04b597

.align 4
rd_data_vv:
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3f800000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x3f800000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5f7fffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f7fffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5f7fffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5f7fffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x20000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x20000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x20000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x20000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x20000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x20000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x20000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x20000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1fffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1fffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1fffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1fffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1a800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1a800000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1a800000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1a800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1a3504f3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1a3504f3
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1a3504f3
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1a3504f3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x556628e4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5eb1001d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x241ee3f5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4bfcd45e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x38b46d76
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3e2e5881
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2c444844
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4f65bedd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2bfbcf5a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x546232f6
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2b91707f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x59d6fbe6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2bb3d278
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x52690d15
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5c43e372
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x566a7840
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3ef79b24
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22069db8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3041875c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x37c65070
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28773b79
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x36a23f23
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x46a9ec41
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4f9179bc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x49a2d473
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5bf4224b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5b767360
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x207ff6a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x30ed9f1e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x547b8ee4
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4b66e289
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ad45c28
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5f08a9bc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4597d4d1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x30dae89e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x49c0b377
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x400dbe1d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2e7f067f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2adac833
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4c8e8e34
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2452a072
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x34e79fec
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x224e86d3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x32ff5c2d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x518c1730
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x486e59f5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3d775bb0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4e8c15ef
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2c342658
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2c4c7a02
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3233dbcb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x303f4947
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4adfb83a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x392297d6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x52aed7e2
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4ca7577e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5c2f881c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x59154192
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4d817994
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x3094d840
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x3f7c534a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5a22c638
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x37f00728
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x3976b6f2
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4a26ad23
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x509562f8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x330d9932
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x397a9bf9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x49be697a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55201f98
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x488ca230
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5d8ead91
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3377812b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3babb5b2
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x44cfc199
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3cfe2612
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x20f22a23
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x27a1f44f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5e9c3378
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x52c5ccea
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x42d81215
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2ae204ba
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3d10f001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5499372d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x39d868f7
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x437d98d5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x57c3bd83
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x46916709
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x48da0e6e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x339f68a5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2f20ccb0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x48e976bc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ea1f046
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3d673268
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5bc3f16d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2260f478
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x371671d9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x365c8f2e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2923990d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x342d43db
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x547e9440
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3f800000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x3f800000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3f800000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x3f800000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5f7fffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f7fffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5f7fffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5f7fffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f7fffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5f7fffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5f7fffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5f7fffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x20000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x20000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x20000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x20000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x20000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x20000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x20000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x20000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x20000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x20000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1fffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1fffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1fffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1fffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1fffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1fffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1fffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1fffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1a800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1a800000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1a800000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1a800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1a800000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1a800000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1a800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1a800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1a3504f3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1a3504f3
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1a3504f3
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1a3504f3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1a3504f3
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1a3504f3
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1a3504f3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1a3504f3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
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
.word	0x556628e4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5eb1001d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x241ee3f5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x556628e4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5eb1001d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x241ee3f5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4bfcd45e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x38b46d76
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4bfcd45e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x38b46d76
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3e2e5881
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2c444844
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4f65bedd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3e2e5881
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2c444844
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4f65bedd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2bfbcf5a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x546232f6
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2b91707f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2bfbcf5a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x546232f6
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2b91707f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x59d6fbe6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2bb3d278
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x52690d15
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x59d6fbe6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2bb3d278
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x52690d15
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5c43e372
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x566a7840
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5c43e372
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x566a7840
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3ef79b24
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22069db8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3ef79b24
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x22069db8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3041875c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x37c65070
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x28773b79
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x36a23f23
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x46a9ec41
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x36a23f23
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x46a9ec41
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4f9179bc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x49a2d473
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4f9179bc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x49a2d473
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5bf4224b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5b767360
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5bf4224b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5b767360
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x207ff6a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x30ed9f1e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x547b8ee4
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4b66e289
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x207ff6a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x30ed9f1e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x547b8ee4
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4b66e289
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ad45c28
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5f08a9bc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4597d4d1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4ad45c28
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5f08a9bc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4597d4d1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x30dae89e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x49c0b377
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x400dbe1d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x30dae89e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x49c0b377
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x400dbe1d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fc00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2e7f067f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2e7f067f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7fc00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fc00000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7fc00000
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
    

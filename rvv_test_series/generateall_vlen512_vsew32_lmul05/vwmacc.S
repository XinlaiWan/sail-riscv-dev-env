#----------------------------------------------------------------------------- 
    # vwmacc.S
    #-----------------------------------------------------------------------------
    #
    # Test vwmacc instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vwmacc)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_W_VX_OP_RV 
#define TEST_W_VX_OP_RV( testnum, inst, result, val1, val2 ) \
    TEST_CASE_LOOP_W( testnum, v24, result, \
        VSET_DOUBLE_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        VSET_VSEW_4AVL \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val2; \
        vle32.v v8, (x7); \
        li x1, MASK_XLEN(val1); \
        inst v24, x1, v8, v0.t; ; \
    )
#undef TEST_W_VV_OP_WITH_INIT 
#define TEST_W_VV_OP_WITH_INIT( testnum, inst, result, val1, val2 ) \
    TEST_CASE_LOOP_W( testnum, v24, result, \
        VSET_DOUBLE_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        VSET_VSEW_4AVL \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle32.v v8, (x7); \
        la x7, val2; \
        vle32.v v16, (x7); \
        inst v24, v8, v16, v0.t; ; \
    )
#define TEST_W_VV_OP_WITH_INIT_12( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v2, (x7); \
                inst v24, v8, v2, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_13( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v3, (x7); \
                inst v24, v8, v3, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_14( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v4, (x7); \
                inst v24, v8, v4, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_15( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v5, (x7); \
                inst v24, v8, v5, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_16( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v6, (x7); \
                inst v24, v8, v6, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_17( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v7, (x7); \
                inst v24, v8, v7, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_19( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v9, (x7); \
                inst v24, v8, v9, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_110( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v10, (x7); \
                inst v24, v8, v10, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_111( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v11, (x7); \
                inst v24, v8, v11, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_112( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v12, (x7); \
                inst v24, v8, v12, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_113( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v13, (x7); \
                inst v24, v8, v13, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_114( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v14, (x7); \
                inst v24, v8, v14, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_115( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v15, (x7); \
                inst v24, v8, v15, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_117( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v17, (x7); \
                inst v24, v8, v17, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_118( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v18, (x7); \
                inst v24, v8, v18, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_119( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v19, (x7); \
                inst v24, v8, v19, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_120( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v20, (x7); \
                inst v24, v8, v20, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_121( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v21, (x7); \
                inst v24, v8, v21, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_122( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v22, (x7); \
                inst v24, v8, v22, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_123( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v23, (x7); \
                inst v24, v8, v23, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_125( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v25, (x7); \
                inst v24, v8, v25, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_126( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v26, (x7); \
                inst v24, v8, v26, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_127( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v27, (x7); \
                inst v24, v8, v27, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_128( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v28, (x7); \
                inst v24, v8, v28, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_129( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v29, (x7); \
                inst v24, v8, v29, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_130( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v30, (x7); \
                inst v24, v8, v30, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_131( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v24, result,  \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v31, (x7); \
                inst v24, v8, v31, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd1( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v1, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v1, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v1, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd2( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v2, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v2, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v2, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd3( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v3, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v3, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v3, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd4( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v4, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v4, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v4, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd5( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v5, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v5, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v5, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd6( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v6, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v6, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v6, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd7( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v7, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v7, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v7, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd9( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v9, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v9, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v9, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd10( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v10, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v10, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v10, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd11( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v11, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v11, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v11, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd12( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v12, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v12, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v12, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd13( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v13, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v13, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v13, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd14( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v14, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v14, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v14, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd15( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v15, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v15, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v15, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd17( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v17, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v17, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v17, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd18( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v18, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v18, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v18, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd19( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v19, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v19, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v19, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd20( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v20, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v20, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v20, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd21( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v21, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v21, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v21, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd22( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v22, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v22, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v22, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd23( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v23, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v23, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v23, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd25( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v25, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v25, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v25, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd26( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v26, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v26, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v26, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd27( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v27, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v27, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v27, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd28( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v28, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v28, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v28, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd29( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v29, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v29, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v29, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd30( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v30, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v30, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v30, v8, v16, v0.t;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd31( testnum, inst, result, val1, val2 )  \
            TEST_CASE_LOOP_W( testnum, v31, result, \
                VSET_DOUBLE_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v31, (x7); \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v31, v8, v16, v0.t;  \
                )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_W_VV_OP_WITH_INIT( 1,  vwmacc.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_W_VV_OP_WITH_INIT( 2,  vwmacc.vv, rd_data_vv+64, rs2_data+32, rs1_data+32)
  TEST_W_VV_OP_WITH_INIT( 3,  vwmacc.vv, rd_data_vv+128, rs2_data+64, rs1_data+64)
  TEST_W_VV_OP_WITH_INIT( 4,  vwmacc.vv, rd_data_vv+192, rs2_data+96, rs1_data+96)
  TEST_W_VV_OP_WITH_INIT( 5,  vwmacc.vv, rd_data_vv+256, rs2_data+128, rs1_data+128)
  TEST_W_VV_OP_WITH_INIT( 6,  vwmacc.vv, rd_data_vv+320, rs2_data+160, rs1_data+160)
  TEST_W_VV_OP_WITH_INIT( 7,  vwmacc.vv, rd_data_vv+384, rs2_data+192, rs1_data+192)
  TEST_W_VV_OP_WITH_INIT( 8,  vwmacc.vv, rd_data_vv+448, rs2_data+224, rs1_data+224)
  TEST_W_VV_OP_WITH_INIT( 9,  vwmacc.vv, rd_data_vv+512, rs2_data+256, rs1_data+256)
  TEST_W_VV_OP_WITH_INIT( 10,  vwmacc.vv, rd_data_vv+576, rs2_data+288, rs1_data+288)
  TEST_W_VV_OP_WITH_INIT( 11,  vwmacc.vv, rd_data_vv+640, rs2_data+320, rs1_data+320)
  TEST_W_VV_OP_WITH_INIT( 12,  vwmacc.vv, rd_data_vv+704, rs2_data+352, rs1_data+352)
  TEST_W_VV_OP_WITH_INIT( 13,  vwmacc.vv, rd_data_vv+768, rs2_data+384, rs1_data+384)
  TEST_W_VV_OP_WITH_INIT( 14,  vwmacc.vv, rd_data_vv+832, rs2_data+416, rs1_data+416)
  TEST_W_VV_OP_WITH_INIT( 15,  vwmacc.vv, rd_data_vv+896, rs2_data+448, rs1_data+448)
  TEST_W_VV_OP_WITH_INIT( 16,  vwmacc.vv, rd_data_vv+960, rs2_data+480, rs1_data+480)
  TEST_W_VV_OP_WITH_INIT( 17,  vwmacc.vv, rd_data_vv+1024, rs2_data+512, rs1_data+512)
  TEST_W_VV_OP_WITH_INIT( 18,  vwmacc.vv, rd_data_vv+1088, rs2_data+544, rs1_data+544)
  TEST_W_VV_OP_WITH_INIT( 19,  vwmacc.vv, rd_data_vv+1152, rs2_data+576, rs1_data+576)
  TEST_W_VV_OP_WITH_INIT( 20,  vwmacc.vv, rd_data_vv+1216, rs2_data+608, rs1_data+608)
  TEST_W_VV_OP_WITH_INIT( 21,  vwmacc.vv, rd_data_vv+1280, rs2_data+640, rs1_data+640)
  TEST_W_VV_OP_WITH_INIT( 22,  vwmacc.vv, rd_data_vv+1344, rs2_data+672, rs1_data+672)
  TEST_W_VV_OP_WITH_INIT( 23,  vwmacc.vv, rd_data_vv+1408, rs2_data+704, rs1_data+704)
  TEST_W_VV_OP_WITH_INIT( 24,  vwmacc.vv, rd_data_vv+1472, rs2_data+736, rs1_data+736)
  TEST_W_VV_OP_WITH_INIT( 25,  vwmacc.vv, rd_data_vv+1536, rs2_data+768, rs1_data+768)
  TEST_W_VV_OP_WITH_INIT( 26,  vwmacc.vv, rd_data_vv+1600, rs2_data+800, rs1_data+800)
  TEST_W_VV_OP_WITH_INIT( 27,  vwmacc.vv, rd_data_vv+1664, rs2_data+832, rs1_data+832)
  TEST_W_VV_OP_WITH_INIT( 28,  vwmacc.vv, rd_data_vv+1728, rs2_data+864, rs1_data+864)
  TEST_W_VV_OP_WITH_INIT( 29,  vwmacc.vv, rd_data_vv+1792, rs2_data+896, rs1_data+896)
  TEST_W_VV_OP_WITH_INIT( 30,  vwmacc.vv, rd_data_vv+1856, rs2_data+928, rs1_data+928)
  TEST_W_VV_OP_WITH_INIT( 31,  vwmacc.vv, rd_data_vv+1920, rs2_data+960, rs1_data+960)
  TEST_W_VV_OP_WITH_INIT( 32,  vwmacc.vv, rd_data_vv+1984, rs2_data+992, rs1_data+992)
  TEST_W_VV_OP_WITH_INIT( 33,  vwmacc.vv, rd_data_vv+2048, rs2_data+1024, rs1_data+1024)
  TEST_W_VV_OP_WITH_INIT( 34,  vwmacc.vv, rd_data_vv+2112, rs2_data+1056, rs1_data+1056)
  TEST_W_VV_OP_WITH_INIT( 35,  vwmacc.vv, rd_data_vv+2176, rs2_data+1088, rs1_data+1088)
  TEST_W_VV_OP_WITH_INIT( 36,  vwmacc.vv, rd_data_vv+2240, rs2_data+1120, rs1_data+1120)
  TEST_W_VV_OP_WITH_INIT( 37,  vwmacc.vv, rd_data_vv+2304, rs2_data+1152, rs1_data+1152)
  TEST_W_VV_OP_WITH_INIT( 38,  vwmacc.vv, rd_data_vv+2368, rs2_data+1184, rs1_data+1184)
  TEST_W_VV_OP_WITH_INIT( 39,  vwmacc.vv, rd_data_vv+2432, rs2_data+1216, rs1_data+1216)
  TEST_W_VV_OP_WITH_INIT( 40,  vwmacc.vv, rd_data_vv+2496, rs2_data+1248, rs1_data+1248)
  TEST_W_VV_OP_WITH_INIT( 41,  vwmacc.vv, rd_data_vv+2560, rs2_data+1280, rs1_data+1280)
  TEST_W_VV_OP_WITH_INIT( 42,  vwmacc.vv, rd_data_vv+2624, rs2_data+1312, rs1_data+1312)
  TEST_W_VV_OP_WITH_INIT( 43,  vwmacc.vv, rd_data_vv+2688, rs2_data+1344, rs1_data+1344)
  TEST_W_VV_OP_WITH_INIT( 44,  vwmacc.vv, rd_data_vv+2752, rs2_data+1376, rs1_data+1376)
  TEST_W_VV_OP_WITH_INIT( 45,  vwmacc.vv, rd_data_vv+2816, rs2_data+1408, rs1_data+1408)
  TEST_W_VV_OP_WITH_INIT( 46,  vwmacc.vv, rd_data_vv+2880, rs2_data+1440, rs1_data+1440)
  TEST_W_VV_OP_WITH_INIT( 47,  vwmacc.vv, rd_data_vv+2944, rs2_data+1472, rs1_data+1472)
  TEST_W_VV_OP_WITH_INIT( 48,  vwmacc.vv, rd_data_vv+3008, rs2_data+1504, rs1_data+1504)
  TEST_W_VV_OP_WITH_INIT( 49,  vwmacc.vv, rd_data_vv+3072, rs2_data+1536, rs1_data+1536)
  TEST_W_VV_OP_WITH_INIT( 50,  vwmacc.vv, rd_data_vv+3136, rs2_data+1568, rs1_data+1568)
  TEST_W_VV_OP_WITH_INIT( 51,  vwmacc.vv, rd_data_vv+3200, rs2_data+1600, rs1_data+1600)
  TEST_W_VV_OP_WITH_INIT( 52,  vwmacc.vv, rd_data_vv+3264, rs2_data+1632, rs1_data+1632)
  TEST_W_VV_OP_WITH_INIT( 53,  vwmacc.vv, rd_data_vv+3328, rs2_data+1664, rs1_data+1664)
  TEST_W_VV_OP_WITH_INIT( 54,  vwmacc.vv, rd_data_vv+3392, rs2_data+1696, rs1_data+1696)
  TEST_W_VV_OP_WITH_INIT( 55,  vwmacc.vv, rd_data_vv+3456, rs2_data+1728, rs1_data+1728)
  TEST_W_VV_OP_WITH_INIT( 56,  vwmacc.vv, rd_data_vv+3520, rs2_data+1760, rs1_data+1760)
  TEST_W_VV_OP_WITH_INIT( 57,  vwmacc.vv, rd_data_vv+3584, rs2_data+1792, rs1_data+1792)
  TEST_W_VV_OP_WITH_INIT( 58,  vwmacc.vv, rd_data_vv+3648, rs2_data+1824, rs1_data+1824)
  TEST_W_VV_OP_WITH_INIT( 59,  vwmacc.vv, rd_data_vv+3712, rs2_data+1856, rs1_data+1856)
  TEST_W_VV_OP_WITH_INIT( 60,  vwmacc.vv, rd_data_vv+3776, rs2_data+1888, rs1_data+1888)
  TEST_W_VV_OP_WITH_INIT( 61,  vwmacc.vv, rd_data_vv+3840, rs2_data+1920, rs1_data+1920)
  TEST_W_VV_OP_WITH_INIT( 62,  vwmacc.vv, rd_data_vv+3904, rs2_data+1952, rs1_data+1952)
  TEST_W_VV_OP_WITH_INIT( 63,  vwmacc.vv, rd_data_vv+3968, rs2_data+1984, rs1_data+1984)
  TEST_W_VV_OP_WITH_INIT( 64,  vwmacc.vv, rd_data_vv+4032, rs2_data+2016, rs1_data+2016)
  TEST_W_VV_OP_WITH_INIT( 65,  vwmacc.vv, rd_data_vv+4096, rs2_data+2048, rs1_data+2048)
  TEST_W_VV_OP_WITH_INIT( 66,  vwmacc.vv, rd_data_vv+4160, rs2_data+2080, rs1_data+2080)
  TEST_W_VV_OP_WITH_INIT( 67,  vwmacc.vv, rd_data_vv+4224, rs2_data+2112, rs1_data+2112)
  TEST_W_VV_OP_WITH_INIT( 68,  vwmacc.vv, rd_data_vv+4288, rs2_data+2144, rs1_data+2144)
  TEST_W_VV_OP_WITH_INIT_rd1( 69,  vwmacc.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_W_VV_OP_WITH_INIT_12( 70,  vwmacc.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_W_VV_OP_WITH_INIT_rd2( 71,  vwmacc.vv, rd_data_vv+64, rs2_data+32, rs1_data+32)
  TEST_W_VV_OP_WITH_INIT_13( 72,  vwmacc.vv, rd_data_vv+64, rs2_data+32, rs1_data+32)
  TEST_W_VV_OP_WITH_INIT_rd3( 73,  vwmacc.vv, rd_data_vv+128, rs2_data+64, rs1_data+64)
  TEST_W_VV_OP_WITH_INIT_14( 74,  vwmacc.vv, rd_data_vv+128, rs2_data+64, rs1_data+64)
  TEST_W_VV_OP_WITH_INIT_rd4( 75,  vwmacc.vv, rd_data_vv+192, rs2_data+96, rs1_data+96)
  TEST_W_VV_OP_WITH_INIT_15( 76,  vwmacc.vv, rd_data_vv+192, rs2_data+96, rs1_data+96)
  TEST_W_VV_OP_WITH_INIT_rd5( 77,  vwmacc.vv, rd_data_vv+256, rs2_data+128, rs1_data+128)
  TEST_W_VV_OP_WITH_INIT_16( 78,  vwmacc.vv, rd_data_vv+256, rs2_data+128, rs1_data+128)
  TEST_W_VV_OP_WITH_INIT_rd6( 79,  vwmacc.vv, rd_data_vv+320, rs2_data+160, rs1_data+160)
  TEST_W_VV_OP_WITH_INIT_17( 80,  vwmacc.vv, rd_data_vv+320, rs2_data+160, rs1_data+160)
  TEST_W_VV_OP_WITH_INIT_rd7( 81,  vwmacc.vv, rd_data_vv+384, rs2_data+192, rs1_data+192)
  TEST_W_VV_OP_WITH_INIT_19( 82,  vwmacc.vv, rd_data_vv+448, rs2_data+224, rs1_data+224)
  TEST_W_VV_OP_WITH_INIT_rd9( 83,  vwmacc.vv, rd_data_vv+512, rs2_data+256, rs1_data+256)
  TEST_W_VV_OP_WITH_INIT_110( 84,  vwmacc.vv, rd_data_vv+512, rs2_data+256, rs1_data+256)
  TEST_W_VV_OP_WITH_INIT_rd10( 85,  vwmacc.vv, rd_data_vv+576, rs2_data+288, rs1_data+288)
  TEST_W_VV_OP_WITH_INIT_111( 86,  vwmacc.vv, rd_data_vv+576, rs2_data+288, rs1_data+288)
  TEST_W_VV_OP_WITH_INIT_rd11( 87,  vwmacc.vv, rd_data_vv+640, rs2_data+320, rs1_data+320)
  TEST_W_VV_OP_WITH_INIT_112( 88,  vwmacc.vv, rd_data_vv+640, rs2_data+320, rs1_data+320)
  TEST_W_VV_OP_WITH_INIT_rd12( 89,  vwmacc.vv, rd_data_vv+704, rs2_data+352, rs1_data+352)
  TEST_W_VV_OP_WITH_INIT_113( 90,  vwmacc.vv, rd_data_vv+704, rs2_data+352, rs1_data+352)
  TEST_W_VV_OP_WITH_INIT_rd13( 91,  vwmacc.vv, rd_data_vv+768, rs2_data+384, rs1_data+384)
  TEST_W_VV_OP_WITH_INIT_114( 92,  vwmacc.vv, rd_data_vv+768, rs2_data+384, rs1_data+384)
  TEST_W_VV_OP_WITH_INIT_rd14( 93,  vwmacc.vv, rd_data_vv+832, rs2_data+416, rs1_data+416)
  TEST_W_VV_OP_WITH_INIT_115( 94,  vwmacc.vv, rd_data_vv+832, rs2_data+416, rs1_data+416)
  TEST_W_VV_OP_WITH_INIT_rd15( 95,  vwmacc.vv, rd_data_vv+896, rs2_data+448, rs1_data+448)
  TEST_W_VV_OP_WITH_INIT_117( 96,  vwmacc.vv, rd_data_vv+960, rs2_data+480, rs1_data+480)
  TEST_W_VV_OP_WITH_INIT_rd17( 97,  vwmacc.vv, rd_data_vv+1024, rs2_data+512, rs1_data+512)
  TEST_W_VV_OP_WITH_INIT_118( 98,  vwmacc.vv, rd_data_vv+1024, rs2_data+512, rs1_data+512)
  TEST_W_VV_OP_WITH_INIT_rd18( 99,  vwmacc.vv, rd_data_vv+1088, rs2_data+544, rs1_data+544)
  TEST_W_VV_OP_WITH_INIT_119( 100,  vwmacc.vv, rd_data_vv+1088, rs2_data+544, rs1_data+544)
  TEST_W_VV_OP_WITH_INIT_rd19( 101,  vwmacc.vv, rd_data_vv+1152, rs2_data+576, rs1_data+576)
  TEST_W_VV_OP_WITH_INIT_120( 102,  vwmacc.vv, rd_data_vv+1152, rs2_data+576, rs1_data+576)
  TEST_W_VV_OP_WITH_INIT_rd20( 103,  vwmacc.vv, rd_data_vv+1216, rs2_data+608, rs1_data+608)
  TEST_W_VV_OP_WITH_INIT_121( 104,  vwmacc.vv, rd_data_vv+1216, rs2_data+608, rs1_data+608)
  TEST_W_VV_OP_WITH_INIT_rd21( 105,  vwmacc.vv, rd_data_vv+1280, rs2_data+640, rs1_data+640)
  TEST_W_VV_OP_WITH_INIT_122( 106,  vwmacc.vv, rd_data_vv+1280, rs2_data+640, rs1_data+640)
  TEST_W_VV_OP_WITH_INIT_rd22( 107,  vwmacc.vv, rd_data_vv+1344, rs2_data+672, rs1_data+672)
  TEST_W_VV_OP_WITH_INIT_123( 108,  vwmacc.vv, rd_data_vv+1344, rs2_data+672, rs1_data+672)
  TEST_W_VV_OP_WITH_INIT_rd23( 109,  vwmacc.vv, rd_data_vv+1408, rs2_data+704, rs1_data+704)
  TEST_W_VV_OP_WITH_INIT_125( 110,  vwmacc.vv, rd_data_vv+1472, rs2_data+736, rs1_data+736)
  TEST_W_VV_OP_WITH_INIT_rd25( 111,  vwmacc.vv, rd_data_vv+1536, rs2_data+768, rs1_data+768)
  TEST_W_VV_OP_WITH_INIT_126( 112,  vwmacc.vv, rd_data_vv+1536, rs2_data+768, rs1_data+768)
  TEST_W_VV_OP_WITH_INIT_rd26( 113,  vwmacc.vv, rd_data_vv+1600, rs2_data+800, rs1_data+800)
  TEST_W_VV_OP_WITH_INIT_127( 114,  vwmacc.vv, rd_data_vv+1600, rs2_data+800, rs1_data+800)
  TEST_W_VV_OP_WITH_INIT_rd27( 115,  vwmacc.vv, rd_data_vv+1664, rs2_data+832, rs1_data+832)
  TEST_W_VV_OP_WITH_INIT_128( 116,  vwmacc.vv, rd_data_vv+1664, rs2_data+832, rs1_data+832)
  TEST_W_VV_OP_WITH_INIT_rd28( 117,  vwmacc.vv, rd_data_vv+1728, rs2_data+864, rs1_data+864)
  TEST_W_VV_OP_WITH_INIT_129( 118,  vwmacc.vv, rd_data_vv+1728, rs2_data+864, rs1_data+864)
  TEST_W_VV_OP_WITH_INIT_rd29( 119,  vwmacc.vv, rd_data_vv+1792, rs2_data+896, rs1_data+896)
  TEST_W_VV_OP_WITH_INIT_130( 120,  vwmacc.vv, rd_data_vv+1792, rs2_data+896, rs1_data+896)
  TEST_W_VV_OP_WITH_INIT_rd30( 121,  vwmacc.vv, rd_data_vv+1856, rs2_data+928, rs1_data+928)
  TEST_W_VV_OP_WITH_INIT_131( 122,  vwmacc.vv, rd_data_vv+1856, rs2_data+928, rs1_data+928)
  TEST_W_VV_OP_WITH_INIT_rd31( 123,  vwmacc.vv, rd_data_vv+1920, rs2_data+960, rs1_data+960)
  TEST_W_VV_OP_WITH_INIT_12( 124,  vwmacc.vv, rd_data_vv+1920, rs2_data+960, rs1_data+960)
  TEST_W_VV_OP_WITH_INIT_rd1( 125,  vwmacc.vv, rd_data_vv+1984, rs2_data+992, rs1_data+992)
  TEST_W_VV_OP_WITH_INIT_13( 126,  vwmacc.vv, rd_data_vv+1984, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_W_VX_OP_RV( 127,  vwmacc.vx, rd_data_vx+0, 0xfffffffffffffffe, rs2_data+0)
  TEST_W_VX_OP_RV( 128,  vwmacc.vx, rd_data_vx+64, 0xfffffffffffffffd, rs2_data+32)
  TEST_W_VX_OP_RV( 129,  vwmacc.vx, rd_data_vx+128, 0xfffffffffffffffb, rs2_data+64)
  TEST_W_VX_OP_RV( 130,  vwmacc.vx, rd_data_vx+192, 0xfffffffffffffff7, rs2_data+96)
  TEST_W_VX_OP_RV( 131,  vwmacc.vx, rd_data_vx+256, 0xffffffffffffffef, rs2_data+128)
  TEST_W_VX_OP_RV( 132,  vwmacc.vx, rd_data_vx+320, 0xffffffffffffffdf, rs2_data+160)
  TEST_W_VX_OP_RV( 133,  vwmacc.vx, rd_data_vx+384, 0xffffffffffffffbf, rs2_data+192)
  TEST_W_VX_OP_RV( 134,  vwmacc.vx, rd_data_vx+448, 0xffffffffffffff7f, rs2_data+224)
  TEST_W_VX_OP_RV( 135,  vwmacc.vx, rd_data_vx+512, 0xfffffffffffffeff, rs2_data+256)
  TEST_W_VX_OP_RV( 136,  vwmacc.vx, rd_data_vx+576, 0xfffffffffffffdff, rs2_data+288)
  TEST_W_VX_OP_RV( 137,  vwmacc.vx, rd_data_vx+640, 0xfffffffffffffbff, rs2_data+320)
  TEST_W_VX_OP_RV( 138,  vwmacc.vx, rd_data_vx+704, 0xfffffffffffff7ff, rs2_data+352)
  TEST_W_VX_OP_RV( 139,  vwmacc.vx, rd_data_vx+768, 0xffffffffffffefff, rs2_data+384)
  TEST_W_VX_OP_RV( 140,  vwmacc.vx, rd_data_vx+832, 0xffffffffffffdfff, rs2_data+416)
  TEST_W_VX_OP_RV( 141,  vwmacc.vx, rd_data_vx+896, 0xffffffffffffbfff, rs2_data+448)
  TEST_W_VX_OP_RV( 142,  vwmacc.vx, rd_data_vx+960, 0xffffffffffff7fff, rs2_data+480)
  TEST_W_VX_OP_RV( 143,  vwmacc.vx, rd_data_vx+1024, 0xfffffffffffeffff, rs2_data+512)
  TEST_W_VX_OP_RV( 144,  vwmacc.vx, rd_data_vx+1088, 0xfffffffffffdffff, rs2_data+544)
  TEST_W_VX_OP_RV( 145,  vwmacc.vx, rd_data_vx+1152, 0xfffffffffffbffff, rs2_data+576)
  TEST_W_VX_OP_RV( 146,  vwmacc.vx, rd_data_vx+1216, 0xfffffffffff7ffff, rs2_data+608)
  TEST_W_VX_OP_RV( 147,  vwmacc.vx, rd_data_vx+1280, 0xffffffffffefffff, rs2_data+640)
  TEST_W_VX_OP_RV( 148,  vwmacc.vx, rd_data_vx+1344, 0xffffffffffdfffff, rs2_data+672)
  TEST_W_VX_OP_RV( 149,  vwmacc.vx, rd_data_vx+1408, 0xffffffffffbfffff, rs2_data+704)
  TEST_W_VX_OP_RV( 150,  vwmacc.vx, rd_data_vx+1472, 0xffffffffff7fffff, rs2_data+736)
  TEST_W_VX_OP_RV( 151,  vwmacc.vx, rd_data_vx+1536, 0xfffffffffeffffff, rs2_data+768)
  TEST_W_VX_OP_RV( 152,  vwmacc.vx, rd_data_vx+1600, 0xfffffffffdffffff, rs2_data+800)
  TEST_W_VX_OP_RV( 153,  vwmacc.vx, rd_data_vx+1664, 0xfffffffffbffffff, rs2_data+832)
  TEST_W_VX_OP_RV( 154,  vwmacc.vx, rd_data_vx+1728, 0xfffffffff7ffffff, rs2_data+864)
  TEST_W_VX_OP_RV( 155,  vwmacc.vx, rd_data_vx+1792, 0xffffffffefffffff, rs2_data+896)
  TEST_W_VX_OP_RV( 156,  vwmacc.vx, rd_data_vx+1856, 0xffffffffdfffffff, rs2_data+928)
  TEST_W_VX_OP_RV( 157,  vwmacc.vx, rd_data_vx+1920, 0xffffffffbfffffff, rs2_data+960)
  TEST_W_VX_OP_RV( 158,  vwmacc.vx, rd_data_vx+1984, 0x0000007fffffff, rs2_data+992)
  TEST_W_VX_OP_RV( 159,  vwmacc.vx, rd_data_vx+2048, 0x00000000000001, rs2_data+1024)
  TEST_W_VX_OP_RV( 160,  vwmacc.vx, rd_data_vx+2112, 0x00000000000002, rs2_data+1056)
  TEST_W_VX_OP_RV( 161,  vwmacc.vx, rd_data_vx+2176, 0x00000000000004, rs2_data+1088)
  TEST_W_VX_OP_RV( 162,  vwmacc.vx, rd_data_vx+2240, 0x00000000000008, rs2_data+1120)
  TEST_W_VX_OP_RV( 163,  vwmacc.vx, rd_data_vx+2304, 0x00000000000010, rs2_data+1152)
  TEST_W_VX_OP_RV( 164,  vwmacc.vx, rd_data_vx+2368, 0x00000000000020, rs2_data+1184)
  TEST_W_VX_OP_RV( 165,  vwmacc.vx, rd_data_vx+2432, 0x00000000000040, rs2_data+1216)
  TEST_W_VX_OP_RV( 166,  vwmacc.vx, rd_data_vx+2496, 0x00000000000080, rs2_data+1248)
  TEST_W_VX_OP_RV( 167,  vwmacc.vx, rd_data_vx+2560, 0x00000000000100, rs2_data+1280)
  TEST_W_VX_OP_RV( 168,  vwmacc.vx, rd_data_vx+2624, 0x00000000000200, rs2_data+1312)
  TEST_W_VX_OP_RV( 169,  vwmacc.vx, rd_data_vx+2688, 0x00000000000400, rs2_data+1344)
  TEST_W_VX_OP_RV( 170,  vwmacc.vx, rd_data_vx+2752, 0x00000000000800, rs2_data+1376)
  TEST_W_VX_OP_RV( 171,  vwmacc.vx, rd_data_vx+2816, 0x00000000001000, rs2_data+1408)
  TEST_W_VX_OP_RV( 172,  vwmacc.vx, rd_data_vx+2880, 0x00000000002000, rs2_data+1440)
  TEST_W_VX_OP_RV( 173,  vwmacc.vx, rd_data_vx+2944, 0x00000000004000, rs2_data+1472)
  TEST_W_VX_OP_RV( 174,  vwmacc.vx, rd_data_vx+3008, 0x00000000008000, rs2_data+1504)
  TEST_W_VX_OP_RV( 175,  vwmacc.vx, rd_data_vx+3072, 0x00000000010000, rs2_data+1536)
  TEST_W_VX_OP_RV( 176,  vwmacc.vx, rd_data_vx+3136, 0x00000000020000, rs2_data+1568)
  TEST_W_VX_OP_RV( 177,  vwmacc.vx, rd_data_vx+3200, 0x00000000040000, rs2_data+1600)
  TEST_W_VX_OP_RV( 178,  vwmacc.vx, rd_data_vx+3264, 0x00000000080000, rs2_data+1632)
  TEST_W_VX_OP_RV( 179,  vwmacc.vx, rd_data_vx+3328, 0x00000000100000, rs2_data+1664)
  TEST_W_VX_OP_RV( 180,  vwmacc.vx, rd_data_vx+3392, 0x00000000200000, rs2_data+1696)
  TEST_W_VX_OP_RV( 181,  vwmacc.vx, rd_data_vx+3456, 0x00000000400000, rs2_data+1728)
  TEST_W_VX_OP_RV( 182,  vwmacc.vx, rd_data_vx+3520, 0x00000000800000, rs2_data+1760)
  TEST_W_VX_OP_RV( 183,  vwmacc.vx, rd_data_vx+3584, 0x00000001000000, rs2_data+1792)
  TEST_W_VX_OP_RV( 184,  vwmacc.vx, rd_data_vx+3648, 0x00000002000000, rs2_data+1824)
  TEST_W_VX_OP_RV( 185,  vwmacc.vx, rd_data_vx+3712, 0x00000004000000, rs2_data+1856)
  TEST_W_VX_OP_RV( 186,  vwmacc.vx, rd_data_vx+3776, 0x00000008000000, rs2_data+1888)
  TEST_W_VX_OP_RV( 187,  vwmacc.vx, rd_data_vx+3840, 0x00000010000000, rs2_data+1920)
  TEST_W_VX_OP_RV( 188,  vwmacc.vx, rd_data_vx+3904, 0x00000020000000, rs2_data+1952)
  TEST_W_VX_OP_RV( 189,  vwmacc.vx, rd_data_vx+3968, 0x00000040000000, rs2_data+1984)
  TEST_W_VX_OP_RV( 190,  vwmacc.vx, rd_data_vx+4032, 0xffffffff80000000, rs2_data+2016)
  TEST_W_VX_OP_RV( 191,  vwmacc.vx, rd_data_vx+4096, 0x00000000000003, rs2_data+2048)
  TEST_W_VX_OP_RV( 192,  vwmacc.vx, rd_data_vx+4160, 0x00000000000003, rs2_data+2080)
  TEST_W_VX_OP_RV( 193,  vwmacc.vx, rd_data_vx+4224, 0x00000000000003, rs2_data+2112)
  TEST_W_VX_OP_RV( 194,  vwmacc.vx, rd_data_vx+4288, 0x00000000000003, rs2_data+2144)
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
rs1_data_widen:
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
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0x00000000000003
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000000
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505
.dword	0x0000000000b505

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
.align 8
rs2_data_widen:
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

.align 8
rd_data_vv:
.dword	0xf682191a66da64ae
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075de66
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66db66ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed175fd46
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b66dc64ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa82ed095dd46
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf683191a68da64ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x75daa72ef075dd46
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075de45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66db64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed175dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa82ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf683191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x75daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64b3
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f6a0f76de
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66dc83b6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd51
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf681dcc4118496a8
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f6a0f76e1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64b3
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83fbf64cc34
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b11850f54
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83f6a0f76df
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xda1051fe2df6d671
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da6ad87b20c446
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x12f3e0374a689d8e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74dae3857b21009d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191866da64a6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da6ad7d0756497
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64c3
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed0796659
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64be
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa7307b2087f3
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191c66da64ad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83fbf64cc34
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0afcfa61ebf91cfc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83f8c319901
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0afcfa61b8c5e9c9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa73003a91077
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6823d4e9a0d73a9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa730d075dd43
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682618266da1c42
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa7306a0f76dd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x18a43b3cab1ea8ee
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x9dd069be4119b44f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf681dcc3bc2ff656
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da5ec6d07625ad
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf681dcc3bc30ab5a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da5ec6d076dab1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66d62692
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72e50768031
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66ddedbe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f50748555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66dd38ba
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74dae3857b21009d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682618266dad146
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f7b2087ef
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b33a73176
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f7b2087ed
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b33a73174
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd51
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66dbceb4
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa7307b2087e9
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682557111841dfa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa73025cb3295
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x12f3e0369fbdf2e2
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x96fcc9509d42aa11
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64be
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed078b155
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64ba
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa73025cb329d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191c0073fe46
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83f6a0f76df
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0afcfa618592b696
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83f36dc43ad
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0afcfa61525f8364
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa73003a91071
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6823d4e9a0cbea4
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa730d075dd3e
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682618266d9673e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa7306a0f76d9
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x18a43b3c55c95398
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x9dd069bddab34de8
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6825570bc2f7da9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daef966a0f2e77
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6825570bc2ec8a6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daef966a0e7974
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66dea2bc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f50748554
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191c11850f58
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74dae3857b21009d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191bbc2fba02
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x914c6e4bb4041629
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x18a43b3d0073fe44
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x5868e01297924f0c
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xd45ff6f888fc86cc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x5868e012ece7a461
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xd45ff6f8de51dc21
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72cd075dd47
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf681dcc366daa101
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd63
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66dea2c2
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd5d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191c66da64ae
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa73136dc43af
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x07932a2bab1ea8ee
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x89558876bbfafbfd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x07932a2b77eb75ba
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x8955887688c7c8c9
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b9a0d97e2
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74dacb6303a9a149
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191c66da64ad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daef96d07649e1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191c0073fe46
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x96fcc9516a0f76df
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x1f77dbaa3de4a21b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da6ad87b20c446
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf681d0b2cd411378
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da6ad87b217949
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf681d0b2cd41c87b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed0719f33
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6821919e6dbbc9b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed079665e
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191ae6d9c1be
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed078b159
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64ae
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075de66
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64ae
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075de66
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66db66ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed175fd46
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66db66ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed175fd46
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b66dc64ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa82ed095dd46
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b66dc64ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa82ed095dd46
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf683191a68da64ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x75daa72ef075dd46
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf683191a68da64ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x75daa72ef075dd46
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075de45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075de45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66db64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed175dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66db64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed175dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa82ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf683191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x75daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64b3
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f6a0f76de
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64b3
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f6a0f76de
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66dc83b6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd51
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66dc83b6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd51
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf681dcc4118496a8
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f6a0f76e1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf681dcc4118496a8
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f6a0f76e1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64b3
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83fbf64cc34
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64b3
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83fbf64cc34
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b11850f54
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83f6a0f76df
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b11850f54
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83f6a0f76df
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xda1051fe2df6d671
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da6ad87b20c446
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xda1051fe2df6d671
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da6ad87b20c446
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x12f3e0374a689d8e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74dae3857b21009d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191866da64a6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da6ad7d0756497
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191866da64a6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da6ad7d0756497
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64c3
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed0796659
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64c3
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed0796659
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64be
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa7307b2087f3
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64be
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa7307b2087f3
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191c66da64ad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83fbf64cc34
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191c66da64ad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83fbf64cc34
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0afcfa61ebf91cfc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83f8c319901
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0afcfa61ebf91cfc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x85ebb83f8c319901
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0afcfa61b8c5e9c9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa73003a91077
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0afcfa61b8c5e9c9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa73003a91077
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6823d4e9a0d73a9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa730d075dd43
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682618266da1c42
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa7306a0f76dd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x18a43b3cab1ea8ee
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x9dd069be4119b44f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x18a43b3cab1ea8ee
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x9dd069be4119b44f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf681dcc3bc2ff656
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da5ec6d07625ad
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf681dcc3bc2ff656
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da5ec6d07625ad
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf681dcc3bc30ab5a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da5ec6d076dab1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf681dcc3bc30ab5a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da5ec6d076dab1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66d62692
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72e50768031
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66d62692
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72e50768031
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66ddedbe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f50748555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66ddedbe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f50748555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66dd38ba
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74dae3857b21009d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66dd38ba
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74dae3857b21009d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682618266dad146
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f7b2087ef
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682618266dad146
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f7b2087ef
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b33a73176
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f7b2087ed
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b33a73176
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f7b2087ed
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a

rd_data_vx:
.dword	0xf682191a66da64ae
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd67
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da67ad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed0760d48
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66df64af
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed0c5dd4a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a6fda64b3
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72f6075dd4e
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da6499
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dc35
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da43aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed073cd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a669964aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ecc65dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6821919e5da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa726c075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da61a7
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa6fb6a0f7712
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a656fa7a6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075d541
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a6405a3a7
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa661d075da11
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da4ca7
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa59503a91212
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da44a8
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa3fb6a0f8a13
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf68223c566da59ff
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ee716f248
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6822e7011853a00
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72efdb79249
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66d464a4
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72e1b702840
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66d064a5
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72d666d2841
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66ca64a6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74d951d925c887ef
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf67ee5e6cd3bfe43
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74d7fc83d07887f0
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf67bb2b39a13fe44
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74d551d925e087f1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6754c4d33d3fe45
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ecfb5dd3f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf68218ed2599afa5
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ecf35dd40
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf68218bfe4d9afa6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ece75dd41
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf62cc3c4bb850f54
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x747440c8030f76de
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf5d76e6f67850f55
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x740dda619e0f76df
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf52cc3c4c1850f56
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x73410d94d60f76e0
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a36da64a4
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa186a8752840
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a16da64a5
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74da9bde90752841
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6821919e6da64a6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x6a2ffc83bb2087ef
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xdce87f804073fe43
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x5f8551d93b2087f0
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x29b54c4d0073fe44
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x9f8551d87b2087f1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191acd40cb0f
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd4b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66dbceb4
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd4f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66dd38ba
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd55
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191d11850f5a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa73203a9107d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191fbc2fb9fa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa73536dc43a5
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682192511850f2a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa73b9d42a9e5
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da662a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed0a31e85
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da672a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed0d05f45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66da68aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa78425cb3345
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf68219e733a732aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa7d97b208745
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6821ab40073fcaa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa88425cb2d45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6821c4d9a0d8caa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed0760d45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a722ab4aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed0762d45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a7d7ae4aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed0765d45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6822e6fbc2fe4aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74dac0c86a0f9d45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf68243c51184e4aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74dada6203a8dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6826e6fbc2e64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74db0d9536dadd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66e664aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa7303a7fdd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66ee64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa731a485dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66fa64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74dd51d97b25dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6887f80cd4a64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74dffc8425c5dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf68ee5e7339a64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74e551d97af5dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf69bb2b4001a64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed1f5dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf6821974e95a64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed2f5dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf68219cf6ada64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed475dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf72cc3c512da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x75a773fb9e75dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf7d76e6fbada64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x767440c86875dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf92cc3c506da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x780dda61f875dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191ac6da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74dab27f2075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b06da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74dabdcf5075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x8a2ffc845075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc34ee5e6e6da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x4a2ffc845075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b9a0d97dc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72fd075dd41
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191b9a0d97d9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd57
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66dc83b9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd54
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf682191a66dc83b6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd51
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a

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
    

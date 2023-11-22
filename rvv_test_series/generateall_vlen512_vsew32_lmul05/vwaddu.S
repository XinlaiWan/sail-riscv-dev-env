#----------------------------------------------------------------------------- 
    # vwaddu.S
    #-----------------------------------------------------------------------------
    #
    # Test vwaddu instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vwaddu)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_W_WV_OP 
#define TEST_W_WV_OP( testnum, inst, result, val1, val2 ) \
    TEST_CASE_LOOP_W( testnum, v24, result, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle64.v v8, (x7); \
        la x7, val2; \
        vle32.v v16, (x7); \
        inst v24, v8, v16, v0.t; ; ; \
    )
#undef TEST_W_WX_OP 
#define TEST_W_WX_OP( testnum, inst, result, val1, val2 ) \
    TEST_CASE_LOOP_W( testnum, v24, result, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle64.v v8, (x7); \
        li x1, MASK_XLEN(val2); \
        inst v24, v8, x1, v0.t; ; ; \
    )
#undef TEST_W_VV_OP 
#define TEST_W_VV_OP( testnum, inst, result, val1, val2 ) \
    TEST_CASE_LOOP_W( testnum, v24, result, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle32.v v8, (x7); \
        la x7, val2; \
        vle32.v v16, (x7); \
        inst v24, v8, v16, v0.t; ; ; \
    )
#undef TEST_W_VX_OP 
#define TEST_W_VX_OP( testnum, inst, result, val1, val2 ) \
    TEST_CASE_LOOP_W( testnum, v24, result, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle32.v v8, (x7); \
        li x1, MASK_XLEN(val2); \
        inst v24, v8, x1, v0.t; ; ; \
    )
#define TEST_W_VV_OP_11( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v1, (x7); \
                inst v24, v8, v1, v0.t; \
            )
#define TEST_W_VV_OP_12( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v2, (x7); \
                inst v24, v8, v2, v0.t; \
            )
#define TEST_W_VV_OP_13( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v3, (x7); \
                inst v24, v8, v3, v0.t; \
            )
#define TEST_W_VV_OP_14( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v4, (x7); \
                inst v24, v8, v4, v0.t; \
            )
#define TEST_W_VV_OP_15( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v5, (x7); \
                inst v24, v8, v5, v0.t; \
            )
#define TEST_W_VV_OP_16( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v6, (x7); \
                inst v24, v8, v6, v0.t; \
            )
#define TEST_W_VV_OP_17( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v7, (x7); \
                inst v24, v8, v7, v0.t; \
            )
#define TEST_W_VV_OP_19( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v9, (x7); \
                inst v24, v8, v9, v0.t; \
            )
#define TEST_W_VV_OP_110( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v10, (x7); \
                inst v24, v8, v10, v0.t; \
            )
#define TEST_W_VV_OP_111( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v11, (x7); \
                inst v24, v8, v11, v0.t; \
            )
#define TEST_W_VV_OP_112( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v12, (x7); \
                inst v24, v8, v12, v0.t; \
            )
#define TEST_W_VV_OP_113( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v13, (x7); \
                inst v24, v8, v13, v0.t; \
            )
#define TEST_W_VV_OP_114( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v14, (x7); \
                inst v24, v8, v14, v0.t; \
            )
#define TEST_W_VV_OP_115( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v15, (x7); \
                inst v24, v8, v15, v0.t; \
            )
#define TEST_W_VV_OP_117( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v17, (x7); \
                inst v24, v8, v17, v0.t; \
            )
#define TEST_W_VV_OP_118( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v18, (x7); \
                inst v24, v8, v18, v0.t; \
            )
#define TEST_W_VV_OP_119( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v19, (x7); \
                inst v24, v8, v19, v0.t; \
            )
#define TEST_W_VV_OP_120( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v20, (x7); \
                inst v24, v8, v20, v0.t; \
            )
#define TEST_W_VV_OP_121( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v21, (x7); \
                inst v24, v8, v21, v0.t; \
            )
#define TEST_W_VV_OP_122( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v22, (x7); \
                inst v24, v8, v22, v0.t; \
            )
#define TEST_W_VV_OP_123( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v23, (x7); \
                inst v24, v8, v23, v0.t; \
            )
#define TEST_W_VV_OP_125( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v25, (x7); \
                inst v24, v8, v25, v0.t; \
            )
#define TEST_W_VV_OP_126( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v26, (x7); \
                inst v24, v8, v26, v0.t; \
            )
#define TEST_W_VV_OP_127( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v27, (x7); \
                inst v24, v8, v27, v0.t; \
            )
#define TEST_W_VV_OP_128( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v28, (x7); \
                inst v24, v8, v28, v0.t; \
            )
#define TEST_W_VV_OP_129( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v29, (x7); \
                inst v24, v8, v29, v0.t; \
            )
#define TEST_W_VV_OP_130( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v30, (x7); \
                inst v24, v8, v30, v0.t; \
            )
#define TEST_W_VV_OP_131( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v31, (x7); \
                inst v24, v8, v31, v0.t; \
            )
#define TEST_W_VV_OP_rd1( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v1, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v1, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v1, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd2( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v2, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v2, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v2, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd3( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v3, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v3, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v3, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd4( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v4, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v4, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v4, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd5( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v5, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v5, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v5, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd6( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v6, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v6, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v6, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd7( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v7, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v7, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v7, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd9( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v9, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v9, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v9, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd10( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v10, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v10, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v10, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd11( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v11, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v11, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v11, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd12( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v12, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v12, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v12, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd13( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v13, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v13, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v13, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd14( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v14, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v14, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd15( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v15, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v15, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v15, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd17( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v17, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v17, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v17, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd18( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v18, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v18, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v18, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd19( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v19, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v19, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v19, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd20( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v20, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v20, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v20, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd21( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v21, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v21, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v21, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd22( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v22, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v22, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v22, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd23( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v23, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v23, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v23, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd25( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v25, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v25, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v25, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd26( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v26, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v26, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v26, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd27( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v27, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v27, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v27, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd28( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v28, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v28, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v28, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd29( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v29, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v29, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v29, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd30( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v30, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v30, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v30, v8, v16, v0.t; \
            )
#define TEST_W_VV_OP_rd31( testnum, inst, result, val1, val2 ) \
            TEST_CASE_LOOP_W( testnum, v31, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v31, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v31, v8, v16, v0.t; \
            )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_W_VV_OP( 1,  vwaddu.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_W_VV_OP( 2,  vwaddu.vv, rd_data_vv+64, rs2_data+32, rs1_data+32)
  TEST_W_VV_OP( 3,  vwaddu.vv, rd_data_vv+128, rs2_data+64, rs1_data+64)
  TEST_W_VV_OP( 4,  vwaddu.vv, rd_data_vv+192, rs2_data+96, rs1_data+96)
  TEST_W_VV_OP( 5,  vwaddu.vv, rd_data_vv+256, rs2_data+128, rs1_data+128)
  TEST_W_VV_OP( 6,  vwaddu.vv, rd_data_vv+320, rs2_data+160, rs1_data+160)
  TEST_W_VV_OP( 7,  vwaddu.vv, rd_data_vv+384, rs2_data+192, rs1_data+192)
  TEST_W_VV_OP( 8,  vwaddu.vv, rd_data_vv+448, rs2_data+224, rs1_data+224)
  TEST_W_VV_OP( 9,  vwaddu.vv, rd_data_vv+512, rs2_data+256, rs1_data+256)
  TEST_W_VV_OP( 10,  vwaddu.vv, rd_data_vv+576, rs2_data+288, rs1_data+288)
  TEST_W_VV_OP( 11,  vwaddu.vv, rd_data_vv+640, rs2_data+320, rs1_data+320)
  TEST_W_VV_OP( 12,  vwaddu.vv, rd_data_vv+704, rs2_data+352, rs1_data+352)
  TEST_W_VV_OP( 13,  vwaddu.vv, rd_data_vv+768, rs2_data+384, rs1_data+384)
  TEST_W_VV_OP( 14,  vwaddu.vv, rd_data_vv+832, rs2_data+416, rs1_data+416)
  TEST_W_VV_OP( 15,  vwaddu.vv, rd_data_vv+896, rs2_data+448, rs1_data+448)
  TEST_W_VV_OP( 16,  vwaddu.vv, rd_data_vv+960, rs2_data+480, rs1_data+480)
  TEST_W_VV_OP( 17,  vwaddu.vv, rd_data_vv+1024, rs2_data+512, rs1_data+512)
  TEST_W_VV_OP( 18,  vwaddu.vv, rd_data_vv+1088, rs2_data+544, rs1_data+544)
  TEST_W_VV_OP( 19,  vwaddu.vv, rd_data_vv+1152, rs2_data+576, rs1_data+576)
  TEST_W_VV_OP( 20,  vwaddu.vv, rd_data_vv+1216, rs2_data+608, rs1_data+608)
  TEST_W_VV_OP( 21,  vwaddu.vv, rd_data_vv+1280, rs2_data+640, rs1_data+640)
  TEST_W_VV_OP( 22,  vwaddu.vv, rd_data_vv+1344, rs2_data+672, rs1_data+672)
  TEST_W_VV_OP( 23,  vwaddu.vv, rd_data_vv+1408, rs2_data+704, rs1_data+704)
  TEST_W_VV_OP( 24,  vwaddu.vv, rd_data_vv+1472, rs2_data+736, rs1_data+736)
  TEST_W_VV_OP( 25,  vwaddu.vv, rd_data_vv+1536, rs2_data+768, rs1_data+768)
  TEST_W_VV_OP( 26,  vwaddu.vv, rd_data_vv+1600, rs2_data+800, rs1_data+800)
  TEST_W_VV_OP( 27,  vwaddu.vv, rd_data_vv+1664, rs2_data+832, rs1_data+832)
  TEST_W_VV_OP( 28,  vwaddu.vv, rd_data_vv+1728, rs2_data+864, rs1_data+864)
  TEST_W_VV_OP( 29,  vwaddu.vv, rd_data_vv+1792, rs2_data+896, rs1_data+896)
  TEST_W_VV_OP( 30,  vwaddu.vv, rd_data_vv+1856, rs2_data+928, rs1_data+928)
  TEST_W_VV_OP( 31,  vwaddu.vv, rd_data_vv+1920, rs2_data+960, rs1_data+960)
  TEST_W_VV_OP( 32,  vwaddu.vv, rd_data_vv+1984, rs2_data+992, rs1_data+992)
  TEST_W_VV_OP( 33,  vwaddu.vv, rd_data_vv+2048, rs2_data+1024, rs1_data+1024)
  TEST_W_VV_OP( 34,  vwaddu.vv, rd_data_vv+2112, rs2_data+1056, rs1_data+1056)
  TEST_W_VV_OP( 35,  vwaddu.vv, rd_data_vv+2176, rs2_data+1088, rs1_data+1088)
  TEST_W_VV_OP( 36,  vwaddu.vv, rd_data_vv+2240, rs2_data+1120, rs1_data+1120)
  TEST_W_VV_OP( 37,  vwaddu.vv, rd_data_vv+2304, rs2_data+1152, rs1_data+1152)
  TEST_W_VV_OP( 38,  vwaddu.vv, rd_data_vv+2368, rs2_data+1184, rs1_data+1184)
  TEST_W_VV_OP( 39,  vwaddu.vv, rd_data_vv+2432, rs2_data+1216, rs1_data+1216)
  TEST_W_VV_OP( 40,  vwaddu.vv, rd_data_vv+2496, rs2_data+1248, rs1_data+1248)
  TEST_W_VV_OP( 41,  vwaddu.vv, rd_data_vv+2560, rs2_data+1280, rs1_data+1280)
  TEST_W_VV_OP( 42,  vwaddu.vv, rd_data_vv+2624, rs2_data+1312, rs1_data+1312)
  TEST_W_VV_OP( 43,  vwaddu.vv, rd_data_vv+2688, rs2_data+1344, rs1_data+1344)
  TEST_W_VV_OP( 44,  vwaddu.vv, rd_data_vv+2752, rs2_data+1376, rs1_data+1376)
  TEST_W_VV_OP( 45,  vwaddu.vv, rd_data_vv+2816, rs2_data+1408, rs1_data+1408)
  TEST_W_VV_OP( 46,  vwaddu.vv, rd_data_vv+2880, rs2_data+1440, rs1_data+1440)
  TEST_W_VV_OP( 47,  vwaddu.vv, rd_data_vv+2944, rs2_data+1472, rs1_data+1472)
  TEST_W_VV_OP( 48,  vwaddu.vv, rd_data_vv+3008, rs2_data+1504, rs1_data+1504)
  TEST_W_VV_OP( 49,  vwaddu.vv, rd_data_vv+3072, rs2_data+1536, rs1_data+1536)
  TEST_W_VV_OP( 50,  vwaddu.vv, rd_data_vv+3136, rs2_data+1568, rs1_data+1568)
  TEST_W_VV_OP( 51,  vwaddu.vv, rd_data_vv+3200, rs2_data+1600, rs1_data+1600)
  TEST_W_VV_OP( 52,  vwaddu.vv, rd_data_vv+3264, rs2_data+1632, rs1_data+1632)
  TEST_W_VV_OP( 53,  vwaddu.vv, rd_data_vv+3328, rs2_data+1664, rs1_data+1664)
  TEST_W_VV_OP( 54,  vwaddu.vv, rd_data_vv+3392, rs2_data+1696, rs1_data+1696)
  TEST_W_VV_OP( 55,  vwaddu.vv, rd_data_vv+3456, rs2_data+1728, rs1_data+1728)
  TEST_W_VV_OP( 56,  vwaddu.vv, rd_data_vv+3520, rs2_data+1760, rs1_data+1760)
  TEST_W_VV_OP( 57,  vwaddu.vv, rd_data_vv+3584, rs2_data+1792, rs1_data+1792)
  TEST_W_VV_OP( 58,  vwaddu.vv, rd_data_vv+3648, rs2_data+1824, rs1_data+1824)
  TEST_W_VV_OP( 59,  vwaddu.vv, rd_data_vv+3712, rs2_data+1856, rs1_data+1856)
  TEST_W_VV_OP( 60,  vwaddu.vv, rd_data_vv+3776, rs2_data+1888, rs1_data+1888)
  TEST_W_VV_OP( 61,  vwaddu.vv, rd_data_vv+3840, rs2_data+1920, rs1_data+1920)
  TEST_W_VV_OP( 62,  vwaddu.vv, rd_data_vv+3904, rs2_data+1952, rs1_data+1952)
  TEST_W_VV_OP( 63,  vwaddu.vv, rd_data_vv+3968, rs2_data+1984, rs1_data+1984)
  TEST_W_VV_OP( 64,  vwaddu.vv, rd_data_vv+4032, rs2_data+2016, rs1_data+2016)
  TEST_W_VV_OP( 65,  vwaddu.vv, rd_data_vv+4096, rs2_data+2048, rs1_data+2048)
  TEST_W_VV_OP( 66,  vwaddu.vv, rd_data_vv+4160, rs2_data+2080, rs1_data+2080)
  TEST_W_VV_OP( 67,  vwaddu.vv, rd_data_vv+4224, rs2_data+2112, rs1_data+2112)
  TEST_W_VV_OP( 68,  vwaddu.vv, rd_data_vv+4288, rs2_data+2144, rs1_data+2144)
  TEST_W_VV_OP_rd1( 69,  vwaddu.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_W_VV_OP_12( 70,  vwaddu.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_W_VV_OP_rd2( 71,  vwaddu.vv, rd_data_vv+64, rs2_data+32, rs1_data+32)
  TEST_W_VV_OP_13( 72,  vwaddu.vv, rd_data_vv+64, rs2_data+32, rs1_data+32)
  TEST_W_VV_OP_rd3( 73,  vwaddu.vv, rd_data_vv+128, rs2_data+64, rs1_data+64)
  TEST_W_VV_OP_14( 74,  vwaddu.vv, rd_data_vv+128, rs2_data+64, rs1_data+64)
  TEST_W_VV_OP_rd4( 75,  vwaddu.vv, rd_data_vv+192, rs2_data+96, rs1_data+96)
  TEST_W_VV_OP_15( 76,  vwaddu.vv, rd_data_vv+192, rs2_data+96, rs1_data+96)
  TEST_W_VV_OP_rd5( 77,  vwaddu.vv, rd_data_vv+256, rs2_data+128, rs1_data+128)
  TEST_W_VV_OP_16( 78,  vwaddu.vv, rd_data_vv+256, rs2_data+128, rs1_data+128)
  TEST_W_VV_OP_rd6( 79,  vwaddu.vv, rd_data_vv+320, rs2_data+160, rs1_data+160)
  TEST_W_VV_OP_17( 80,  vwaddu.vv, rd_data_vv+320, rs2_data+160, rs1_data+160)
  TEST_W_VV_OP_rd7( 81,  vwaddu.vv, rd_data_vv+384, rs2_data+192, rs1_data+192)
  TEST_W_VV_OP_19( 82,  vwaddu.vv, rd_data_vv+448, rs2_data+224, rs1_data+224)
  TEST_W_VV_OP_rd9( 83,  vwaddu.vv, rd_data_vv+512, rs2_data+256, rs1_data+256)
  TEST_W_VV_OP_110( 84,  vwaddu.vv, rd_data_vv+512, rs2_data+256, rs1_data+256)
  TEST_W_VV_OP_rd10( 85,  vwaddu.vv, rd_data_vv+576, rs2_data+288, rs1_data+288)
  TEST_W_VV_OP_111( 86,  vwaddu.vv, rd_data_vv+576, rs2_data+288, rs1_data+288)
  TEST_W_VV_OP_rd11( 87,  vwaddu.vv, rd_data_vv+640, rs2_data+320, rs1_data+320)
  TEST_W_VV_OP_112( 88,  vwaddu.vv, rd_data_vv+640, rs2_data+320, rs1_data+320)
  TEST_W_VV_OP_rd12( 89,  vwaddu.vv, rd_data_vv+704, rs2_data+352, rs1_data+352)
  TEST_W_VV_OP_113( 90,  vwaddu.vv, rd_data_vv+704, rs2_data+352, rs1_data+352)
  TEST_W_VV_OP_rd13( 91,  vwaddu.vv, rd_data_vv+768, rs2_data+384, rs1_data+384)
  TEST_W_VV_OP_114( 92,  vwaddu.vv, rd_data_vv+768, rs2_data+384, rs1_data+384)
  TEST_W_VV_OP_rd14( 93,  vwaddu.vv, rd_data_vv+832, rs2_data+416, rs1_data+416)
  TEST_W_VV_OP_115( 94,  vwaddu.vv, rd_data_vv+832, rs2_data+416, rs1_data+416)
  TEST_W_VV_OP_rd15( 95,  vwaddu.vv, rd_data_vv+896, rs2_data+448, rs1_data+448)
  TEST_W_VV_OP_117( 96,  vwaddu.vv, rd_data_vv+960, rs2_data+480, rs1_data+480)
  TEST_W_VV_OP_rd17( 97,  vwaddu.vv, rd_data_vv+1024, rs2_data+512, rs1_data+512)
  TEST_W_VV_OP_118( 98,  vwaddu.vv, rd_data_vv+1024, rs2_data+512, rs1_data+512)
  TEST_W_VV_OP_rd18( 99,  vwaddu.vv, rd_data_vv+1088, rs2_data+544, rs1_data+544)
  TEST_W_VV_OP_119( 100,  vwaddu.vv, rd_data_vv+1088, rs2_data+544, rs1_data+544)
  TEST_W_VV_OP_rd19( 101,  vwaddu.vv, rd_data_vv+1152, rs2_data+576, rs1_data+576)
  TEST_W_VV_OP_120( 102,  vwaddu.vv, rd_data_vv+1152, rs2_data+576, rs1_data+576)
  TEST_W_VV_OP_rd20( 103,  vwaddu.vv, rd_data_vv+1216, rs2_data+608, rs1_data+608)
  TEST_W_VV_OP_121( 104,  vwaddu.vv, rd_data_vv+1216, rs2_data+608, rs1_data+608)
  TEST_W_VV_OP_rd21( 105,  vwaddu.vv, rd_data_vv+1280, rs2_data+640, rs1_data+640)
  TEST_W_VV_OP_122( 106,  vwaddu.vv, rd_data_vv+1280, rs2_data+640, rs1_data+640)
  TEST_W_VV_OP_rd22( 107,  vwaddu.vv, rd_data_vv+1344, rs2_data+672, rs1_data+672)
  TEST_W_VV_OP_123( 108,  vwaddu.vv, rd_data_vv+1344, rs2_data+672, rs1_data+672)
  TEST_W_VV_OP_rd23( 109,  vwaddu.vv, rd_data_vv+1408, rs2_data+704, rs1_data+704)
  TEST_W_VV_OP_125( 110,  vwaddu.vv, rd_data_vv+1472, rs2_data+736, rs1_data+736)
  TEST_W_VV_OP_rd25( 111,  vwaddu.vv, rd_data_vv+1536, rs2_data+768, rs1_data+768)
  TEST_W_VV_OP_126( 112,  vwaddu.vv, rd_data_vv+1536, rs2_data+768, rs1_data+768)
  TEST_W_VV_OP_rd26( 113,  vwaddu.vv, rd_data_vv+1600, rs2_data+800, rs1_data+800)
  TEST_W_VV_OP_127( 114,  vwaddu.vv, rd_data_vv+1600, rs2_data+800, rs1_data+800)
  TEST_W_VV_OP_rd27( 115,  vwaddu.vv, rd_data_vv+1664, rs2_data+832, rs1_data+832)
  TEST_W_VV_OP_128( 116,  vwaddu.vv, rd_data_vv+1664, rs2_data+832, rs1_data+832)
  TEST_W_VV_OP_rd28( 117,  vwaddu.vv, rd_data_vv+1728, rs2_data+864, rs1_data+864)
  TEST_W_VV_OP_129( 118,  vwaddu.vv, rd_data_vv+1728, rs2_data+864, rs1_data+864)
  TEST_W_VV_OP_rd29( 119,  vwaddu.vv, rd_data_vv+1792, rs2_data+896, rs1_data+896)
  TEST_W_VV_OP_130( 120,  vwaddu.vv, rd_data_vv+1792, rs2_data+896, rs1_data+896)
  TEST_W_VV_OP_rd30( 121,  vwaddu.vv, rd_data_vv+1856, rs2_data+928, rs1_data+928)
  TEST_W_VV_OP_131( 122,  vwaddu.vv, rd_data_vv+1856, rs2_data+928, rs1_data+928)
  TEST_W_VV_OP_rd31( 123,  vwaddu.vv, rd_data_vv+1920, rs2_data+960, rs1_data+960)
  TEST_W_VV_OP_12( 124,  vwaddu.vv, rd_data_vv+1920, rs2_data+960, rs1_data+960)
  TEST_W_VV_OP_rd1( 125,  vwaddu.vv, rd_data_vv+1984, rs2_data+992, rs1_data+992)
  TEST_W_VV_OP_13( 126,  vwaddu.vv, rd_data_vv+1984, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_W_VX_OP( 127,  vwaddu.vx, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_W_VX_OP( 128,  vwaddu.vx, rd_data_vx+64, rs2_data+32, 0xfffffffffffffffd)
  TEST_W_VX_OP( 129,  vwaddu.vx, rd_data_vx+128, rs2_data+64, 0xfffffffffffffffb)
  TEST_W_VX_OP( 130,  vwaddu.vx, rd_data_vx+192, rs2_data+96, 0xfffffffffffffff7)
  TEST_W_VX_OP( 131,  vwaddu.vx, rd_data_vx+256, rs2_data+128, 0xffffffffffffffef)
  TEST_W_VX_OP( 132,  vwaddu.vx, rd_data_vx+320, rs2_data+160, 0xffffffffffffffdf)
  TEST_W_VX_OP( 133,  vwaddu.vx, rd_data_vx+384, rs2_data+192, 0xffffffffffffffbf)
  TEST_W_VX_OP( 134,  vwaddu.vx, rd_data_vx+448, rs2_data+224, 0xffffffffffffff7f)
  TEST_W_VX_OP( 135,  vwaddu.vx, rd_data_vx+512, rs2_data+256, 0xfffffffffffffeff)
  TEST_W_VX_OP( 136,  vwaddu.vx, rd_data_vx+576, rs2_data+288, 0xfffffffffffffdff)
  TEST_W_VX_OP( 137,  vwaddu.vx, rd_data_vx+640, rs2_data+320, 0xfffffffffffffbff)
  TEST_W_VX_OP( 138,  vwaddu.vx, rd_data_vx+704, rs2_data+352, 0xfffffffffffff7ff)
  TEST_W_VX_OP( 139,  vwaddu.vx, rd_data_vx+768, rs2_data+384, 0xffffffffffffefff)
  TEST_W_VX_OP( 140,  vwaddu.vx, rd_data_vx+832, rs2_data+416, 0xffffffffffffdfff)
  TEST_W_VX_OP( 141,  vwaddu.vx, rd_data_vx+896, rs2_data+448, 0xffffffffffffbfff)
  TEST_W_VX_OP( 142,  vwaddu.vx, rd_data_vx+960, rs2_data+480, 0xffffffffffff7fff)
  TEST_W_VX_OP( 143,  vwaddu.vx, rd_data_vx+1024, rs2_data+512, 0xfffffffffffeffff)
  TEST_W_VX_OP( 144,  vwaddu.vx, rd_data_vx+1088, rs2_data+544, 0xfffffffffffdffff)
  TEST_W_VX_OP( 145,  vwaddu.vx, rd_data_vx+1152, rs2_data+576, 0xfffffffffffbffff)
  TEST_W_VX_OP( 146,  vwaddu.vx, rd_data_vx+1216, rs2_data+608, 0xfffffffffff7ffff)
  TEST_W_VX_OP( 147,  vwaddu.vx, rd_data_vx+1280, rs2_data+640, 0xffffffffffefffff)
  TEST_W_VX_OP( 148,  vwaddu.vx, rd_data_vx+1344, rs2_data+672, 0xffffffffffdfffff)
  TEST_W_VX_OP( 149,  vwaddu.vx, rd_data_vx+1408, rs2_data+704, 0xffffffffffbfffff)
  TEST_W_VX_OP( 150,  vwaddu.vx, rd_data_vx+1472, rs2_data+736, 0xffffffffff7fffff)
  TEST_W_VX_OP( 151,  vwaddu.vx, rd_data_vx+1536, rs2_data+768, 0xfffffffffeffffff)
  TEST_W_VX_OP( 152,  vwaddu.vx, rd_data_vx+1600, rs2_data+800, 0xfffffffffdffffff)
  TEST_W_VX_OP( 153,  vwaddu.vx, rd_data_vx+1664, rs2_data+832, 0xfffffffffbffffff)
  TEST_W_VX_OP( 154,  vwaddu.vx, rd_data_vx+1728, rs2_data+864, 0xfffffffff7ffffff)
  TEST_W_VX_OP( 155,  vwaddu.vx, rd_data_vx+1792, rs2_data+896, 0xffffffffefffffff)
  TEST_W_VX_OP( 156,  vwaddu.vx, rd_data_vx+1856, rs2_data+928, 0xffffffffdfffffff)
  TEST_W_VX_OP( 157,  vwaddu.vx, rd_data_vx+1920, rs2_data+960, 0xffffffffbfffffff)
  TEST_W_VX_OP( 158,  vwaddu.vx, rd_data_vx+1984, rs2_data+992, 0x0000007fffffff)
  TEST_W_VX_OP( 159,  vwaddu.vx, rd_data_vx+2048, rs2_data+1024, 0x00000000000001)
  TEST_W_VX_OP( 160,  vwaddu.vx, rd_data_vx+2112, rs2_data+1056, 0x00000000000002)
  TEST_W_VX_OP( 161,  vwaddu.vx, rd_data_vx+2176, rs2_data+1088, 0x00000000000004)
  TEST_W_VX_OP( 162,  vwaddu.vx, rd_data_vx+2240, rs2_data+1120, 0x00000000000008)
  TEST_W_VX_OP( 163,  vwaddu.vx, rd_data_vx+2304, rs2_data+1152, 0x00000000000010)
  TEST_W_VX_OP( 164,  vwaddu.vx, rd_data_vx+2368, rs2_data+1184, 0x00000000000020)
  TEST_W_VX_OP( 165,  vwaddu.vx, rd_data_vx+2432, rs2_data+1216, 0x00000000000040)
  TEST_W_VX_OP( 166,  vwaddu.vx, rd_data_vx+2496, rs2_data+1248, 0x00000000000080)
  TEST_W_VX_OP( 167,  vwaddu.vx, rd_data_vx+2560, rs2_data+1280, 0x00000000000100)
  TEST_W_VX_OP( 168,  vwaddu.vx, rd_data_vx+2624, rs2_data+1312, 0x00000000000200)
  TEST_W_VX_OP( 169,  vwaddu.vx, rd_data_vx+2688, rs2_data+1344, 0x00000000000400)
  TEST_W_VX_OP( 170,  vwaddu.vx, rd_data_vx+2752, rs2_data+1376, 0x00000000000800)
  TEST_W_VX_OP( 171,  vwaddu.vx, rd_data_vx+2816, rs2_data+1408, 0x00000000001000)
  TEST_W_VX_OP( 172,  vwaddu.vx, rd_data_vx+2880, rs2_data+1440, 0x00000000002000)
  TEST_W_VX_OP( 173,  vwaddu.vx, rd_data_vx+2944, rs2_data+1472, 0x00000000004000)
  TEST_W_VX_OP( 174,  vwaddu.vx, rd_data_vx+3008, rs2_data+1504, 0x00000000008000)
  TEST_W_VX_OP( 175,  vwaddu.vx, rd_data_vx+3072, rs2_data+1536, 0x00000000010000)
  TEST_W_VX_OP( 176,  vwaddu.vx, rd_data_vx+3136, rs2_data+1568, 0x00000000020000)
  TEST_W_VX_OP( 177,  vwaddu.vx, rd_data_vx+3200, rs2_data+1600, 0x00000000040000)
  TEST_W_VX_OP( 178,  vwaddu.vx, rd_data_vx+3264, rs2_data+1632, 0x00000000080000)
  TEST_W_VX_OP( 179,  vwaddu.vx, rd_data_vx+3328, rs2_data+1664, 0x00000000100000)
  TEST_W_VX_OP( 180,  vwaddu.vx, rd_data_vx+3392, rs2_data+1696, 0x00000000200000)
  TEST_W_VX_OP( 181,  vwaddu.vx, rd_data_vx+3456, rs2_data+1728, 0x00000000400000)
  TEST_W_VX_OP( 182,  vwaddu.vx, rd_data_vx+3520, rs2_data+1760, 0x00000000800000)
  TEST_W_VX_OP( 183,  vwaddu.vx, rd_data_vx+3584, rs2_data+1792, 0x00000001000000)
  TEST_W_VX_OP( 184,  vwaddu.vx, rd_data_vx+3648, rs2_data+1824, 0x00000002000000)
  TEST_W_VX_OP( 185,  vwaddu.vx, rd_data_vx+3712, rs2_data+1856, 0x00000004000000)
  TEST_W_VX_OP( 186,  vwaddu.vx, rd_data_vx+3776, rs2_data+1888, 0x00000008000000)
  TEST_W_VX_OP( 187,  vwaddu.vx, rd_data_vx+3840, rs2_data+1920, 0x00000010000000)
  TEST_W_VX_OP( 188,  vwaddu.vx, rd_data_vx+3904, rs2_data+1952, 0x00000020000000)
  TEST_W_VX_OP( 189,  vwaddu.vx, rd_data_vx+3968, rs2_data+1984, 0x00000040000000)
  TEST_W_VX_OP( 190,  vwaddu.vx, rd_data_vx+4032, rs2_data+2016, 0xffffffff80000000)
  TEST_W_VX_OP( 191,  vwaddu.vx, rd_data_vx+4096, rs2_data+2048, 0x00000000000003)
  TEST_W_VX_OP( 192,  vwaddu.vx, rd_data_vx+4160, rs2_data+2080, 0x00000000000003)
  TEST_W_VX_OP( 193,  vwaddu.vx, rd_data_vx+4224, rs2_data+2112, 0x00000000000003)
  TEST_W_VX_OP( 194,  vwaddu.vx, rd_data_vx+4288, rs2_data+2144, 0x00000000000003)
  #-------------------------------------------------------------
  # WV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_W_WV_OP( 195,  vwaddu.wv, rd_data_wv+0, rs2_data_widen+0, rs1_data+0)
  TEST_W_WV_OP( 196,  vwaddu.wv, rd_data_wv+64, rs2_data_widen+64, rs1_data+32)
  TEST_W_WV_OP( 197,  vwaddu.wv, rd_data_wv+128, rs2_data_widen+128, rs1_data+64)
  TEST_W_WV_OP( 198,  vwaddu.wv, rd_data_wv+192, rs2_data_widen+192, rs1_data+96)
  TEST_W_WV_OP( 199,  vwaddu.wv, rd_data_wv+256, rs2_data_widen+256, rs1_data+128)
  TEST_W_WV_OP( 200,  vwaddu.wv, rd_data_wv+320, rs2_data_widen+320, rs1_data+160)
  TEST_W_WV_OP( 201,  vwaddu.wv, rd_data_wv+384, rs2_data_widen+384, rs1_data+192)
  TEST_W_WV_OP( 202,  vwaddu.wv, rd_data_wv+448, rs2_data_widen+448, rs1_data+224)
  TEST_W_WV_OP( 203,  vwaddu.wv, rd_data_wv+512, rs2_data_widen+512, rs1_data+256)
  TEST_W_WV_OP( 204,  vwaddu.wv, rd_data_wv+576, rs2_data_widen+576, rs1_data+288)
  TEST_W_WV_OP( 205,  vwaddu.wv, rd_data_wv+640, rs2_data_widen+640, rs1_data+320)
  TEST_W_WV_OP( 206,  vwaddu.wv, rd_data_wv+704, rs2_data_widen+704, rs1_data+352)
  TEST_W_WV_OP( 207,  vwaddu.wv, rd_data_wv+768, rs2_data_widen+768, rs1_data+384)
  TEST_W_WV_OP( 208,  vwaddu.wv, rd_data_wv+832, rs2_data_widen+832, rs1_data+416)
  TEST_W_WV_OP( 209,  vwaddu.wv, rd_data_wv+896, rs2_data_widen+896, rs1_data+448)
  TEST_W_WV_OP( 210,  vwaddu.wv, rd_data_wv+960, rs2_data_widen+960, rs1_data+480)
  TEST_W_WV_OP( 211,  vwaddu.wv, rd_data_wv+1024, rs2_data_widen+1024, rs1_data+512)
  TEST_W_WV_OP( 212,  vwaddu.wv, rd_data_wv+1088, rs2_data_widen+1088, rs1_data+544)
  TEST_W_WV_OP( 213,  vwaddu.wv, rd_data_wv+1152, rs2_data_widen+1152, rs1_data+576)
  TEST_W_WV_OP( 214,  vwaddu.wv, rd_data_wv+1216, rs2_data_widen+1216, rs1_data+608)
  TEST_W_WV_OP( 215,  vwaddu.wv, rd_data_wv+1280, rs2_data_widen+1280, rs1_data+640)
  TEST_W_WV_OP( 216,  vwaddu.wv, rd_data_wv+1344, rs2_data_widen+1344, rs1_data+672)
  TEST_W_WV_OP( 217,  vwaddu.wv, rd_data_wv+1408, rs2_data_widen+1408, rs1_data+704)
  TEST_W_WV_OP( 218,  vwaddu.wv, rd_data_wv+1472, rs2_data_widen+1472, rs1_data+736)
  TEST_W_WV_OP( 219,  vwaddu.wv, rd_data_wv+1536, rs2_data_widen+1536, rs1_data+768)
  TEST_W_WV_OP( 220,  vwaddu.wv, rd_data_wv+1600, rs2_data_widen+1600, rs1_data+800)
  TEST_W_WV_OP( 221,  vwaddu.wv, rd_data_wv+1664, rs2_data_widen+1664, rs1_data+832)
  TEST_W_WV_OP( 222,  vwaddu.wv, rd_data_wv+1728, rs2_data_widen+1728, rs1_data+864)
  TEST_W_WV_OP( 223,  vwaddu.wv, rd_data_wv+1792, rs2_data_widen+1792, rs1_data+896)
  TEST_W_WV_OP( 224,  vwaddu.wv, rd_data_wv+1856, rs2_data_widen+1856, rs1_data+928)
  TEST_W_WV_OP( 225,  vwaddu.wv, rd_data_wv+1920, rs2_data_widen+1920, rs1_data+960)
  TEST_W_WV_OP( 226,  vwaddu.wv, rd_data_wv+1984, rs2_data_widen+1984, rs1_data+992)
  TEST_W_WV_OP( 227,  vwaddu.wv, rd_data_wv+2048, rs2_data_widen+2048, rs1_data+1024)
  TEST_W_WV_OP( 228,  vwaddu.wv, rd_data_wv+2112, rs2_data_widen+2112, rs1_data+1056)
  TEST_W_WV_OP( 229,  vwaddu.wv, rd_data_wv+2176, rs2_data_widen+2176, rs1_data+1088)
  TEST_W_WV_OP( 230,  vwaddu.wv, rd_data_wv+2240, rs2_data_widen+2240, rs1_data+1120)
  TEST_W_WV_OP( 231,  vwaddu.wv, rd_data_wv+2304, rs2_data_widen+2304, rs1_data+1152)
  TEST_W_WV_OP( 232,  vwaddu.wv, rd_data_wv+2368, rs2_data_widen+2368, rs1_data+1184)
  TEST_W_WV_OP( 233,  vwaddu.wv, rd_data_wv+2432, rs2_data_widen+2432, rs1_data+1216)
  TEST_W_WV_OP( 234,  vwaddu.wv, rd_data_wv+2496, rs2_data_widen+2496, rs1_data+1248)
  TEST_W_WV_OP( 235,  vwaddu.wv, rd_data_wv+2560, rs2_data_widen+2560, rs1_data+1280)
  TEST_W_WV_OP( 236,  vwaddu.wv, rd_data_wv+2624, rs2_data_widen+2624, rs1_data+1312)
  TEST_W_WV_OP( 237,  vwaddu.wv, rd_data_wv+2688, rs2_data_widen+2688, rs1_data+1344)
  TEST_W_WV_OP( 238,  vwaddu.wv, rd_data_wv+2752, rs2_data_widen+2752, rs1_data+1376)
  TEST_W_WV_OP( 239,  vwaddu.wv, rd_data_wv+2816, rs2_data_widen+2816, rs1_data+1408)
  TEST_W_WV_OP( 240,  vwaddu.wv, rd_data_wv+2880, rs2_data_widen+2880, rs1_data+1440)
  TEST_W_WV_OP( 241,  vwaddu.wv, rd_data_wv+2944, rs2_data_widen+2944, rs1_data+1472)
  TEST_W_WV_OP( 242,  vwaddu.wv, rd_data_wv+3008, rs2_data_widen+3008, rs1_data+1504)
  TEST_W_WV_OP( 243,  vwaddu.wv, rd_data_wv+3072, rs2_data_widen+3072, rs1_data+1536)
  TEST_W_WV_OP( 244,  vwaddu.wv, rd_data_wv+3136, rs2_data_widen+3136, rs1_data+1568)
  TEST_W_WV_OP( 245,  vwaddu.wv, rd_data_wv+3200, rs2_data_widen+3200, rs1_data+1600)
  TEST_W_WV_OP( 246,  vwaddu.wv, rd_data_wv+3264, rs2_data_widen+3264, rs1_data+1632)
  TEST_W_WV_OP( 247,  vwaddu.wv, rd_data_wv+3328, rs2_data_widen+3328, rs1_data+1664)
  TEST_W_WV_OP( 248,  vwaddu.wv, rd_data_wv+3392, rs2_data_widen+3392, rs1_data+1696)
  TEST_W_WV_OP( 249,  vwaddu.wv, rd_data_wv+3456, rs2_data_widen+3456, rs1_data+1728)
  TEST_W_WV_OP( 250,  vwaddu.wv, rd_data_wv+3520, rs2_data_widen+3520, rs1_data+1760)
  TEST_W_WV_OP( 251,  vwaddu.wv, rd_data_wv+3584, rs2_data_widen+3584, rs1_data+1792)
  TEST_W_WV_OP( 252,  vwaddu.wv, rd_data_wv+3648, rs2_data_widen+3648, rs1_data+1824)
  TEST_W_WV_OP( 253,  vwaddu.wv, rd_data_wv+3712, rs2_data_widen+3712, rs1_data+1856)
  TEST_W_WV_OP( 254,  vwaddu.wv, rd_data_wv+3776, rs2_data_widen+3776, rs1_data+1888)
  TEST_W_WV_OP( 255,  vwaddu.wv, rd_data_wv+3840, rs2_data_widen+3840, rs1_data+1920)
  TEST_W_WV_OP( 256,  vwaddu.wv, rd_data_wv+3904, rs2_data_widen+3904, rs1_data+1952)
  TEST_W_WV_OP( 257,  vwaddu.wv, rd_data_wv+3968, rs2_data_widen+3968, rs1_data+1984)
  TEST_W_WV_OP( 258,  vwaddu.wv, rd_data_wv+4032, rs2_data_widen+4032, rs1_data+2016)
  TEST_W_WV_OP( 259,  vwaddu.wv, rd_data_wv+4096, rs2_data_widen+4096, rs1_data+2048)
  TEST_W_WV_OP( 260,  vwaddu.wv, rd_data_wv+4160, rs2_data_widen+4160, rs1_data+2080)
  TEST_W_WV_OP( 261,  vwaddu.wv, rd_data_wv+4224, rs2_data_widen+4224, rs1_data+2112)
  TEST_W_WV_OP( 262,  vwaddu.wv, rd_data_wv+4288, rs2_data_widen+4288, rs1_data+2144)
  #-------------------------------------------------------------
  # WX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_W_WX_OP( 263,  vwaddu.wx, rd_data_wx+0, rs2_data_widen+0, 0xfffffffffffffffe)
  TEST_W_WX_OP( 264,  vwaddu.wx, rd_data_wx+64, rs2_data_widen+64, 0xfffffffffffffffd)
  TEST_W_WX_OP( 265,  vwaddu.wx, rd_data_wx+128, rs2_data_widen+128, 0xfffffffffffffffb)
  TEST_W_WX_OP( 266,  vwaddu.wx, rd_data_wx+192, rs2_data_widen+192, 0xfffffffffffffff7)
  TEST_W_WX_OP( 267,  vwaddu.wx, rd_data_wx+256, rs2_data_widen+256, 0xffffffffffffffef)
  TEST_W_WX_OP( 268,  vwaddu.wx, rd_data_wx+320, rs2_data_widen+320, 0xffffffffffffffdf)
  TEST_W_WX_OP( 269,  vwaddu.wx, rd_data_wx+384, rs2_data_widen+384, 0xffffffffffffffbf)
  TEST_W_WX_OP( 270,  vwaddu.wx, rd_data_wx+448, rs2_data_widen+448, 0xffffffffffffff7f)
  TEST_W_WX_OP( 271,  vwaddu.wx, rd_data_wx+512, rs2_data_widen+512, 0xfffffffffffffeff)
  TEST_W_WX_OP( 272,  vwaddu.wx, rd_data_wx+576, rs2_data_widen+576, 0xfffffffffffffdff)
  TEST_W_WX_OP( 273,  vwaddu.wx, rd_data_wx+640, rs2_data_widen+640, 0xfffffffffffffbff)
  TEST_W_WX_OP( 274,  vwaddu.wx, rd_data_wx+704, rs2_data_widen+704, 0xfffffffffffff7ff)
  TEST_W_WX_OP( 275,  vwaddu.wx, rd_data_wx+768, rs2_data_widen+768, 0xffffffffffffefff)
  TEST_W_WX_OP( 276,  vwaddu.wx, rd_data_wx+832, rs2_data_widen+832, 0xffffffffffffdfff)
  TEST_W_WX_OP( 277,  vwaddu.wx, rd_data_wx+896, rs2_data_widen+896, 0xffffffffffffbfff)
  TEST_W_WX_OP( 278,  vwaddu.wx, rd_data_wx+960, rs2_data_widen+960, 0xffffffffffff7fff)
  TEST_W_WX_OP( 279,  vwaddu.wx, rd_data_wx+1024, rs2_data_widen+1024, 0xfffffffffffeffff)
  TEST_W_WX_OP( 280,  vwaddu.wx, rd_data_wx+1088, rs2_data_widen+1088, 0xfffffffffffdffff)
  TEST_W_WX_OP( 281,  vwaddu.wx, rd_data_wx+1152, rs2_data_widen+1152, 0xfffffffffffbffff)
  TEST_W_WX_OP( 282,  vwaddu.wx, rd_data_wx+1216, rs2_data_widen+1216, 0xfffffffffff7ffff)
  TEST_W_WX_OP( 283,  vwaddu.wx, rd_data_wx+1280, rs2_data_widen+1280, 0xffffffffffefffff)
  TEST_W_WX_OP( 284,  vwaddu.wx, rd_data_wx+1344, rs2_data_widen+1344, 0xffffffffffdfffff)
  TEST_W_WX_OP( 285,  vwaddu.wx, rd_data_wx+1408, rs2_data_widen+1408, 0xffffffffffbfffff)
  TEST_W_WX_OP( 286,  vwaddu.wx, rd_data_wx+1472, rs2_data_widen+1472, 0xffffffffff7fffff)
  TEST_W_WX_OP( 287,  vwaddu.wx, rd_data_wx+1536, rs2_data_widen+1536, 0xfffffffffeffffff)
  TEST_W_WX_OP( 288,  vwaddu.wx, rd_data_wx+1600, rs2_data_widen+1600, 0xfffffffffdffffff)
  TEST_W_WX_OP( 289,  vwaddu.wx, rd_data_wx+1664, rs2_data_widen+1664, 0xfffffffffbffffff)
  TEST_W_WX_OP( 290,  vwaddu.wx, rd_data_wx+1728, rs2_data_widen+1728, 0xfffffffff7ffffff)
  TEST_W_WX_OP( 291,  vwaddu.wx, rd_data_wx+1792, rs2_data_widen+1792, 0xffffffffefffffff)
  TEST_W_WX_OP( 292,  vwaddu.wx, rd_data_wx+1856, rs2_data_widen+1856, 0xffffffffdfffffff)
  TEST_W_WX_OP( 293,  vwaddu.wx, rd_data_wx+1920, rs2_data_widen+1920, 0xffffffffbfffffff)
  TEST_W_WX_OP( 294,  vwaddu.wx, rd_data_wx+1984, rs2_data_widen+1984, 0x0000007fffffff)
  TEST_W_WX_OP( 295,  vwaddu.wx, rd_data_wx+2048, rs2_data_widen+2048, 0x00000000000001)
  TEST_W_WX_OP( 296,  vwaddu.wx, rd_data_wx+2112, rs2_data_widen+2112, 0x00000000000002)
  TEST_W_WX_OP( 297,  vwaddu.wx, rd_data_wx+2176, rs2_data_widen+2176, 0x00000000000004)
  TEST_W_WX_OP( 298,  vwaddu.wx, rd_data_wx+2240, rs2_data_widen+2240, 0x00000000000008)
  TEST_W_WX_OP( 299,  vwaddu.wx, rd_data_wx+2304, rs2_data_widen+2304, 0x00000000000010)
  TEST_W_WX_OP( 300,  vwaddu.wx, rd_data_wx+2368, rs2_data_widen+2368, 0x00000000000020)
  TEST_W_WX_OP( 301,  vwaddu.wx, rd_data_wx+2432, rs2_data_widen+2432, 0x00000000000040)
  TEST_W_WX_OP( 302,  vwaddu.wx, rd_data_wx+2496, rs2_data_widen+2496, 0x00000000000080)
  TEST_W_WX_OP( 303,  vwaddu.wx, rd_data_wx+2560, rs2_data_widen+2560, 0x00000000000100)
  TEST_W_WX_OP( 304,  vwaddu.wx, rd_data_wx+2624, rs2_data_widen+2624, 0x00000000000200)
  TEST_W_WX_OP( 305,  vwaddu.wx, rd_data_wx+2688, rs2_data_widen+2688, 0x00000000000400)
  TEST_W_WX_OP( 306,  vwaddu.wx, rd_data_wx+2752, rs2_data_widen+2752, 0x00000000000800)
  TEST_W_WX_OP( 307,  vwaddu.wx, rd_data_wx+2816, rs2_data_widen+2816, 0x00000000001000)
  TEST_W_WX_OP( 308,  vwaddu.wx, rd_data_wx+2880, rs2_data_widen+2880, 0x00000000002000)
  TEST_W_WX_OP( 309,  vwaddu.wx, rd_data_wx+2944, rs2_data_widen+2944, 0x00000000004000)
  TEST_W_WX_OP( 310,  vwaddu.wx, rd_data_wx+3008, rs2_data_widen+3008, 0x00000000008000)
  TEST_W_WX_OP( 311,  vwaddu.wx, rd_data_wx+3072, rs2_data_widen+3072, 0x00000000010000)
  TEST_W_WX_OP( 312,  vwaddu.wx, rd_data_wx+3136, rs2_data_widen+3136, 0x00000000020000)
  TEST_W_WX_OP( 313,  vwaddu.wx, rd_data_wx+3200, rs2_data_widen+3200, 0x00000000040000)
  TEST_W_WX_OP( 314,  vwaddu.wx, rd_data_wx+3264, rs2_data_widen+3264, 0x00000000080000)
  TEST_W_WX_OP( 315,  vwaddu.wx, rd_data_wx+3328, rs2_data_widen+3328, 0x00000000100000)
  TEST_W_WX_OP( 316,  vwaddu.wx, rd_data_wx+3392, rs2_data_widen+3392, 0x00000000200000)
  TEST_W_WX_OP( 317,  vwaddu.wx, rd_data_wx+3456, rs2_data_widen+3456, 0x00000000400000)
  TEST_W_WX_OP( 318,  vwaddu.wx, rd_data_wx+3520, rs2_data_widen+3520, 0x00000000800000)
  TEST_W_WX_OP( 319,  vwaddu.wx, rd_data_wx+3584, rs2_data_widen+3584, 0x00000001000000)
  TEST_W_WX_OP( 320,  vwaddu.wx, rd_data_wx+3648, rs2_data_widen+3648, 0x00000002000000)
  TEST_W_WX_OP( 321,  vwaddu.wx, rd_data_wx+3712, rs2_data_widen+3712, 0x00000004000000)
  TEST_W_WX_OP( 322,  vwaddu.wx, rd_data_wx+3776, rs2_data_widen+3776, 0x00000008000000)
  TEST_W_WX_OP( 323,  vwaddu.wx, rd_data_wx+3840, rs2_data_widen+3840, 0x00000010000000)
  TEST_W_WX_OP( 324,  vwaddu.wx, rd_data_wx+3904, rs2_data_widen+3904, 0x00000020000000)
  TEST_W_WX_OP( 325,  vwaddu.wx, rd_data_wx+3968, rs2_data_widen+3968, 0x00000040000000)
  TEST_W_WX_OP( 326,  vwaddu.wx, rd_data_wx+4032, rs2_data_widen+4032, 0xffffffff80000000)
  TEST_W_WX_OP( 327,  vwaddu.wx, rd_data_wx+4096, rs2_data_widen+4096, 0x00000000000003)
  TEST_W_WX_OP( 328,  vwaddu.wx, rd_data_wx+4160, rs2_data_widen+4160, 0x00000000000003)
  TEST_W_WX_OP( 329,  vwaddu.wx, rd_data_wx+4224, rs2_data_widen+4224, 0x00000000000003)
  TEST_W_WX_OP( 330,  vwaddu.wx, rd_data_wx+4288, rs2_data_widen+4288, 0x00000000000003)
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

.align 4
rd_data_vv:
.dword	0x00000001fffffffc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffffffde
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fffffdfe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffffdffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fffdfffe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffdffffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fdfffffe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001dffffffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000002
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000020
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000200
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000002000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000020000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000200000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000002000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000020000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333336
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b507
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000007
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaab5fad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333337
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888888
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555557
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888887
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000100000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000015554a052
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000155555554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001aaa9f5a6
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaaaaaaa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaaaaaaa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaaaaab0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaab5faf
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000000a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b509
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000009
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000005555555b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006666666c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888888
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000099999999
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888887
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000099999998
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333339
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000003333e838
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666666b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066671b6a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666666a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000bbbbbbbc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000cccccccd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000015554a051
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000016665b162
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000015554a050
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000016665b161
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ffff4b02
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000100000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b509
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000016a08
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b508
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055560a5a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066671b6b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555557
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666668
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000008
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b507
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555559
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055560a58
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555558
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaaaaaaa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000bbbbbbbb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666665
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000009
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b508
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000008
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000005555555a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006666666b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888887
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000099999998
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888886
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000099999997
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333338
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000003333e837
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666666a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066671b69
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666669
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000bbbbbbbb
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000cccccccc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055560a58
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066671b69
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055560a57
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066671b68
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b509
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000016a08
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005555555b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055560a5a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005555555a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaaaaaac
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000bbbbbbbd
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000100000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000111111111
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffffffff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000111111110
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaaaaab1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaab5fb0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000000b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b50a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000000a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005555555c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666666d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000088888889
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000009999999a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000088888888
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000099999999
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000003333333a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000003333e839
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006666666c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066671b6b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006666666b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000bbbbbbbd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ccccccce
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000015554a052
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000016665b163
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000015554a051
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000016665b162
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffff4b03
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000100000002
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b50a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000016a09
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b509
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fffffffc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffffffde
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fffffffc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffffffde
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fffffdfe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffffdffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fffffdfe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffffdffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fffdfffe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffdffffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fffdfffe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffdffffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fdfffffe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001dffffffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fdfffffe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001dffffffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000002
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000020
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000002
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000020
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000200
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000002000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000200
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000002000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000020000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000200000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000002000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000020000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333336
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333336
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b507
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000007
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b507
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000007
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaab5fad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333337
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaab5fad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333337
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888888
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888888
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555557
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888887
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555557
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888887
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000100000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000015554a052
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000100000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000015554a052
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000155555554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001aaa9f5a6
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaaaaaaa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaaaaaaa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaaaaab0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaab5faf
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaaaaab0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaab5faf
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000000a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b509
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000000a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b509
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000009
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000005555555b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000009
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000005555555b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006666666c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888888
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006666666c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888888
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000099999999
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888887
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000099999999
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888887
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000099999998
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333339
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000099999998
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333339
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000003333e838
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666666b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066671b6a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666666a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000bbbbbbbc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000cccccccd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000bbbbbbbc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000cccccccd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000015554a051
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000016665b162
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000015554a051
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000016665b162
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000015554a050
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000016665b161
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000015554a050
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000016665b161
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ffff4b02
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000100000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ffff4b02
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000100000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b509
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000016a08
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b509
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000016a08
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b508
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055560a5a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b508
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055560a5a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066671b6b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555557
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066671b6b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555557
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666668
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666668
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a

rd_data_vx:
.dword	0x00000001fffffffc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffffffed
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fffffefc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffffeffc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fffefffa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffeffffa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001fefffff6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001effffff6
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffffff0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffffffff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001000000df
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000100000fdf
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000010000ffbf
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001000fffbf
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000100ffff7f
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000010fffff7f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ffffff02
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000133333232
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000010000b303
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000fffffe03
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000010000b102
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000133332f33
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffff802
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000133332b32
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffff001
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000133332331
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001aaaa8aaa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffff2afc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001aaaa6aa9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001ffff0afb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ffff7fff
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffff7fff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ffff0005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffffb504
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffe0004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000fffeb503
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffc0003
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000155515555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001665e6666
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001554d5554
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000166566665
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000155455553
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000166466664
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffe00005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ffc0b504
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffc00004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ff80b503
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ff800003
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000154555555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000165666666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000153555554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000164666665
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000151555553
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000162666664
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000f8000005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000f800b504
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000f0000004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000f000b503
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000e0000003
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000135555555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000126666666
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000115555554
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000e6666665
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000d5555553
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666666
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000007
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b507
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000007
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b508
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000008
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005555555e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666666f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555565
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666676
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555574
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666685
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000046
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b545
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000085
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b584
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000104
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555656
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666867
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555755
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666a66
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555954
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666e65
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000806
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000c505
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000001005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000d504
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000002004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055559556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666a667
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005555d555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666e666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055565554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066676665
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000020006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000002b505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000040005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000004b504
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000080004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000555d5556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066766667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055655555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066866666
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055755554
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066a66665
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000400006
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000080b505
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000800005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000100b504
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000001000004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000057555556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000068666667
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000059555555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006a666666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005d555554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006e666665
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000010000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000001000b505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000020000005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000002000b504
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000040000004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000095555556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000e6666667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000d5555555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666669
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555557
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666668
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000009
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b508
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000008
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b507
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000007
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a

.align 8

rd_data_wv:
.dword	0x00000000fffffffc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffffffde
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffffdfe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffffdffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffdfffe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffdffffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fdfffffe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000dffffffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000002
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000020
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000200
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000002000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000020000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000200000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000002000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000020000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333336
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b507
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000007
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaab5fad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333337
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888888
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555557
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888887
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000005554a052
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaa9f5a6
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaaaaaaa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaaaaaaa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaaaaab0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaab5faf
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000000a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b509
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000009
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000005555555b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006666666c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888888
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000099999999
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888887
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000099999998
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333339
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000003333e838
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666666b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066671b6a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666666a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000bbbbbbbc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000cccccccd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000015554a051
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000016665b162
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000015554a050
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000016665b161
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ffff4b02
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000100000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b509
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000016a08
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b508
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055560a5a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066671b6b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555557
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666668
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000008
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b507
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555559
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055560a58
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555558
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaaaaaaa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000bbbbbbbb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666665
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000009
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b508
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000008
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000005555555a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006666666b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888887
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000099999998
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000088888886
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000099999997
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333338
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000003333e837
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666666a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066671b69
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666669
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000bbbbbbbb
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000cccccccc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055560a58
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066671b69
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055560a57
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066671b68
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b509
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000016a08
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005555555b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055560a5a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005555555a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaaaaaac
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000bbbbbbbd
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000100000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000111111111
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffffffff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000111111110
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaaaaab1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaab5fb0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000000b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b50a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000000a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005555555c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666666d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000088888889
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000009999999a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000088888888
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000099999999
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000003333333a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000003333e839
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006666666c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066671b6b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006666666b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000bbbbbbbd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ccccccce
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000015554a052
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000016665b163
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000015554a051
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000016665b162
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffff4b03
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000100000002
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b50a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000016a09
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b509
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a

rd_data_wx:
.dword	0x00000000fffffffc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffffffed
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffffefc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffffeffc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffefffa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffeffffa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fefffff6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000effffff6
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffffff0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffffffff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001000000df
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000100000fdf
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000010000ffbf
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001000fffbf
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000100ffff7f
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000010fffff7f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ffffff02
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000133333232
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000010000b303
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000fffffe03
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000010000b102
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000133332f33
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffff802
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000133332b32
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffff001
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000133332331
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaaa8aaa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffff2afc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000aaaa6aa9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffff0afb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ffff7fff
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffff7fff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ffff0005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffffb504
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffe0004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000fffeb503
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000fffc0003
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000155515555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000001665e6666
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000001554d5554
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000166566665
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000155455553
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000166466664
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffe00005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ffc0b504
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ffc00004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000ff80b503
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000ff800003
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000154555555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000165666666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000153555554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000164666665
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000151555553
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000162666664
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000f8000005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000f800b504
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000f0000004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000f000b503
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000e0000003
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000135555555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000126666666
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000115555554
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000e6666665
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000d5555553
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666666
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000007
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b507
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000007
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b508
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000008
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005555555e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666666f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555565
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666676
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555574
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666685
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000046
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b545
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000085
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b584
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000104
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555656
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666867
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555755
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666a66
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555954
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666e65
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000806
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000c505
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000001005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000d504
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000002004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055559556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666a667
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005555d555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666e666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055565554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066676665
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000020006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000002b505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000040005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000004b504
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000080004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000555d5556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066766667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055655555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066866666
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055755554
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066a66665
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000400006
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000080b505
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000800005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000100b504
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000001000004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000057555556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000068666667
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000059555555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006a666666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005d555554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006e666665
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000010000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000001000b505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000020000005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000002000b504
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000040000004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000095555556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000e6666667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000d5555555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666669
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555557
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666668
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000009
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b508
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000008
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b507
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000007
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
    

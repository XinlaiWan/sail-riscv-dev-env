#----------------------------------------------------------------------------- 
    # vwsubu.S
    #-----------------------------------------------------------------------------
    #
    # Test vwsubu instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vwsubu)
    
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
  TEST_W_VV_OP( 1,  vwsubu.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_W_VV_OP( 2,  vwsubu.vv, rd_data_vv+64, rs2_data+32, rs1_data+32)
  TEST_W_VV_OP( 3,  vwsubu.vv, rd_data_vv+128, rs2_data+64, rs1_data+64)
  TEST_W_VV_OP( 4,  vwsubu.vv, rd_data_vv+192, rs2_data+96, rs1_data+96)
  TEST_W_VV_OP( 5,  vwsubu.vv, rd_data_vv+256, rs2_data+128, rs1_data+128)
  TEST_W_VV_OP( 6,  vwsubu.vv, rd_data_vv+320, rs2_data+160, rs1_data+160)
  TEST_W_VV_OP( 7,  vwsubu.vv, rd_data_vv+384, rs2_data+192, rs1_data+192)
  TEST_W_VV_OP( 8,  vwsubu.vv, rd_data_vv+448, rs2_data+224, rs1_data+224)
  TEST_W_VV_OP( 9,  vwsubu.vv, rd_data_vv+512, rs2_data+256, rs1_data+256)
  TEST_W_VV_OP( 10,  vwsubu.vv, rd_data_vv+576, rs2_data+288, rs1_data+288)
  TEST_W_VV_OP( 11,  vwsubu.vv, rd_data_vv+640, rs2_data+320, rs1_data+320)
  TEST_W_VV_OP( 12,  vwsubu.vv, rd_data_vv+704, rs2_data+352, rs1_data+352)
  TEST_W_VV_OP( 13,  vwsubu.vv, rd_data_vv+768, rs2_data+384, rs1_data+384)
  TEST_W_VV_OP( 14,  vwsubu.vv, rd_data_vv+832, rs2_data+416, rs1_data+416)
  TEST_W_VV_OP( 15,  vwsubu.vv, rd_data_vv+896, rs2_data+448, rs1_data+448)
  TEST_W_VV_OP( 16,  vwsubu.vv, rd_data_vv+960, rs2_data+480, rs1_data+480)
  TEST_W_VV_OP( 17,  vwsubu.vv, rd_data_vv+1024, rs2_data+512, rs1_data+512)
  TEST_W_VV_OP( 18,  vwsubu.vv, rd_data_vv+1088, rs2_data+544, rs1_data+544)
  TEST_W_VV_OP( 19,  vwsubu.vv, rd_data_vv+1152, rs2_data+576, rs1_data+576)
  TEST_W_VV_OP( 20,  vwsubu.vv, rd_data_vv+1216, rs2_data+608, rs1_data+608)
  TEST_W_VV_OP( 21,  vwsubu.vv, rd_data_vv+1280, rs2_data+640, rs1_data+640)
  TEST_W_VV_OP( 22,  vwsubu.vv, rd_data_vv+1344, rs2_data+672, rs1_data+672)
  TEST_W_VV_OP( 23,  vwsubu.vv, rd_data_vv+1408, rs2_data+704, rs1_data+704)
  TEST_W_VV_OP( 24,  vwsubu.vv, rd_data_vv+1472, rs2_data+736, rs1_data+736)
  TEST_W_VV_OP( 25,  vwsubu.vv, rd_data_vv+1536, rs2_data+768, rs1_data+768)
  TEST_W_VV_OP( 26,  vwsubu.vv, rd_data_vv+1600, rs2_data+800, rs1_data+800)
  TEST_W_VV_OP( 27,  vwsubu.vv, rd_data_vv+1664, rs2_data+832, rs1_data+832)
  TEST_W_VV_OP( 28,  vwsubu.vv, rd_data_vv+1728, rs2_data+864, rs1_data+864)
  TEST_W_VV_OP( 29,  vwsubu.vv, rd_data_vv+1792, rs2_data+896, rs1_data+896)
  TEST_W_VV_OP( 30,  vwsubu.vv, rd_data_vv+1856, rs2_data+928, rs1_data+928)
  TEST_W_VV_OP( 31,  vwsubu.vv, rd_data_vv+1920, rs2_data+960, rs1_data+960)
  TEST_W_VV_OP( 32,  vwsubu.vv, rd_data_vv+1984, rs2_data+992, rs1_data+992)
  TEST_W_VV_OP( 33,  vwsubu.vv, rd_data_vv+2048, rs2_data+1024, rs1_data+1024)
  TEST_W_VV_OP( 34,  vwsubu.vv, rd_data_vv+2112, rs2_data+1056, rs1_data+1056)
  TEST_W_VV_OP( 35,  vwsubu.vv, rd_data_vv+2176, rs2_data+1088, rs1_data+1088)
  TEST_W_VV_OP( 36,  vwsubu.vv, rd_data_vv+2240, rs2_data+1120, rs1_data+1120)
  TEST_W_VV_OP( 37,  vwsubu.vv, rd_data_vv+2304, rs2_data+1152, rs1_data+1152)
  TEST_W_VV_OP( 38,  vwsubu.vv, rd_data_vv+2368, rs2_data+1184, rs1_data+1184)
  TEST_W_VV_OP( 39,  vwsubu.vv, rd_data_vv+2432, rs2_data+1216, rs1_data+1216)
  TEST_W_VV_OP( 40,  vwsubu.vv, rd_data_vv+2496, rs2_data+1248, rs1_data+1248)
  TEST_W_VV_OP( 41,  vwsubu.vv, rd_data_vv+2560, rs2_data+1280, rs1_data+1280)
  TEST_W_VV_OP( 42,  vwsubu.vv, rd_data_vv+2624, rs2_data+1312, rs1_data+1312)
  TEST_W_VV_OP( 43,  vwsubu.vv, rd_data_vv+2688, rs2_data+1344, rs1_data+1344)
  TEST_W_VV_OP( 44,  vwsubu.vv, rd_data_vv+2752, rs2_data+1376, rs1_data+1376)
  TEST_W_VV_OP( 45,  vwsubu.vv, rd_data_vv+2816, rs2_data+1408, rs1_data+1408)
  TEST_W_VV_OP( 46,  vwsubu.vv, rd_data_vv+2880, rs2_data+1440, rs1_data+1440)
  TEST_W_VV_OP( 47,  vwsubu.vv, rd_data_vv+2944, rs2_data+1472, rs1_data+1472)
  TEST_W_VV_OP( 48,  vwsubu.vv, rd_data_vv+3008, rs2_data+1504, rs1_data+1504)
  TEST_W_VV_OP( 49,  vwsubu.vv, rd_data_vv+3072, rs2_data+1536, rs1_data+1536)
  TEST_W_VV_OP( 50,  vwsubu.vv, rd_data_vv+3136, rs2_data+1568, rs1_data+1568)
  TEST_W_VV_OP( 51,  vwsubu.vv, rd_data_vv+3200, rs2_data+1600, rs1_data+1600)
  TEST_W_VV_OP( 52,  vwsubu.vv, rd_data_vv+3264, rs2_data+1632, rs1_data+1632)
  TEST_W_VV_OP( 53,  vwsubu.vv, rd_data_vv+3328, rs2_data+1664, rs1_data+1664)
  TEST_W_VV_OP( 54,  vwsubu.vv, rd_data_vv+3392, rs2_data+1696, rs1_data+1696)
  TEST_W_VV_OP( 55,  vwsubu.vv, rd_data_vv+3456, rs2_data+1728, rs1_data+1728)
  TEST_W_VV_OP( 56,  vwsubu.vv, rd_data_vv+3520, rs2_data+1760, rs1_data+1760)
  TEST_W_VV_OP( 57,  vwsubu.vv, rd_data_vv+3584, rs2_data+1792, rs1_data+1792)
  TEST_W_VV_OP( 58,  vwsubu.vv, rd_data_vv+3648, rs2_data+1824, rs1_data+1824)
  TEST_W_VV_OP( 59,  vwsubu.vv, rd_data_vv+3712, rs2_data+1856, rs1_data+1856)
  TEST_W_VV_OP( 60,  vwsubu.vv, rd_data_vv+3776, rs2_data+1888, rs1_data+1888)
  TEST_W_VV_OP( 61,  vwsubu.vv, rd_data_vv+3840, rs2_data+1920, rs1_data+1920)
  TEST_W_VV_OP( 62,  vwsubu.vv, rd_data_vv+3904, rs2_data+1952, rs1_data+1952)
  TEST_W_VV_OP( 63,  vwsubu.vv, rd_data_vv+3968, rs2_data+1984, rs1_data+1984)
  TEST_W_VV_OP( 64,  vwsubu.vv, rd_data_vv+4032, rs2_data+2016, rs1_data+2016)
  TEST_W_VV_OP( 65,  vwsubu.vv, rd_data_vv+4096, rs2_data+2048, rs1_data+2048)
  TEST_W_VV_OP( 66,  vwsubu.vv, rd_data_vv+4160, rs2_data+2080, rs1_data+2080)
  TEST_W_VV_OP( 67,  vwsubu.vv, rd_data_vv+4224, rs2_data+2112, rs1_data+2112)
  TEST_W_VV_OP( 68,  vwsubu.vv, rd_data_vv+4288, rs2_data+2144, rs1_data+2144)
  TEST_W_VV_OP_rd1( 69,  vwsubu.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_W_VV_OP_12( 70,  vwsubu.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_W_VV_OP_rd2( 71,  vwsubu.vv, rd_data_vv+64, rs2_data+32, rs1_data+32)
  TEST_W_VV_OP_13( 72,  vwsubu.vv, rd_data_vv+64, rs2_data+32, rs1_data+32)
  TEST_W_VV_OP_rd3( 73,  vwsubu.vv, rd_data_vv+128, rs2_data+64, rs1_data+64)
  TEST_W_VV_OP_14( 74,  vwsubu.vv, rd_data_vv+128, rs2_data+64, rs1_data+64)
  TEST_W_VV_OP_rd4( 75,  vwsubu.vv, rd_data_vv+192, rs2_data+96, rs1_data+96)
  TEST_W_VV_OP_15( 76,  vwsubu.vv, rd_data_vv+192, rs2_data+96, rs1_data+96)
  TEST_W_VV_OP_rd5( 77,  vwsubu.vv, rd_data_vv+256, rs2_data+128, rs1_data+128)
  TEST_W_VV_OP_16( 78,  vwsubu.vv, rd_data_vv+256, rs2_data+128, rs1_data+128)
  TEST_W_VV_OP_rd6( 79,  vwsubu.vv, rd_data_vv+320, rs2_data+160, rs1_data+160)
  TEST_W_VV_OP_17( 80,  vwsubu.vv, rd_data_vv+320, rs2_data+160, rs1_data+160)
  TEST_W_VV_OP_rd7( 81,  vwsubu.vv, rd_data_vv+384, rs2_data+192, rs1_data+192)
  TEST_W_VV_OP_19( 82,  vwsubu.vv, rd_data_vv+448, rs2_data+224, rs1_data+224)
  TEST_W_VV_OP_rd9( 83,  vwsubu.vv, rd_data_vv+512, rs2_data+256, rs1_data+256)
  TEST_W_VV_OP_110( 84,  vwsubu.vv, rd_data_vv+512, rs2_data+256, rs1_data+256)
  TEST_W_VV_OP_rd10( 85,  vwsubu.vv, rd_data_vv+576, rs2_data+288, rs1_data+288)
  TEST_W_VV_OP_111( 86,  vwsubu.vv, rd_data_vv+576, rs2_data+288, rs1_data+288)
  TEST_W_VV_OP_rd11( 87,  vwsubu.vv, rd_data_vv+640, rs2_data+320, rs1_data+320)
  TEST_W_VV_OP_112( 88,  vwsubu.vv, rd_data_vv+640, rs2_data+320, rs1_data+320)
  TEST_W_VV_OP_rd12( 89,  vwsubu.vv, rd_data_vv+704, rs2_data+352, rs1_data+352)
  TEST_W_VV_OP_113( 90,  vwsubu.vv, rd_data_vv+704, rs2_data+352, rs1_data+352)
  TEST_W_VV_OP_rd13( 91,  vwsubu.vv, rd_data_vv+768, rs2_data+384, rs1_data+384)
  TEST_W_VV_OP_114( 92,  vwsubu.vv, rd_data_vv+768, rs2_data+384, rs1_data+384)
  TEST_W_VV_OP_rd14( 93,  vwsubu.vv, rd_data_vv+832, rs2_data+416, rs1_data+416)
  TEST_W_VV_OP_115( 94,  vwsubu.vv, rd_data_vv+832, rs2_data+416, rs1_data+416)
  TEST_W_VV_OP_rd15( 95,  vwsubu.vv, rd_data_vv+896, rs2_data+448, rs1_data+448)
  TEST_W_VV_OP_117( 96,  vwsubu.vv, rd_data_vv+960, rs2_data+480, rs1_data+480)
  TEST_W_VV_OP_rd17( 97,  vwsubu.vv, rd_data_vv+1024, rs2_data+512, rs1_data+512)
  TEST_W_VV_OP_118( 98,  vwsubu.vv, rd_data_vv+1024, rs2_data+512, rs1_data+512)
  TEST_W_VV_OP_rd18( 99,  vwsubu.vv, rd_data_vv+1088, rs2_data+544, rs1_data+544)
  TEST_W_VV_OP_119( 100,  vwsubu.vv, rd_data_vv+1088, rs2_data+544, rs1_data+544)
  TEST_W_VV_OP_rd19( 101,  vwsubu.vv, rd_data_vv+1152, rs2_data+576, rs1_data+576)
  TEST_W_VV_OP_120( 102,  vwsubu.vv, rd_data_vv+1152, rs2_data+576, rs1_data+576)
  TEST_W_VV_OP_rd20( 103,  vwsubu.vv, rd_data_vv+1216, rs2_data+608, rs1_data+608)
  TEST_W_VV_OP_121( 104,  vwsubu.vv, rd_data_vv+1216, rs2_data+608, rs1_data+608)
  TEST_W_VV_OP_rd21( 105,  vwsubu.vv, rd_data_vv+1280, rs2_data+640, rs1_data+640)
  TEST_W_VV_OP_122( 106,  vwsubu.vv, rd_data_vv+1280, rs2_data+640, rs1_data+640)
  TEST_W_VV_OP_rd22( 107,  vwsubu.vv, rd_data_vv+1344, rs2_data+672, rs1_data+672)
  TEST_W_VV_OP_123( 108,  vwsubu.vv, rd_data_vv+1344, rs2_data+672, rs1_data+672)
  TEST_W_VV_OP_rd23( 109,  vwsubu.vv, rd_data_vv+1408, rs2_data+704, rs1_data+704)
  TEST_W_VV_OP_125( 110,  vwsubu.vv, rd_data_vv+1472, rs2_data+736, rs1_data+736)
  TEST_W_VV_OP_rd25( 111,  vwsubu.vv, rd_data_vv+1536, rs2_data+768, rs1_data+768)
  TEST_W_VV_OP_126( 112,  vwsubu.vv, rd_data_vv+1536, rs2_data+768, rs1_data+768)
  TEST_W_VV_OP_rd26( 113,  vwsubu.vv, rd_data_vv+1600, rs2_data+800, rs1_data+800)
  TEST_W_VV_OP_127( 114,  vwsubu.vv, rd_data_vv+1600, rs2_data+800, rs1_data+800)
  TEST_W_VV_OP_rd27( 115,  vwsubu.vv, rd_data_vv+1664, rs2_data+832, rs1_data+832)
  TEST_W_VV_OP_128( 116,  vwsubu.vv, rd_data_vv+1664, rs2_data+832, rs1_data+832)
  TEST_W_VV_OP_rd28( 117,  vwsubu.vv, rd_data_vv+1728, rs2_data+864, rs1_data+864)
  TEST_W_VV_OP_129( 118,  vwsubu.vv, rd_data_vv+1728, rs2_data+864, rs1_data+864)
  TEST_W_VV_OP_rd29( 119,  vwsubu.vv, rd_data_vv+1792, rs2_data+896, rs1_data+896)
  TEST_W_VV_OP_130( 120,  vwsubu.vv, rd_data_vv+1792, rs2_data+896, rs1_data+896)
  TEST_W_VV_OP_rd30( 121,  vwsubu.vv, rd_data_vv+1856, rs2_data+928, rs1_data+928)
  TEST_W_VV_OP_131( 122,  vwsubu.vv, rd_data_vv+1856, rs2_data+928, rs1_data+928)
  TEST_W_VV_OP_rd31( 123,  vwsubu.vv, rd_data_vv+1920, rs2_data+960, rs1_data+960)
  TEST_W_VV_OP_12( 124,  vwsubu.vv, rd_data_vv+1920, rs2_data+960, rs1_data+960)
  TEST_W_VV_OP_rd1( 125,  vwsubu.vv, rd_data_vv+1984, rs2_data+992, rs1_data+992)
  TEST_W_VV_OP_13( 126,  vwsubu.vv, rd_data_vv+1984, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_W_VX_OP( 127,  vwsubu.vx, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_W_VX_OP( 128,  vwsubu.vx, rd_data_vx+64, rs2_data+32, 0xfffffffffffffffd)
  TEST_W_VX_OP( 129,  vwsubu.vx, rd_data_vx+128, rs2_data+64, 0xfffffffffffffffb)
  TEST_W_VX_OP( 130,  vwsubu.vx, rd_data_vx+192, rs2_data+96, 0xfffffffffffffff7)
  TEST_W_VX_OP( 131,  vwsubu.vx, rd_data_vx+256, rs2_data+128, 0xffffffffffffffef)
  TEST_W_VX_OP( 132,  vwsubu.vx, rd_data_vx+320, rs2_data+160, 0xffffffffffffffdf)
  TEST_W_VX_OP( 133,  vwsubu.vx, rd_data_vx+384, rs2_data+192, 0xffffffffffffffbf)
  TEST_W_VX_OP( 134,  vwsubu.vx, rd_data_vx+448, rs2_data+224, 0xffffffffffffff7f)
  TEST_W_VX_OP( 135,  vwsubu.vx, rd_data_vx+512, rs2_data+256, 0xfffffffffffffeff)
  TEST_W_VX_OP( 136,  vwsubu.vx, rd_data_vx+576, rs2_data+288, 0xfffffffffffffdff)
  TEST_W_VX_OP( 137,  vwsubu.vx, rd_data_vx+640, rs2_data+320, 0xfffffffffffffbff)
  TEST_W_VX_OP( 138,  vwsubu.vx, rd_data_vx+704, rs2_data+352, 0xfffffffffffff7ff)
  TEST_W_VX_OP( 139,  vwsubu.vx, rd_data_vx+768, rs2_data+384, 0xffffffffffffefff)
  TEST_W_VX_OP( 140,  vwsubu.vx, rd_data_vx+832, rs2_data+416, 0xffffffffffffdfff)
  TEST_W_VX_OP( 141,  vwsubu.vx, rd_data_vx+896, rs2_data+448, 0xffffffffffffbfff)
  TEST_W_VX_OP( 142,  vwsubu.vx, rd_data_vx+960, rs2_data+480, 0xffffffffffff7fff)
  TEST_W_VX_OP( 143,  vwsubu.vx, rd_data_vx+1024, rs2_data+512, 0xfffffffffffeffff)
  TEST_W_VX_OP( 144,  vwsubu.vx, rd_data_vx+1088, rs2_data+544, 0xfffffffffffdffff)
  TEST_W_VX_OP( 145,  vwsubu.vx, rd_data_vx+1152, rs2_data+576, 0xfffffffffffbffff)
  TEST_W_VX_OP( 146,  vwsubu.vx, rd_data_vx+1216, rs2_data+608, 0xfffffffffff7ffff)
  TEST_W_VX_OP( 147,  vwsubu.vx, rd_data_vx+1280, rs2_data+640, 0xffffffffffefffff)
  TEST_W_VX_OP( 148,  vwsubu.vx, rd_data_vx+1344, rs2_data+672, 0xffffffffffdfffff)
  TEST_W_VX_OP( 149,  vwsubu.vx, rd_data_vx+1408, rs2_data+704, 0xffffffffffbfffff)
  TEST_W_VX_OP( 150,  vwsubu.vx, rd_data_vx+1472, rs2_data+736, 0xffffffffff7fffff)
  TEST_W_VX_OP( 151,  vwsubu.vx, rd_data_vx+1536, rs2_data+768, 0xfffffffffeffffff)
  TEST_W_VX_OP( 152,  vwsubu.vx, rd_data_vx+1600, rs2_data+800, 0xfffffffffdffffff)
  TEST_W_VX_OP( 153,  vwsubu.vx, rd_data_vx+1664, rs2_data+832, 0xfffffffffbffffff)
  TEST_W_VX_OP( 154,  vwsubu.vx, rd_data_vx+1728, rs2_data+864, 0xfffffffff7ffffff)
  TEST_W_VX_OP( 155,  vwsubu.vx, rd_data_vx+1792, rs2_data+896, 0xffffffffefffffff)
  TEST_W_VX_OP( 156,  vwsubu.vx, rd_data_vx+1856, rs2_data+928, 0xffffffffdfffffff)
  TEST_W_VX_OP( 157,  vwsubu.vx, rd_data_vx+1920, rs2_data+960, 0xffffffffbfffffff)
  TEST_W_VX_OP( 158,  vwsubu.vx, rd_data_vx+1984, rs2_data+992, 0x0000007fffffff)
  TEST_W_VX_OP( 159,  vwsubu.vx, rd_data_vx+2048, rs2_data+1024, 0x00000000000001)
  TEST_W_VX_OP( 160,  vwsubu.vx, rd_data_vx+2112, rs2_data+1056, 0x00000000000002)
  TEST_W_VX_OP( 161,  vwsubu.vx, rd_data_vx+2176, rs2_data+1088, 0x00000000000004)
  TEST_W_VX_OP( 162,  vwsubu.vx, rd_data_vx+2240, rs2_data+1120, 0x00000000000008)
  TEST_W_VX_OP( 163,  vwsubu.vx, rd_data_vx+2304, rs2_data+1152, 0x00000000000010)
  TEST_W_VX_OP( 164,  vwsubu.vx, rd_data_vx+2368, rs2_data+1184, 0x00000000000020)
  TEST_W_VX_OP( 165,  vwsubu.vx, rd_data_vx+2432, rs2_data+1216, 0x00000000000040)
  TEST_W_VX_OP( 166,  vwsubu.vx, rd_data_vx+2496, rs2_data+1248, 0x00000000000080)
  TEST_W_VX_OP( 167,  vwsubu.vx, rd_data_vx+2560, rs2_data+1280, 0x00000000000100)
  TEST_W_VX_OP( 168,  vwsubu.vx, rd_data_vx+2624, rs2_data+1312, 0x00000000000200)
  TEST_W_VX_OP( 169,  vwsubu.vx, rd_data_vx+2688, rs2_data+1344, 0x00000000000400)
  TEST_W_VX_OP( 170,  vwsubu.vx, rd_data_vx+2752, rs2_data+1376, 0x00000000000800)
  TEST_W_VX_OP( 171,  vwsubu.vx, rd_data_vx+2816, rs2_data+1408, 0x00000000001000)
  TEST_W_VX_OP( 172,  vwsubu.vx, rd_data_vx+2880, rs2_data+1440, 0x00000000002000)
  TEST_W_VX_OP( 173,  vwsubu.vx, rd_data_vx+2944, rs2_data+1472, 0x00000000004000)
  TEST_W_VX_OP( 174,  vwsubu.vx, rd_data_vx+3008, rs2_data+1504, 0x00000000008000)
  TEST_W_VX_OP( 175,  vwsubu.vx, rd_data_vx+3072, rs2_data+1536, 0x00000000010000)
  TEST_W_VX_OP( 176,  vwsubu.vx, rd_data_vx+3136, rs2_data+1568, 0x00000000020000)
  TEST_W_VX_OP( 177,  vwsubu.vx, rd_data_vx+3200, rs2_data+1600, 0x00000000040000)
  TEST_W_VX_OP( 178,  vwsubu.vx, rd_data_vx+3264, rs2_data+1632, 0x00000000080000)
  TEST_W_VX_OP( 179,  vwsubu.vx, rd_data_vx+3328, rs2_data+1664, 0x00000000100000)
  TEST_W_VX_OP( 180,  vwsubu.vx, rd_data_vx+3392, rs2_data+1696, 0x00000000200000)
  TEST_W_VX_OP( 181,  vwsubu.vx, rd_data_vx+3456, rs2_data+1728, 0x00000000400000)
  TEST_W_VX_OP( 182,  vwsubu.vx, rd_data_vx+3520, rs2_data+1760, 0x00000000800000)
  TEST_W_VX_OP( 183,  vwsubu.vx, rd_data_vx+3584, rs2_data+1792, 0x00000001000000)
  TEST_W_VX_OP( 184,  vwsubu.vx, rd_data_vx+3648, rs2_data+1824, 0x00000002000000)
  TEST_W_VX_OP( 185,  vwsubu.vx, rd_data_vx+3712, rs2_data+1856, 0x00000004000000)
  TEST_W_VX_OP( 186,  vwsubu.vx, rd_data_vx+3776, rs2_data+1888, 0x00000008000000)
  TEST_W_VX_OP( 187,  vwsubu.vx, rd_data_vx+3840, rs2_data+1920, 0x00000010000000)
  TEST_W_VX_OP( 188,  vwsubu.vx, rd_data_vx+3904, rs2_data+1952, 0x00000020000000)
  TEST_W_VX_OP( 189,  vwsubu.vx, rd_data_vx+3968, rs2_data+1984, 0x00000040000000)
  TEST_W_VX_OP( 190,  vwsubu.vx, rd_data_vx+4032, rs2_data+2016, 0xffffffff80000000)
  TEST_W_VX_OP( 191,  vwsubu.vx, rd_data_vx+4096, rs2_data+2048, 0x00000000000003)
  TEST_W_VX_OP( 192,  vwsubu.vx, rd_data_vx+4160, rs2_data+2080, 0x00000000000003)
  TEST_W_VX_OP( 193,  vwsubu.vx, rd_data_vx+4224, rs2_data+2112, 0x00000000000003)
  TEST_W_VX_OP( 194,  vwsubu.vx, rd_data_vx+4288, rs2_data+2144, 0x00000000000003)
  #-------------------------------------------------------------
  # WV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_W_WV_OP( 195,  vwsubu.wv, rd_data_wv+0, rs2_data_widen+0, rs1_data+0)
  TEST_W_WV_OP( 196,  vwsubu.wv, rd_data_wv+64, rs2_data_widen+64, rs1_data+32)
  TEST_W_WV_OP( 197,  vwsubu.wv, rd_data_wv+128, rs2_data_widen+128, rs1_data+64)
  TEST_W_WV_OP( 198,  vwsubu.wv, rd_data_wv+192, rs2_data_widen+192, rs1_data+96)
  TEST_W_WV_OP( 199,  vwsubu.wv, rd_data_wv+256, rs2_data_widen+256, rs1_data+128)
  TEST_W_WV_OP( 200,  vwsubu.wv, rd_data_wv+320, rs2_data_widen+320, rs1_data+160)
  TEST_W_WV_OP( 201,  vwsubu.wv, rd_data_wv+384, rs2_data_widen+384, rs1_data+192)
  TEST_W_WV_OP( 202,  vwsubu.wv, rd_data_wv+448, rs2_data_widen+448, rs1_data+224)
  TEST_W_WV_OP( 203,  vwsubu.wv, rd_data_wv+512, rs2_data_widen+512, rs1_data+256)
  TEST_W_WV_OP( 204,  vwsubu.wv, rd_data_wv+576, rs2_data_widen+576, rs1_data+288)
  TEST_W_WV_OP( 205,  vwsubu.wv, rd_data_wv+640, rs2_data_widen+640, rs1_data+320)
  TEST_W_WV_OP( 206,  vwsubu.wv, rd_data_wv+704, rs2_data_widen+704, rs1_data+352)
  TEST_W_WV_OP( 207,  vwsubu.wv, rd_data_wv+768, rs2_data_widen+768, rs1_data+384)
  TEST_W_WV_OP( 208,  vwsubu.wv, rd_data_wv+832, rs2_data_widen+832, rs1_data+416)
  TEST_W_WV_OP( 209,  vwsubu.wv, rd_data_wv+896, rs2_data_widen+896, rs1_data+448)
  TEST_W_WV_OP( 210,  vwsubu.wv, rd_data_wv+960, rs2_data_widen+960, rs1_data+480)
  TEST_W_WV_OP( 211,  vwsubu.wv, rd_data_wv+1024, rs2_data_widen+1024, rs1_data+512)
  TEST_W_WV_OP( 212,  vwsubu.wv, rd_data_wv+1088, rs2_data_widen+1088, rs1_data+544)
  TEST_W_WV_OP( 213,  vwsubu.wv, rd_data_wv+1152, rs2_data_widen+1152, rs1_data+576)
  TEST_W_WV_OP( 214,  vwsubu.wv, rd_data_wv+1216, rs2_data_widen+1216, rs1_data+608)
  TEST_W_WV_OP( 215,  vwsubu.wv, rd_data_wv+1280, rs2_data_widen+1280, rs1_data+640)
  TEST_W_WV_OP( 216,  vwsubu.wv, rd_data_wv+1344, rs2_data_widen+1344, rs1_data+672)
  TEST_W_WV_OP( 217,  vwsubu.wv, rd_data_wv+1408, rs2_data_widen+1408, rs1_data+704)
  TEST_W_WV_OP( 218,  vwsubu.wv, rd_data_wv+1472, rs2_data_widen+1472, rs1_data+736)
  TEST_W_WV_OP( 219,  vwsubu.wv, rd_data_wv+1536, rs2_data_widen+1536, rs1_data+768)
  TEST_W_WV_OP( 220,  vwsubu.wv, rd_data_wv+1600, rs2_data_widen+1600, rs1_data+800)
  TEST_W_WV_OP( 221,  vwsubu.wv, rd_data_wv+1664, rs2_data_widen+1664, rs1_data+832)
  TEST_W_WV_OP( 222,  vwsubu.wv, rd_data_wv+1728, rs2_data_widen+1728, rs1_data+864)
  TEST_W_WV_OP( 223,  vwsubu.wv, rd_data_wv+1792, rs2_data_widen+1792, rs1_data+896)
  TEST_W_WV_OP( 224,  vwsubu.wv, rd_data_wv+1856, rs2_data_widen+1856, rs1_data+928)
  TEST_W_WV_OP( 225,  vwsubu.wv, rd_data_wv+1920, rs2_data_widen+1920, rs1_data+960)
  TEST_W_WV_OP( 226,  vwsubu.wv, rd_data_wv+1984, rs2_data_widen+1984, rs1_data+992)
  TEST_W_WV_OP( 227,  vwsubu.wv, rd_data_wv+2048, rs2_data_widen+2048, rs1_data+1024)
  TEST_W_WV_OP( 228,  vwsubu.wv, rd_data_wv+2112, rs2_data_widen+2112, rs1_data+1056)
  TEST_W_WV_OP( 229,  vwsubu.wv, rd_data_wv+2176, rs2_data_widen+2176, rs1_data+1088)
  TEST_W_WV_OP( 230,  vwsubu.wv, rd_data_wv+2240, rs2_data_widen+2240, rs1_data+1120)
  TEST_W_WV_OP( 231,  vwsubu.wv, rd_data_wv+2304, rs2_data_widen+2304, rs1_data+1152)
  TEST_W_WV_OP( 232,  vwsubu.wv, rd_data_wv+2368, rs2_data_widen+2368, rs1_data+1184)
  TEST_W_WV_OP( 233,  vwsubu.wv, rd_data_wv+2432, rs2_data_widen+2432, rs1_data+1216)
  TEST_W_WV_OP( 234,  vwsubu.wv, rd_data_wv+2496, rs2_data_widen+2496, rs1_data+1248)
  TEST_W_WV_OP( 235,  vwsubu.wv, rd_data_wv+2560, rs2_data_widen+2560, rs1_data+1280)
  TEST_W_WV_OP( 236,  vwsubu.wv, rd_data_wv+2624, rs2_data_widen+2624, rs1_data+1312)
  TEST_W_WV_OP( 237,  vwsubu.wv, rd_data_wv+2688, rs2_data_widen+2688, rs1_data+1344)
  TEST_W_WV_OP( 238,  vwsubu.wv, rd_data_wv+2752, rs2_data_widen+2752, rs1_data+1376)
  TEST_W_WV_OP( 239,  vwsubu.wv, rd_data_wv+2816, rs2_data_widen+2816, rs1_data+1408)
  TEST_W_WV_OP( 240,  vwsubu.wv, rd_data_wv+2880, rs2_data_widen+2880, rs1_data+1440)
  TEST_W_WV_OP( 241,  vwsubu.wv, rd_data_wv+2944, rs2_data_widen+2944, rs1_data+1472)
  TEST_W_WV_OP( 242,  vwsubu.wv, rd_data_wv+3008, rs2_data_widen+3008, rs1_data+1504)
  TEST_W_WV_OP( 243,  vwsubu.wv, rd_data_wv+3072, rs2_data_widen+3072, rs1_data+1536)
  TEST_W_WV_OP( 244,  vwsubu.wv, rd_data_wv+3136, rs2_data_widen+3136, rs1_data+1568)
  TEST_W_WV_OP( 245,  vwsubu.wv, rd_data_wv+3200, rs2_data_widen+3200, rs1_data+1600)
  TEST_W_WV_OP( 246,  vwsubu.wv, rd_data_wv+3264, rs2_data_widen+3264, rs1_data+1632)
  TEST_W_WV_OP( 247,  vwsubu.wv, rd_data_wv+3328, rs2_data_widen+3328, rs1_data+1664)
  TEST_W_WV_OP( 248,  vwsubu.wv, rd_data_wv+3392, rs2_data_widen+3392, rs1_data+1696)
  TEST_W_WV_OP( 249,  vwsubu.wv, rd_data_wv+3456, rs2_data_widen+3456, rs1_data+1728)
  TEST_W_WV_OP( 250,  vwsubu.wv, rd_data_wv+3520, rs2_data_widen+3520, rs1_data+1760)
  TEST_W_WV_OP( 251,  vwsubu.wv, rd_data_wv+3584, rs2_data_widen+3584, rs1_data+1792)
  TEST_W_WV_OP( 252,  vwsubu.wv, rd_data_wv+3648, rs2_data_widen+3648, rs1_data+1824)
  TEST_W_WV_OP( 253,  vwsubu.wv, rd_data_wv+3712, rs2_data_widen+3712, rs1_data+1856)
  TEST_W_WV_OP( 254,  vwsubu.wv, rd_data_wv+3776, rs2_data_widen+3776, rs1_data+1888)
  TEST_W_WV_OP( 255,  vwsubu.wv, rd_data_wv+3840, rs2_data_widen+3840, rs1_data+1920)
  TEST_W_WV_OP( 256,  vwsubu.wv, rd_data_wv+3904, rs2_data_widen+3904, rs1_data+1952)
  TEST_W_WV_OP( 257,  vwsubu.wv, rd_data_wv+3968, rs2_data_widen+3968, rs1_data+1984)
  TEST_W_WV_OP( 258,  vwsubu.wv, rd_data_wv+4032, rs2_data_widen+4032, rs1_data+2016)
  TEST_W_WV_OP( 259,  vwsubu.wv, rd_data_wv+4096, rs2_data_widen+4096, rs1_data+2048)
  TEST_W_WV_OP( 260,  vwsubu.wv, rd_data_wv+4160, rs2_data_widen+4160, rs1_data+2080)
  TEST_W_WV_OP( 261,  vwsubu.wv, rd_data_wv+4224, rs2_data_widen+4224, rs1_data+2112)
  TEST_W_WV_OP( 262,  vwsubu.wv, rd_data_wv+4288, rs2_data_widen+4288, rs1_data+2144)
  #-------------------------------------------------------------
  # WX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_W_WX_OP( 263,  vwsubu.wx, rd_data_wx+0, rs2_data_widen+0, 0xfffffffffffffffe)
  TEST_W_WX_OP( 264,  vwsubu.wx, rd_data_wx+64, rs2_data_widen+64, 0xfffffffffffffffd)
  TEST_W_WX_OP( 265,  vwsubu.wx, rd_data_wx+128, rs2_data_widen+128, 0xfffffffffffffffb)
  TEST_W_WX_OP( 266,  vwsubu.wx, rd_data_wx+192, rs2_data_widen+192, 0xfffffffffffffff7)
  TEST_W_WX_OP( 267,  vwsubu.wx, rd_data_wx+256, rs2_data_widen+256, 0xffffffffffffffef)
  TEST_W_WX_OP( 268,  vwsubu.wx, rd_data_wx+320, rs2_data_widen+320, 0xffffffffffffffdf)
  TEST_W_WX_OP( 269,  vwsubu.wx, rd_data_wx+384, rs2_data_widen+384, 0xffffffffffffffbf)
  TEST_W_WX_OP( 270,  vwsubu.wx, rd_data_wx+448, rs2_data_widen+448, 0xffffffffffffff7f)
  TEST_W_WX_OP( 271,  vwsubu.wx, rd_data_wx+512, rs2_data_widen+512, 0xfffffffffffffeff)
  TEST_W_WX_OP( 272,  vwsubu.wx, rd_data_wx+576, rs2_data_widen+576, 0xfffffffffffffdff)
  TEST_W_WX_OP( 273,  vwsubu.wx, rd_data_wx+640, rs2_data_widen+640, 0xfffffffffffffbff)
  TEST_W_WX_OP( 274,  vwsubu.wx, rd_data_wx+704, rs2_data_widen+704, 0xfffffffffffff7ff)
  TEST_W_WX_OP( 275,  vwsubu.wx, rd_data_wx+768, rs2_data_widen+768, 0xffffffffffffefff)
  TEST_W_WX_OP( 276,  vwsubu.wx, rd_data_wx+832, rs2_data_widen+832, 0xffffffffffffdfff)
  TEST_W_WX_OP( 277,  vwsubu.wx, rd_data_wx+896, rs2_data_widen+896, 0xffffffffffffbfff)
  TEST_W_WX_OP( 278,  vwsubu.wx, rd_data_wx+960, rs2_data_widen+960, 0xffffffffffff7fff)
  TEST_W_WX_OP( 279,  vwsubu.wx, rd_data_wx+1024, rs2_data_widen+1024, 0xfffffffffffeffff)
  TEST_W_WX_OP( 280,  vwsubu.wx, rd_data_wx+1088, rs2_data_widen+1088, 0xfffffffffffdffff)
  TEST_W_WX_OP( 281,  vwsubu.wx, rd_data_wx+1152, rs2_data_widen+1152, 0xfffffffffffbffff)
  TEST_W_WX_OP( 282,  vwsubu.wx, rd_data_wx+1216, rs2_data_widen+1216, 0xfffffffffff7ffff)
  TEST_W_WX_OP( 283,  vwsubu.wx, rd_data_wx+1280, rs2_data_widen+1280, 0xffffffffffefffff)
  TEST_W_WX_OP( 284,  vwsubu.wx, rd_data_wx+1344, rs2_data_widen+1344, 0xffffffffffdfffff)
  TEST_W_WX_OP( 285,  vwsubu.wx, rd_data_wx+1408, rs2_data_widen+1408, 0xffffffffffbfffff)
  TEST_W_WX_OP( 286,  vwsubu.wx, rd_data_wx+1472, rs2_data_widen+1472, 0xffffffffff7fffff)
  TEST_W_WX_OP( 287,  vwsubu.wx, rd_data_wx+1536, rs2_data_widen+1536, 0xfffffffffeffffff)
  TEST_W_WX_OP( 288,  vwsubu.wx, rd_data_wx+1600, rs2_data_widen+1600, 0xfffffffffdffffff)
  TEST_W_WX_OP( 289,  vwsubu.wx, rd_data_wx+1664, rs2_data_widen+1664, 0xfffffffffbffffff)
  TEST_W_WX_OP( 290,  vwsubu.wx, rd_data_wx+1728, rs2_data_widen+1728, 0xfffffffff7ffffff)
  TEST_W_WX_OP( 291,  vwsubu.wx, rd_data_wx+1792, rs2_data_widen+1792, 0xffffffffefffffff)
  TEST_W_WX_OP( 292,  vwsubu.wx, rd_data_wx+1856, rs2_data_widen+1856, 0xffffffffdfffffff)
  TEST_W_WX_OP( 293,  vwsubu.wx, rd_data_wx+1920, rs2_data_widen+1920, 0xffffffffbfffffff)
  TEST_W_WX_OP( 294,  vwsubu.wx, rd_data_wx+1984, rs2_data_widen+1984, 0x0000007fffffff)
  TEST_W_WX_OP( 295,  vwsubu.wx, rd_data_wx+2048, rs2_data_widen+2048, 0x00000000000001)
  TEST_W_WX_OP( 296,  vwsubu.wx, rd_data_wx+2112, rs2_data_widen+2112, 0x00000000000002)
  TEST_W_WX_OP( 297,  vwsubu.wx, rd_data_wx+2176, rs2_data_widen+2176, 0x00000000000004)
  TEST_W_WX_OP( 298,  vwsubu.wx, rd_data_wx+2240, rs2_data_widen+2240, 0x00000000000008)
  TEST_W_WX_OP( 299,  vwsubu.wx, rd_data_wx+2304, rs2_data_widen+2304, 0x00000000000010)
  TEST_W_WX_OP( 300,  vwsubu.wx, rd_data_wx+2368, rs2_data_widen+2368, 0x00000000000020)
  TEST_W_WX_OP( 301,  vwsubu.wx, rd_data_wx+2432, rs2_data_widen+2432, 0x00000000000040)
  TEST_W_WX_OP( 302,  vwsubu.wx, rd_data_wx+2496, rs2_data_widen+2496, 0x00000000000080)
  TEST_W_WX_OP( 303,  vwsubu.wx, rd_data_wx+2560, rs2_data_widen+2560, 0x00000000000100)
  TEST_W_WX_OP( 304,  vwsubu.wx, rd_data_wx+2624, rs2_data_widen+2624, 0x00000000000200)
  TEST_W_WX_OP( 305,  vwsubu.wx, rd_data_wx+2688, rs2_data_widen+2688, 0x00000000000400)
  TEST_W_WX_OP( 306,  vwsubu.wx, rd_data_wx+2752, rs2_data_widen+2752, 0x00000000000800)
  TEST_W_WX_OP( 307,  vwsubu.wx, rd_data_wx+2816, rs2_data_widen+2816, 0x00000000001000)
  TEST_W_WX_OP( 308,  vwsubu.wx, rd_data_wx+2880, rs2_data_widen+2880, 0x00000000002000)
  TEST_W_WX_OP( 309,  vwsubu.wx, rd_data_wx+2944, rs2_data_widen+2944, 0x00000000004000)
  TEST_W_WX_OP( 310,  vwsubu.wx, rd_data_wx+3008, rs2_data_widen+3008, 0x00000000008000)
  TEST_W_WX_OP( 311,  vwsubu.wx, rd_data_wx+3072, rs2_data_widen+3072, 0x00000000010000)
  TEST_W_WX_OP( 312,  vwsubu.wx, rd_data_wx+3136, rs2_data_widen+3136, 0x00000000020000)
  TEST_W_WX_OP( 313,  vwsubu.wx, rd_data_wx+3200, rs2_data_widen+3200, 0x00000000040000)
  TEST_W_WX_OP( 314,  vwsubu.wx, rd_data_wx+3264, rs2_data_widen+3264, 0x00000000080000)
  TEST_W_WX_OP( 315,  vwsubu.wx, rd_data_wx+3328, rs2_data_widen+3328, 0x00000000100000)
  TEST_W_WX_OP( 316,  vwsubu.wx, rd_data_wx+3392, rs2_data_widen+3392, 0x00000000200000)
  TEST_W_WX_OP( 317,  vwsubu.wx, rd_data_wx+3456, rs2_data_widen+3456, 0x00000000400000)
  TEST_W_WX_OP( 318,  vwsubu.wx, rd_data_wx+3520, rs2_data_widen+3520, 0x00000000800000)
  TEST_W_WX_OP( 319,  vwsubu.wx, rd_data_wx+3584, rs2_data_widen+3584, 0x00000001000000)
  TEST_W_WX_OP( 320,  vwsubu.wx, rd_data_wx+3648, rs2_data_widen+3648, 0x00000002000000)
  TEST_W_WX_OP( 321,  vwsubu.wx, rd_data_wx+3712, rs2_data_widen+3712, 0x00000004000000)
  TEST_W_WX_OP( 322,  vwsubu.wx, rd_data_wx+3776, rs2_data_widen+3776, 0x00000008000000)
  TEST_W_WX_OP( 323,  vwsubu.wx, rd_data_wx+3840, rs2_data_widen+3840, 0x00000010000000)
  TEST_W_WX_OP( 324,  vwsubu.wx, rd_data_wx+3904, rs2_data_widen+3904, 0x00000020000000)
  TEST_W_WX_OP( 325,  vwsubu.wx, rd_data_wx+3968, rs2_data_widen+3968, 0x00000040000000)
  TEST_W_WX_OP( 326,  vwsubu.wx, rd_data_wx+4032, rs2_data_widen+4032, 0xffffffff80000000)
  TEST_W_WX_OP( 327,  vwsubu.wx, rd_data_wx+4096, rs2_data_widen+4096, 0x00000000000003)
  TEST_W_WX_OP( 328,  vwsubu.wx, rd_data_wx+4160, rs2_data_widen+4160, 0x00000000000003)
  TEST_W_WX_OP( 329,  vwsubu.wx, rd_data_wx+4224, rs2_data_widen+4224, 0x00000000000003)
  TEST_W_WX_OP( 330,  vwsubu.wx, rd_data_wx+4288, rs2_data_widen+4288, 0x00000000000003)
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
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333330
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b501
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a59
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333331
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffddddddde
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffaaaaaaad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffdddddddd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaa9f5a8
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
.dword	0xffffffff55555556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55555556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff5555555c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55560a5b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b4ff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffff
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555551
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666662
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000022222222
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000033333333
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000022222221
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000033333332
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffccccccd3
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffcccd81d2
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff9999999f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff999a4e9e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff9999999e
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffeeeeeef0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a59
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff66671b6a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a58
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff66671b69
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff0000b50a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00016a09
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffff4b01
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffff4b00
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000005554a052
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006665b163
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555553
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666664
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555552
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666663
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b503
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffaaaaaab1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffaaab5fb0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffaaaaaab0
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000002
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000011111113
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
.dword	0x0000000000000001
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b500
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555552
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666663
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000022222223
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000033333334
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000022222222
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000033333333
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffccccccd4
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffcccd81d3
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff999999a0
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff999a4e9f
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff9999999f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffeeeeeef1
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000002
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005554a052
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006665b163
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005554a051
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006665b162
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffff4b03
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000002
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffaaaaaaaf
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffaaab5fae
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffaaaaaaae
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000011111111
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffaaaaaaaa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffbbbbbbbb
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffaaaaaaa9
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffbbbbbbba
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff5555555b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a5a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffffffff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b4fe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffffffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555550
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666661
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000022222221
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333332
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000022222220
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333331
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffccccccd2
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffcccd81d1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff9999999e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff999a4e9d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff9999999d
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffeeeeeeef
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55560a58
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff66671b69
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55560a57
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff66671b68
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff0000b509
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00016a08
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffff4b00
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffff
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffff4aff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333330
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333330
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b501
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b501
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a59
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333331
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a59
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333331
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffddddddde
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffddddddde
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffaaaaaaad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffdddddddd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffaaaaaaad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffdddddddd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaa9f5a8
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000aaa9f5a8
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
.dword	0xffffffff55555556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55555556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff5555555c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55560a5b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff5555555c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55560a5b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b4ff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b4ff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffff
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555551
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffff
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555551
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666662
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000022222222
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666662
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000022222222
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000033333333
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000022222221
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000033333333
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000022222221
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000033333332
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffccccccd3
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000033333332
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffccccccd3
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffcccd81d2
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff9999999f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff999a4e9e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff9999999e
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffeeeeeef0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffeeeeeef0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a59
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff66671b6a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a59
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff66671b6a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a58
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff66671b69
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a58
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff66671b69
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff0000b50a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00016a09
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff0000b50a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00016a09
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffff4b01
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffff4b01
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffff4b00
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000005554a052
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffff4b00
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000005554a052
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006665b163
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555553
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006665b163
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555553
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666664
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555552
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666664
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555552
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a

rd_data_vx:
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffffff1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffff02
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffff002
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffff0004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffff00004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffff000008
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffff0000008
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00000012
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00000021
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00000121
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00001021
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00010041
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00100041
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff01000081
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff10000081
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00000104
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff33333434
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff0000b705
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00000205
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff0000b904
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff33333735
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00000804
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff33333b34
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00001003
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff33334333
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffaaaacaac
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffff6afe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffaaaaeaab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffff8afd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00008001
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00008001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00010007
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff0001b506
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00020006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff0002b505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00040005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55595557
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff666e6668
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff555d5556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff66766667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55655555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff66866666
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00200007
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff0040b506
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00400006
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff0080b505
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00800005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff56555557
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff67666668
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff57555556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff68666667
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff59555555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff6a666666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff08000007
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff0800b506
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff10000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff1000b505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff20000005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff75555557
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffa6666668
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff95555556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffe6666667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffd5555555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666664
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b503
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000003
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b500
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005555554e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666665f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555545
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666656
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555534
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666645
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffc6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b4c5
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffff85
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b484
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffff04
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555456
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666467
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555355
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666266
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555154
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066665e65
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffff806
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000a505
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffff005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000009504
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffffe004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055551556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066662667
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005554d555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006665e666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055545554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066656665
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffffffe0006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffeb505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffffffc0005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffcb504
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffffff80004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000554d5556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066566667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055455555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066466666
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055355554
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066266665
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffc00006
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffff80b505
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffff800005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffff00b504
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffff000004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000053555556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000064666667
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000051555555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000062666666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000004d555554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000005e666665
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffff0000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffff000b505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffe0000005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffe000b504
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffc0000004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000015555556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffe6666667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffd5555555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666663
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555551
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666662
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000003
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b502
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000002
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b501
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a

.align 8

rd_data_wv:
.dword	0xffffffff00000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333330
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b501
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a59
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333331
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffddddddde
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffaaaaaaad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffdddddddd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55555556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffaaa9f5a8
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff5554a052
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55555556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55555556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff5555555c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55560a5b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b4ff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffff
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555551
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666662
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000022222222
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000033333333
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000022222221
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000033333332
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffccccccd3
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffcccd81d2
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff9999999f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff999a4e9e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff9999999e
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffeeeeeef0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a59
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff66671b6a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a58
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff66671b69
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff0000b50a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00016a09
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffff4b01
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffff4b00
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000005554a052
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000006665b163
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555553
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666664
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555552
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666663
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b503
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffaaaaaab1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffaaab5fb0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffaaaaaab0
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000002
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000011111113
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
.dword	0x0000000000000001
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b500
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555552
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666663
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000022222223
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000033333334
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000022222222
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000033333333
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffccccccd4
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffcccd81d3
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff999999a0
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff999a4e9f
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff9999999f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffeeeeeef1
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000002
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005554a052
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006665b163
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005554a051
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006665b162
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffff4b03
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000002
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffaaaaaaaf
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffaaab5fae
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffaaaaaaae
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000011111111
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffaaaaaaaa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffbbbbbbbb
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffaaaaaaa9
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffbbbbbbba
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff5555555b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff55560a5a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffffffff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b4fe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffffffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555550
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666661
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000022222221
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333332
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000022222220
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000033333331
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffccccccd2
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffcccd81d1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff9999999e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff999a4e9d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff9999999d
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffeeeeeeef
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55560a58
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff66671b69
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55560a57
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff66671b68
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff0000b509
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00016a08
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffff4b00
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffff
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffff4aff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a

rd_data_wx:
.dword	0xffffffff00000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffefffffff1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffeffffff02
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffefffff002
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffeffff0004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffefff00004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffeff000008
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffef0000008
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00000012
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00000021
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00000121
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00001021
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00010041
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00100041
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff01000081
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff10000081
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00000104
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff33333434
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff0000b705
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00000205
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff0000b904
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff33333735
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00000804
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff33333b34
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00001003
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff33334333
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffeaaaacaac
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffeffff6afe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffeaaaaeaab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffeffff8afd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00008001
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00008001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00010007
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff0001b506
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00020006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff0002b505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff00040005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55595557
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff666e6668
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff555d5556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff66766667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff55655555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff66866666
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00200007
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff0040b506
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00400006
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff0080b505
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff00800005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff56555557
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff67666668
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff57555556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff68666667
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff59555555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff6a666666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff08000007
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff0800b506
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff10000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff1000b505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff20000005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff75555557
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffa6666668
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff95555556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffe6666667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffd5555555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666664
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b503
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000003
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b500
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005555554e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006666665f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555545
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666656
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055555534
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066666645
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffc6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b4c5
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffff85
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000b484
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffff04
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555456
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666467
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555355
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666266
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555154
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066665e65
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffff806
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000a505
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffff005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000009504
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffffe004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055551556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066662667
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000005554d555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006665e666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000055545554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000066656665
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffffffe0006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffeb505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffffffc0005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffcb504
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffffff80004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x00000000554d5556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066566667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055455555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066466666
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055355554
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066266665
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffc00006
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffff80b505
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffff800005
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffff00b504
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffff000004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000053555556
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000064666667
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000051555555
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000062666666
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000004d555554
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000005e666665
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffff0000006
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffff000b505
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffe0000005
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffe000b504
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffc0000004
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000015555556
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffe6666667
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffd5555555
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666663
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000055555551
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000066666662
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000003
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b502
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000002
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000000000b501
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000001
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
    

#----------------------------------------------------------------------------- 
    # vfwsub.S
    #-----------------------------------------------------------------------------
    #
    # Test vfwsub instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vfwsub)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_W_FP_VV_OP 
#define TEST_W_FP_VV_OP( testnum, inst, flags, result, val1, val2 ) \
    TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,     \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle32.v v8, (x7); \
        la x7, val2; \
        vle32.v v16, (x7); \
        inst v24, v8, v16, v0.t; \
    )
#undef TEST_W_FP_VF_OP 
#define TEST_W_FP_VF_OP( testnum, inst, flags, result, val1, val2 ) \
    TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,    \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle32.v v8, (x7);  \
        la x7, val2; \
        flw f1, (x7);  \
        inst v24, v8, f1, v0.t; \
    )
#undef TEST_W_FP_WV_OP 
#define TEST_W_FP_WV_OP( testnum, inst, flags, result, val1, val2 ) \
    TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,     \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle64.v v8, (x7); \
        la x7, val2; \
        vle32.v v16, (x7); \
        inst v24, v8, v16, v0.t; \
    )
#undef TEST_W_FP_WF_OP 
#define TEST_W_FP_WF_OP( testnum, inst, flags, result, val1, val2 ) \
    TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,    \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle64.v v8, (x7);  \
        la x7, val2; \
        flw f1, (x7);  \
        inst v24, v8, f1, v0.t; \
    )
#define TEST_W_FP_VV_OP_11( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v1, (x7); \
            inst v16, v8, v1, v0.t; \
        )
#define TEST_W_FP_VV_OP_12( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v2, (x7); \
            inst v16, v8, v2, v0.t; \
        )
#define TEST_W_FP_VV_OP_13( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v3, (x7); \
            inst v16, v8, v3, v0.t; \
        )
#define TEST_W_FP_VV_OP_14( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v4, (x7); \
            inst v16, v8, v4, v0.t; \
        )
#define TEST_W_FP_VV_OP_15( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v5, (x7); \
            inst v16, v8, v5, v0.t; \
        )
#define TEST_W_FP_VV_OP_16( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v6, (x7); \
            inst v16, v8, v6, v0.t; \
        )
#define TEST_W_FP_VV_OP_17( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v7, (x7); \
            inst v16, v8, v7, v0.t; \
        )
#define TEST_W_FP_VV_OP_18( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v8, (x7); \
            inst v24, v16, v8, v0.t; \
        )
#define TEST_W_FP_VV_OP_19( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v9, (x7); \
            inst v24, v16, v9, v0.t; \
        )
#define TEST_W_FP_VV_OP_110( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v10, (x7); \
            inst v24, v16, v10, v0.t; \
        )
#define TEST_W_FP_VV_OP_111( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v11, (x7); \
            inst v24, v16, v11, v0.t; \
        )
#define TEST_W_FP_VV_OP_112( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v12, (x7); \
            inst v24, v16, v12, v0.t; \
        )
#define TEST_W_FP_VV_OP_113( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v13, (x7); \
            inst v24, v16, v13, v0.t; \
        )
#define TEST_W_FP_VV_OP_114( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v14, (x7); \
            inst v24, v16, v14, v0.t; \
        )
#define TEST_W_FP_VV_OP_115( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v15, (x7); \
            inst v24, v16, v15, v0.t; \
        )
#define TEST_W_FP_VV_OP_116( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v24, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v8, v24, v16, v0.t; \
        )
#define TEST_W_FP_VV_OP_117( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v24, (x7); \
            la x7, val2; \
            vle32.v v17, (x7); \
            inst v8, v24, v17, v0.t; \
        )
#define TEST_W_FP_VV_OP_118( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v24, (x7); \
            la x7, val2; \
            vle32.v v18, (x7); \
            inst v8, v24, v18, v0.t; \
        )
#define TEST_W_FP_VV_OP_119( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v24, (x7); \
            la x7, val2; \
            vle32.v v19, (x7); \
            inst v8, v24, v19, v0.t; \
        )
#define TEST_W_FP_VV_OP_120( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v24, (x7); \
            la x7, val2; \
            vle32.v v20, (x7); \
            inst v8, v24, v20, v0.t; \
        )
#define TEST_W_FP_VV_OP_121( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v24, (x7); \
            la x7, val2; \
            vle32.v v21, (x7); \
            inst v8, v24, v21, v0.t; \
        )
#define TEST_W_FP_VV_OP_122( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v24, (x7); \
            la x7, val2; \
            vle32.v v22, (x7); \
            inst v8, v24, v22, v0.t; \
        )
#define TEST_W_FP_VV_OP_123( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v24, (x7); \
            la x7, val2; \
            vle32.v v23, (x7); \
            inst v8, v24, v23, v0.t; \
        )
#define TEST_W_FP_VV_OP_124( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v24, (x7); \
            inst v16, v8, v24, v0.t; \
        )
#define TEST_W_FP_VV_OP_125( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v25, (x7); \
            inst v16, v8, v25, v0.t; \
        )
#define TEST_W_FP_VV_OP_126( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v26, (x7); \
            inst v16, v8, v26, v0.t; \
        )
#define TEST_W_FP_VV_OP_127( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v27, (x7); \
            inst v16, v8, v27, v0.t; \
        )
#define TEST_W_FP_VV_OP_128( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v28, (x7); \
            inst v16, v8, v28, v0.t; \
        )
#define TEST_W_FP_VV_OP_129( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v29, (x7); \
            inst v16, v8, v29, v0.t; \
        )
#define TEST_W_FP_VV_OP_130( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v30, (x7); \
            inst v16, v8, v30, v0.t; \
        )
#define TEST_W_FP_VV_OP_131( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v31, (x7); \
            inst v16, v8, v31, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd2( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v2, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v2, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v8, (x7); \
            inst v2, v16, v8, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd4( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v4, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v4, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v8, (x7); \
            inst v4, v16, v8, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd6( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v6, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v6, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v8, (x7); \
            inst v6, v16, v8, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd8( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v24, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v8, v24, v16, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd10( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v10, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v10, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v24, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v10, v24, v16, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd12( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v12, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v12, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v24, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v12, v24, v16, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd14( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v14, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v14, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v24, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v14, v24, v16, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd16( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v24, (x7); \
            inst v16, v8, v24, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd18( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v18, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v18, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v24, (x7); \
            inst v18, v8, v24, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd20( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v20, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v20, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v24, (x7); \
            inst v20, v8, v24, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd22( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v22, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v22, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v24, (x7); \
            inst v22, v8, v24, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd24( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v8, (x7); \
            inst v24, v16, v8, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd26( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v26, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v26, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v8, (x7); \
            inst v26, v16, v8, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd28( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v28, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v28, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v8, (x7); \
            inst v28, v16, v8, v0.t; \
        )
#define TEST_W_FP_VV_OP_rd30( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v30, flags, result, v8, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v30, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v8, (x7); \
            inst v30, v16, v8, v0.t; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_W_FP_VV_OP( 1,  vfwsub.vv,  0x0000000000000001, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_W_FP_VV_OP( 2,  vfwsub.vv,  0x0000000000000001, rd_data_vv+128, rs2_data+64, rs1_data+64)
  TEST_W_FP_VV_OP( 3,  vfwsub.vv,  0x0000000000000001, rd_data_vv+256, rs2_data+128, rs1_data+128)
  TEST_W_FP_VV_OP( 4,  vfwsub.vv,  0x0000000000000001, rd_data_vv+384, rs2_data+192, rs1_data+192)
  TEST_W_FP_VV_OP( 5,  vfwsub.vv,  0x0000000000000001, rd_data_vv+512, rs2_data+256, rs1_data+256)
  TEST_W_FP_VV_OP( 6,  vfwsub.vv,  0x0000000000000001, rd_data_vv+640, rs2_data+320, rs1_data+320)
  TEST_W_FP_VV_OP( 7,  vfwsub.vv,  0x0000000000000001, rd_data_vv+768, rs2_data+384, rs1_data+384)
  TEST_W_FP_VV_OP( 8,  vfwsub.vv,  0x0000000000000001, rd_data_vv+896, rs2_data+448, rs1_data+448)
  TEST_W_FP_VV_OP( 9,  vfwsub.vv,  0x0000000000000001, rd_data_vv+1024, rs2_data+512, rs1_data+512)
  TEST_W_FP_VV_OP( 10,  vfwsub.vv,  0x0000000000000001, rd_data_vv+1152, rs2_data+576, rs1_data+576)
  TEST_W_FP_VV_OP( 11,  vfwsub.vv,  0x0000000000000001, rd_data_vv+1280, rs2_data+640, rs1_data+640)
  TEST_W_FP_VV_OP( 12,  vfwsub.vv,  0x0000000000000001, rd_data_vv+1408, rs2_data+704, rs1_data+704)
  TEST_W_FP_VV_OP( 13,  vfwsub.vv,  0x0000000000000001, rd_data_vv+1536, rs2_data+768, rs1_data+768)
  TEST_W_FP_VV_OP( 14,  vfwsub.vv,  0x0000000000000001, rd_data_vv+1664, rs2_data+832, rs1_data+832)
  TEST_W_FP_VV_OP( 15,  vfwsub.vv,  0x0000000000000001, rd_data_vv+1792, rs2_data+896, rs1_data+896)
  TEST_W_FP_VV_OP( 16,  vfwsub.vv,  0x0000000000000001, rd_data_vv+1920, rs2_data+960, rs1_data+960)
  TEST_W_FP_VV_OP( 17,  vfwsub.vv,  0x0000000000000001, rd_data_vv+2048, rs2_data+1024, rs1_data+1024)
  TEST_W_FP_VV_OP( 18,  vfwsub.vv,  0x0000000000000001, rd_data_vv+2176, rs2_data+1088, rs1_data+1088)
  TEST_W_FP_VV_OP( 19,  vfwsub.vv,  0x0000000000000001, rd_data_vv+2304, rs2_data+1152, rs1_data+1152)
  TEST_W_FP_VV_OP( 20,  vfwsub.vv,  0x0000000000000001, rd_data_vv+2432, rs2_data+1216, rs1_data+1216)
  TEST_W_FP_VV_OP( 21,  vfwsub.vv,  0x0000000000000001, rd_data_vv+2560, rs2_data+1280, rs1_data+1280)
  TEST_W_FP_VV_OP( 22,  vfwsub.vv,  0x0000000000000001, rd_data_vv+2688, rs2_data+1344, rs1_data+1344)
  TEST_W_FP_VV_OP( 23,  vfwsub.vv,  0x0000000000000001, rd_data_vv+2816, rs2_data+1408, rs1_data+1408)
  TEST_W_FP_VV_OP( 24,  vfwsub.vv,  0x0000000000000001, rd_data_vv+2944, rs2_data+1472, rs1_data+1472)
  TEST_W_FP_VV_OP( 25,  vfwsub.vv,  0x0000000000000001, rd_data_vv+3072, rs2_data+1536, rs1_data+1536)
  TEST_W_FP_VV_OP( 26,  vfwsub.vv,  0x0000000000000001, rd_data_vv+3200, rs2_data+1600, rs1_data+1600)
  TEST_W_FP_VV_OP( 27,  vfwsub.vv,  0x0000000000000001, rd_data_vv+3328, rs2_data+1664, rs1_data+1664)
  TEST_W_FP_VV_OP( 28,  vfwsub.vv,  0x0000000000000001, rd_data_vv+3456, rs2_data+1728, rs1_data+1728)
  TEST_W_FP_VV_OP( 29,  vfwsub.vv,  0x0000000000000001, rd_data_vv+3584, rs2_data+1792, rs1_data+1792)
  TEST_W_FP_VV_OP( 30,  vfwsub.vv,  0x0000000000000001, rd_data_vv+3712, rs2_data+1856, rs1_data+1856)
  TEST_W_FP_VV_OP( 31,  vfwsub.vv,  0x0000000000000001, rd_data_vv+3840, rs2_data+1920, rs1_data+1920)
  TEST_W_FP_VV_OP( 32,  vfwsub.vv,  0x0000000000000001, rd_data_vv+3968, rs2_data+1984, rs1_data+1984)
  TEST_W_FP_VV_OP( 33,  vfwsub.vv,  0x0000000000000001, rd_data_vv+4096, rs2_data+2048, rs1_data+2048)
  TEST_W_FP_VV_OP( 34,  vfwsub.vv,  0x0000000000000001, rd_data_vv+4224, rs2_data+2112, rs1_data+2112)
  TEST_W_FP_VV_OP( 35,  vfwsub.vv,  0x0000000000000001, rd_data_vv+4352, rs2_data+2176, rs1_data+2176)
  TEST_W_FP_VV_OP( 36,  vfwsub.vv,  0x0000000000000001, rd_data_vv+4480, rs2_data+2240, rs1_data+2240)
  TEST_W_FP_VV_OP( 37,  vfwsub.vv,  0x0000000000000001, rd_data_vv+4608, rs2_data+2304, rs1_data+2304)
  TEST_W_FP_VV_OP( 38,  vfwsub.vv,  0x0000000000000001, rd_data_vv+4736, rs2_data+2368, rs1_data+2368)
  TEST_W_FP_VV_OP( 39,  vfwsub.vv,  0x0000000000000001, rd_data_vv+4864, rs2_data+2432, rs1_data+2432)
  TEST_W_FP_VV_OP( 40,  vfwsub.vv,  0x0000000000000001, rd_data_vv+4992, rs2_data+2496, rs1_data+2496)
  TEST_W_FP_VV_OP( 41,  vfwsub.vv,  0x0000000000000001, rd_data_vv+5120, rs2_data+2560, rs1_data+2560)
  TEST_W_FP_VV_OP( 42,  vfwsub.vv,  0x0000000000000001, rd_data_vv+5248, rs2_data+2624, rs1_data+2624)
  TEST_W_FP_VV_OP( 43,  vfwsub.vv,  0x0000000000000001, rd_data_vv+5376, rs2_data+2688, rs1_data+2688)
  TEST_W_FP_VV_OP( 44,  vfwsub.vv,  0x0000000000000001, rd_data_vv+5504, rs2_data+2752, rs1_data+2752)
  TEST_W_FP_VV_OP( 45,  vfwsub.vv,  0x0000000000000001, rd_data_vv+5632, rs2_data+2816, rs1_data+2816)
  TEST_W_FP_VV_OP( 46,  vfwsub.vv,  0x0000000000000001, rd_data_vv+5760, rs2_data+2880, rs1_data+2880)
  TEST_W_FP_VV_OP( 47,  vfwsub.vv,  0x0000000000000001, rd_data_vv+5888, rs2_data+2944, rs1_data+2944)
  TEST_W_FP_VV_OP( 48,  vfwsub.vv,  0x0000000000000001, rd_data_vv+6016, rs2_data+3008, rs1_data+3008)
  TEST_W_FP_VV_OP( 49,  vfwsub.vv,  0x0000000000000001, rd_data_vv+6144, rs2_data+3072, rs1_data+3072)
  #-------------------------------------------------------------
  # vfwsub Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_W_FP_VV_OP_11( 50,  vfwsub.vv, 0x0000000000000001, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_W_FP_VV_OP_12( 51,  vfwsub.vv, 0x0000000000000001, rd_data_vv+128, rs2_data+64, rs1_data+64)
  TEST_W_FP_VV_OP_rd2( 52,  vfwsub.vv, 0x0000000000000001, rd_data_vv+128, rs2_data+64, rs1_data+64)
  TEST_W_FP_VV_OP_13( 53,  vfwsub.vv, 0x0000000000000001, rd_data_vv+256, rs2_data+128, rs1_data+128)
  TEST_W_FP_VV_OP_14( 54,  vfwsub.vv, 0x0000000000000001, rd_data_vv+384, rs2_data+192, rs1_data+192)
  TEST_W_FP_VV_OP_rd4( 55,  vfwsub.vv, 0x0000000000000001, rd_data_vv+384, rs2_data+192, rs1_data+192)
  TEST_W_FP_VV_OP_15( 56,  vfwsub.vv, 0x0000000000000001, rd_data_vv+512, rs2_data+256, rs1_data+256)
  TEST_W_FP_VV_OP_16( 57,  vfwsub.vv, 0x0000000000000001, rd_data_vv+640, rs2_data+320, rs1_data+320)
  TEST_W_FP_VV_OP_rd6( 58,  vfwsub.vv, 0x0000000000000001, rd_data_vv+640, rs2_data+320, rs1_data+320)
  TEST_W_FP_VV_OP_17( 59,  vfwsub.vv, 0x0000000000000001, rd_data_vv+768, rs2_data+384, rs1_data+384)
  TEST_W_FP_VV_OP_18( 60,  vfwsub.vv, 0x0000000000000001, rd_data_vv+896, rs2_data+448, rs1_data+448)
  TEST_W_FP_VV_OP_rd8( 61,  vfwsub.vv, 0x0000000000000001, rd_data_vv+896, rs2_data+448, rs1_data+448)
  TEST_W_FP_VV_OP_19( 62,  vfwsub.vv, 0x0000000000000001, rd_data_vv+1024, rs2_data+512, rs1_data+512)
  TEST_W_FP_VV_OP_110( 63,  vfwsub.vv, 0x0000000000000001, rd_data_vv+1152, rs2_data+576, rs1_data+576)
  TEST_W_FP_VV_OP_rd10( 64,  vfwsub.vv, 0x0000000000000001, rd_data_vv+1152, rs2_data+576, rs1_data+576)
  TEST_W_FP_VV_OP_111( 65,  vfwsub.vv, 0x0000000000000001, rd_data_vv+1280, rs2_data+640, rs1_data+640)
  TEST_W_FP_VV_OP_112( 66,  vfwsub.vv, 0x0000000000000001, rd_data_vv+1408, rs2_data+704, rs1_data+704)
  TEST_W_FP_VV_OP_rd12( 67,  vfwsub.vv, 0x0000000000000001, rd_data_vv+1408, rs2_data+704, rs1_data+704)
  TEST_W_FP_VV_OP_113( 68,  vfwsub.vv, 0x0000000000000001, rd_data_vv+1536, rs2_data+768, rs1_data+768)
  TEST_W_FP_VV_OP_114( 69,  vfwsub.vv, 0x0000000000000001, rd_data_vv+1664, rs2_data+832, rs1_data+832)
  TEST_W_FP_VV_OP_rd14( 70,  vfwsub.vv, 0x0000000000000001, rd_data_vv+1664, rs2_data+832, rs1_data+832)
  TEST_W_FP_VV_OP_115( 71,  vfwsub.vv, 0x0000000000000001, rd_data_vv+1792, rs2_data+896, rs1_data+896)
  TEST_W_FP_VV_OP_116( 72,  vfwsub.vv, 0x0000000000000001, rd_data_vv+1920, rs2_data+960, rs1_data+960)
  TEST_W_FP_VV_OP_rd16( 73,  vfwsub.vv, 0x0000000000000001, rd_data_vv+1920, rs2_data+960, rs1_data+960)
  TEST_W_FP_VV_OP_117( 74,  vfwsub.vv, 0x0000000000000001, rd_data_vv+2048, rs2_data+1024, rs1_data+1024)
  TEST_W_FP_VV_OP_118( 75,  vfwsub.vv, 0x0000000000000001, rd_data_vv+2176, rs2_data+1088, rs1_data+1088)
  TEST_W_FP_VV_OP_rd18( 76,  vfwsub.vv, 0x0000000000000001, rd_data_vv+2176, rs2_data+1088, rs1_data+1088)
  TEST_W_FP_VV_OP_119( 77,  vfwsub.vv, 0x0000000000000001, rd_data_vv+2304, rs2_data+1152, rs1_data+1152)
  TEST_W_FP_VV_OP_120( 78,  vfwsub.vv, 0x0000000000000001, rd_data_vv+2432, rs2_data+1216, rs1_data+1216)
  TEST_W_FP_VV_OP_rd20( 79,  vfwsub.vv, 0x0000000000000001, rd_data_vv+2432, rs2_data+1216, rs1_data+1216)
  TEST_W_FP_VV_OP_121( 80,  vfwsub.vv, 0x0000000000000001, rd_data_vv+2560, rs2_data+1280, rs1_data+1280)
  TEST_W_FP_VV_OP_122( 81,  vfwsub.vv, 0x0000000000000001, rd_data_vv+2688, rs2_data+1344, rs1_data+1344)
  TEST_W_FP_VV_OP_rd22( 82,  vfwsub.vv, 0x0000000000000001, rd_data_vv+2688, rs2_data+1344, rs1_data+1344)
  TEST_W_FP_VV_OP_123( 83,  vfwsub.vv, 0x0000000000000001, rd_data_vv+2816, rs2_data+1408, rs1_data+1408)
  TEST_W_FP_VV_OP_124( 84,  vfwsub.vv, 0x0000000000000001, rd_data_vv+2944, rs2_data+1472, rs1_data+1472)
  TEST_W_FP_VV_OP_rd24( 85,  vfwsub.vv, 0x0000000000000001, rd_data_vv+2944, rs2_data+1472, rs1_data+1472)
  TEST_W_FP_VV_OP_125( 86,  vfwsub.vv, 0x0000000000000001, rd_data_vv+3072, rs2_data+1536, rs1_data+1536)
  TEST_W_FP_VV_OP_126( 87,  vfwsub.vv, 0x0000000000000001, rd_data_vv+3200, rs2_data+1600, rs1_data+1600)
  TEST_W_FP_VV_OP_rd26( 88,  vfwsub.vv, 0x0000000000000001, rd_data_vv+3200, rs2_data+1600, rs1_data+1600)
  TEST_W_FP_VV_OP_127( 89,  vfwsub.vv, 0x0000000000000001, rd_data_vv+3328, rs2_data+1664, rs1_data+1664)
  TEST_W_FP_VV_OP_128( 90,  vfwsub.vv, 0x0000000000000001, rd_data_vv+3456, rs2_data+1728, rs1_data+1728)
  TEST_W_FP_VV_OP_rd28( 91,  vfwsub.vv, 0x0000000000000001, rd_data_vv+3456, rs2_data+1728, rs1_data+1728)
  TEST_W_FP_VV_OP_129( 92,  vfwsub.vv, 0x0000000000000001, rd_data_vv+3584, rs2_data+1792, rs1_data+1792)
  TEST_W_FP_VV_OP_130( 93,  vfwsub.vv, 0x0000000000000001, rd_data_vv+3712, rs2_data+1856, rs1_data+1856)
  TEST_W_FP_VV_OP_rd30( 94,  vfwsub.vv, 0x0000000000000001, rd_data_vv+3712, rs2_data+1856, rs1_data+1856)
  TEST_W_FP_VV_OP_131( 95,  vfwsub.vv, 0x0000000000000001, rd_data_vv+3840, rs2_data+1920, rs1_data+1920)
  TEST_W_FP_VV_OP_11( 96,  vfwsub.vv, 0x0000000000000001, rd_data_vv+3968, rs2_data+1984, rs1_data+1984)
  #-------------------------------------------------------------
  # VF Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_0)
  TEST_W_FP_VF_OP( 97,  vfwsub.vf, 0x0000000000000001, rd_data_vf+0, rs2_data+0, rs1_data+0)
  TEST_W_FP_VF_OP( 98,  vfwsub.vf, 0x0000000000000001, rd_data_vf+128, rs2_data+64, rs1_data+64)
  TEST_W_FP_VF_OP( 99,  vfwsub.vf, 0x0000000000000001, rd_data_vf+256, rs2_data+128, rs1_data+128)
  TEST_W_FP_VF_OP( 100,  vfwsub.vf, 0x0000000000000001, rd_data_vf+384, rs2_data+192, rs1_data+192)
  TEST_W_FP_VF_OP( 101,  vfwsub.vf, 0x0000000000000001, rd_data_vf+512, rs2_data+256, rs1_data+256)
  TEST_W_FP_VF_OP( 102,  vfwsub.vf, 0x0000000000000001, rd_data_vf+640, rs2_data+320, rs1_data+320)
  TEST_W_FP_VF_OP( 103,  vfwsub.vf, 0x0000000000000001, rd_data_vf+768, rs2_data+384, rs1_data+384)
  TEST_W_FP_VF_OP( 104,  vfwsub.vf, 0x0000000000000001, rd_data_vf+896, rs2_data+448, rs1_data+448)
  TEST_W_FP_VF_OP( 105,  vfwsub.vf, 0x0000000000000001, rd_data_vf+1024, rs2_data+512, rs1_data+512)
  TEST_W_FP_VF_OP( 106,  vfwsub.vf, 0x0000000000000001, rd_data_vf+1152, rs2_data+576, rs1_data+576)
  TEST_W_FP_VF_OP( 107,  vfwsub.vf, 0x0000000000000001, rd_data_vf+1280, rs2_data+640, rs1_data+640)
  TEST_W_FP_VF_OP( 108,  vfwsub.vf, 0x0000000000000001, rd_data_vf+1408, rs2_data+704, rs1_data+704)
  TEST_W_FP_VF_OP( 109,  vfwsub.vf, 0x0000000000000001, rd_data_vf+1536, rs2_data+768, rs1_data+768)
  TEST_W_FP_VF_OP( 110,  vfwsub.vf, 0x0000000000000001, rd_data_vf+1664, rs2_data+832, rs1_data+832)
  TEST_W_FP_VF_OP( 111,  vfwsub.vf, 0x0000000000000001, rd_data_vf+1792, rs2_data+896, rs1_data+896)
  TEST_W_FP_VF_OP( 112,  vfwsub.vf, 0x0000000000000001, rd_data_vf+1920, rs2_data+960, rs1_data+960)
  TEST_W_FP_VF_OP( 113,  vfwsub.vf, 0x0000000000000001, rd_data_vf+2048, rs2_data+1024, rs1_data+1024)
  TEST_W_FP_VF_OP( 114,  vfwsub.vf, 0x0000000000000001, rd_data_vf+2176, rs2_data+1088, rs1_data+1088)
  TEST_W_FP_VF_OP( 115,  vfwsub.vf, 0x0000000000000001, rd_data_vf+2304, rs2_data+1152, rs1_data+1152)
  TEST_W_FP_VF_OP( 116,  vfwsub.vf, 0x0000000000000001, rd_data_vf+2432, rs2_data+1216, rs1_data+1216)
  TEST_W_FP_VF_OP( 117,  vfwsub.vf, 0x0000000000000001, rd_data_vf+2560, rs2_data+1280, rs1_data+1280)
  TEST_W_FP_VF_OP( 118,  vfwsub.vf, 0x0000000000000001, rd_data_vf+2688, rs2_data+1344, rs1_data+1344)
  TEST_W_FP_VF_OP( 119,  vfwsub.vf, 0x0000000000000001, rd_data_vf+2816, rs2_data+1408, rs1_data+1408)
  TEST_W_FP_VF_OP( 120,  vfwsub.vf, 0x0000000000000001, rd_data_vf+2944, rs2_data+1472, rs1_data+1472)
  TEST_W_FP_VF_OP( 121,  vfwsub.vf, 0x0000000000000001, rd_data_vf+3072, rs2_data+1536, rs1_data+1536)
  TEST_W_FP_VF_OP( 122,  vfwsub.vf, 0x0000000000000001, rd_data_vf+3200, rs2_data+1600, rs1_data+1600)
  TEST_W_FP_VF_OP( 123,  vfwsub.vf, 0x0000000000000001, rd_data_vf+3328, rs2_data+1664, rs1_data+1664)
  TEST_W_FP_VF_OP( 124,  vfwsub.vf, 0x0000000000000001, rd_data_vf+3456, rs2_data+1728, rs1_data+1728)
  TEST_W_FP_VF_OP( 125,  vfwsub.vf, 0x0000000000000001, rd_data_vf+3584, rs2_data+1792, rs1_data+1792)
  TEST_W_FP_VF_OP( 126,  vfwsub.vf, 0x0000000000000001, rd_data_vf+3712, rs2_data+1856, rs1_data+1856)
  TEST_W_FP_VF_OP( 127,  vfwsub.vf, 0x0000000000000001, rd_data_vf+3840, rs2_data+1920, rs1_data+1920)
  TEST_W_FP_VF_OP( 128,  vfwsub.vf, 0x0000000000000001, rd_data_vf+3968, rs2_data+1984, rs1_data+1984)
  TEST_W_FP_VF_OP( 129,  vfwsub.vf, 0x0000000000000001, rd_data_vf+4096, rs2_data+2048, rs1_data+2048)
  TEST_W_FP_VF_OP( 130,  vfwsub.vf, 0x0000000000000001, rd_data_vf+4224, rs2_data+2112, rs1_data+2112)
  TEST_W_FP_VF_OP( 131,  vfwsub.vf, 0x0000000000000001, rd_data_vf+4352, rs2_data+2176, rs1_data+2176)
  TEST_W_FP_VF_OP( 132,  vfwsub.vf, 0x0000000000000001, rd_data_vf+4480, rs2_data+2240, rs1_data+2240)
  TEST_W_FP_VF_OP( 133,  vfwsub.vf, 0x0000000000000001, rd_data_vf+4608, rs2_data+2304, rs1_data+2304)
  TEST_W_FP_VF_OP( 134,  vfwsub.vf, 0x0000000000000001, rd_data_vf+4736, rs2_data+2368, rs1_data+2368)
  TEST_W_FP_VF_OP( 135,  vfwsub.vf, 0x0000000000000001, rd_data_vf+4864, rs2_data+2432, rs1_data+2432)
  TEST_W_FP_VF_OP( 136,  vfwsub.vf, 0x0000000000000001, rd_data_vf+4992, rs2_data+2496, rs1_data+2496)
  TEST_W_FP_VF_OP( 137,  vfwsub.vf, 0x0000000000000001, rd_data_vf+5120, rs2_data+2560, rs1_data+2560)
  TEST_W_FP_VF_OP( 138,  vfwsub.vf, 0x0000000000000001, rd_data_vf+5248, rs2_data+2624, rs1_data+2624)
  TEST_W_FP_VF_OP( 139,  vfwsub.vf, 0x0000000000000001, rd_data_vf+5376, rs2_data+2688, rs1_data+2688)
  TEST_W_FP_VF_OP( 140,  vfwsub.vf, 0x0000000000000001, rd_data_vf+5504, rs2_data+2752, rs1_data+2752)
  TEST_W_FP_VF_OP( 141,  vfwsub.vf, 0x0000000000000001, rd_data_vf+5632, rs2_data+2816, rs1_data+2816)
  TEST_W_FP_VF_OP( 142,  vfwsub.vf, 0x0000000000000001, rd_data_vf+5760, rs2_data+2880, rs1_data+2880)
  TEST_W_FP_VF_OP( 143,  vfwsub.vf, 0x0000000000000001, rd_data_vf+5888, rs2_data+2944, rs1_data+2944)
  TEST_W_FP_VF_OP( 144,  vfwsub.vf, 0x0000000000000001, rd_data_vf+6016, rs2_data+3008, rs1_data+3008)
  TEST_W_FP_VF_OP( 145,  vfwsub.vf, 0x0000000000000001, rd_data_vf+6144, rs2_data+3072, rs1_data+3072)
  #-------------------------------------------------------------
  # WV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_0)
  TEST_W_FP_WV_OP( 146,  vfwsub.wv, 0x0000000000000001, rd_data_wv+0, rs2_data_widen+0, rs1_data+0)
  TEST_W_FP_WV_OP( 147,  vfwsub.wv, 0x0000000000000001, rd_data_wv+128, rs2_data_widen+128, rs1_data+64)
  TEST_W_FP_WV_OP( 148,  vfwsub.wv, 0x0000000000000001, rd_data_wv+256, rs2_data_widen+256, rs1_data+128)
  TEST_W_FP_WV_OP( 149,  vfwsub.wv, 0x0000000000000001, rd_data_wv+384, rs2_data_widen+384, rs1_data+192)
  TEST_W_FP_WV_OP( 150,  vfwsub.wv, 0x0000000000000001, rd_data_wv+512, rs2_data_widen+512, rs1_data+256)
  TEST_W_FP_WV_OP( 151,  vfwsub.wv, 0x0000000000000001, rd_data_wv+640, rs2_data_widen+640, rs1_data+320)
  TEST_W_FP_WV_OP( 152,  vfwsub.wv, 0x0000000000000001, rd_data_wv+768, rs2_data_widen+768, rs1_data+384)
  TEST_W_FP_WV_OP( 153,  vfwsub.wv, 0x0000000000000001, rd_data_wv+896, rs2_data_widen+896, rs1_data+448)
  TEST_W_FP_WV_OP( 154,  vfwsub.wv, 0x0000000000000001, rd_data_wv+1024, rs2_data_widen+1024, rs1_data+512)
  TEST_W_FP_WV_OP( 155,  vfwsub.wv, 0x0000000000000001, rd_data_wv+1152, rs2_data_widen+1152, rs1_data+576)
  TEST_W_FP_WV_OP( 156,  vfwsub.wv, 0x0000000000000001, rd_data_wv+1280, rs2_data_widen+1280, rs1_data+640)
  TEST_W_FP_WV_OP( 157,  vfwsub.wv, 0x0000000000000001, rd_data_wv+1408, rs2_data_widen+1408, rs1_data+704)
  TEST_W_FP_WV_OP( 158,  vfwsub.wv, 0x0000000000000001, rd_data_wv+1536, rs2_data_widen+1536, rs1_data+768)
  TEST_W_FP_WV_OP( 159,  vfwsub.wv, 0x0000000000000001, rd_data_wv+1664, rs2_data_widen+1664, rs1_data+832)
  TEST_W_FP_WV_OP( 160,  vfwsub.wv, 0x0000000000000001, rd_data_wv+1792, rs2_data_widen+1792, rs1_data+896)
  TEST_W_FP_WV_OP( 161,  vfwsub.wv, 0x0000000000000001, rd_data_wv+1920, rs2_data_widen+1920, rs1_data+960)
  TEST_W_FP_WV_OP( 162,  vfwsub.wv, 0x0000000000000001, rd_data_wv+2048, rs2_data_widen+2048, rs1_data+1024)
  TEST_W_FP_WV_OP( 163,  vfwsub.wv, 0x0000000000000001, rd_data_wv+2176, rs2_data_widen+2176, rs1_data+1088)
  TEST_W_FP_WV_OP( 164,  vfwsub.wv, 0x0000000000000001, rd_data_wv+2304, rs2_data_widen+2304, rs1_data+1152)
  TEST_W_FP_WV_OP( 165,  vfwsub.wv, 0x0000000000000001, rd_data_wv+2432, rs2_data_widen+2432, rs1_data+1216)
  TEST_W_FP_WV_OP( 166,  vfwsub.wv, 0x0000000000000001, rd_data_wv+2560, rs2_data_widen+2560, rs1_data+1280)
  TEST_W_FP_WV_OP( 167,  vfwsub.wv, 0x0000000000000001, rd_data_wv+2688, rs2_data_widen+2688, rs1_data+1344)
  TEST_W_FP_WV_OP( 168,  vfwsub.wv, 0x0000000000000001, rd_data_wv+2816, rs2_data_widen+2816, rs1_data+1408)
  TEST_W_FP_WV_OP( 169,  vfwsub.wv, 0x0000000000000001, rd_data_wv+2944, rs2_data_widen+2944, rs1_data+1472)
  TEST_W_FP_WV_OP( 170,  vfwsub.wv, 0x0000000000000001, rd_data_wv+3072, rs2_data_widen+3072, rs1_data+1536)
  TEST_W_FP_WV_OP( 171,  vfwsub.wv, 0x0000000000000001, rd_data_wv+3200, rs2_data_widen+3200, rs1_data+1600)
  TEST_W_FP_WV_OP( 172,  vfwsub.wv, 0x0000000000000001, rd_data_wv+3328, rs2_data_widen+3328, rs1_data+1664)
  TEST_W_FP_WV_OP( 173,  vfwsub.wv, 0x0000000000000001, rd_data_wv+3456, rs2_data_widen+3456, rs1_data+1728)
  TEST_W_FP_WV_OP( 174,  vfwsub.wv, 0x0000000000000001, rd_data_wv+3584, rs2_data_widen+3584, rs1_data+1792)
  TEST_W_FP_WV_OP( 175,  vfwsub.wv, 0x0000000000000001, rd_data_wv+3712, rs2_data_widen+3712, rs1_data+1856)
  TEST_W_FP_WV_OP( 176,  vfwsub.wv, 0x0000000000000001, rd_data_wv+3840, rs2_data_widen+3840, rs1_data+1920)
  TEST_W_FP_WV_OP( 177,  vfwsub.wv, 0x0000000000000001, rd_data_wv+3968, rs2_data_widen+3968, rs1_data+1984)
  TEST_W_FP_WV_OP( 178,  vfwsub.wv, 0x0000000000000001, rd_data_wv+4096, rs2_data_widen+4096, rs1_data+2048)
  TEST_W_FP_WV_OP( 179,  vfwsub.wv, 0x0000000000000001, rd_data_wv+4224, rs2_data_widen+4224, rs1_data+2112)
  TEST_W_FP_WV_OP( 180,  vfwsub.wv, 0x0000000000000001, rd_data_wv+4352, rs2_data_widen+4352, rs1_data+2176)
  TEST_W_FP_WV_OP( 181,  vfwsub.wv, 0x0000000000000001, rd_data_wv+4480, rs2_data_widen+4480, rs1_data+2240)
  TEST_W_FP_WV_OP( 182,  vfwsub.wv, 0x0000000000000001, rd_data_wv+4608, rs2_data_widen+4608, rs1_data+2304)
  TEST_W_FP_WV_OP( 183,  vfwsub.wv, 0x0000000000000001, rd_data_wv+4736, rs2_data_widen+4736, rs1_data+2368)
  TEST_W_FP_WV_OP( 184,  vfwsub.wv, 0x0000000000000001, rd_data_wv+4864, rs2_data_widen+4864, rs1_data+2432)
  TEST_W_FP_WV_OP( 185,  vfwsub.wv, 0x0000000000000001, rd_data_wv+4992, rs2_data_widen+4992, rs1_data+2496)
  TEST_W_FP_WV_OP( 186,  vfwsub.wv, 0x0000000000000001, rd_data_wv+5120, rs2_data_widen+5120, rs1_data+2560)
  TEST_W_FP_WV_OP( 187,  vfwsub.wv, 0x0000000000000001, rd_data_wv+5248, rs2_data_widen+5248, rs1_data+2624)
  TEST_W_FP_WV_OP( 188,  vfwsub.wv, 0x0000000000000001, rd_data_wv+5376, rs2_data_widen+5376, rs1_data+2688)
  TEST_W_FP_WV_OP( 189,  vfwsub.wv, 0x0000000000000001, rd_data_wv+5504, rs2_data_widen+5504, rs1_data+2752)
  TEST_W_FP_WV_OP( 190,  vfwsub.wv, 0x0000000000000001, rd_data_wv+5632, rs2_data_widen+5632, rs1_data+2816)
  TEST_W_FP_WV_OP( 191,  vfwsub.wv, 0x0000000000000001, rd_data_wv+5760, rs2_data_widen+5760, rs1_data+2880)
  TEST_W_FP_WV_OP( 192,  vfwsub.wv, 0x0000000000000001, rd_data_wv+5888, rs2_data_widen+5888, rs1_data+2944)
  TEST_W_FP_WV_OP( 193,  vfwsub.wv, 0x0000000000000001, rd_data_wv+6016, rs2_data_widen+6016, rs1_data+3008)
  TEST_W_FP_WV_OP( 194,  vfwsub.wv, 0x0000000000000001, rd_data_wv+6144, rs2_data_widen+6144, rs1_data+3072)
  #-------------------------------------------------------------
  # WF Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_0)
  TEST_W_FP_WF_OP( 195,  vfwsub.wf, 0x0000000000000001, rd_data_wf+0, rs2_data_widen+0, rs1_data+0)
  TEST_W_FP_WF_OP( 196,  vfwsub.wf, 0x0000000000000001, rd_data_wf+128, rs2_data_widen+128, rs1_data+64)
  TEST_W_FP_WF_OP( 197,  vfwsub.wf, 0x0000000000000001, rd_data_wf+256, rs2_data_widen+256, rs1_data+128)
  TEST_W_FP_WF_OP( 198,  vfwsub.wf, 0x0000000000000001, rd_data_wf+384, rs2_data_widen+384, rs1_data+192)
  TEST_W_FP_WF_OP( 199,  vfwsub.wf, 0x0000000000000001, rd_data_wf+512, rs2_data_widen+512, rs1_data+256)
  TEST_W_FP_WF_OP( 200,  vfwsub.wf, 0x0000000000000001, rd_data_wf+640, rs2_data_widen+640, rs1_data+320)
  TEST_W_FP_WF_OP( 201,  vfwsub.wf, 0x0000000000000001, rd_data_wf+768, rs2_data_widen+768, rs1_data+384)
  TEST_W_FP_WF_OP( 202,  vfwsub.wf, 0x0000000000000001, rd_data_wf+896, rs2_data_widen+896, rs1_data+448)
  TEST_W_FP_WF_OP( 203,  vfwsub.wf, 0x0000000000000001, rd_data_wf+1024, rs2_data_widen+1024, rs1_data+512)
  TEST_W_FP_WF_OP( 204,  vfwsub.wf, 0x0000000000000001, rd_data_wf+1152, rs2_data_widen+1152, rs1_data+576)
  TEST_W_FP_WF_OP( 205,  vfwsub.wf, 0x0000000000000001, rd_data_wf+1280, rs2_data_widen+1280, rs1_data+640)
  TEST_W_FP_WF_OP( 206,  vfwsub.wf, 0x0000000000000001, rd_data_wf+1408, rs2_data_widen+1408, rs1_data+704)
  TEST_W_FP_WF_OP( 207,  vfwsub.wf, 0x0000000000000001, rd_data_wf+1536, rs2_data_widen+1536, rs1_data+768)
  TEST_W_FP_WF_OP( 208,  vfwsub.wf, 0x0000000000000001, rd_data_wf+1664, rs2_data_widen+1664, rs1_data+832)
  TEST_W_FP_WF_OP( 209,  vfwsub.wf, 0x0000000000000001, rd_data_wf+1792, rs2_data_widen+1792, rs1_data+896)
  TEST_W_FP_WF_OP( 210,  vfwsub.wf, 0x0000000000000001, rd_data_wf+1920, rs2_data_widen+1920, rs1_data+960)
  TEST_W_FP_WF_OP( 211,  vfwsub.wf, 0x0000000000000001, rd_data_wf+2048, rs2_data_widen+2048, rs1_data+1024)
  TEST_W_FP_WF_OP( 212,  vfwsub.wf, 0x0000000000000001, rd_data_wf+2176, rs2_data_widen+2176, rs1_data+1088)
  TEST_W_FP_WF_OP( 213,  vfwsub.wf, 0x0000000000000001, rd_data_wf+2304, rs2_data_widen+2304, rs1_data+1152)
  TEST_W_FP_WF_OP( 214,  vfwsub.wf, 0x0000000000000001, rd_data_wf+2432, rs2_data_widen+2432, rs1_data+1216)
  TEST_W_FP_WF_OP( 215,  vfwsub.wf, 0x0000000000000001, rd_data_wf+2560, rs2_data_widen+2560, rs1_data+1280)
  TEST_W_FP_WF_OP( 216,  vfwsub.wf, 0x0000000000000001, rd_data_wf+2688, rs2_data_widen+2688, rs1_data+1344)
  TEST_W_FP_WF_OP( 217,  vfwsub.wf, 0x0000000000000001, rd_data_wf+2816, rs2_data_widen+2816, rs1_data+1408)
  TEST_W_FP_WF_OP( 218,  vfwsub.wf, 0x0000000000000001, rd_data_wf+2944, rs2_data_widen+2944, rs1_data+1472)
  TEST_W_FP_WF_OP( 219,  vfwsub.wf, 0x0000000000000001, rd_data_wf+3072, rs2_data_widen+3072, rs1_data+1536)
  TEST_W_FP_WF_OP( 220,  vfwsub.wf, 0x0000000000000001, rd_data_wf+3200, rs2_data_widen+3200, rs1_data+1600)
  TEST_W_FP_WF_OP( 221,  vfwsub.wf, 0x0000000000000001, rd_data_wf+3328, rs2_data_widen+3328, rs1_data+1664)
  TEST_W_FP_WF_OP( 222,  vfwsub.wf, 0x0000000000000001, rd_data_wf+3456, rs2_data_widen+3456, rs1_data+1728)
  TEST_W_FP_WF_OP( 223,  vfwsub.wf, 0x0000000000000001, rd_data_wf+3584, rs2_data_widen+3584, rs1_data+1792)
  TEST_W_FP_WF_OP( 224,  vfwsub.wf, 0x0000000000000001, rd_data_wf+3712, rs2_data_widen+3712, rs1_data+1856)
  TEST_W_FP_WF_OP( 225,  vfwsub.wf, 0x0000000000000001, rd_data_wf+3840, rs2_data_widen+3840, rs1_data+1920)
  TEST_W_FP_WF_OP( 226,  vfwsub.wf, 0x0000000000000001, rd_data_wf+3968, rs2_data_widen+3968, rs1_data+1984)
  TEST_W_FP_WF_OP( 227,  vfwsub.wf, 0x0000000000000001, rd_data_wf+4096, rs2_data_widen+4096, rs1_data+2048)
  TEST_W_FP_WF_OP( 228,  vfwsub.wf, 0x0000000000000001, rd_data_wf+4224, rs2_data_widen+4224, rs1_data+2112)
  TEST_W_FP_WF_OP( 229,  vfwsub.wf, 0x0000000000000001, rd_data_wf+4352, rs2_data_widen+4352, rs1_data+2176)
  TEST_W_FP_WF_OP( 230,  vfwsub.wf, 0x0000000000000001, rd_data_wf+4480, rs2_data_widen+4480, rs1_data+2240)
  TEST_W_FP_WF_OP( 231,  vfwsub.wf, 0x0000000000000001, rd_data_wf+4608, rs2_data_widen+4608, rs1_data+2304)
  TEST_W_FP_WF_OP( 232,  vfwsub.wf, 0x0000000000000001, rd_data_wf+4736, rs2_data_widen+4736, rs1_data+2368)
  TEST_W_FP_WF_OP( 233,  vfwsub.wf, 0x0000000000000001, rd_data_wf+4864, rs2_data_widen+4864, rs1_data+2432)
  TEST_W_FP_WF_OP( 234,  vfwsub.wf, 0x0000000000000001, rd_data_wf+4992, rs2_data_widen+4992, rs1_data+2496)
  TEST_W_FP_WF_OP( 235,  vfwsub.wf, 0x0000000000000001, rd_data_wf+5120, rs2_data_widen+5120, rs1_data+2560)
  TEST_W_FP_WF_OP( 236,  vfwsub.wf, 0x0000000000000001, rd_data_wf+5248, rs2_data_widen+5248, rs1_data+2624)
  TEST_W_FP_WF_OP( 237,  vfwsub.wf, 0x0000000000000001, rd_data_wf+5376, rs2_data_widen+5376, rs1_data+2688)
  TEST_W_FP_WF_OP( 238,  vfwsub.wf, 0x0000000000000001, rd_data_wf+5504, rs2_data_widen+5504, rs1_data+2752)
  TEST_W_FP_WF_OP( 239,  vfwsub.wf, 0x0000000000000001, rd_data_wf+5632, rs2_data_widen+5632, rs1_data+2816)
  TEST_W_FP_WF_OP( 240,  vfwsub.wf, 0x0000000000000001, rd_data_wf+5760, rs2_data_widen+5760, rs1_data+2880)
  TEST_W_FP_WF_OP( 241,  vfwsub.wf, 0x0000000000000001, rd_data_wf+5888, rs2_data_widen+5888, rs1_data+2944)
  TEST_W_FP_WF_OP( 242,  vfwsub.wf, 0x0000000000000001, rd_data_wf+6016, rs2_data_widen+6016, rs1_data+3008)
  TEST_W_FP_WF_OP( 243,  vfwsub.wf, 0x0000000000000001, rd_data_wf+6144, rs2_data_widen+6144, rs1_data+3072)
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
.align 8
rs1_data_widen:
.dword	0x7F800000
.dword	0x00000000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x16b77bce
.dword	0x85a8a33c
.dword	0xbe82002a
.dword	0x6b4eed81
.dword	0xfcf2b7b2
.dword	0xb1a3f397
.dword	0x81815039
.dword	0x7df4c24f
.dword	0x0827c929
.dword	0xe1f1c6ec
.dword	0x9b111081
.dword	0x08c53c5a
.dword	0x16e35174
.dword	0x20553b83
.dword	0xf4ed3db2
.dword	0x5879b2ca
.dword	0xf80d83b9
.dword	0x7b48384f
.dword	0x89a6c1a0
.dword	0x31fe5439
.dword	0x6ee2f5aa
.dword	0x330f5715
.dword	0x9f46020f
.dword	0xb697e1c3
.dword	0xf518acf6
.dword	0x3958ea56
.dword	0x56a29c95
.dword	0xef286e01
.dword	0xf6cad350
.dword	0xe95400f6
.dword	0x0b2ac811
.dword	0x3ced78db
.dword	0x75809524
.dword	0xc5e59fb2
.dword	0xdd81fa0a
.dword	0xec9fb18d
.dword	0x30e1830a
.dword	0x21d2bbb0
.dword	0x731a1760
.dword	0x19167ebd
.dword	0x7e537a04
.dword	0xcf9dc475
.dword	0x17f847a1
.dword	0x5f4e2f05
.dword	0x11065906
.dword	0xa9663dbb
.dword	0xb6d5707b
.dword	0xef201e7b
.dword	0xb4a84974
.dword	0xc9feb8d1
.dword	0xba38c7b1
.dword	0x1877b042
.dword	0x91778cbb
.dword	0x2e715ec9
.dword	0xebc88fd7
.dword	0x6947de05
.dword	0xaec12b86
.dword	0x6164c29e
.dword	0xba68fa1d
.dword	0x17a54142
.dword	0xbb7b049e
.dword	0x08fab1e5
.dword	0x1af6bb18
.dword	0x74348a1d
.dword	0xf41f5f9b
.dword	0x604f267a
.dword	0x8543a485
.dword	0x17fca002
.dword	0x3777625d
.dword	0xca42df1f
.dword	0xe9591298
.dword	0x655428d1
.dword	0x678995cf
.dword	0x7ea84660
.dword	0x049f1faf
.dword	0x9a6ccdab
.dword	0xf75264e4
.dword	0x5b832e4f
.dword	0x047e6b3b
.dword	0xc18c4e25
.dword	0x6676bf0e
.dword	0x86738089
.dword	0x1ee4a5ed
.dword	0xb9545c29
.dword	0x2c7cb95f
.dword	0x8ab6881d
.dword	0x32dc44c0
.dword	0x7915e449
.dword	0xb68216c7
.dword	0x53c4ffc4
.dword	0xc01a2b07
.dword	0x6d56c00d
.dword	0x231896cb
.dword	0x3a6c685c
.dword	0xe57e27bd
.dword	0x3e6f7cbe
.dword	0x8e74e2da
.dword	0xfcea6243
.dword	0x80eedc35
.dword	0x048d92fb
.dword	0xe8e803f4
.dword	0x12c54b7b
.dword	0x2d633cae
.dword	0xbe8c5af3
.dword	0x379def6c
.dword	0xe298ae9a
.dword	0x626b7cc5
.dword	0x8f61b3a5
.dword	0xe4219193
.dword	0x01b8cfcd
.dword	0x04bfcdf8
.dword	0xd6cbbf81
.dword	0x4bd075af
.dword	0xe291d09b
.dword	0xf0503b64
.dword	0x21124d60
.dword	0x17d5856b
.dword	0x7989bf32
.dword	0x6b84a91f
.dword	0x3019a087
.dword	0x01c79214
.dword	0xea939be7
.dword	0xc375122d
.dword	0x116ec3d2
.dword	0x2d7eeffe
.dword	0xe013be07
.dword	0xb45484fc
.dword	0x2dcda7f1
.dword	0x2e2151fa
.dword	0x500c5f17
.dword	0x984b6942
.dword	0x9960c98a
.dword	0xc0c7c26a
.dword	0xc714bae1
.dword	0x7c086243
.dword	0x9a4397f5
.dword	0xb02b37fb
.dword	0xec0ac4f0
.dword	0xabb5045d
.dword	0x4de1938f
.dword	0x4ef87036
.dword	0x477553ed
.dword	0xdf884a52
.dword	0xe364a2c3
.dword	0x5e3d04d3
.dword	0xa37172c6
.dword	0x39c33e1d
.dword	0x5fa55642
.dword	0xc6588c96
.dword	0x57aa9ec7
.dword	0x52a373c8
.dword	0x868a5027
.dword	0xafc3fa5e
.dword	0x804beeba
.dword	0xbf812338
.dword	0x53cf2324
.dword	0x1c2a2099
.dword	0x77275ab3
.dword	0x8f53143f
.dword	0x7868d163
.dword	0x3362ef56
.dword	0xf5c4c30d
.dword	0x3413c9a6
.dword	0xbae49486
.dword	0x4d195ecf
.dword	0x55085e69
.dword	0x497af66c
.dword	0x776d41f0
.dword	0x6b06fcef
.dword	0xec9c3cae
.dword	0xbbcdcd90
.dword	0xa78b9e5d
.dword	0xb517d569
.dword	0x58ecb82f
.dword	0x897683b0
.dword	0x017fed42
.dword	0x7ac46a81
.dword	0x6b3424e3
.dword	0xf78c7be0
.dword	0x225c9001
.dword	0x716f74e5
.dword	0x5ea07308
.dword	0x9cb1f841
.dword	0x69773182
.dword	0xba7c2bc1
.dword	0x3615b6cd
.dword	0xb7cbdb1c
.dword	0x57503bd7
.dword	0x08d9043f
.dword	0xde4c459d
.dword	0x7a26c712
.dword	0x563028c3
.dword	0x795e33bf
.dword	0xf2d19a38
.dword	0xf20bed88
.dword	0x7e91e990
.dword	0x28403d8f
.dword	0xe451d935
.dword	0x6cbd6936
.dword	0x4bb4197f
.dword	0xb2301f0d
.dword	0xc0fe2faf
.dword	0x16598049
.dword	0x8b074d85
.dword	0xb3044c5f
.dword	0x52e624b8
.dword	0xe4b5a3ae
.dword	0x223b3100
.dword	0x60e69e76
.dword	0x7b1ae2f0
.dword	0x8837caa2
.dword	0xa64768d4
.dword	0xe3cafbaa
.dword	0x409e0a27
.dword	0x8bca7953
.dword	0x54110db1
.dword	0xdd376b5e
.dword	0x82997f29
.dword	0x355719f2
.dword	0x409cf5f2
.dword	0xd0f04044
.dword	0xb1f11cd7
.dword	0xde5e4fa6
.dword	0xd82dd4fd
.dword	0xe58d530d
.dword	0x4949dc26
.dword	0x8e5f9ede
.dword	0x8e4a63c9
.dword	0x3e0b7f6a
.dword	0x721e2d49
.dword	0xb9420e82
.dword	0x9f300bb4
.dword	0xdaf09bbc
.dword	0x33939602
.dword	0x22d815c2
.dword	0xdd6461b8
.dword	0xa0c1de71
.dword	0x8412c769
.dword	0xe03a03d1
.dword	0x1d7e0df1
.dword	0xaa1ba77a
.dword	0x1fd16c33
.dword	0xe6b2620f
.dword	0xd80b4e8d
.dword	0x8c57dfcc
.dword	0x72d00ff0
.dword	0x8d71f3bd
.dword	0x90df5366
.dword	0x65e2e213
.dword	0xd4af903f
.dword	0x0b402769
.dword	0xe520a1a5
.dword	0x2fd98a32
.dword	0x8d31c277
.dword	0x431be53f
.dword	0x163af993
.dword	0x62d5fe2f
.dword	0xbbbfcaf3
.dword	0x8ad27026
.dword	0x599ec422
.dword	0xd0e57884
.dword	0x315858ad
.dword	0xbb79a22b
.dword	0x80c7fec6
.dword	0xb8a4eaba
.dword	0x893e4f51
.dword	0xa204c639
.dword	0x092d4ba0
.dword	0x8787ab14
.dword	0x61ce2443
.dword	0x8ac8c0d1
.dword	0x2a519200
.dword	0x156dd6bc
.dword	0x35ceb876
.dword	0x766125a9
.dword	0x05269d43
.dword	0x1591c3bb
.dword	0x7f19aaaa
.dword	0xb68e62d5
.dword	0x98c5df64
.dword	0x58a4f5f8
.dword	0x1b5d4991
.dword	0x02046b89
.dword	0xf4223dde
.dword	0xcf05164e
.dword	0xaa67f476
.dword	0x5e100e5a
.dword	0x8f51944a
.dword	0x01d283cd
.dword	0x19ea57fc
.dword	0xe246d9c3
.dword	0xb3ede2cf
.dword	0x661a98bb
.dword	0xd2e52100
.dword	0xb54c779c
.dword	0x8b890ead
.dword	0x6f6d8ebb
.dword	0x701a72e3
.dword	0x18854a53
.dword	0xd8b646c3
.dword	0x7a859a9b
.dword	0x99fb1285
.dword	0x6a49fdb6
.dword	0xe54c4797
.dword	0xa13e91a2
.dword	0x56a16ea4
.dword	0x8dc0e4ff
.dword	0x267eb8c3
.dword	0xbcdd3109
.dword	0xd18cf677
.dword	0xc592af51
.dword	0x639952be
.dword	0x5ecc40d7
.dword	0x08e1872a
.dword	0x699b0430
.dword	0x515deb63
.dword	0x55107f38
.dword	0x5ed38442
.dword	0x9444a8cf
.dword	0x3b6f020e
.dword	0x3d7a2c1a
.dword	0xe12d2042
.dword	0xddc02bcf
.dword	0xd793ec85
.dword	0x89179c2a
.dword	0x7b5bb683
.dword	0xf3060550
.dword	0xeb6622a3
.dword	0x370df4fd
.dword	0xe7026d7d
.dword	0xa7ef2bad
.dword	0x5d994fff
.dword	0x6ab30fe4
.dword	0x72d35639
.dword	0x27c70109
.dword	0xf283b49c
.dword	0x3c70fd0b
.dword	0x1f46077b
.dword	0xc626d7b5
.dword	0xd8664806
.dword	0xa37e6d45
.dword	0x69155a81
.dword	0xe78f6b83
.dword	0x9aba564b
.dword	0x3616aeda
.dword	0xb6b43b38
.dword	0x48363fc9
.dword	0x18fd8be4
.dword	0x4f1f58ba
.dword	0x19e51db5
.dword	0xe0c53c63
.dword	0x192352ad
.dword	0x5639134a
.dword	0x3b3c24ec
.dword	0x8376196a
.dword	0x24fcba35
.dword	0x2cd12f68
.dword	0x5b91a296
.dword	0x0a9edbe9
.dword	0xbc4fb8ab
.dword	0x68714601
.dword	0xf6077257
.dword	0x6baa10f2
.dword	0x210eee6d
.dword	0x9d9d1deb
.dword	0x52a2c944
.dword	0x69da5807
.dword	0x5643827a
.dword	0x548fa17d
.dword	0x0125e3bc
.dword	0x34294c82
.dword	0xd612accc
.dword	0x7c624102
.dword	0x81457ac4
.dword	0x169e8d7e
.dword	0x82d5d8cc
.dword	0x2afa1e78
.dword	0xdb9ca373
.dword	0x8a002b93
.dword	0xb686377f
.dword	0xc0570d1e
.dword	0x6682aa99
.dword	0xd3ab2b5b
.dword	0x32ce890a
.dword	0x50408aba
.dword	0xb4ea3655
.dword	0x57385489
.dword	0xeef03e8d
.dword	0xde17d645
.dword	0x0e7f9a32
.dword	0xeeca2f3b
.dword	0xf14f95f4
.dword	0x63b7a76e
.dword	0xbcc9ab43
.dword	0xdfeeae1d
.dword	0x65eed45a
.dword	0xc8e4911e
.dword	0x61bee6e3
.dword	0x5a888b0b
.dword	0xe8b9b2cd
.dword	0x1bc3cb1f
.dword	0x6c9a9490
.dword	0x94518e9b
.dword	0x89b67375
.dword	0xd4bea2c1
.dword	0xd7ac95f6
.dword	0xb4fe5b7c
.dword	0x59dac688
.dword	0xd864b555
.dword	0xf0a45c48
.dword	0x8debdd64
.dword	0x78f0b6be
.dword	0xea5bd793
.dword	0x837bb1b9
.dword	0xb8879ad6
.dword	0xa62bf1a5
.dword	0x27457e6e
.dword	0xc42dea11
.dword	0xbc0e79b9
.dword	0x72ae0ac9
.dword	0xe29df404
.dword	0xb117f9b7
.dword	0xf0abe8ea
.dword	0x5b82f781
.dword	0x3aba4a26
.dword	0xefea5e67
.dword	0x688be24b
.dword	0x21ad1582
.dword	0xa294f0b8
.dword	0xa6440f97
.dword	0x5ea2d0b9
.dword	0xbdc0571c
.dword	0x2442a91b
.dword	0x0c377326
.dword	0x533c8dfe
.dword	0xe21ef6aa
.dword	0x919fa67d
.dword	0x873f1671
.dword	0x2a9f2e23
.dword	0xbe22927b
.dword	0xa992efc3
.dword	0x75ce1220
.dword	0x4447a68d
.dword	0x3f78b414
.dword	0xbd72133e
.dword	0x0cee6997
.dword	0x1a1b49f6
.dword	0x74cefef0
.dword	0xdb8a3bd9
.dword	0x4b329421
.dword	0x3a31ab60
.dword	0xe953c01f
.dword	0x0f147ddf
.dword	0xcf457330
.dword	0x19f95636
.dword	0x30610d6c
.dword	0x7cfe6ad7
.dword	0x51a59b6f
.dword	0xbe384770
.dword	0x336dc41b
.dword	0xa87f271a
.dword	0x6c9121e1
.dword	0xa73c95c4
.dword	0xcaf0a32c
.dword	0x46f5a171
.dword	0x251c1e00
.dword	0xac7c3863
.dword	0x8f02a18c
.dword	0x91fd21c8
.dword	0x4453aa24
.dword	0x8cc4c438
.dword	0xbcafd1ca
.dword	0x767634b8
.dword	0x177434a8
.dword	0x4602bb95
.dword	0xbb2a44f6
.dword	0xe1cd9683
.dword	0xc649858c
.dword	0x834794d4
.dword	0xe226001f
.dword	0x3bbf119a
.dword	0x0aeac265
.dword	0x41649ded
.dword	0x54d909fd
.dword	0x82c44d2b
.dword	0x85371e54
.dword	0x91074282
.dword	0x61ae58b5
.dword	0xc611ba41
.dword	0xd0fb779f
.dword	0x999f8b26
.dword	0xa113808e
.dword	0x675a54fd
.dword	0x8864b1ab
.dword	0xcd9e4966
.dword	0xecdb94a3
.dword	0x50fb73b8
.dword	0x1566303a
.dword	0xf77c3228
.dword	0xde7da192
.dword	0x1a2510c7
.dword	0x8c4f914e
.dword	0xae52acb6
.dword	0x269ca43a
.dword	0x112bfa6f
.dword	0xe6388e69
.dword	0x9f9c2d14
.dword	0x85d763a6
.dword	0xac497736
.dword	0x8a462146
.dword	0xd2300ca6
.dword	0xab04b597
.dword	0xd5173d3b
.dword	0x1c954c88
.dword	0xae8f2f8a
.dword	0xe18cd6d3
.dword	0xe7128ead
.dword	0x430c45f2
.dword	0x1fece821
.dword	0xdbe8db2f
.dword	0x9deac411
.dword	0xd578536b
.dword	0x5a2112c5
.dword	0x33755502
.dword	0x41f512c8
.dword	0x5b07c90e
.dword	0x30e95eba
.dword	0xdc43d0d7
.dword	0xce250988
.dword	0x546ef0b9
.dword	0x7c69a228
.dword	0x540da0bc
.dword	0xb917bde6
.dword	0x2b14a548
.dword	0x5c51c72f
.dword	0xe66cd16e
.dword	0xf8e67fb0
.dword	0x45b5c5f1
.dword	0x6bd9ba9a
.dword	0x9c1e8667
.dword	0x8a2c7d45
.dword	0xaf61ac13
.dword	0xcc06f22d
.dword	0x6ac84f04
.dword	0x581f3afc
.dword	0x6122b26e
.dword	0xff4914a8
.dword	0xf0a80a4a
.dword	0x44577dfa
.dword	0xe31172b1
.dword	0x30b00f6c
.dword	0x9cd4367e
.dword	0x53266571
.dword	0x39a2b9a9
.dword	0xf628feb7
.dword	0x519a8397
.dword	0xd949e747
.dword	0xfe0b7d68
.dword	0xd2ec6f9d
.dword	0x7b9f0a06
.dword	0xe25828a9
.dword	0x6ff72e08
.dword	0xae72d34d
.dword	0xf61fde3e
.dword	0x1cb57d88
.dword	0x3bb5e465
.dword	0x89b4574b
.dword	0xae23f858
.dword	0x32b4b342
.dword	0x9c5034c7
.dword	0x6129cabb
.dword	0x9af4bc9a
.dword	0xc729acef
.dword	0x7d485219
.dword	0x4a3b445a
.dword	0x276f4a82
.dword	0xdd7bf9fc
.dword	0x6797c5aa
.dword	0x9c739bc0
.dword	0x37e6587a
.dword	0x292fa2d6
.dword	0x57b6f48d
.dword	0xa87ebd39
.dword	0xda3b9803
.dword	0xcf98db80
.dword	0xa1993841
.dword	0x214c72b3
.dword	0x4a289aa8
.dword	0x3d7777d1
.dword	0x579e0114
.dword	0x13d30cfc
.dword	0x8a19a62b
.dword	0x07041e7d
.dword	0x3b192289
.dword	0xb8f72c52
.dword	0x3a7c4f91
.dword	0x2eadf0ac
.dword	0xdbfec094
.dword	0x8c1ae516
.dword	0xbb97f344
.dword	0x2d614a74
.dword	0xdbb7bc69
.dword	0x75160c80
.dword	0x026513b2
.dword	0xb3301eb1
.dword	0x513b24cd
.dword	0xd2d18754
.dword	0x0fccea6a
.dword	0xb4e15b15
.dword	0xb546b05b
.dword	0x0f952852
.dword	0x7dbe9d89
.dword	0xf8791ac8
.dword	0xd924a386
.dword	0xdf5f99f4
.dword	0x6618d504
.dword	0x8849a498
.dword	0xf2961261
.dword	0xe303d466
.dword	0xd9d90f64
.dword	0x9ceb7bc1
.dword	0x07b60686
.dword	0x92dc0a8a
.dword	0x93997373
.dword	0xe19d8f2e
.dword	0xdd4ad4c7
.dword	0x0b3419eb
.dword	0x46365e84
.dword	0x92db17e9
.dword	0x65cdd905
.dword	0xdd60629d
.dword	0x16478c58
.dword	0xd11c290e
.dword	0x0d899e08
.dword	0xc9770a1f
.dword	0xac39d155
.dword	0x0f7a7733
.dword	0xa946bce1
.dword	0x4e00d0f3
.dword	0x3aa41dc4
.dword	0x0a9f9511
.dword	0x5398487b
.dword	0xf3782028
.dword	0x69b76600
.dword	0x8ca3efb3
.dword	0xcb7da0de
.dword	0x552d23d2
.dword	0x3436f14c
.dword	0x6f5f3f35
.dword	0x53b5a207
.dword	0xd20dfb9f
.dword	0x8723b674
.dword	0x0f348d99
.dword	0x3886ab90
.dword	0x0334f85a
.dword	0xea1670df
.dword	0xd13744b3
.dword	0x883fe017
.dword	0x1daf3b01
.dword	0xa9c63a58
.dword	0xec747b1c
.dword	0x0c6eccf7
.dword	0x4cad30bc
.dword	0x477b3771
.dword	0xaeef6b3d
.dword	0x1555f68c
.dword	0xb7e378a2
.dword	0xb602bd3e
.dword	0xaf130fb6
.dword	0x31a4314a
.dword	0xc723b3d7
.dword	0x7015aa42
.dword	0x0928aa3e
.dword	0x22ef3704
.dword	0xf352256b
.dword	0x4da52bc4
.dword	0x546d8880
.dword	0xf78ee9c7
.dword	0xc95bd691
.dword	0x5239bc94
.dword	0xb48c2fbf
.dword	0x67e301b5
.dword	0x240451c9
.dword	0x27c6864f
.dword	0x26c6f274
.dword	0x25f55d4e
.dword	0x5d2eb86f
.dword	0x828a97e7
.dword	0x67e912e1
.dword	0x3d4617ee
.dword	0x09322d7d
.dword	0x1eca00ff
.dword	0x2ecc47d2
.dword	0xf3bb23d6
.dword	0xab05bda1
.dword	0xbebbadd8
.dword	0x76ca2ed2
.dword	0x2b20cd36
.dword	0x524f229d
.dword	0x5254e959
.dword	0x2aef92ad
.dword	0x31229858
.dword	0xb06bc8f6
.dword	0x5dcce032
.dword	0x310e5031
.dword	0xf2069096
.dword	0x072a3060
.dword	0x9c33042c
.dword	0x06dd7d38
.dword	0xe4b100b8
.dword	0x04c5e517
.dword	0x3b50cc02
.dword	0x6f0086f2
.dword	0xc583b3da
.dword	0xae6ff135
.dword	0x7815f9b0
.dword	0x5cc84607
.dword	0x754bced3
.dword	0xaec59a2a
.dword	0x8542dc85
.dword	0x3af43c9d
.dword	0xae8c12b8
.dword	0x67be397d
.dword	0x8758cfc4
.dword	0x1de4f6af
.dword	0x1a455288
.dword	0x88db7d8c
.dword	0xf937aafa
.dword	0xca3650e2
.dword	0xc7044eb3
.dword	0x58933db0
.dword	0x0545acbb
.dword	0xb379a614
.dword	0x9b3eb4cc
.dword	0xe9519192
.dword	0x2eb0d339
.dword	0xf575e7bb
.dword	0xee907664
.dword	0x53960a4c
.dword	0x87973a27
.dword	0xa925b817
.dword	0x1c1a1e45
.dword	0x20dcdbeb
.dword	0x2d3e0667
.dword	0x53d05d72
.dword	0xb822ad39
.dword	0x4ffe6390
.dword	0x9ef29035
.dword	0xd0450fa2
.dword	0x0d89744e
.dword	0x346489f5
.dword	0xd48dd733
.dword	0x5d857c31
.dword	0x9b185404
.dword	0x41059de4
.dword	0x12d11883
.dword	0xa647e794
.dword	0xd5710481
.dword	0xcca75bc9
.dword	0x28ea8990
.dword	0x4914fd85
.dword	0x9edd447a
.dword	0x1a012a8e
.dword	0x697d2a85
.dword	0x0e3deb9d
.dword	0x9da1bcd6
.dword	0x5254ddf9
.dword	0x0c3eab36

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
.align 8
rs2_data_widen:
.dword	0x7F800000
.dword	0x00000000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0xBF800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x80855555
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x00800001
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x80800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x00000002
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x80000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x00000001
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x80000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x00000000
.dword	0x16b77bce
.dword	0x85a8a33c
.dword	0xbe82002a
.dword	0x6b4eed81
.dword	0xfcf2b7b2
.dword	0xb1a3f397
.dword	0x81815039
.dword	0x7df4c24f
.dword	0x0827c929
.dword	0xe1f1c6ec
.dword	0x9b111081
.dword	0x08c53c5a
.dword	0x16e35174
.dword	0x20553b83
.dword	0xf4ed3db2
.dword	0x5879b2ca
.dword	0xf80d83b9
.dword	0x7b48384f
.dword	0x89a6c1a0
.dword	0x31fe5439
.dword	0x6ee2f5aa
.dword	0x330f5715
.dword	0x9f46020f
.dword	0xb697e1c3
.dword	0xf518acf6
.dword	0x3958ea56
.dword	0x56a29c95
.dword	0xef286e01
.dword	0xf6cad350
.dword	0xe95400f6
.dword	0x0b2ac811
.dword	0x3ced78db
.dword	0x75809524
.dword	0xc5e59fb2
.dword	0xdd81fa0a
.dword	0xec9fb18d
.dword	0x30e1830a
.dword	0x21d2bbb0
.dword	0x731a1760
.dword	0x19167ebd
.dword	0x7e537a04
.dword	0xcf9dc475
.dword	0x17f847a1
.dword	0x5f4e2f05
.dword	0x11065906
.dword	0xa9663dbb
.dword	0xb6d5707b
.dword	0xef201e7b
.dword	0xb4a84974
.dword	0xc9feb8d1
.dword	0xba38c7b1
.dword	0x1877b042
.dword	0x91778cbb
.dword	0x2e715ec9
.dword	0xebc88fd7
.dword	0x6947de05
.dword	0xaec12b86
.dword	0x6164c29e
.dword	0xba68fa1d
.dword	0x17a54142
.dword	0xbb7b049e
.dword	0x08fab1e5
.dword	0x1af6bb18
.dword	0x74348a1d
.dword	0xf41f5f9b
.dword	0x604f267a
.dword	0x8543a485
.dword	0x17fca002
.dword	0x3777625d
.dword	0xca42df1f
.dword	0xe9591298
.dword	0x655428d1
.dword	0x678995cf
.dword	0x7ea84660
.dword	0x049f1faf
.dword	0x9a6ccdab
.dword	0xf75264e4
.dword	0x5b832e4f
.dword	0x047e6b3b
.dword	0xc18c4e25
.dword	0x6676bf0e
.dword	0x86738089
.dword	0x1ee4a5ed
.dword	0xb9545c29
.dword	0x2c7cb95f
.dword	0x8ab6881d
.dword	0x32dc44c0
.dword	0x7915e449
.dword	0xb68216c7
.dword	0x53c4ffc4
.dword	0xc01a2b07
.dword	0x6d56c00d
.dword	0x231896cb
.dword	0x3a6c685c
.dword	0xe57e27bd
.dword	0x3e6f7cbe
.dword	0x8e74e2da
.dword	0xfcea6243
.dword	0x80eedc35
.dword	0x048d92fb
.dword	0xe8e803f4
.dword	0x12c54b7b
.dword	0x2d633cae
.dword	0xbe8c5af3
.dword	0x379def6c
.dword	0xe298ae9a
.dword	0x626b7cc5
.dword	0x8f61b3a5
.dword	0xe4219193
.dword	0x01b8cfcd
.dword	0x04bfcdf8
.dword	0xd6cbbf81
.dword	0x4bd075af
.dword	0xe291d09b
.dword	0xf0503b64
.dword	0x21124d60
.dword	0x17d5856b
.dword	0x7989bf32
.dword	0x6b84a91f
.dword	0x3019a087
.dword	0x01c79214
.dword	0xea939be7
.dword	0xc375122d
.dword	0x116ec3d2
.dword	0x2d7eeffe
.dword	0xe013be07
.dword	0xb45484fc
.dword	0x2dcda7f1
.dword	0x2e2151fa
.dword	0x500c5f17
.dword	0x984b6942
.dword	0x9960c98a
.dword	0xc0c7c26a
.dword	0xc714bae1
.dword	0x7c086243
.dword	0x9a4397f5
.dword	0xb02b37fb
.dword	0xec0ac4f0
.dword	0xabb5045d
.dword	0x4de1938f
.dword	0x4ef87036
.dword	0x477553ed
.dword	0xdf884a52
.dword	0xe364a2c3
.dword	0x5e3d04d3
.dword	0xa37172c6
.dword	0x39c33e1d
.dword	0x5fa55642
.dword	0xc6588c96
.dword	0x57aa9ec7
.dword	0x52a373c8
.dword	0x868a5027
.dword	0xafc3fa5e
.dword	0x804beeba
.dword	0xbf812338
.dword	0x53cf2324
.dword	0x1c2a2099
.dword	0x77275ab3
.dword	0x8f53143f
.dword	0x7868d163
.dword	0x3362ef56
.dword	0xf5c4c30d
.dword	0x3413c9a6
.dword	0xbae49486
.dword	0x4d195ecf
.dword	0x55085e69
.dword	0x497af66c
.dword	0x776d41f0
.dword	0x6b06fcef
.dword	0xec9c3cae
.dword	0xbbcdcd90
.dword	0xa78b9e5d
.dword	0xb517d569
.dword	0x58ecb82f
.dword	0x897683b0
.dword	0x017fed42
.dword	0x7ac46a81
.dword	0x6b3424e3
.dword	0xf78c7be0
.dword	0x225c9001
.dword	0x716f74e5
.dword	0x5ea07308
.dword	0x9cb1f841
.dword	0x69773182
.dword	0xba7c2bc1
.dword	0x3615b6cd
.dword	0xb7cbdb1c
.dword	0x57503bd7
.dword	0x08d9043f
.dword	0xde4c459d
.dword	0x7a26c712
.dword	0x563028c3
.dword	0x795e33bf
.dword	0xf2d19a38
.dword	0xf20bed88
.dword	0x7e91e990
.dword	0x28403d8f
.dword	0xe451d935
.dword	0x6cbd6936
.dword	0x4bb4197f
.dword	0xb2301f0d
.dword	0xc0fe2faf
.dword	0x16598049
.dword	0x8b074d85
.dword	0xb3044c5f
.dword	0x52e624b8
.dword	0xe4b5a3ae
.dword	0x223b3100
.dword	0x60e69e76
.dword	0x7b1ae2f0
.dword	0x8837caa2
.dword	0xa64768d4
.dword	0xe3cafbaa
.dword	0x409e0a27
.dword	0x8bca7953
.dword	0x54110db1
.dword	0xdd376b5e
.dword	0x82997f29
.dword	0x355719f2
.dword	0x409cf5f2
.dword	0xd0f04044
.dword	0xb1f11cd7
.dword	0xde5e4fa6
.dword	0xd82dd4fd
.dword	0xe58d530d
.dword	0x4949dc26
.dword	0x8e5f9ede
.dword	0x8e4a63c9
.dword	0x3e0b7f6a
.dword	0x721e2d49
.dword	0xb9420e82
.dword	0x9f300bb4
.dword	0xdaf09bbc
.dword	0x33939602
.dword	0x22d815c2
.dword	0xdd6461b8
.dword	0xa0c1de71
.dword	0x8412c769
.dword	0xe03a03d1
.dword	0x1d7e0df1
.dword	0xaa1ba77a
.dword	0x1fd16c33
.dword	0xe6b2620f
.dword	0xd80b4e8d
.dword	0x8c57dfcc
.dword	0x72d00ff0
.dword	0x8d71f3bd
.dword	0x90df5366
.dword	0x65e2e213
.dword	0xd4af903f
.dword	0x0b402769
.dword	0xe520a1a5
.dword	0x2fd98a32
.dword	0x8d31c277
.dword	0x431be53f
.dword	0x163af993
.dword	0x62d5fe2f
.dword	0xbbbfcaf3
.dword	0x8ad27026
.dword	0x599ec422
.dword	0xd0e57884
.dword	0x315858ad
.dword	0xbb79a22b
.dword	0x80c7fec6
.dword	0xb8a4eaba
.dword	0x893e4f51
.dword	0xa204c639
.dword	0x092d4ba0
.dword	0x8787ab14
.dword	0x61ce2443
.dword	0x8ac8c0d1
.dword	0x2a519200
.dword	0x156dd6bc
.dword	0x35ceb876
.dword	0x766125a9
.dword	0x05269d43
.dword	0x1591c3bb
.dword	0x7f19aaaa
.dword	0xb68e62d5
.dword	0x98c5df64
.dword	0x58a4f5f8
.dword	0x1b5d4991
.dword	0x02046b89
.dword	0xf4223dde
.dword	0xcf05164e
.dword	0xaa67f476
.dword	0x5e100e5a
.dword	0x8f51944a
.dword	0x01d283cd
.dword	0x19ea57fc
.dword	0xe246d9c3
.dword	0xb3ede2cf
.dword	0x661a98bb
.dword	0xd2e52100
.dword	0xb54c779c
.dword	0x8b890ead
.dword	0x6f6d8ebb
.dword	0x701a72e3
.dword	0x18854a53
.dword	0xd8b646c3
.dword	0x7a859a9b
.dword	0x99fb1285
.dword	0x6a49fdb6
.dword	0xe54c4797
.dword	0xa13e91a2
.dword	0x56a16ea4
.dword	0x8dc0e4ff
.dword	0x267eb8c3
.dword	0xbcdd3109
.dword	0xd18cf677
.dword	0xc592af51
.dword	0x639952be
.dword	0x5ecc40d7
.dword	0x08e1872a
.dword	0x699b0430
.dword	0x515deb63
.dword	0x55107f38
.dword	0x5ed38442
.dword	0x9444a8cf
.dword	0x3b6f020e
.dword	0x3d7a2c1a
.dword	0xe12d2042
.dword	0xddc02bcf
.dword	0xd793ec85
.dword	0x89179c2a
.dword	0x7b5bb683
.dword	0xf3060550
.dword	0xeb6622a3
.dword	0x370df4fd
.dword	0xe7026d7d
.dword	0xa7ef2bad
.dword	0x5d994fff
.dword	0x6ab30fe4
.dword	0x72d35639
.dword	0x27c70109
.dword	0xf283b49c
.dword	0x3c70fd0b
.dword	0x1f46077b
.dword	0xc626d7b5
.dword	0xd8664806
.dword	0xa37e6d45
.dword	0x69155a81
.dword	0xe78f6b83
.dword	0x9aba564b
.dword	0x3616aeda
.dword	0xb6b43b38
.dword	0x48363fc9
.dword	0x18fd8be4
.dword	0x4f1f58ba
.dword	0x19e51db5
.dword	0xe0c53c63
.dword	0x192352ad
.dword	0x5639134a
.dword	0x3b3c24ec
.dword	0x8376196a
.dword	0x24fcba35
.dword	0x2cd12f68
.dword	0x5b91a296
.dword	0x0a9edbe9
.dword	0xbc4fb8ab
.dword	0x68714601
.dword	0xf6077257
.dword	0x6baa10f2
.dword	0x210eee6d
.dword	0x9d9d1deb
.dword	0x52a2c944
.dword	0x69da5807
.dword	0x5643827a
.dword	0x548fa17d
.dword	0x0125e3bc
.dword	0x34294c82
.dword	0xd612accc
.dword	0x7c624102
.dword	0x81457ac4
.dword	0x169e8d7e
.dword	0x82d5d8cc
.dword	0x2afa1e78
.dword	0xdb9ca373
.dword	0x8a002b93
.dword	0xb686377f
.dword	0xc0570d1e
.dword	0x6682aa99
.dword	0xd3ab2b5b
.dword	0x32ce890a
.dword	0x50408aba
.dword	0xb4ea3655
.dword	0x57385489
.dword	0xeef03e8d
.dword	0xde17d645
.dword	0x0e7f9a32
.dword	0xeeca2f3b
.dword	0xf14f95f4
.dword	0x63b7a76e
.dword	0xbcc9ab43
.dword	0xdfeeae1d
.dword	0x65eed45a
.dword	0xc8e4911e
.dword	0x61bee6e3
.dword	0x5a888b0b
.dword	0xe8b9b2cd
.dword	0x1bc3cb1f
.dword	0x6c9a9490
.dword	0x94518e9b
.dword	0x89b67375
.dword	0xd4bea2c1
.dword	0xd7ac95f6
.dword	0xb4fe5b7c
.dword	0x59dac688
.dword	0xd864b555
.dword	0xf0a45c48
.dword	0x8debdd64
.dword	0x78f0b6be
.dword	0xea5bd793
.dword	0x837bb1b9
.dword	0xb8879ad6
.dword	0xa62bf1a5
.dword	0x27457e6e
.dword	0xc42dea11
.dword	0xbc0e79b9
.dword	0x72ae0ac9
.dword	0xe29df404
.dword	0xb117f9b7
.dword	0xf0abe8ea
.dword	0x5b82f781
.dword	0x3aba4a26
.dword	0xefea5e67
.dword	0x688be24b
.dword	0x21ad1582
.dword	0xa294f0b8
.dword	0xa6440f97
.dword	0x5ea2d0b9
.dword	0xbdc0571c
.dword	0x2442a91b
.dword	0x0c377326
.dword	0x533c8dfe
.dword	0xe21ef6aa
.dword	0x919fa67d
.dword	0x873f1671
.dword	0x2a9f2e23
.dword	0xbe22927b
.dword	0xa992efc3
.dword	0x75ce1220
.dword	0x4447a68d
.dword	0x3f78b414
.dword	0xbd72133e
.dword	0x0cee6997
.dword	0x1a1b49f6
.dword	0x74cefef0
.dword	0xdb8a3bd9
.dword	0x4b329421
.dword	0x3a31ab60
.dword	0xe953c01f
.dword	0x0f147ddf
.dword	0xcf457330
.dword	0x19f95636
.dword	0x30610d6c
.dword	0x7cfe6ad7
.dword	0x51a59b6f
.dword	0xbe384770
.dword	0x336dc41b
.dword	0xa87f271a
.dword	0x6c9121e1
.dword	0xa73c95c4
.dword	0xcaf0a32c
.dword	0x46f5a171
.dword	0x251c1e00
.dword	0xac7c3863
.dword	0x8f02a18c
.dword	0x91fd21c8
.dword	0x4453aa24
.dword	0x8cc4c438
.dword	0xbcafd1ca
.dword	0x767634b8
.dword	0x177434a8
.dword	0x4602bb95
.dword	0xbb2a44f6
.dword	0xe1cd9683
.dword	0xc649858c
.dword	0x834794d4
.dword	0xe226001f
.dword	0x3bbf119a
.dword	0x0aeac265
.dword	0x41649ded
.dword	0x54d909fd
.dword	0x82c44d2b
.dword	0x85371e54
.dword	0x91074282
.dword	0x61ae58b5
.dword	0xc611ba41
.dword	0xd0fb779f
.dword	0x999f8b26
.dword	0xa113808e
.dword	0x675a54fd
.dword	0x8864b1ab
.dword	0xcd9e4966
.dword	0xecdb94a3
.dword	0x50fb73b8
.dword	0x1566303a
.dword	0xf77c3228
.dword	0xde7da192
.dword	0x1a2510c7
.dword	0x8c4f914e
.dword	0xae52acb6
.dword	0x269ca43a
.dword	0x112bfa6f
.dword	0xe6388e69
.dword	0x9f9c2d14
.dword	0x85d763a6
.dword	0xac497736
.dword	0x8a462146
.dword	0xd2300ca6
.dword	0xab04b597
.dword	0xd5173d3b
.dword	0x1c954c88
.dword	0xae8f2f8a
.dword	0xe18cd6d3
.dword	0xe7128ead
.dword	0x430c45f2
.dword	0x1fece821
.dword	0xdbe8db2f
.dword	0x9deac411
.dword	0xd578536b
.dword	0x5a2112c5
.dword	0x33755502
.dword	0x41f512c8
.dword	0x5b07c90e
.dword	0x30e95eba
.dword	0xdc43d0d7
.dword	0xce250988
.dword	0x546ef0b9
.dword	0x7c69a228
.dword	0x540da0bc
.dword	0xb917bde6
.dword	0x2b14a548
.dword	0x5c51c72f
.dword	0xe66cd16e
.dword	0xf8e67fb0
.dword	0x45b5c5f1
.dword	0x6bd9ba9a
.dword	0x9c1e8667
.dword	0x8a2c7d45
.dword	0xaf61ac13
.dword	0xcc06f22d
.dword	0x6ac84f04
.dword	0x581f3afc
.dword	0x6122b26e
.dword	0xff4914a8
.dword	0xf0a80a4a
.dword	0x44577dfa
.dword	0xe31172b1
.dword	0x30b00f6c
.dword	0x9cd4367e
.dword	0x53266571
.dword	0x39a2b9a9
.dword	0xf628feb7
.dword	0x519a8397
.dword	0xd949e747
.dword	0xfe0b7d68
.dword	0xd2ec6f9d
.dword	0x7b9f0a06
.dword	0xe25828a9
.dword	0x6ff72e08
.dword	0xae72d34d
.dword	0xf61fde3e
.dword	0x1cb57d88
.dword	0x3bb5e465
.dword	0x89b4574b
.dword	0xae23f858
.dword	0x32b4b342
.dword	0x9c5034c7
.dword	0x6129cabb
.dword	0x9af4bc9a
.dword	0xc729acef
.dword	0x7d485219
.dword	0x4a3b445a
.dword	0x276f4a82
.dword	0xdd7bf9fc
.dword	0x6797c5aa
.dword	0x9c739bc0
.dword	0x37e6587a
.dword	0x292fa2d6
.dword	0x57b6f48d
.dword	0xa87ebd39
.dword	0xda3b9803
.dword	0xcf98db80
.dword	0xa1993841
.dword	0x214c72b3
.dword	0x4a289aa8
.dword	0x3d7777d1
.dword	0x579e0114
.dword	0x13d30cfc
.dword	0x8a19a62b
.dword	0x07041e7d
.dword	0x3b192289
.dword	0xb8f72c52
.dword	0x3a7c4f91
.dword	0x2eadf0ac
.dword	0xdbfec094
.dword	0x8c1ae516
.dword	0xbb97f344
.dword	0x2d614a74
.dword	0xdbb7bc69
.dword	0x75160c80
.dword	0x026513b2
.dword	0xb3301eb1
.dword	0x513b24cd
.dword	0xd2d18754
.dword	0x0fccea6a
.dword	0xb4e15b15
.dword	0xb546b05b
.dword	0x0f952852
.dword	0x7dbe9d89
.dword	0xf8791ac8
.dword	0xd924a386
.dword	0xdf5f99f4
.dword	0x6618d504
.dword	0x8849a498
.dword	0xf2961261
.dword	0xe303d466
.dword	0xd9d90f64
.dword	0x9ceb7bc1
.dword	0x07b60686
.dword	0x92dc0a8a
.dword	0x93997373
.dword	0xe19d8f2e
.dword	0xdd4ad4c7
.dword	0x0b3419eb
.dword	0x46365e84
.dword	0x92db17e9
.dword	0x65cdd905
.dword	0xdd60629d
.dword	0x16478c58
.dword	0xd11c290e
.dword	0x0d899e08
.dword	0xc9770a1f
.dword	0xac39d155
.dword	0x0f7a7733
.dword	0xa946bce1
.dword	0x4e00d0f3
.dword	0x3aa41dc4
.dword	0x0a9f9511
.dword	0x5398487b
.dword	0xf3782028
.dword	0x69b76600
.dword	0x8ca3efb3
.dword	0xcb7da0de
.dword	0x552d23d2
.dword	0x3436f14c
.dword	0x6f5f3f35
.dword	0x53b5a207
.dword	0xd20dfb9f
.dword	0x8723b674
.dword	0x0f348d99
.dword	0x3886ab90
.dword	0x0334f85a
.dword	0xea1670df
.dword	0xd13744b3
.dword	0x883fe017
.dword	0x1daf3b01
.dword	0xa9c63a58
.dword	0xec747b1c
.dword	0x0c6eccf7
.dword	0x4cad30bc
.dword	0x477b3771
.dword	0xaeef6b3d
.dword	0x1555f68c
.dword	0xb7e378a2
.dword	0xb602bd3e
.dword	0xaf130fb6
.dword	0x31a4314a
.dword	0xc723b3d7
.dword	0x7015aa42
.dword	0x0928aa3e
.dword	0x22ef3704
.dword	0xf352256b
.dword	0x4da52bc4
.dword	0x546d8880
.dword	0xf78ee9c7
.dword	0xc95bd691
.dword	0x5239bc94
.dword	0xb48c2fbf
.dword	0x67e301b5
.dword	0x240451c9
.dword	0x27c6864f
.dword	0x26c6f274
.dword	0x25f55d4e
.dword	0x5d2eb86f
.dword	0x828a97e7
.dword	0x67e912e1
.dword	0x3d4617ee
.dword	0x09322d7d
.dword	0x1eca00ff
.dword	0x2ecc47d2
.dword	0xf3bb23d6
.dword	0xab05bda1
.dword	0xbebbadd8
.dword	0x76ca2ed2
.dword	0x2b20cd36
.dword	0x524f229d
.dword	0x5254e959
.dword	0x2aef92ad
.dword	0x31229858
.dword	0xb06bc8f6
.dword	0x5dcce032
.dword	0x310e5031
.dword	0xf2069096
.dword	0x072a3060
.dword	0x9c33042c
.dword	0x06dd7d38
.dword	0xe4b100b8
.dword	0x04c5e517
.dword	0x3b50cc02
.dword	0x6f0086f2
.dword	0xc583b3da
.dword	0xae6ff135
.dword	0x7815f9b0
.dword	0x5cc84607
.dword	0x754bced3
.dword	0xaec59a2a
.dword	0x8542dc85
.dword	0x3af43c9d
.dword	0xae8c12b8
.dword	0x67be397d
.dword	0x8758cfc4
.dword	0x1de4f6af
.dword	0x1a455288
.dword	0x88db7d8c
.dword	0xf937aafa
.dword	0xca3650e2
.dword	0xc7044eb3
.dword	0x58933db0
.dword	0x0545acbb
.dword	0xb379a614
.dword	0x9b3eb4cc
.dword	0xe9519192
.dword	0x2eb0d339
.dword	0xf575e7bb
.dword	0xee907664
.dword	0x53960a4c
.dword	0x87973a27
.dword	0xa925b817
.dword	0x1c1a1e45
.dword	0x20dcdbeb
.dword	0x2d3e0667
.dword	0x53d05d72
.dword	0xb822ad39
.dword	0x4ffe6390
.dword	0x9ef29035
.dword	0xd0450fa2
.dword	0x0d89744e
.dword	0x346489f5
.dword	0xd48dd733
.dword	0x5d857c31
.dword	0x9b185404
.dword	0x41059de4
.dword	0x12d11883
.dword	0xa647e794
.dword	0xd5710481
.dword	0xcca75bc9
.dword	0x28ea8990
.dword	0x4914fd85
.dword	0x9edd447a
.dword	0x1a012a8e
.dword	0x697d2a85
.dword	0x0e3deb9d
.dword	0x9da1bcd6
.dword	0x5254ddf9

.align 8
rd_data_vv:
.dword	0xfff0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc4e251d5a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3ff0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x403fa25900000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc1c4a130ff800000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbff00097bde60000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc71ccff600000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbff0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4303e75f7ffffff8
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x47efffffe0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x47efffffe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x47efffffe0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc7efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc7efffffe0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc7efffffe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc7efffffe0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3d25f45ac0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc1f31b7000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3faeeefa20000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x38e08454f5550000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3dd5be1580000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3dac294e80000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe6603d620000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbe9c2b62a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc70f235900000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb909347300000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbb9d6f7820000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc433b1e5c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xba5b62fd20010000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc2238521c0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39ef4ee65f800000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3953f2a120000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb9947df650000020
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x45ebe7e6a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39e691b3207fffff
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc226e89660000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc58e8f6380000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbddded67a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbde261f6c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3925153fc0001000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x428db11000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe9185f7e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3cd8de4e80000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x44fd225c20000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3dd988fa40000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x46d945da40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3d5df255a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3e21ca0620000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x38dbafa700020000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x45e010de40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x439908c0e0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3f5e8793a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3bbc9ed5e0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc146ca1c40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe6f34c280000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc6aebcf760000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbd24b702e0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x427a0bae40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc208a1f440000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x43b0af8620000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbcc8fcf280000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x41229fb0a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39c7bd73a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3ad6ef79c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc79e56f640033bb6
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc7be9849e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3adc6a2e7e75874c
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc701b07720000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x45dc5eb540000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc6a3159ec0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc6d95a3fe47fc000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x46b012a480000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x4593f631a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x47ca6f4080000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc3e9c5e0a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x45e403cf60000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbb0ef684065d8000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc528fbc0a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbf6f6093c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc6953e9b80000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3eeeec4ba0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x44f05e910f000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc6ea4c9c80000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x44ced7e1c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3f2a8b8527e5caf8
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc722bc8920000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc5aad801a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbfcdef97c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc51d007e80000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3fd18bad57b60000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc484323260000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x42d977f0883ad780
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbc2249a8a9ea5400
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe033410e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3dafddffc0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3dad3f00c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc018f84d40000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe0566ff5ffffe79
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x41d8016a48000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x446c9a4086980000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc3f4aac840000003
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbdf87f4bc0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc279e46480000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc70d1a2c60000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x41a32bd9e000e495
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc6eda83def206220
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbea2faad1dd1868c
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x47588d5020000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x462dee9ca0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc52ee63040000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc2ea077ae0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x472bc677e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc7d23d3200000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc176832fe0000003
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe60898be0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x441cd3cec0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc4795f7540000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc3a6ed70486d8800
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc21e080880139ebe
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc4b1aa619d48ac0c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3fc16fed40000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc35e137780000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x43ac8c3700000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbd4374ef47f06f88
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x430169d1a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x44bc5c4260000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x44a41434a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbac75f3260000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x38247fec60000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb925a973ffffe000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbd4a324000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3b18bbec80000010
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x468447bbc0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x39ea328940000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x397121d5e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x4316c8d860000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x44a988f2e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc4732a57c0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc22bbd6c60000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbf6de041c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x456cc45460000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc3b329ffe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4650769380000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3b574ac960000001
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbb1fb17c80000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbb246a55a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3f89f71560000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbc21ddcda0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc2c8704f40000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x385bbb1980000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3ed0c6efe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbe59d12140000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe00f03e9
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x4629f2be80000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc4bdda8b40000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x45173659a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc33b58d100000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc71e16d7c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3cc57e34a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffd51f5370
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc3705ef020000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbc35a2b040000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3fb80ae380000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3fc4524f60000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbfef168280000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc699dfde00000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe00001a8
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe0c21ad80000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe6db88360000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x415e146580000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3f95fa3940000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3f65489ec0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4444c003e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc435cb16a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3c227011c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x459b729460000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbcd3948740000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x38baec74c0100000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x445abfc5e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x44319ada5ff8d43c
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x437d1b65e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe6eaaa040000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfff0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc4e251d5a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3ff0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x403fa25900000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc1c4a130ff800000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbff00097bde60000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc71ccff600000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbff0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc1c4a130ff800000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbff00097bde60000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc71ccff600000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbff0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4303e75f7ffffff8
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x47efffffe0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x47efffffe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x47efffffe0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc7efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc7efffffe0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc7efffffe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x47efffffe0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc7efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc7efffffe0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc7efffffe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc7efffffe0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3d25f45ac0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc1f31b7000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3faeeefa20000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x38e08454f5550000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3dd5be1580000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3dac294e80000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe6603d620000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x38e08454f5550000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3dd5be1580000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3dac294e80000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe6603d620000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbe9c2b62a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc70f235900000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb909347300000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbb9d6f7820000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc433b1e5c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xba5b62fd20010000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc2238521c0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39ef4ee65f800000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc433b1e5c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xba5b62fd20010000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc2238521c0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39ef4ee65f800000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3953f2a120000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb9947df650000020
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x45ebe7e6a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39e691b3207fffff
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc226e89660000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc58e8f6380000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbddded67a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbde261f6c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc226e89660000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc58e8f6380000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbddded67a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbde261f6c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3925153fc0001000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x428db11000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe9185f7e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3cd8de4e80000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x44fd225c20000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3dd988fa40000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x46d945da40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3d5df255a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x44fd225c20000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3dd988fa40000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x46d945da40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3d5df255a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3e21ca0620000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x38dbafa700020000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x45e010de40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x439908c0e0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3f5e8793a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3bbc9ed5e0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc146ca1c40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe6f34c280000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3f5e8793a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3bbc9ed5e0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc146ca1c40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe6f34c280000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc6aebcf760000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbd24b702e0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x427a0bae40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc208a1f440000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x43b0af8620000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbcc8fcf280000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x41229fb0a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39c7bd73a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x43b0af8620000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbcc8fcf280000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x41229fb0a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39c7bd73a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3ad6ef79c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc79e56f640033bb6
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc7be9849e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3adc6a2e7e75874c
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc701b07720000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x45dc5eb540000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc6a3159ec0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc6d95a3fe47fc000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc701b07720000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x45dc5eb540000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc6a3159ec0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc6d95a3fe47fc000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x46b012a480000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x4593f631a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x47ca6f4080000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc3e9c5e0a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x45e403cf60000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbb0ef684065d8000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc528fbc0a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbf6f6093c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x45e403cf60000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbb0ef684065d8000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc528fbc0a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbf6f6093c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc6953e9b80000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3eeeec4ba0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x44f05e910f000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc6ea4c9c80000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x44ced7e1c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3f2a8b8527e5caf8
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc722bc8920000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc5aad801a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x44ced7e1c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3f2a8b8527e5caf8
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc722bc8920000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc5aad801a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbfcdef97c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc51d007e80000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3fd18bad57b60000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc484323260000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x42d977f0883ad780
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbc2249a8a9ea5400
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe033410e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3dafddffc0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x42d977f0883ad780
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbc2249a8a9ea5400
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe033410e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3dafddffc0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3dad3f00c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc018f84d40000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe0566ff5ffffe79
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x41d8016a48000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x446c9a4086980000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc3f4aac840000003
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbdf87f4bc0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc279e46480000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x446c9a4086980000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc3f4aac840000003
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbdf87f4bc0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc279e46480000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc70d1a2c60000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x41a32bd9e000e495
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc6eda83def206220
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbea2faad1dd1868c
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x47588d5020000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x462dee9ca0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc52ee63040000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc2ea077ae0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x47588d5020000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x462dee9ca0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc52ee63040000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc2ea077ae0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x472bc677e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc7d23d3200000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc176832fe0000003
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe60898be0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x441cd3cec0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc4795f7540000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc3a6ed70486d8800
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc21e080880139ebe
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x441cd3cec0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc4795f7540000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc3a6ed70486d8800
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc21e080880139ebe
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc4b1aa619d48ac0c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3fc16fed40000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc35e137780000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x43ac8c3700000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbd4374ef47f06f88
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x430169d1a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x44bc5c4260000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x44a41434a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62

rd_data_vf:
.dword	0xfff0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfff0000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfff0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xfff0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc1c4a130ff800000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3feffed084340000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc71ccff600000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3ff0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4303e75f7ffffff8
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x408ae7bf40000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x4264ccae1fffe000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc3293ce8e0000002
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x47efffffe0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x47efffffe0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x47efffffe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc7efffffe0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc7efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc7efffffe0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc7efffffe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x38e08454f5550000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3dd5be1580000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3dac294e80000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe6603d620000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbe9c2b62a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc70f235900000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb90934b300004000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbb9d6f7820000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc433b1e5c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xba5b62fd1fff0000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc2238521c0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39ef4ee660800000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3953f2a120000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb9947df670000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x45ebe7e6a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39e691b31f800000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc226e89660000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc58e8f6380000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbddded67a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbde261f6c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3925153fc0001000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x428db11000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe9185f7e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3cd8de4e80000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x44fd225c20000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3dd988fa40000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x46d945da40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3d5df255a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3e21ca0620000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x38dbafa6fffc0000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x45e010de40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x439908c0e0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3f5e8793a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3bbc9ed5e0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc146ca1c40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe6f34c280000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc6aebcf760000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbd24b702e0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x427a0bae40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc208a1f440000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x43b0af8620000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbcc8fcf280000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x41229fb0a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39c7bd73a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3ad6ef79c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc79e56f640000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3904f92520000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3adc6a2e80000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc701b07720000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x45dc5eb53fffff06
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc6a3159ec0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc6d95a6a00000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x46b012a480000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbf9daf1b43cf9ec0
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x47ca6f4080000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbf9daf1b60000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x45e403cf60000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x45e403cf60000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x45e403cf60000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x45e403cf60000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc6953e9b80000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc6869143a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc68691439766a310
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc6eaa6e18e800000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x44ced7e1c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x403189c4a00003f3
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x403189c45ef49c80
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x403189c4a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbfcdef97c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc51d007e80000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbfcdeef9d0940000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc484323260000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x42d977f0883ad780
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x42d977f020000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x42d977f020000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x42d977f020000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3dad3f00c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc018f84d400066d4
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe0634a751000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x41df0e06c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x446c9a4086980000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x446c945860000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x446c945860000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x446c945860000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc70d1a2c60000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc70d1a2c60000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc70d1a2c5bc81888
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc70d1a2c60000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x47588d5020000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x462dee9ca0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbf4f857820000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x391b2047e4af8000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x472bc677e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc2c6051860000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc2c6051860000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc2c6051860000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x441cd3cec0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc4795f7540000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc3a6ed6bc0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc21e080880000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc4b1aa619d48ac0c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x4305ba9fa0000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc35d65a283000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x4305ba9fa0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbd4374ef47f06f88
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbbafc1be2006befe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x44bc5c4260000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3dfb31463fff01f2
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbac75f3260000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbac75f325ffffe00
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbac75f3260000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbd4a324000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbd4a324000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbd4a324000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x39ea328940000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x39ea328940800000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39ea328940000002
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x44a988f2e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000002
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x44a988f2e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x44a988f2e0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbf6de041c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbf6de041c0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbf6de041c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4650769380000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe83b49c0
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x4650769380000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x4650769380000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbb246a55a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbb246a559ffffff8
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbb246a55a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc2c8704f40000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc2c8704f40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc2c8704f40000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbe59d12140000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe59d12140000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe59d12140000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x45173659a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe00000ba
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x45173659a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x45173659a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3cc57e34a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3cc57e34a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3cc57e34a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3fb80ae380000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3fb80ae380000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3fb80ae380000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc699dfde00000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffff11011000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc699dfde00000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc699dfde00000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x415e146580000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x415e146580000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x415e146580000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4444c003e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x4444c003e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x4444c003e0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x459b729460000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe000db95
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x459b729460000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x459b729460000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x445abfc5e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc21caf1080000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbf149d573ded29a4
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3d6096b2e0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62

.align 8

rd_data_wv:
.dword	0xfff0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3ff0000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3ff0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3ff0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3ff0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbff0000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbff0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbff0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbff0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x47efffffe0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x47efffffe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x47efffffe0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc7efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc7efffffe0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc7efffffe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc7efffffe0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3810aaaaa0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3810aaaaa0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3810aaaaa0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3810aaaaa0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb810000020000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb810000020000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb810000020000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb810000020000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3810000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3810000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3810000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3810000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb810000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb810000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb810000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb810000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x380fffffc0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x380fffffc0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x380fffffc0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x380fffffc0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb80fffffc0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb80fffffc0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb80fffffc0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb80fffffc0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x380fffff80000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x380fffff80000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x380fffff80000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x380fffff80000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb6b0000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb6b0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb6b0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb6b0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x36a0000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x36a0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x36a0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x36a0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb6a0000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb6a0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb6a0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb6a0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000080000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000080000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x0000000080000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x0000000080000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x0000000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc569ddb020000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc7be9849e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb918a78b40000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc30f365940000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbe3fca8720000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3ed2fc3860000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x45e50dc020000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbf9daf1b60000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x4593f631a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbb22cfd7a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc3e9c5e0a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x45e403cf60000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbb0ef60840000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc528fbc0a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbaf4a82840000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc6869143a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbaff940040000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc4aa851a20000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3b4d99b560000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x403189c4a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3f2a8b8520000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc722bc8920000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc5aad801a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbfcdef97c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb891b25f60000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3fd18b5e60000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39ec3674a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x42d977f020000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbc2249ac00000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe033410e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xba2dd87a40000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbdb9b4fe20000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3b2c193140000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3b4872fea0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc1bc3271e0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x446c945860000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc3f4aac840000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x38d14a04e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc279e46480000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc70d1a2c60000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3f5c9290c0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc6eda83e00000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3cf173cba0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb82ffda840000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbc4b920020000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc52ee63040000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc2ea077ae0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc2c6051860000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc7d23d3200000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc176832fe0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3960e9b0a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbc47662000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3cc8ed1a80000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc28221b620000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc0139ebe40000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4305ba9fa0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x39c94c7920000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3be6017680000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x43ac8c3700000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbbafc1be20000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x430169d1a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3a1bea6cc0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x44a41434a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbac75f3260000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc333d88440000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3818ffd8c0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb925a97400000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbd4a324000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb8a4d3a860000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3b18bbec80000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x468447bbc0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x39ea328940000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3e7dbc59e0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x397121d5a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x4316c8d860000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x44a988f2e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbccfd71860000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc4732a57c0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc22bbd6c60000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbf6de041c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x42f27d90a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x456cc45460000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc3b329ffe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4650769380000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x430cc900c0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3b574ac960000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbb1fb17c80000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbb246a55a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbc9f9746a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3f89f71560000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbc21ddcda0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc2c8704f40000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x42c2559980000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x385abb1980000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3ed0c6efe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbe59d12140000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x45de07d1a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x4629f2be80000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc4bdda8b40000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x45173659a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3936ce6ea0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc33b58d100000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc71e16d7c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3cc57e34a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc655c15920000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc3705ef020000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbc35a2b040000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3fb80ae380000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x4443ded540000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3fc4524f60000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbfef168280000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc699dfde00000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x452a7803e0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe0c21ad80000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe6db88360000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x415e146580000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x39e0543180000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3f95fa3940000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3f65489ec0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4444c003e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc29b213fa0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc435cb16a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3c227011c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x459b729460000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x43cfb43240000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbcd3948740000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x38baec74c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3d6096b2e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x44319ada60000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x437d1b65e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe6eaaa040000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62

rd_data_wf:
.dword	0xfff0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfff0000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfff0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xfff0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3ff0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3ff0000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3ff0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3ff0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbff0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbff0000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbff0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbff0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x47efffffe0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x47efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x47efffffe0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x47efffffe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc7efffffe0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc7efffffe0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc7efffffe0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc7efffffe0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3810aaaaa0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3810aaaaa0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3810aaaaa0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3810aaaaa0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb810000020000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb810000020000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb810000020000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb810000020000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3810000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3810000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3810000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3810000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb810000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb810000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb810000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb810000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x380fffffc0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x380fffffc0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x380fffffc0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x380fffffc0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb80fffffc0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb80fffffc0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb80fffffc0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb80fffffc0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x380fffff80000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x380fffff80000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x380fffff80000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x380fffff80000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb6b0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb6b0000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb6b0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb6b0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x36a0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x36a0000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x36a0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x36a0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb6a0000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb6a0000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb6a0000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb6a0000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x0000000080000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x0000000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000006b4eed81
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000007df4c24f
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x0000000008c53c5a
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc30f365940000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc30f365940000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc30f365940000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc30f365940000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbf9daf1b60000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbf9daf1b60000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbf9daf1b60000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbf9daf1b60000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x45e403cf60000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x45e403cf60000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x45e403cf60000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x45e403cf60000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc6869143a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc6869143a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc6869143a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc6869143a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x403189c4a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x403189c4a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x403189c4a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x403189c4a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbfcdef97c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbfcdef97c0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbfcdef97c0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbfcdef97c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x42d977f020000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x42d977f020000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x42d977f020000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x42d977f020000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbdb9b4fe20000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbdb9b4fe20000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbdb9b4fe20000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbdb9b4fe20000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x446c945860000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x446c945860000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x446c945860000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x446c945860000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc70d1a2c60000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc70d1a2c60000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc70d1a2c60000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc70d1a2c60000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb82ffda840000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb82ffda840000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb82ffda840000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb82ffda840000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc2c6051860000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc2c6051860000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc2c6051860000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc2c6051860000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbc47662000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbc47662000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbc47662000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbc47662000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4305ba9fa0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x4305ba9fa0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x4305ba9fa0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x4305ba9fa0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbbafc1be20000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbbafc1be20000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbbafc1be20000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbbafc1be20000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbac75f3260000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbac75f3260000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbac75f3260000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbac75f3260000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbd4a324000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbd4a324000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbd4a324000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbd4a324000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x39ea328940000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x39ea328940000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x39ea328940000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x39ea328940000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x44a988f2e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x44a988f2e0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x44a988f2e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x44a988f2e0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbf6de041c0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbf6de041c0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbf6de041c0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbf6de041c0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4650769380000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x4650769380000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x4650769380000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x4650769380000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbb246a55a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbb246a55a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbb246a55a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbb246a55a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc2c8704f40000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc2c8704f40000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc2c8704f40000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc2c8704f40000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbe59d12140000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbe59d12140000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbe59d12140000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xbe59d12140000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x45173659a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x45173659a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x45173659a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x45173659a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3cc57e34a0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3cc57e34a0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3cc57e34a0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3cc57e34a0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3fb80ae380000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3fb80ae380000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3fb80ae380000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3fb80ae380000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc699dfde00000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc699dfde00000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc699dfde00000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc699dfde00000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x415e146580000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x415e146580000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x415e146580000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x415e146580000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4444c003e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x4444c003e0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x4444c003e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x4444c003e0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x459b729460000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x459b729460000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x459b729460000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x459b729460000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x3d6096b2e0000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3d6096b2e0000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3d6096b2e0000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3d6096b2e0000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62

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
    

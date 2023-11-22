#----------------------------------------------------------------------------- 
    # vfwmacc.S
    #-----------------------------------------------------------------------------
    #
    # Test vfwmacc instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vfwmacc)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_FP_W_VV_FUSED_OP 
#define TEST_FP_W_VV_FUSED_OP( testnum, inst, flags, result, val1, val2 ) \
    TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,     \
        VSET_VSEW_4AVL \
        la x7, val1; \
        vle32.v v8, (x7); \
        la x7, val2; \
        vle32.v v16, (x7); \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            inst v24, v8, v16, v0.t; \
    )
#undef TEST_FP_W_VF_FUSED_OP_RV 
#define TEST_FP_W_VF_FUSED_OP_RV( testnum, inst, flags, result, val1, val2 ) \
    TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,     \
        VSET_VSEW_4AVL \
        la x7, val1; \
        vle32.v v8, (x7); \
        la x7, val2; \
        flw f1, (x7); \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            inst v24, f1, v8, v0.t; \
    )
#define TEST_FP_W_VV_FUSED_OP_11( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v1, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v1, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_12( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v2, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v2, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_13( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v3, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v3, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_14( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v4, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v4, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_15( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v5, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v5, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_16( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v6, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v6, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_17( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v7, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v7, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_18( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_19( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v9, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v9, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_110( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v10, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v10, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_111( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v11, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v11, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_112( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v12, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v12, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_113( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v13, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v13, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_114( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v14, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v14, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_115( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v15, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v15, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_116( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v16, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_117( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v17, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v17, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_118( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v18, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v18, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_119( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v19, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v19, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_120( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v20, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v20, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_121( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v21, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v21, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_122( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v22, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v22, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_123( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v23, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v23, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_124( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v24, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_125( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v25, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v25, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_126( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v26, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v26, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_127( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v27, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v27, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_128( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v28, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v28, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_129( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v29, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v29, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_130( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v30, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v30, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_131( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v31, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v31, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd1( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v1, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v1, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v1, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd2( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v2, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v2, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v2, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd3( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v3, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v3, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v3, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd4( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v4, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v4, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v4, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd5( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v5, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v5, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v5, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd6( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v6, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v6, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v6, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd7( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v7, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v7, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v7, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd8( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v16, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd9( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v9, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v9, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v9, v24, v16, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd10( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v10, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v10, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v10, v24, v16, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd11( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v11, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v11, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v11, v24, v16, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd12( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v12, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v12, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v12, v24, v16, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd13( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v13, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v13, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v13, v24, v16, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd14( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v14, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v14, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v14, v24, v16, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd15( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v15, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v15, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v15, v24, v16, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd16( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v24, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd17( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v17, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v17, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v17, v8, v24, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd18( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v18, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v18, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v18, v8, v24, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd19( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v19, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v19, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v19, v8, v24, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd20( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v20, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v20, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v20, v8, v24, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd21( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v21, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v21, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v21, v8, v24, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd22( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v22, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v22, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v22, v8, v24, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd23( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v23, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v23, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v23, v8, v24, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd24( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd25( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v25, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v25, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v25, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd26( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v26, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v26, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v26, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd27( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v27, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v27, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v27, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd28( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v28, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v28, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v28, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd29( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v29, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v29, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v29, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd30( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v30, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v30, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v30, v16, v8, v0.t; \
        )
#define TEST_FP_W_VV_FUSED_OP_rd31( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v31, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v31, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v31, v16, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_1( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f1, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f1, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_3( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f3, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f3, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_4( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f4, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f4, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_5( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f5, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f5, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_6( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f6, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f6, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_7( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f7, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f7, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_8( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f8, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_9( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f9, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f9, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_10( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f10, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f10, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_11( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f11, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f11, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_12( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f12, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f12, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_13( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f13, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f13, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_14( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f14, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f14, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_15( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f15, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f15, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_16( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f16, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_17( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f17, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f17, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_18( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f18, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f18, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_19( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f19, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f19, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_20( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f20, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f20, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_21( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f21, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f21, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_22( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f22, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f22, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_23( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f23, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f23, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_24( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f24, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_25( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f25, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f25, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_26( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f26, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f26, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_27( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f27, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f27, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_28( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f28, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f28, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_29( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f29, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f29, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_30( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f30, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f30, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rs1_31( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f31, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f31, v8, v0.t; \
            )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_2( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v2, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v2, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v2, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_3( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v3, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v3, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v3, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_4( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v4, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v4, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v4, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_5( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v5, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v5, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v5, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_6( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v6, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v6, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v6, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_7( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v7, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v7, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v7, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_8( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v8, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v8, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_9( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v9, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v9, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v9, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_10( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v10, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v10, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v10, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_11( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v11, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v11, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v11, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_12( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v12, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v12, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v12, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_13( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v13, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v13, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v13, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_14( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v14, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v14, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v14, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_15( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v15, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v15, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v15, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_16( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v16, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v16, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_17( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v17, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v17, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v17, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_18( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v18, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v18, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v18, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_19( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v19, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v19, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v19, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_20( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v20, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v20, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v20, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_21( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v21, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v21, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v21, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_22( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v22, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v22, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v22, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_23( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v23, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v23, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v23, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_24( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v24, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v24, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_25( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v25, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v25, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v25, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_26( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v26, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v26, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v26, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_27( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v27, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v27, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v27, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_28( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v28, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v28, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v28, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_29( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v29, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v29, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v29, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_30( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v30, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v30, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v30, f1, v8, v0.t; \
        )
#define TEST_FP_W_VF_FUSED_OP_RV_rd_31( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_W_FP( testnum, v31, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v31, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v31, f1, v8, v0.t; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_FP_W_VV_FUSED_OP( 1,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+0, rs2_data+0, rs1_data+0);
TEST_FP_W_VV_FUSED_OP( 2,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+128, rs2_data+64, rs1_data+64);
TEST_FP_W_VV_FUSED_OP( 3,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+256, rs2_data+128, rs1_data+128);
TEST_FP_W_VV_FUSED_OP( 4,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+384, rs2_data+192, rs1_data+192);
TEST_FP_W_VV_FUSED_OP( 5,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+512, rs2_data+256, rs1_data+256);
TEST_FP_W_VV_FUSED_OP( 6,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+640, rs2_data+320, rs1_data+320);
TEST_FP_W_VV_FUSED_OP( 7,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+768, rs2_data+384, rs1_data+384);
TEST_FP_W_VV_FUSED_OP( 8,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+896, rs2_data+448, rs1_data+448);
TEST_FP_W_VV_FUSED_OP( 9,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+1024, rs2_data+512, rs1_data+512);
TEST_FP_W_VV_FUSED_OP( 10,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+1152, rs2_data+576, rs1_data+576);
TEST_FP_W_VV_FUSED_OP( 11,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+1280, rs2_data+640, rs1_data+640);
TEST_FP_W_VV_FUSED_OP( 12,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+1408, rs2_data+704, rs1_data+704);
TEST_FP_W_VV_FUSED_OP( 13,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+1536, rs2_data+768, rs1_data+768);
TEST_FP_W_VV_FUSED_OP( 14,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+1664, rs2_data+832, rs1_data+832);
TEST_FP_W_VV_FUSED_OP( 15,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+1792, rs2_data+896, rs1_data+896);
TEST_FP_W_VV_FUSED_OP( 16,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+1920, rs2_data+960, rs1_data+960);
TEST_FP_W_VV_FUSED_OP( 17,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+2048, rs2_data+1024, rs1_data+1024);
TEST_FP_W_VV_FUSED_OP( 18,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+2176, rs2_data+1088, rs1_data+1088);
TEST_FP_W_VV_FUSED_OP( 19,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+2304, rs2_data+1152, rs1_data+1152);
TEST_FP_W_VV_FUSED_OP( 20,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+2432, rs2_data+1216, rs1_data+1216);
TEST_FP_W_VV_FUSED_OP( 21,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+2560, rs2_data+1280, rs1_data+1280);
TEST_FP_W_VV_FUSED_OP( 22,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+2688, rs2_data+1344, rs1_data+1344);
TEST_FP_W_VV_FUSED_OP( 23,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+2816, rs2_data+1408, rs1_data+1408);
TEST_FP_W_VV_FUSED_OP( 24,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+2944, rs2_data+1472, rs1_data+1472);
TEST_FP_W_VV_FUSED_OP( 25,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+3072, rs2_data+1536, rs1_data+1536);
TEST_FP_W_VV_FUSED_OP( 26,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+3200, rs2_data+1600, rs1_data+1600);
TEST_FP_W_VV_FUSED_OP( 27,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+3328, rs2_data+1664, rs1_data+1664);
TEST_FP_W_VV_FUSED_OP( 28,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+3456, rs2_data+1728, rs1_data+1728);
TEST_FP_W_VV_FUSED_OP( 29,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+3584, rs2_data+1792, rs1_data+1792);
TEST_FP_W_VV_FUSED_OP( 30,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+3712, rs2_data+1856, rs1_data+1856);
TEST_FP_W_VV_FUSED_OP( 31,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+3840, rs2_data+1920, rs1_data+1920);
TEST_FP_W_VV_FUSED_OP( 32,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+3968, rs2_data+1984, rs1_data+1984);
TEST_FP_W_VV_FUSED_OP( 33,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+4096, rs2_data+2048, rs1_data+2048);
TEST_FP_W_VV_FUSED_OP( 34,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+4224, rs2_data+2112, rs1_data+2112);
TEST_FP_W_VV_FUSED_OP( 35,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+4352, rs2_data+2176, rs1_data+2176);
TEST_FP_W_VV_FUSED_OP( 36,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+4480, rs2_data+2240, rs1_data+2240);
TEST_FP_W_VV_FUSED_OP( 37,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+4608, rs2_data+2304, rs1_data+2304);
TEST_FP_W_VV_FUSED_OP( 38,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+4736, rs2_data+2368, rs1_data+2368);
TEST_FP_W_VV_FUSED_OP( 39,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+4864, rs2_data+2432, rs1_data+2432);
TEST_FP_W_VV_FUSED_OP( 40,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+4992, rs2_data+2496, rs1_data+2496);
TEST_FP_W_VV_FUSED_OP( 41,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+5120, rs2_data+2560, rs1_data+2560);
TEST_FP_W_VV_FUSED_OP( 42,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+5248, rs2_data+2624, rs1_data+2624);
TEST_FP_W_VV_FUSED_OP( 43,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+5376, rs2_data+2688, rs1_data+2688);
TEST_FP_W_VV_FUSED_OP( 44,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+5504, rs2_data+2752, rs1_data+2752);
TEST_FP_W_VV_FUSED_OP( 45,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+5632, rs2_data+2816, rs1_data+2816);
TEST_FP_W_VV_FUSED_OP( 46,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+5760, rs2_data+2880, rs1_data+2880);
TEST_FP_W_VV_FUSED_OP( 47,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+5888, rs2_data+2944, rs1_data+2944);
TEST_FP_W_VV_FUSED_OP( 48,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+6016, rs2_data+3008, rs1_data+3008);
TEST_FP_W_VV_FUSED_OP( 49,  vfwmacc.vv, 0x0000000000000001,  rd_data_vv+6144, rs2_data+3072, rs1_data+3072);
  #-------------------------------------------------------------
  # VV Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_FP_W_VV_FUSED_OP_11( 50,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+0, rs2_data+0, rs1_data+0);
  TEST_FP_W_VV_FUSED_OP_rd2( 51,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+128, rs2_data+64, rs1_data+64);
  TEST_FP_W_VV_FUSED_OP_12( 52,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+128, rs2_data+64, rs1_data+64);
  TEST_FP_W_VV_FUSED_OP_13( 53,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+256, rs2_data+128, rs1_data+128);
  TEST_FP_W_VV_FUSED_OP_rd4( 54,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+384, rs2_data+192, rs1_data+192);
  TEST_FP_W_VV_FUSED_OP_14( 55,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+384, rs2_data+192, rs1_data+192);
  TEST_FP_W_VV_FUSED_OP_15( 56,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+512, rs2_data+256, rs1_data+256);
  TEST_FP_W_VV_FUSED_OP_rd6( 57,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+640, rs2_data+320, rs1_data+320);
  TEST_FP_W_VV_FUSED_OP_16( 58,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+640, rs2_data+320, rs1_data+320);
  TEST_FP_W_VV_FUSED_OP_17( 59,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+768, rs2_data+384, rs1_data+384);
  TEST_FP_W_VV_FUSED_OP_19( 60,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+1024, rs2_data+512, rs1_data+512);
  TEST_FP_W_VV_FUSED_OP_rd10( 61,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+1152, rs2_data+576, rs1_data+576);
  TEST_FP_W_VV_FUSED_OP_110( 62,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+1152, rs2_data+576, rs1_data+576);
  TEST_FP_W_VV_FUSED_OP_111( 63,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+1280, rs2_data+640, rs1_data+640);
  TEST_FP_W_VV_FUSED_OP_rd12( 64,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+1408, rs2_data+704, rs1_data+704);
  TEST_FP_W_VV_FUSED_OP_112( 65,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+1408, rs2_data+704, rs1_data+704);
  TEST_FP_W_VV_FUSED_OP_113( 66,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+1536, rs2_data+768, rs1_data+768);
  TEST_FP_W_VV_FUSED_OP_rd14( 67,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+1664, rs2_data+832, rs1_data+832);
  TEST_FP_W_VV_FUSED_OP_114( 68,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+1664, rs2_data+832, rs1_data+832);
  TEST_FP_W_VV_FUSED_OP_115( 69,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+1792, rs2_data+896, rs1_data+896);
  TEST_FP_W_VV_FUSED_OP_117( 70,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+2048, rs2_data+1024, rs1_data+1024);
  TEST_FP_W_VV_FUSED_OP_rd18( 71,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+2176, rs2_data+1088, rs1_data+1088);
  TEST_FP_W_VV_FUSED_OP_118( 72,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+2176, rs2_data+1088, rs1_data+1088);
  TEST_FP_W_VV_FUSED_OP_119( 73,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+2304, rs2_data+1152, rs1_data+1152);
  TEST_FP_W_VV_FUSED_OP_rd20( 74,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+2432, rs2_data+1216, rs1_data+1216);
  TEST_FP_W_VV_FUSED_OP_120( 75,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+2432, rs2_data+1216, rs1_data+1216);
  TEST_FP_W_VV_FUSED_OP_121( 76,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+2560, rs2_data+1280, rs1_data+1280);
  TEST_FP_W_VV_FUSED_OP_rd22( 77,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+2688, rs2_data+1344, rs1_data+1344);
  TEST_FP_W_VV_FUSED_OP_122( 78,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+2688, rs2_data+1344, rs1_data+1344);
  TEST_FP_W_VV_FUSED_OP_123( 79,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+2816, rs2_data+1408, rs1_data+1408);
  TEST_FP_W_VV_FUSED_OP_125( 80,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+3072, rs2_data+1536, rs1_data+1536);
  TEST_FP_W_VV_FUSED_OP_rd26( 81,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+3200, rs2_data+1600, rs1_data+1600);
  TEST_FP_W_VV_FUSED_OP_126( 82,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+3200, rs2_data+1600, rs1_data+1600);
  TEST_FP_W_VV_FUSED_OP_127( 83,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+3328, rs2_data+1664, rs1_data+1664);
  TEST_FP_W_VV_FUSED_OP_rd28( 84,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+3456, rs2_data+1728, rs1_data+1728);
  TEST_FP_W_VV_FUSED_OP_128( 85,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+3456, rs2_data+1728, rs1_data+1728);
  TEST_FP_W_VV_FUSED_OP_129( 86,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+3584, rs2_data+1792, rs1_data+1792);
  TEST_FP_W_VV_FUSED_OP_rd30( 87,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+3712, rs2_data+1856, rs1_data+1856);
  TEST_FP_W_VV_FUSED_OP_130( 88,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+3712, rs2_data+1856, rs1_data+1856);
  TEST_FP_W_VV_FUSED_OP_131( 89,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+3840, rs2_data+1920, rs1_data+1920);
  TEST_FP_W_VV_FUSED_OP_11( 90,  vfwmacc.vv, 0x0000000000000001, rd_data_vv+3968, rs2_data+1984, rs1_data+1984);
  #-------------------------------------------------------------
  # VF Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
TEST_FP_W_VF_FUSED_OP_RV( 91,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+0, rs2_data+0, rs1_data+0);
TEST_FP_W_VF_FUSED_OP_RV( 92,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+128, rs2_data+64, rs1_data+64);
TEST_FP_W_VF_FUSED_OP_RV( 93,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+256, rs2_data+128, rs1_data+128);
TEST_FP_W_VF_FUSED_OP_RV( 94,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+384, rs2_data+192, rs1_data+192);
TEST_FP_W_VF_FUSED_OP_RV( 95,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+512, rs2_data+256, rs1_data+256);
TEST_FP_W_VF_FUSED_OP_RV( 96,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+640, rs2_data+320, rs1_data+320);
TEST_FP_W_VF_FUSED_OP_RV( 97,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+768, rs2_data+384, rs1_data+384);
TEST_FP_W_VF_FUSED_OP_RV( 98,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+896, rs2_data+448, rs1_data+448);
TEST_FP_W_VF_FUSED_OP_RV( 99,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+1024, rs2_data+512, rs1_data+512);
TEST_FP_W_VF_FUSED_OP_RV( 100,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+1152, rs2_data+576, rs1_data+576);
TEST_FP_W_VF_FUSED_OP_RV( 101,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+1280, rs2_data+640, rs1_data+640);
TEST_FP_W_VF_FUSED_OP_RV( 102,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+1408, rs2_data+704, rs1_data+704);
TEST_FP_W_VF_FUSED_OP_RV( 103,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+1536, rs2_data+768, rs1_data+768);
TEST_FP_W_VF_FUSED_OP_RV( 104,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+1664, rs2_data+832, rs1_data+832);
TEST_FP_W_VF_FUSED_OP_RV( 105,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+1792, rs2_data+896, rs1_data+896);
TEST_FP_W_VF_FUSED_OP_RV( 106,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+1920, rs2_data+960, rs1_data+960);
TEST_FP_W_VF_FUSED_OP_RV( 107,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+2048, rs2_data+1024, rs1_data+1024);
TEST_FP_W_VF_FUSED_OP_RV( 108,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+2176, rs2_data+1088, rs1_data+1088);
TEST_FP_W_VF_FUSED_OP_RV( 109,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+2304, rs2_data+1152, rs1_data+1152);
TEST_FP_W_VF_FUSED_OP_RV( 110,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+2432, rs2_data+1216, rs1_data+1216);
TEST_FP_W_VF_FUSED_OP_RV( 111,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+2560, rs2_data+1280, rs1_data+1280);
TEST_FP_W_VF_FUSED_OP_RV( 112,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+2688, rs2_data+1344, rs1_data+1344);
TEST_FP_W_VF_FUSED_OP_RV( 113,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+2816, rs2_data+1408, rs1_data+1408);
TEST_FP_W_VF_FUSED_OP_RV( 114,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+2944, rs2_data+1472, rs1_data+1472);
TEST_FP_W_VF_FUSED_OP_RV( 115,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+3072, rs2_data+1536, rs1_data+1536);
TEST_FP_W_VF_FUSED_OP_RV( 116,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+3200, rs2_data+1600, rs1_data+1600);
TEST_FP_W_VF_FUSED_OP_RV( 117,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+3328, rs2_data+1664, rs1_data+1664);
TEST_FP_W_VF_FUSED_OP_RV( 118,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+3456, rs2_data+1728, rs1_data+1728);
TEST_FP_W_VF_FUSED_OP_RV( 119,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+3584, rs2_data+1792, rs1_data+1792);
TEST_FP_W_VF_FUSED_OP_RV( 120,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+3712, rs2_data+1856, rs1_data+1856);
TEST_FP_W_VF_FUSED_OP_RV( 121,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+3840, rs2_data+1920, rs1_data+1920);
TEST_FP_W_VF_FUSED_OP_RV( 122,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+3968, rs2_data+1984, rs1_data+1984);
TEST_FP_W_VF_FUSED_OP_RV( 123,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+4096, rs2_data+2048, rs1_data+2048);
TEST_FP_W_VF_FUSED_OP_RV( 124,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+4224, rs2_data+2112, rs1_data+2112);
TEST_FP_W_VF_FUSED_OP_RV( 125,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+4352, rs2_data+2176, rs1_data+2176);
TEST_FP_W_VF_FUSED_OP_RV( 126,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+4480, rs2_data+2240, rs1_data+2240);
TEST_FP_W_VF_FUSED_OP_RV( 127,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+4608, rs2_data+2304, rs1_data+2304);
TEST_FP_W_VF_FUSED_OP_RV( 128,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+4736, rs2_data+2368, rs1_data+2368);
TEST_FP_W_VF_FUSED_OP_RV( 129,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+4864, rs2_data+2432, rs1_data+2432);
TEST_FP_W_VF_FUSED_OP_RV( 130,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+4992, rs2_data+2496, rs1_data+2496);
TEST_FP_W_VF_FUSED_OP_RV( 131,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+5120, rs2_data+2560, rs1_data+2560);
TEST_FP_W_VF_FUSED_OP_RV( 132,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+5248, rs2_data+2624, rs1_data+2624);
TEST_FP_W_VF_FUSED_OP_RV( 133,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+5376, rs2_data+2688, rs1_data+2688);
TEST_FP_W_VF_FUSED_OP_RV( 134,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+5504, rs2_data+2752, rs1_data+2752);
TEST_FP_W_VF_FUSED_OP_RV( 135,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+5632, rs2_data+2816, rs1_data+2816);
TEST_FP_W_VF_FUSED_OP_RV( 136,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+5760, rs2_data+2880, rs1_data+2880);
TEST_FP_W_VF_FUSED_OP_RV( 137,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+5888, rs2_data+2944, rs1_data+2944);
TEST_FP_W_VF_FUSED_OP_RV( 138,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+6016, rs2_data+3008, rs1_data+3008);
TEST_FP_W_VF_FUSED_OP_RV( 139,  vfwmacc.vf, 0x0000000000000001, rd_data_vf+6144, rs2_data+3072, rs1_data+3072);
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
.align 8
rs1_data_widen:
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

.align 4
rs2_data:
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
.align 8
rs2_data_widen:
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

.align 8
rd_data_vv:
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62

rd_data_vf:
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x74daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x547cdce38085dbf1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xea0309d7ce7483a6
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
    

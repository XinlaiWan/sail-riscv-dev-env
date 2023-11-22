#----------------------------------------------------------------------------- 
    # vfnmacc.S
    #-----------------------------------------------------------------------------
    #
    # Test vfnmacc instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vfnmacc)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_FP_VV_FUSED_OP 
#define TEST_FP_VV_FUSED_OP( testnum, inst, flags, result, val1, val2 ) \
    TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
        VSET_VSEW_4AVL \
        la x7, val1; \
        vle32.v v8, (x7); \
        la x7, val2; \
        vle32.v v16, (x7); \
        la x7, rd_origin_data; \
        vle32.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            inst v24, v8, v16, v0.t; \
    )
#undef TEST_FP_VF_FUSED_OP_RV 
#define TEST_FP_VF_FUSED_OP_RV( testnum, inst, flags, result, val1, val2 ) \
    TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
        VSET_VSEW_4AVL \
        la x7, val1; \
        vle32.v v8, (x7); \
        la x7, val2; \
        flw f1, (x7); \
        la x7, rd_origin_data; \
        vle32.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            inst v24, f1, v8, v0.t; \
    )
#define TEST_FP_VV_FUSED_OP_11( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v1, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v1, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_12( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v2, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v2, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_13( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v3, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v3, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_14( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v4, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v4, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_15( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v5, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v5, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_16( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v6, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v6, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_17( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v7, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v7, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_18( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_19( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v9, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v9, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_110( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v10, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v10, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_111( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v11, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v11, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_112( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v12, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v12, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_113( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v13, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v13, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_114( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v14, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v14, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_115( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v15, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v15, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_116( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_117( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v17, (x7); \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v17, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_118( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v18, (x7); \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v18, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_119( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v19, (x7); \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v19, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_120( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v20, (x7); \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v20, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_121( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v21, (x7); \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v21, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_122( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v22, (x7); \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v22, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_123( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v23, (x7); \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v23, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_124( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_125( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v25, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v25, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_126( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v26, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v26, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_127( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v27, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v27, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_128( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v28, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v28, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_129( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v29, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v29, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_130( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v30, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v30, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_131( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v31, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v31, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd1( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v1, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v1, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v1, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd2( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v2, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v2, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v2, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd3( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v3, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v3, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v3, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd4( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v4, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v4, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v4, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd5( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v5, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v5, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v5, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd6( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v6, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v6, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v6, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd7( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v7, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v7, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v7, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd8( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v8, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd9( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v9, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle32.v v9, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v9, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd10( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v10, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle32.v v10, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v10, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd11( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v11, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle32.v v11, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v11, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd12( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v12, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle32.v v12, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v12, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd13( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v13, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle32.v v13, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v13, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd14( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v14, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle32.v v14, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v14, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd15( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v15, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                la x7, rd_origin_data; \
                vle32.v v15, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v15, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd16( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v16, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd17( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v17, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle32.v v17, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v17, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd18( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v18, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle32.v v18, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v18, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd19( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v19, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle32.v v19, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v19, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd20( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v20, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle32.v v20, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v20, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd21( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v21, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle32.v v21, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v21, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd22( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v22, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle32.v v22, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v22, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd23( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v23, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v24, (x7); \
                la x7, rd_origin_data; \
                vle32.v v23, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v23, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd24( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd25( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v25, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v25, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v25, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd26( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v26, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v26, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v26, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd27( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v27, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v27, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v27, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd28( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v28, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v28, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v28, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd29( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v29, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v29, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v29, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd30( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v30, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v30, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v30, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd31( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v31, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v16, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v31, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v31, v16, v8, v0.t; \
        )
#define TEST_FP_VF_FUSED_OP_RV_rs1_1( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f1, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f1, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_3( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f3, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f3, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_4( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f4, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f4, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_5( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f5, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f5, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_6( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f6, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f6, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_7( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f7, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f7, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_8( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f8, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f8, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_9( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f9, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f9, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_10( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f10, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f10, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_11( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f11, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f11, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_12( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f12, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f12, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_13( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f13, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f13, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_14( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f14, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f14, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_15( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f15, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f15, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_16( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f16, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f16, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_17( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f17, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f17, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_18( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f18, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f18, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_19( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f19, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f19, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_20( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f20, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f20, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_21( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f21, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f21, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_22( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f22, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f22, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_23( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f23, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f23, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_24( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f24, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f24, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_25( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f25, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f25, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_26( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f26, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f26, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_27( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f27, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f27, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_28( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f28, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f28, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_29( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f29, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f29, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_30( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f30, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f30, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_31( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                flw f31, (x7); \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst v24, f31, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rd_2( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v2, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v2, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v2, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_3( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v3, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v3, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v3, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_4( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v4, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v4, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v4, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_5( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v5, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v5, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v5, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_6( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v6, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v6, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v6, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_7( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v7, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v7, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v7, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_8( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v8, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_9( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v9, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v9, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v9, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_10( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v10, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v10, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v10, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_11( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v11, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v11, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v11, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_12( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v12, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v12, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v12, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_13( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v13, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v13, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v13, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_14( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v14, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v14, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v14, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_15( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v15, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v15, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v15, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_16( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v16, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_17( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v17, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v17, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v17, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_18( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v18, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v18, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v18, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_19( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v19, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v19, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v19, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_20( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v20, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v20, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v20, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_21( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v21, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v21, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v21, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_22( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v22, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v22, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v22, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_23( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v23, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v23, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v23, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_24( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v24, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_25( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v25, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v25, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v25, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_26( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v26, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v26, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v26, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_27( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v27, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v27, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v27, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_28( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v28, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v28, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v28, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_29( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v29, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v29, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v29, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_30( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v30, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v30, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v30, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_31( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v31, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            flw f1, (x7); \
            la x7, rd_origin_data; \
            vle32.v v31, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                inst v31, f1, v8, v0.t;  \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_FP_VV_FUSED_OP( 1,  vfnmacc.vv, 0x0000000000000001,  rd_data_vv+0, rs2_data+0, rs1_data+0);
TEST_FP_VV_FUSED_OP( 2,  vfnmacc.vv, 0x0000000000000001,  rd_data_vv+32, rs2_data+32, rs1_data+32);
TEST_FP_VV_FUSED_OP( 3,  vfnmacc.vv, 0x0000000000000001,  rd_data_vv+64, rs2_data+64, rs1_data+64);
TEST_FP_VV_FUSED_OP( 4,  vfnmacc.vv, 0x0000000000000001,  rd_data_vv+96, rs2_data+96, rs1_data+96);
TEST_FP_VV_FUSED_OP( 5,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+128, rs2_data+128, rs1_data+128);
TEST_FP_VV_FUSED_OP( 6,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+160, rs2_data+160, rs1_data+160);
TEST_FP_VV_FUSED_OP( 7,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+192, rs2_data+192, rs1_data+192);
TEST_FP_VV_FUSED_OP( 8,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+224, rs2_data+224, rs1_data+224);
TEST_FP_VV_FUSED_OP( 9,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+256, rs2_data+256, rs1_data+256);
TEST_FP_VV_FUSED_OP( 10,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+288, rs2_data+288, rs1_data+288);
TEST_FP_VV_FUSED_OP( 11,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+320, rs2_data+320, rs1_data+320);
TEST_FP_VV_FUSED_OP( 12,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+352, rs2_data+352, rs1_data+352);
TEST_FP_VV_FUSED_OP( 13,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+384, rs2_data+384, rs1_data+384);
TEST_FP_VV_FUSED_OP( 14,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+416, rs2_data+416, rs1_data+416);
TEST_FP_VV_FUSED_OP( 15,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+448, rs2_data+448, rs1_data+448);
TEST_FP_VV_FUSED_OP( 16,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+480, rs2_data+480, rs1_data+480);
TEST_FP_VV_FUSED_OP( 17,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+512, rs2_data+512, rs1_data+512);
TEST_FP_VV_FUSED_OP( 18,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+544, rs2_data+544, rs1_data+544);
TEST_FP_VV_FUSED_OP( 19,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+576, rs2_data+576, rs1_data+576);
TEST_FP_VV_FUSED_OP( 20,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+608, rs2_data+608, rs1_data+608);
TEST_FP_VV_FUSED_OP( 21,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+640, rs2_data+640, rs1_data+640);
TEST_FP_VV_FUSED_OP( 22,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+672, rs2_data+672, rs1_data+672);
TEST_FP_VV_FUSED_OP( 23,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+704, rs2_data+704, rs1_data+704);
TEST_FP_VV_FUSED_OP( 24,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+736, rs2_data+736, rs1_data+736);
TEST_FP_VV_FUSED_OP( 25,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+768, rs2_data+768, rs1_data+768);
TEST_FP_VV_FUSED_OP( 26,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+800, rs2_data+800, rs1_data+800);
TEST_FP_VV_FUSED_OP( 27,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+832, rs2_data+832, rs1_data+832);
TEST_FP_VV_FUSED_OP( 28,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+864, rs2_data+864, rs1_data+864);
TEST_FP_VV_FUSED_OP( 29,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+896, rs2_data+896, rs1_data+896);
TEST_FP_VV_FUSED_OP( 30,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+928, rs2_data+928, rs1_data+928);
TEST_FP_VV_FUSED_OP( 31,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+960, rs2_data+960, rs1_data+960);
TEST_FP_VV_FUSED_OP( 32,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+992, rs2_data+992, rs1_data+992);
TEST_FP_VV_FUSED_OP( 33,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1024, rs2_data+1024, rs1_data+1024);
TEST_FP_VV_FUSED_OP( 34,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1056, rs2_data+1056, rs1_data+1056);
TEST_FP_VV_FUSED_OP( 35,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1088, rs2_data+1088, rs1_data+1088);
TEST_FP_VV_FUSED_OP( 36,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1120, rs2_data+1120, rs1_data+1120);
TEST_FP_VV_FUSED_OP( 37,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1152, rs2_data+1152, rs1_data+1152);
TEST_FP_VV_FUSED_OP( 38,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1184, rs2_data+1184, rs1_data+1184);
TEST_FP_VV_FUSED_OP( 39,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1216, rs2_data+1216, rs1_data+1216);
TEST_FP_VV_FUSED_OP( 40,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1248, rs2_data+1248, rs1_data+1248);
TEST_FP_VV_FUSED_OP( 41,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1280, rs2_data+1280, rs1_data+1280);
TEST_FP_VV_FUSED_OP( 42,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1312, rs2_data+1312, rs1_data+1312);
TEST_FP_VV_FUSED_OP( 43,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1344, rs2_data+1344, rs1_data+1344);
TEST_FP_VV_FUSED_OP( 44,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1376, rs2_data+1376, rs1_data+1376);
TEST_FP_VV_FUSED_OP( 45,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1408, rs2_data+1408, rs1_data+1408);
TEST_FP_VV_FUSED_OP( 46,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1440, rs2_data+1440, rs1_data+1440);
TEST_FP_VV_FUSED_OP( 47,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1472, rs2_data+1472, rs1_data+1472);
TEST_FP_VV_FUSED_OP( 48,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1504, rs2_data+1504, rs1_data+1504);
TEST_FP_VV_FUSED_OP( 49,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1536, rs2_data+1536, rs1_data+1536);
TEST_FP_VV_FUSED_OP( 50,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1568, rs2_data+1568, rs1_data+1568);
TEST_FP_VV_FUSED_OP( 51,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1600, rs2_data+1600, rs1_data+1600);
TEST_FP_VV_FUSED_OP( 52,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1632, rs2_data+1632, rs1_data+1632);
TEST_FP_VV_FUSED_OP( 53,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1664, rs2_data+1664, rs1_data+1664);
TEST_FP_VV_FUSED_OP( 54,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1696, rs2_data+1696, rs1_data+1696);
TEST_FP_VV_FUSED_OP( 55,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1728, rs2_data+1728, rs1_data+1728);
TEST_FP_VV_FUSED_OP( 56,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1760, rs2_data+1760, rs1_data+1760);
TEST_FP_VV_FUSED_OP( 57,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1792, rs2_data+1792, rs1_data+1792);
TEST_FP_VV_FUSED_OP( 58,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1824, rs2_data+1824, rs1_data+1824);
TEST_FP_VV_FUSED_OP( 59,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1856, rs2_data+1856, rs1_data+1856);
TEST_FP_VV_FUSED_OP( 60,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1888, rs2_data+1888, rs1_data+1888);
TEST_FP_VV_FUSED_OP( 61,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1920, rs2_data+1920, rs1_data+1920);
TEST_FP_VV_FUSED_OP( 62,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1952, rs2_data+1952, rs1_data+1952);
TEST_FP_VV_FUSED_OP( 63,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+1984, rs2_data+1984, rs1_data+1984);
TEST_FP_VV_FUSED_OP( 64,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2016, rs2_data+2016, rs1_data+2016);
TEST_FP_VV_FUSED_OP( 65,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2048, rs2_data+2048, rs1_data+2048);
TEST_FP_VV_FUSED_OP( 66,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2080, rs2_data+2080, rs1_data+2080);
TEST_FP_VV_FUSED_OP( 67,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2112, rs2_data+2112, rs1_data+2112);
TEST_FP_VV_FUSED_OP( 68,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2144, rs2_data+2144, rs1_data+2144);
TEST_FP_VV_FUSED_OP( 69,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2176, rs2_data+2176, rs1_data+2176);
TEST_FP_VV_FUSED_OP( 70,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2208, rs2_data+2208, rs1_data+2208);
TEST_FP_VV_FUSED_OP( 71,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2240, rs2_data+2240, rs1_data+2240);
TEST_FP_VV_FUSED_OP( 72,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2272, rs2_data+2272, rs1_data+2272);
TEST_FP_VV_FUSED_OP( 73,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2304, rs2_data+2304, rs1_data+2304);
TEST_FP_VV_FUSED_OP( 74,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2336, rs2_data+2336, rs1_data+2336);
TEST_FP_VV_FUSED_OP( 75,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2368, rs2_data+2368, rs1_data+2368);
TEST_FP_VV_FUSED_OP( 76,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2400, rs2_data+2400, rs1_data+2400);
TEST_FP_VV_FUSED_OP( 77,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2432, rs2_data+2432, rs1_data+2432);
TEST_FP_VV_FUSED_OP( 78,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2464, rs2_data+2464, rs1_data+2464);
TEST_FP_VV_FUSED_OP( 79,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2496, rs2_data+2496, rs1_data+2496);
TEST_FP_VV_FUSED_OP( 80,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2528, rs2_data+2528, rs1_data+2528);
TEST_FP_VV_FUSED_OP( 81,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2560, rs2_data+2560, rs1_data+2560);
TEST_FP_VV_FUSED_OP( 82,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2592, rs2_data+2592, rs1_data+2592);
TEST_FP_VV_FUSED_OP( 83,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2624, rs2_data+2624, rs1_data+2624);
TEST_FP_VV_FUSED_OP( 84,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2656, rs2_data+2656, rs1_data+2656);
TEST_FP_VV_FUSED_OP( 85,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2688, rs2_data+2688, rs1_data+2688);
TEST_FP_VV_FUSED_OP( 86,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2720, rs2_data+2720, rs1_data+2720);
TEST_FP_VV_FUSED_OP( 87,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2752, rs2_data+2752, rs1_data+2752);
TEST_FP_VV_FUSED_OP( 88,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2784, rs2_data+2784, rs1_data+2784);
TEST_FP_VV_FUSED_OP( 89,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2816, rs2_data+2816, rs1_data+2816);
TEST_FP_VV_FUSED_OP( 90,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2848, rs2_data+2848, rs1_data+2848);
TEST_FP_VV_FUSED_OP( 91,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2880, rs2_data+2880, rs1_data+2880);
TEST_FP_VV_FUSED_OP( 92,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2912, rs2_data+2912, rs1_data+2912);
TEST_FP_VV_FUSED_OP( 93,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2944, rs2_data+2944, rs1_data+2944);
TEST_FP_VV_FUSED_OP( 94,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+2976, rs2_data+2976, rs1_data+2976);
TEST_FP_VV_FUSED_OP( 95,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+3008, rs2_data+3008, rs1_data+3008);
TEST_FP_VV_FUSED_OP( 96,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+3040, rs2_data+3040, rs1_data+3040);
TEST_FP_VV_FUSED_OP( 97,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+3072, rs2_data+3072, rs1_data+3072);
TEST_FP_VV_FUSED_OP( 98,  vfnmacc.vv, 0x0000000000000005,  rd_data_vv+3104, rs2_data+3104, rs1_data+3104);
  #-------------------------------------------------------------
  # VV Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_FP_VV_FUSED_OP_rd1( 99,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+0, rs2_data+0, rs1_data+0);
  TEST_FP_VV_FUSED_OP_11( 100,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+0, rs2_data+0, rs1_data+0);
  TEST_FP_VV_FUSED_OP_rd2( 101,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+32, rs2_data+32, rs1_data+32);
  TEST_FP_VV_FUSED_OP_12( 102,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+32, rs2_data+32, rs1_data+32);
  TEST_FP_VV_FUSED_OP_rd3( 103,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+64, rs2_data+64, rs1_data+64);
  TEST_FP_VV_FUSED_OP_13( 104,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+64, rs2_data+64, rs1_data+64);
  TEST_FP_VV_FUSED_OP_rd4( 105,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+96, rs2_data+96, rs1_data+96);
  TEST_FP_VV_FUSED_OP_14( 106,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+96, rs2_data+96, rs1_data+96);
  TEST_FP_VV_FUSED_OP_rd5( 107,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+128, rs2_data+128, rs1_data+128);
  TEST_FP_VV_FUSED_OP_15( 108,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+128, rs2_data+128, rs1_data+128);
  TEST_FP_VV_FUSED_OP_rd6( 109,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+160, rs2_data+160, rs1_data+160);
  TEST_FP_VV_FUSED_OP_16( 110,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+160, rs2_data+160, rs1_data+160);
  TEST_FP_VV_FUSED_OP_rd7( 111,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+192, rs2_data+192, rs1_data+192);
  TEST_FP_VV_FUSED_OP_17( 112,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+192, rs2_data+192, rs1_data+192);
  TEST_FP_VV_FUSED_OP_rd9( 113,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+256, rs2_data+256, rs1_data+256);
  TEST_FP_VV_FUSED_OP_19( 114,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+256, rs2_data+256, rs1_data+256);
  TEST_FP_VV_FUSED_OP_rd10( 115,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+288, rs2_data+288, rs1_data+288);
  TEST_FP_VV_FUSED_OP_110( 116,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+288, rs2_data+288, rs1_data+288);
  TEST_FP_VV_FUSED_OP_rd11( 117,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+320, rs2_data+320, rs1_data+320);
  TEST_FP_VV_FUSED_OP_111( 118,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+320, rs2_data+320, rs1_data+320);
  TEST_FP_VV_FUSED_OP_rd12( 119,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+352, rs2_data+352, rs1_data+352);
  TEST_FP_VV_FUSED_OP_112( 120,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+352, rs2_data+352, rs1_data+352);
  TEST_FP_VV_FUSED_OP_rd13( 121,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+384, rs2_data+384, rs1_data+384);
  TEST_FP_VV_FUSED_OP_113( 122,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+384, rs2_data+384, rs1_data+384);
  TEST_FP_VV_FUSED_OP_rd14( 123,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+416, rs2_data+416, rs1_data+416);
  TEST_FP_VV_FUSED_OP_114( 124,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+416, rs2_data+416, rs1_data+416);
  TEST_FP_VV_FUSED_OP_rd15( 125,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+448, rs2_data+448, rs1_data+448);
  TEST_FP_VV_FUSED_OP_115( 126,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+448, rs2_data+448, rs1_data+448);
  TEST_FP_VV_FUSED_OP_rd17( 127,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+512, rs2_data+512, rs1_data+512);
  TEST_FP_VV_FUSED_OP_117( 128,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+512, rs2_data+512, rs1_data+512);
  TEST_FP_VV_FUSED_OP_rd18( 129,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+544, rs2_data+544, rs1_data+544);
  TEST_FP_VV_FUSED_OP_118( 130,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+544, rs2_data+544, rs1_data+544);
  TEST_FP_VV_FUSED_OP_rd19( 131,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+576, rs2_data+576, rs1_data+576);
  TEST_FP_VV_FUSED_OP_119( 132,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+576, rs2_data+576, rs1_data+576);
  TEST_FP_VV_FUSED_OP_rd20( 133,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+608, rs2_data+608, rs1_data+608);
  TEST_FP_VV_FUSED_OP_120( 134,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+608, rs2_data+608, rs1_data+608);
  TEST_FP_VV_FUSED_OP_rd21( 135,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+640, rs2_data+640, rs1_data+640);
  TEST_FP_VV_FUSED_OP_121( 136,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+640, rs2_data+640, rs1_data+640);
  TEST_FP_VV_FUSED_OP_rd22( 137,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+672, rs2_data+672, rs1_data+672);
  TEST_FP_VV_FUSED_OP_122( 138,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+672, rs2_data+672, rs1_data+672);
  TEST_FP_VV_FUSED_OP_rd23( 139,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+704, rs2_data+704, rs1_data+704);
  TEST_FP_VV_FUSED_OP_123( 140,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+704, rs2_data+704, rs1_data+704);
  TEST_FP_VV_FUSED_OP_rd25( 141,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+768, rs2_data+768, rs1_data+768);
  TEST_FP_VV_FUSED_OP_125( 142,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+768, rs2_data+768, rs1_data+768);
  TEST_FP_VV_FUSED_OP_rd26( 143,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+800, rs2_data+800, rs1_data+800);
  TEST_FP_VV_FUSED_OP_126( 144,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+800, rs2_data+800, rs1_data+800);
  TEST_FP_VV_FUSED_OP_rd27( 145,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+832, rs2_data+832, rs1_data+832);
  TEST_FP_VV_FUSED_OP_127( 146,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+832, rs2_data+832, rs1_data+832);
  TEST_FP_VV_FUSED_OP_rd28( 147,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+864, rs2_data+864, rs1_data+864);
  TEST_FP_VV_FUSED_OP_128( 148,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+864, rs2_data+864, rs1_data+864);
  TEST_FP_VV_FUSED_OP_rd29( 149,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+896, rs2_data+896, rs1_data+896);
  TEST_FP_VV_FUSED_OP_129( 150,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+896, rs2_data+896, rs1_data+896);
  TEST_FP_VV_FUSED_OP_rd30( 151,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+928, rs2_data+928, rs1_data+928);
  TEST_FP_VV_FUSED_OP_130( 152,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+928, rs2_data+928, rs1_data+928);
  TEST_FP_VV_FUSED_OP_rd31( 153,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+960, rs2_data+960, rs1_data+960);
  TEST_FP_VV_FUSED_OP_131( 154,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+960, rs2_data+960, rs1_data+960);
  TEST_FP_VV_FUSED_OP_rd1( 155,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+992, rs2_data+992, rs1_data+992);
  TEST_FP_VV_FUSED_OP_11( 156,  vfnmacc.vv, 0x0000000000000005, rd_data_vv+992, rs2_data+992, rs1_data+992);
  #-------------------------------------------------------------
  # VF Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
TEST_FP_VF_FUSED_OP_RV( 157,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+0, rs2_data+0, rs1_data+0);
TEST_FP_VF_FUSED_OP_RV( 158,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+32, rs2_data+32, rs1_data+32);
TEST_FP_VF_FUSED_OP_RV( 159,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+64, rs2_data+64, rs1_data+64);
TEST_FP_VF_FUSED_OP_RV( 160,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+96, rs2_data+96, rs1_data+96);
TEST_FP_VF_FUSED_OP_RV( 161,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+128, rs2_data+128, rs1_data+128);
TEST_FP_VF_FUSED_OP_RV( 162,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+160, rs2_data+160, rs1_data+160);
TEST_FP_VF_FUSED_OP_RV( 163,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+192, rs2_data+192, rs1_data+192);
TEST_FP_VF_FUSED_OP_RV( 164,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+224, rs2_data+224, rs1_data+224);
TEST_FP_VF_FUSED_OP_RV( 165,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+256, rs2_data+256, rs1_data+256);
TEST_FP_VF_FUSED_OP_RV( 166,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+288, rs2_data+288, rs1_data+288);
TEST_FP_VF_FUSED_OP_RV( 167,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+320, rs2_data+320, rs1_data+320);
TEST_FP_VF_FUSED_OP_RV( 168,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+352, rs2_data+352, rs1_data+352);
TEST_FP_VF_FUSED_OP_RV( 169,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+384, rs2_data+384, rs1_data+384);
TEST_FP_VF_FUSED_OP_RV( 170,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+416, rs2_data+416, rs1_data+416);
TEST_FP_VF_FUSED_OP_RV( 171,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+448, rs2_data+448, rs1_data+448);
TEST_FP_VF_FUSED_OP_RV( 172,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+480, rs2_data+480, rs1_data+480);
TEST_FP_VF_FUSED_OP_RV( 173,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+512, rs2_data+512, rs1_data+512);
TEST_FP_VF_FUSED_OP_RV( 174,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+544, rs2_data+544, rs1_data+544);
TEST_FP_VF_FUSED_OP_RV( 175,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+576, rs2_data+576, rs1_data+576);
TEST_FP_VF_FUSED_OP_RV( 176,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+608, rs2_data+608, rs1_data+608);
TEST_FP_VF_FUSED_OP_RV( 177,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+640, rs2_data+640, rs1_data+640);
TEST_FP_VF_FUSED_OP_RV( 178,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+672, rs2_data+672, rs1_data+672);
TEST_FP_VF_FUSED_OP_RV( 179,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+704, rs2_data+704, rs1_data+704);
TEST_FP_VF_FUSED_OP_RV( 180,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+736, rs2_data+736, rs1_data+736);
TEST_FP_VF_FUSED_OP_RV( 181,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+768, rs2_data+768, rs1_data+768);
TEST_FP_VF_FUSED_OP_RV( 182,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+800, rs2_data+800, rs1_data+800);
TEST_FP_VF_FUSED_OP_RV( 183,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+832, rs2_data+832, rs1_data+832);
TEST_FP_VF_FUSED_OP_RV( 184,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+864, rs2_data+864, rs1_data+864);
TEST_FP_VF_FUSED_OP_RV( 185,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+896, rs2_data+896, rs1_data+896);
TEST_FP_VF_FUSED_OP_RV( 186,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+928, rs2_data+928, rs1_data+928);
TEST_FP_VF_FUSED_OP_RV( 187,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+960, rs2_data+960, rs1_data+960);
TEST_FP_VF_FUSED_OP_RV( 188,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+992, rs2_data+992, rs1_data+992);
TEST_FP_VF_FUSED_OP_RV( 189,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1024, rs2_data+1024, rs1_data+1024);
TEST_FP_VF_FUSED_OP_RV( 190,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1056, rs2_data+1056, rs1_data+1056);
TEST_FP_VF_FUSED_OP_RV( 191,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1088, rs2_data+1088, rs1_data+1088);
TEST_FP_VF_FUSED_OP_RV( 192,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1120, rs2_data+1120, rs1_data+1120);
TEST_FP_VF_FUSED_OP_RV( 193,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1152, rs2_data+1152, rs1_data+1152);
TEST_FP_VF_FUSED_OP_RV( 194,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1184, rs2_data+1184, rs1_data+1184);
TEST_FP_VF_FUSED_OP_RV( 195,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1216, rs2_data+1216, rs1_data+1216);
TEST_FP_VF_FUSED_OP_RV( 196,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1248, rs2_data+1248, rs1_data+1248);
TEST_FP_VF_FUSED_OP_RV( 197,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1280, rs2_data+1280, rs1_data+1280);
TEST_FP_VF_FUSED_OP_RV( 198,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1312, rs2_data+1312, rs1_data+1312);
TEST_FP_VF_FUSED_OP_RV( 199,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1344, rs2_data+1344, rs1_data+1344);
TEST_FP_VF_FUSED_OP_RV( 200,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1376, rs2_data+1376, rs1_data+1376);
TEST_FP_VF_FUSED_OP_RV( 201,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1408, rs2_data+1408, rs1_data+1408);
TEST_FP_VF_FUSED_OP_RV( 202,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1440, rs2_data+1440, rs1_data+1440);
TEST_FP_VF_FUSED_OP_RV( 203,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1472, rs2_data+1472, rs1_data+1472);
TEST_FP_VF_FUSED_OP_RV( 204,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1504, rs2_data+1504, rs1_data+1504);
TEST_FP_VF_FUSED_OP_RV( 205,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1536, rs2_data+1536, rs1_data+1536);
TEST_FP_VF_FUSED_OP_RV( 206,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1568, rs2_data+1568, rs1_data+1568);
TEST_FP_VF_FUSED_OP_RV( 207,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1600, rs2_data+1600, rs1_data+1600);
TEST_FP_VF_FUSED_OP_RV( 208,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1632, rs2_data+1632, rs1_data+1632);
TEST_FP_VF_FUSED_OP_RV( 209,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1664, rs2_data+1664, rs1_data+1664);
TEST_FP_VF_FUSED_OP_RV( 210,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1696, rs2_data+1696, rs1_data+1696);
TEST_FP_VF_FUSED_OP_RV( 211,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1728, rs2_data+1728, rs1_data+1728);
TEST_FP_VF_FUSED_OP_RV( 212,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1760, rs2_data+1760, rs1_data+1760);
TEST_FP_VF_FUSED_OP_RV( 213,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1792, rs2_data+1792, rs1_data+1792);
TEST_FP_VF_FUSED_OP_RV( 214,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1824, rs2_data+1824, rs1_data+1824);
TEST_FP_VF_FUSED_OP_RV( 215,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1856, rs2_data+1856, rs1_data+1856);
TEST_FP_VF_FUSED_OP_RV( 216,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1888, rs2_data+1888, rs1_data+1888);
TEST_FP_VF_FUSED_OP_RV( 217,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1920, rs2_data+1920, rs1_data+1920);
TEST_FP_VF_FUSED_OP_RV( 218,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1952, rs2_data+1952, rs1_data+1952);
TEST_FP_VF_FUSED_OP_RV( 219,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+1984, rs2_data+1984, rs1_data+1984);
TEST_FP_VF_FUSED_OP_RV( 220,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2016, rs2_data+2016, rs1_data+2016);
TEST_FP_VF_FUSED_OP_RV( 221,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2048, rs2_data+2048, rs1_data+2048);
TEST_FP_VF_FUSED_OP_RV( 222,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2080, rs2_data+2080, rs1_data+2080);
TEST_FP_VF_FUSED_OP_RV( 223,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2112, rs2_data+2112, rs1_data+2112);
TEST_FP_VF_FUSED_OP_RV( 224,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2144, rs2_data+2144, rs1_data+2144);
TEST_FP_VF_FUSED_OP_RV( 225,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2176, rs2_data+2176, rs1_data+2176);
TEST_FP_VF_FUSED_OP_RV( 226,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2208, rs2_data+2208, rs1_data+2208);
TEST_FP_VF_FUSED_OP_RV( 227,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2240, rs2_data+2240, rs1_data+2240);
TEST_FP_VF_FUSED_OP_RV( 228,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2272, rs2_data+2272, rs1_data+2272);
TEST_FP_VF_FUSED_OP_RV( 229,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2304, rs2_data+2304, rs1_data+2304);
TEST_FP_VF_FUSED_OP_RV( 230,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2336, rs2_data+2336, rs1_data+2336);
TEST_FP_VF_FUSED_OP_RV( 231,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2368, rs2_data+2368, rs1_data+2368);
TEST_FP_VF_FUSED_OP_RV( 232,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2400, rs2_data+2400, rs1_data+2400);
TEST_FP_VF_FUSED_OP_RV( 233,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2432, rs2_data+2432, rs1_data+2432);
TEST_FP_VF_FUSED_OP_RV( 234,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2464, rs2_data+2464, rs1_data+2464);
TEST_FP_VF_FUSED_OP_RV( 235,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2496, rs2_data+2496, rs1_data+2496);
TEST_FP_VF_FUSED_OP_RV( 236,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2528, rs2_data+2528, rs1_data+2528);
TEST_FP_VF_FUSED_OP_RV( 237,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2560, rs2_data+2560, rs1_data+2560);
TEST_FP_VF_FUSED_OP_RV( 238,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2592, rs2_data+2592, rs1_data+2592);
TEST_FP_VF_FUSED_OP_RV( 239,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2624, rs2_data+2624, rs1_data+2624);
TEST_FP_VF_FUSED_OP_RV( 240,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2656, rs2_data+2656, rs1_data+2656);
TEST_FP_VF_FUSED_OP_RV( 241,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2688, rs2_data+2688, rs1_data+2688);
TEST_FP_VF_FUSED_OP_RV( 242,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2720, rs2_data+2720, rs1_data+2720);
TEST_FP_VF_FUSED_OP_RV( 243,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2752, rs2_data+2752, rs1_data+2752);
TEST_FP_VF_FUSED_OP_RV( 244,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2784, rs2_data+2784, rs1_data+2784);
TEST_FP_VF_FUSED_OP_RV( 245,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2816, rs2_data+2816, rs1_data+2816);
TEST_FP_VF_FUSED_OP_RV( 246,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2848, rs2_data+2848, rs1_data+2848);
TEST_FP_VF_FUSED_OP_RV( 247,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2880, rs2_data+2880, rs1_data+2880);
TEST_FP_VF_FUSED_OP_RV( 248,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2912, rs2_data+2912, rs1_data+2912);
TEST_FP_VF_FUSED_OP_RV( 249,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2944, rs2_data+2944, rs1_data+2944);
TEST_FP_VF_FUSED_OP_RV( 250,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+2976, rs2_data+2976, rs1_data+2976);
TEST_FP_VF_FUSED_OP_RV( 251,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+3008, rs2_data+3008, rs1_data+3008);
TEST_FP_VF_FUSED_OP_RV( 252,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+3040, rs2_data+3040, rs1_data+3040);
TEST_FP_VF_FUSED_OP_RV( 253,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+3072, rs2_data+3072, rs1_data+3072);
TEST_FP_VF_FUSED_OP_RV( 254,  vfnmacc.vf, 0x0000000000000005, rd_data_vf+3104, rs2_data+3104, rs1_data+3104);
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
.word	0xe7128ead
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x41f512c8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3917bde6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x78e67fb0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3d4b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xff800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdcb57d87
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf2b4b342
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb9791ac8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2d747b1a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x156cda3c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x121cb608
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe1617a6a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xec35449f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xff800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf2ee8d8d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5e0caccb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb0d868a0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6e0f8c9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x139c97f7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x914cc3eb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd2429e0a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x68732b06
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2651a47e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7018566b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd1000087
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2e004f63
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb40e7253
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6d918d7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9aaf6776
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdd5ae9d3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x668bdb94
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb089a7b6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xec4e7dd0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4888f16b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9d259d9a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd44e4f27
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6d2c8b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa0b0862d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe75b2484
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xca9e1cbf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x71cfdb3c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x52134dfa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfe3fed68
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912dd1b4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbeacf41d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa4eaf182
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55887fbb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xff800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc5269d42
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2a223dde
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x73ede2ce
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x91288dc7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe67eb8c2
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e400b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x939ec1ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe4fcba34
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9beed45f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x49b67374
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaef0b6be
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xff800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4f02a18b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xff800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf2fc7cf0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe7128ead
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe7128ead
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x41f512c8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x41f512c8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3917bde6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3917bde6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x78e67fb0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3d4b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x78e67fb0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3d4b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xff800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xff800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdcb57d87
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdcb57d87
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb9791ac8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb9791ac8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2d747b1a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2d747b1a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x156cda3c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x156cda3c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x121cb608
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x121cb608
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e

rd_data_vf:
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x41f512c8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb917bde6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x78e67fb0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3d4b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc4577dfa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xff800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5cb57d87
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf2b4b342
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe92fa2d5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x39791aca
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xad747b1a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x956e36be
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x121cb608
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd559562c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xff800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xec35449f
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xedf0ab05
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf2ee8d8d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xae5130c7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6e0f8c9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc11ad56e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x6543fa4a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xec2e76a0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x68732b06
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2e8a8285
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7018566b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdcb2afac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x67d90cbf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xe3312a06
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6d918d7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2f29f086
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9e18fd4b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2f2079bb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x29bdd0f1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7f800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xea4166e4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xec4e7dd0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xff800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x6d0cb7ae
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb36f635d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6d2c8b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb2d18d11
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbf0448ee
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3f3a25c0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x46946caf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x71cfdb3c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x65882140
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfe3fed68
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x56bd7254
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd63af992
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xea5191ff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4f519449
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99995315
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfb6f020d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x216622a3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd92352ac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xff800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf2ce8909
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x274f95f4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x914998ce
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x662bf1a4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x91da1780
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7dc0571b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xff800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x97ae5e27
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7f800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbc6de9d3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa3f6ce65
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e

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
    

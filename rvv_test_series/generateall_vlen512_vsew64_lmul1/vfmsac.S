#----------------------------------------------------------------------------- 
    # vfmsac.S
    #-----------------------------------------------------------------------------
    #
    # Test vfmsac instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vfmsac)
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_FP_VV_FUSED_OP 
#define TEST_FP_VV_FUSED_OP( testnum, inst, flags, result, val1, val2 ) \
    TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
        VSET_VSEW_4AVL \
        la x7, val1; \
        vle64.v v8, (x7); \
        la x7, val2; \
        vle64.v v16, (x7); \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        la x7, mask_data; \
    vle64.v v0, (x7); \
            inst v24, v8, v16, v0.t; \
    )
#undef TEST_FP_VF_FUSED_OP_RV 
#define TEST_FP_VF_FUSED_OP_RV( testnum, inst, flags, result, val1, val2 ) \
    TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
        VSET_VSEW_4AVL \
        la x7, val1; \
        vle64.v v8, (x7); \
        la x7, val2; \
        fld f1, (x7); \
        la x7, rd_origin_data; \
        vle64.v v24, (x7); \
        la x7, mask_data; \
    vle64.v v0, (x7); \
            inst v24, f1, v8, v0.t; \
    )
#define TEST_FP_VV_FUSED_OP_11( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v1, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v1, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_12( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v2, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v2, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_13( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v3, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v3, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_14( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v4, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v4, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_15( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v5, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v5, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_16( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v6, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v6, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_17( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v7, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v7, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_18( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_19( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v9, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, v16, v9, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_110( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v10, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, v16, v10, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_111( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v11, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, v16, v11, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_112( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v12, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, v16, v12, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_113( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v13, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, v16, v13, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_114( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v14, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, v16, v14, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_115( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v15, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, v16, v15, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_116( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v8, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_117( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v17, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v8, v24, v17, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_118( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v18, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v8, v24, v18, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_119( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v19, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v8, v24, v19, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_120( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v20, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v8, v24, v20, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_121( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v21, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v8, v24, v21, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_122( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v22, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v8, v24, v22, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_123( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v23, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v8, v24, v23, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_124( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_125( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v25, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v25, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_126( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v26, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v26, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_127( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v27, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v27, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_128( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v28, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v28, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_129( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v29, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v29, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_130( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v30, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v30, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_131( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v31, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v31, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd1( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v1, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v1, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v1, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd2( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v2, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v2, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v2, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd3( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v3, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v3, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v3, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd4( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v4, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v4, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v4, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd5( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v5, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v5, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v5, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd6( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v6, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v6, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v6, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd7( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v7, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v7, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v7, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd8( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v8, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd9( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v9, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v9, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v9, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd10( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v10, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v10, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v10, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd11( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v11, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v11, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v11, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd12( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v12, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v12, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v12, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd13( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v13, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v13, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v13, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd14( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v14, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v14, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v14, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd15( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v15, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v15, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v15, v24, v16, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd16( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v16, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd17( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v17, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v17, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v17, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd18( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v18, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v18, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v18, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd19( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v19, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v19, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v19, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd20( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v20, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v20, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v20, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd21( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v21, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v21, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v21, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd22( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v22, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v22, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v22, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd23( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v23, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v23, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v23, v8, v24, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd24( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd25( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v25, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v25, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v25, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd26( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v26, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v26, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v26, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd27( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v27, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v27, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v27, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd28( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v28, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v28, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v28, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd29( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v29, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v29, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v29, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd30( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v30, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v30, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v30, v16, v8, v0.t; \
        )
#define TEST_FP_VV_FUSED_OP_rd31( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v31, flags, result, v8, \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v16, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v31, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v31, v16, v8, v0.t; \
        )
#define TEST_FP_VF_FUSED_OP_RV_rs1_1( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f1, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_3( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f3, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f3, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_4( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f4, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f4, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_5( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f5, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f5, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_6( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f6, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f6, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_7( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f7, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f7, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_8( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f8, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f8, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_9( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f9, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f9, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_10( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f10, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f10, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_11( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f11, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f11, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_12( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f12, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f12, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_13( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f13, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f13, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_14( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f14, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f14, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_15( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f15, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f15, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_16( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f16, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f16, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_17( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f17, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f17, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_18( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f18, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f18, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_19( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f19, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f19, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_20( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f20, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f20, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_21( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f21, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f21, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_22( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f22, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f22, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_23( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f23, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f23, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_24( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f24, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f24, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_25( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f25, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f25, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_26( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f26, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f26, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_27( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f27, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f27, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_28( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f28, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f28, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_29( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f29, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f29, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_30( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f30, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f30, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rs1_31( testnum, inst, flags, result, val1, val2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f31, (x7); \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst v24, f31, v8, v0.t;  \
            )
#define TEST_FP_VF_FUSED_OP_RV_rd_2( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v2, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v2, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v2, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_3( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v3, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v3, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v3, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_4( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v4, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v4, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v4, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_5( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v5, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v5, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v5, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_6( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v6, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v6, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v6, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_7( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v7, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v7, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v7, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_8( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v8, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_9( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v9, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v9, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v9, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_10( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v10, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v10, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v10, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_11( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v11, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v11, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v11, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_12( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v12, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v12, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v12, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_13( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v13, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v13, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v13, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_14( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v14, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v14, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v14, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_15( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v15, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v15, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v15, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_16( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v16, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_17( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v17, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v17, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v17, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_18( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v18, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v18, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v18, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_19( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v19, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v19, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v19, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_20( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v20, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v20, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v20, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_21( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v21, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v21, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v21, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_22( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v22, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v22, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v22, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_23( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v23, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v23, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v23, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_24( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v24, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_25( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v25, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v25, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v25, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_26( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v26, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v26, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v26, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_27( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v27, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v27, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v27, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_28( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v28, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v28, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v28, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_29( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v29, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v29, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v29, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_30( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v30, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v30, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v30, f1, v8, v0.t;  \
        )
#define TEST_FP_VF_FUSED_OP_RV_rd_31( testnum, inst, flags, result, val1, val2 ) \
        TEST_CASE_LOOP_FP( testnum, v31, flags, result, v8,     \
            VSET_VSEW_4AVL \
            la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            fld f1, (x7); \
            la x7, rd_origin_data; \
            vle64.v v31, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                inst v31, f1, v8, v0.t;  \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_FP_VV_FUSED_OP( 1,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+0, rs2_data+0, rs1_data+0);
TEST_FP_VV_FUSED_OP( 2,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+64, rs2_data+64, rs1_data+64);
TEST_FP_VV_FUSED_OP( 3,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+128, rs2_data+128, rs1_data+128);
TEST_FP_VV_FUSED_OP( 4,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+192, rs2_data+192, rs1_data+192);
TEST_FP_VV_FUSED_OP( 5,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+256, rs2_data+256, rs1_data+256);
TEST_FP_VV_FUSED_OP( 6,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+320, rs2_data+320, rs1_data+320);
TEST_FP_VV_FUSED_OP( 7,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+384, rs2_data+384, rs1_data+384);
TEST_FP_VV_FUSED_OP( 8,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+448, rs2_data+448, rs1_data+448);
TEST_FP_VV_FUSED_OP( 9,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+512, rs2_data+512, rs1_data+512);
TEST_FP_VV_FUSED_OP( 10,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+576, rs2_data+576, rs1_data+576);
TEST_FP_VV_FUSED_OP( 11,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+640, rs2_data+640, rs1_data+640);
TEST_FP_VV_FUSED_OP( 12,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+704, rs2_data+704, rs1_data+704);
TEST_FP_VV_FUSED_OP( 13,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+768, rs2_data+768, rs1_data+768);
TEST_FP_VV_FUSED_OP( 14,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+832, rs2_data+832, rs1_data+832);
TEST_FP_VV_FUSED_OP( 15,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+896, rs2_data+896, rs1_data+896);
TEST_FP_VV_FUSED_OP( 16,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+960, rs2_data+960, rs1_data+960);
TEST_FP_VV_FUSED_OP( 17,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+1024, rs2_data+1024, rs1_data+1024);
TEST_FP_VV_FUSED_OP( 18,  vfmsac.vv, 0x0000000000000001,  rd_data_vv+1088, rs2_data+1088, rs1_data+1088);
  #-------------------------------------------------------------
  # VV Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_FP_VV_FUSED_OP_rd1( 19,  vfmsac.vv, 0x0000000000000001, rd_data_vv+0, rs2_data+0, rs1_data+0);
  TEST_FP_VV_FUSED_OP_11( 20,  vfmsac.vv, 0x0000000000000001, rd_data_vv+0, rs2_data+0, rs1_data+0);
  TEST_FP_VV_FUSED_OP_rd2( 21,  vfmsac.vv, 0x0000000000000001, rd_data_vv+64, rs2_data+64, rs1_data+64);
  TEST_FP_VV_FUSED_OP_12( 22,  vfmsac.vv, 0x0000000000000001, rd_data_vv+64, rs2_data+64, rs1_data+64);
  TEST_FP_VV_FUSED_OP_rd3( 23,  vfmsac.vv, 0x0000000000000001, rd_data_vv+128, rs2_data+128, rs1_data+128);
  TEST_FP_VV_FUSED_OP_13( 24,  vfmsac.vv, 0x0000000000000001, rd_data_vv+128, rs2_data+128, rs1_data+128);
  TEST_FP_VV_FUSED_OP_rd4( 25,  vfmsac.vv, 0x0000000000000001, rd_data_vv+192, rs2_data+192, rs1_data+192);
  TEST_FP_VV_FUSED_OP_14( 26,  vfmsac.vv, 0x0000000000000001, rd_data_vv+192, rs2_data+192, rs1_data+192);
  TEST_FP_VV_FUSED_OP_rd5( 27,  vfmsac.vv, 0x0000000000000001, rd_data_vv+256, rs2_data+256, rs1_data+256);
  TEST_FP_VV_FUSED_OP_15( 28,  vfmsac.vv, 0x0000000000000001, rd_data_vv+256, rs2_data+256, rs1_data+256);
  TEST_FP_VV_FUSED_OP_rd6( 29,  vfmsac.vv, 0x0000000000000001, rd_data_vv+320, rs2_data+320, rs1_data+320);
  TEST_FP_VV_FUSED_OP_16( 30,  vfmsac.vv, 0x0000000000000001, rd_data_vv+320, rs2_data+320, rs1_data+320);
  TEST_FP_VV_FUSED_OP_rd7( 31,  vfmsac.vv, 0x0000000000000001, rd_data_vv+384, rs2_data+384, rs1_data+384);
  TEST_FP_VV_FUSED_OP_17( 32,  vfmsac.vv, 0x0000000000000001, rd_data_vv+384, rs2_data+384, rs1_data+384);
  TEST_FP_VV_FUSED_OP_rd9( 33,  vfmsac.vv, 0x0000000000000001, rd_data_vv+512, rs2_data+512, rs1_data+512);
  TEST_FP_VV_FUSED_OP_19( 34,  vfmsac.vv, 0x0000000000000001, rd_data_vv+512, rs2_data+512, rs1_data+512);
  TEST_FP_VV_FUSED_OP_rd10( 35,  vfmsac.vv, 0x0000000000000001, rd_data_vv+576, rs2_data+576, rs1_data+576);
  TEST_FP_VV_FUSED_OP_110( 36,  vfmsac.vv, 0x0000000000000001, rd_data_vv+576, rs2_data+576, rs1_data+576);
  TEST_FP_VV_FUSED_OP_rd11( 37,  vfmsac.vv, 0x0000000000000001, rd_data_vv+640, rs2_data+640, rs1_data+640);
  TEST_FP_VV_FUSED_OP_111( 38,  vfmsac.vv, 0x0000000000000001, rd_data_vv+640, rs2_data+640, rs1_data+640);
  TEST_FP_VV_FUSED_OP_rd12( 39,  vfmsac.vv, 0x0000000000000001, rd_data_vv+704, rs2_data+704, rs1_data+704);
  TEST_FP_VV_FUSED_OP_112( 40,  vfmsac.vv, 0x0000000000000001, rd_data_vv+704, rs2_data+704, rs1_data+704);
  TEST_FP_VV_FUSED_OP_rd13( 41,  vfmsac.vv, 0x0000000000000001, rd_data_vv+768, rs2_data+768, rs1_data+768);
  TEST_FP_VV_FUSED_OP_113( 42,  vfmsac.vv, 0x0000000000000001, rd_data_vv+768, rs2_data+768, rs1_data+768);
  TEST_FP_VV_FUSED_OP_rd14( 43,  vfmsac.vv, 0x0000000000000001, rd_data_vv+832, rs2_data+832, rs1_data+832);
  TEST_FP_VV_FUSED_OP_114( 44,  vfmsac.vv, 0x0000000000000001, rd_data_vv+832, rs2_data+832, rs1_data+832);
  TEST_FP_VV_FUSED_OP_rd15( 45,  vfmsac.vv, 0x0000000000000001, rd_data_vv+896, rs2_data+896, rs1_data+896);
  TEST_FP_VV_FUSED_OP_115( 46,  vfmsac.vv, 0x0000000000000001, rd_data_vv+896, rs2_data+896, rs1_data+896);
  TEST_FP_VV_FUSED_OP_rd17( 47,  vfmsac.vv, 0x0000000000000001, rd_data_vv+1024, rs2_data+1024, rs1_data+1024);
  TEST_FP_VV_FUSED_OP_117( 48,  vfmsac.vv, 0x0000000000000001, rd_data_vv+1024, rs2_data+1024, rs1_data+1024);
  TEST_FP_VV_FUSED_OP_rd18( 49,  vfmsac.vv, 0x0000000000000001, rd_data_vv+1088, rs2_data+1088, rs1_data+1088);
  TEST_FP_VV_FUSED_OP_118( 50,  vfmsac.vv, 0x0000000000000001, rd_data_vv+1088, rs2_data+1088, rs1_data+1088);
  #-------------------------------------------------------------
  # VF Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
TEST_FP_VF_FUSED_OP_RV( 51,  vfmsac.vf, 0x0000000000000001, rd_data_vf+0, rs2_data+0, rs1_data+0);
TEST_FP_VF_FUSED_OP_RV( 52,  vfmsac.vf, 0x0000000000000001, rd_data_vf+64, rs2_data+64, rs1_data+64);
TEST_FP_VF_FUSED_OP_RV( 53,  vfmsac.vf, 0x0000000000000001, rd_data_vf+128, rs2_data+128, rs1_data+128);
TEST_FP_VF_FUSED_OP_RV( 54,  vfmsac.vf, 0x0000000000000001, rd_data_vf+192, rs2_data+192, rs1_data+192);
TEST_FP_VF_FUSED_OP_RV( 55,  vfmsac.vf, 0x0000000000000001, rd_data_vf+256, rs2_data+256, rs1_data+256);
TEST_FP_VF_FUSED_OP_RV( 56,  vfmsac.vf, 0x0000000000000001, rd_data_vf+320, rs2_data+320, rs1_data+320);
TEST_FP_VF_FUSED_OP_RV( 57,  vfmsac.vf, 0x0000000000000001, rd_data_vf+384, rs2_data+384, rs1_data+384);
TEST_FP_VF_FUSED_OP_RV( 58,  vfmsac.vf, 0x0000000000000001, rd_data_vf+448, rs2_data+448, rs1_data+448);
TEST_FP_VF_FUSED_OP_RV( 59,  vfmsac.vf, 0x0000000000000001, rd_data_vf+512, rs2_data+512, rs1_data+512);
TEST_FP_VF_FUSED_OP_RV( 60,  vfmsac.vf, 0x0000000000000001, rd_data_vf+576, rs2_data+576, rs1_data+576);
TEST_FP_VF_FUSED_OP_RV( 61,  vfmsac.vf, 0x0000000000000001, rd_data_vf+640, rs2_data+640, rs1_data+640);
TEST_FP_VF_FUSED_OP_RV( 62,  vfmsac.vf, 0x0000000000000001, rd_data_vf+704, rs2_data+704, rs1_data+704);
TEST_FP_VF_FUSED_OP_RV( 63,  vfmsac.vf, 0x0000000000000001, rd_data_vf+768, rs2_data+768, rs1_data+768);
TEST_FP_VF_FUSED_OP_RV( 64,  vfmsac.vf, 0x0000000000000001, rd_data_vf+832, rs2_data+832, rs1_data+832);
TEST_FP_VF_FUSED_OP_RV( 65,  vfmsac.vf, 0x0000000000000001, rd_data_vf+896, rs2_data+896, rs1_data+896);
TEST_FP_VF_FUSED_OP_RV( 66,  vfmsac.vf, 0x0000000000000001, rd_data_vf+960, rs2_data+960, rs1_data+960);
TEST_FP_VF_FUSED_OP_RV( 67,  vfmsac.vf, 0x0000000000000001, rd_data_vf+1024, rs2_data+1024, rs1_data+1024);
TEST_FP_VF_FUSED_OP_RV( 68,  vfmsac.vf, 0x0000000000000001, rd_data_vf+1088, rs2_data+1088, rs1_data+1088);
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    
.align 8
rs1_data:
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

.align 8
rs2_data:
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
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
.dword	0x00000000
.dword	0xBF800000
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x7F7FFFFF
.dword	0x80855555
.dword	0x00800001
.dword	0x80800000
.dword	0x00800000
.dword	0x807FFFFF
.dword	0x007FFFFF
.dword	0x807FFFFE
.dword	0x00000002
.dword	0x80000001
.dword	0x00000001
.dword	0x80000000
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

.align 8
rd_data_vv:
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a

rd_data_vf:
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7682191a66da64aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xf4daa72ed075dd45
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
    

#----------------------------------------------------------------------------- 
    # vmadc.S
    #-----------------------------------------------------------------------------
    #
    # Test vmadc instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmadc)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_MADC_VV_OP 
#define TEST_MADC_VV_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v8, v16; \
        )
#undef TEST_MADC_VX_OP 
#define TEST_MADC_VX_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            li x1, MASK_XLEN(val2); \
            inst v24, v8, x1; \
        )
#undef TEST_MADC_VI_OP 
#define TEST_MADC_VI_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            inst v24, v8, SEXT_IMM(val2); \
        )
#define TEST_MADC_VVM_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v8, v16, v0; \
        )
#define TEST_MADC_VXM_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            li x1, MASK_VSEW(val2); \
            inst v24, v8, x1, v0; \
        )
#define TEST_MADC_VIM_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            inst v24, v8, SEXT_IMM(val2), v0; \
        )
#define TEST_MADC_VV_OP_11( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v1, (x7); \
                inst v24, v8, v1;  \
            )
#define TEST_MADC_VV_OP_12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v2, (x7); \
                inst v24, v8, v2;  \
            )
#define TEST_MADC_VV_OP_13( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v3, (x7); \
                inst v24, v8, v3;  \
            )
#define TEST_MADC_VV_OP_14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v4, (x7); \
                inst v24, v8, v4;  \
            )
#define TEST_MADC_VV_OP_15( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v5, (x7); \
                inst v24, v8, v5;  \
            )
#define TEST_MADC_VV_OP_16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v6, (x7); \
                inst v24, v8, v6;  \
            )
#define TEST_MADC_VV_OP_17( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v7, (x7); \
                inst v24, v8, v7;  \
            )
#define TEST_MADC_VV_OP_19( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v9, (x7); \
                inst v24, v8, v9;  \
            )
#define TEST_MADC_VV_OP_110( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v10, (x7); \
                inst v24, v8, v10;  \
            )
#define TEST_MADC_VV_OP_111( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v11, (x7); \
                inst v24, v8, v11;  \
            )
#define TEST_MADC_VV_OP_112( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v12, (x7); \
                inst v24, v8, v12;  \
            )
#define TEST_MADC_VV_OP_113( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v13, (x7); \
                inst v24, v8, v13;  \
            )
#define TEST_MADC_VV_OP_114( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v14, (x7); \
                inst v24, v8, v14;  \
            )
#define TEST_MADC_VV_OP_115( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v15, (x7); \
                inst v24, v8, v15;  \
            )
#define TEST_MADC_VV_OP_117( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v17, (x7); \
                inst v24, v8, v17;  \
            )
#define TEST_MADC_VV_OP_118( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v18, (x7); \
                inst v24, v8, v18;  \
            )
#define TEST_MADC_VV_OP_119( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v19, (x7); \
                inst v24, v8, v19;  \
            )
#define TEST_MADC_VV_OP_120( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v20, (x7); \
                inst v24, v8, v20;  \
            )
#define TEST_MADC_VV_OP_121( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v21, (x7); \
                inst v24, v8, v21;  \
            )
#define TEST_MADC_VV_OP_122( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v22, (x7); \
                inst v24, v8, v22;  \
            )
#define TEST_MADC_VV_OP_123( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v23, (x7); \
                inst v24, v8, v23;  \
            )
#define TEST_MADC_VV_OP_125( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v25, (x7); \
                inst v24, v8, v25;  \
            )
#define TEST_MADC_VV_OP_126( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v26, (x7); \
                inst v24, v8, v26;  \
            )
#define TEST_MADC_VV_OP_127( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v27, (x7); \
                inst v24, v8, v27;  \
            )
#define TEST_MADC_VV_OP_128( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v28, (x7); \
                inst v24, v8, v28;  \
            )
#define TEST_MADC_VV_OP_129( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v29, (x7); \
                inst v24, v8, v29;  \
            )
#define TEST_MADC_VV_OP_130( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v30, (x7); \
                inst v24, v8, v30;  \
            )
#define TEST_MADC_VV_OP_131( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                la x7, val1; \
                vle32.v v31, (x7); \
                inst v24, v8, v31;  \
            )
#define TEST_MADC_VV_OP_rd2( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v2, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v2, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v2, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd4( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v4, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v4, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v4, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd6( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v6, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v6, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v6, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd10( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v10, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v10, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v10, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd12( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v12, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v12, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v12, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd14( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v14, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v14, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd18( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v18, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v18, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v18, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd20( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v20, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v20, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v20, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd22( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v22, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v22, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v22, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd26( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v26, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v26, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v26, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd28( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v28, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v28, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v28, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd30( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v30, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v30, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v30, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd8( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v8, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v24, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v8, v24, v16; \
        )
#define TEST_MADC_VV_OP_rd16( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v24, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v16, v24, v8; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_MADC_VV_OP( 1,  vmadc.vv, 0x0000000000000010, rs2_data+0, rs1_data+0)
  TEST_MADC_VV_OP( 2,  vmadc.vv, 0x000000000000000f, rs2_data+64, rs1_data+64)
  TEST_MADC_VV_OP( 3,  vmadc.vv, 0x0000000000000000, rs2_data+128, rs1_data+128)
  TEST_MADC_VV_OP( 4,  vmadc.vv, 0x0000000000000001, rs2_data+192, rs1_data+192)
  TEST_MADC_VV_OP( 5,  vmadc.vv, 0x0000000000000000, rs2_data+256, rs1_data+256)
  TEST_MADC_VV_OP( 6,  vmadc.vv, 0x0000000000000001, rs2_data+320, rs1_data+320)
  TEST_MADC_VV_OP( 7,  vmadc.vv, 0x0000000000000002, rs2_data+384, rs1_data+384)
  TEST_MADC_VV_OP( 8,  vmadc.vv, 0x0000000000000006, rs2_data+448, rs1_data+448)
  TEST_MADC_VV_OP( 9,  vmadc.vv, 0x0000000000000002, rs2_data+512, rs1_data+512)
  TEST_MADC_VV_OP( 10,  vmadc.vv, 0x0000000000000000, rs2_data+576, rs1_data+576)
  TEST_MADC_VV_OP( 11,  vmadc.vv, 0x0000000000000002, rs2_data+640, rs1_data+640)
  TEST_MADC_VV_OP( 12,  vmadc.vv, 0x0000000000000002, rs2_data+704, rs1_data+704)
  TEST_MADC_VV_OP( 13,  vmadc.vv, 0x0000000000000008, rs2_data+768, rs1_data+768)
  TEST_MADC_VV_OP( 14,  vmadc.vv, 0x0000000000000009, rs2_data+832, rs1_data+832)
  TEST_MADC_VV_OP( 15,  vmadc.vv, 0x0000000000000001, rs2_data+896, rs1_data+896)
  TEST_MADC_VV_OP( 16,  vmadc.vv, 0x0000000000000001, rs2_data+960, rs1_data+960)
  TEST_MADC_VV_OP( 17,  vmadc.vv, 0x0000000000000001, rs2_data+1024, rs1_data+1024)
  TEST_MADC_VV_OP( 18,  vmadc.vv, 0x0000000000000001, rs2_data+1088, rs1_data+1088)
  TEST_MADC_VV_OP( 19,  vmadc.vv, 0x0000000000000000, rs2_data+1152, rs1_data+1152)
  TEST_MADC_VV_OP( 20,  vmadc.vv, 0x0000000000000000, rs2_data+1216, rs1_data+1216)
  TEST_MADC_VV_OP( 21,  vmadc.vv, 0x0000000000000000, rs2_data+1280, rs1_data+1280)
  TEST_MADC_VV_OP( 22,  vmadc.vv, 0x0000000000000002, rs2_data+1344, rs1_data+1344)
  TEST_MADC_VV_OP( 23,  vmadc.vv, 0x0000000000000002, rs2_data+1408, rs1_data+1408)
  TEST_MADC_VV_OP( 24,  vmadc.vv, 0x0000000000000002, rs2_data+1472, rs1_data+1472)
  TEST_MADC_VV_OP( 25,  vmadc.vv, 0x0000000000000002, rs2_data+1536, rs1_data+1536)
  TEST_MADC_VV_OP( 26,  vmadc.vv, 0x0000000000000002, rs2_data+1600, rs1_data+1600)
  TEST_MADC_VV_OP( 27,  vmadc.vv, 0x0000000000000005, rs2_data+1664, rs1_data+1664)
  TEST_MADC_VV_OP( 28,  vmadc.vv, 0x0000000000000005, rs2_data+1728, rs1_data+1728)
  TEST_MADC_VV_OP( 29,  vmadc.vv, 0x0000000000000000, rs2_data+1792, rs1_data+1792)
  TEST_MADC_VV_OP( 30,  vmadc.vv, 0x0000000000000001, rs2_data+1856, rs1_data+1856)
  TEST_MADC_VV_OP( 31,  vmadc.vv, 0x0000000000000003, rs2_data+1920, rs1_data+1920)
  TEST_MADC_VV_OP( 32,  vmadc.vv, 0x0000000000000005, rs2_data+1984, rs1_data+1984)
  TEST_MADC_VV_OP( 33,  vmadc.vv, 0x000000000000000c, rs2_data+2048, rs1_data+2048)
  TEST_MADC_VV_OP( 34,  vmadc.vv, 0x0000000000000002, rs2_data+2112, rs1_data+2112)
  TEST_MADC_VV_OP_rd2( 35,  vmadc.vv, 0x000000000000000f, rs2_data+64, rs1_data+64)
  TEST_MADC_VV_OP_13( 36,  vmadc.vv, 0x000000000000000f, rs2_data+64, rs1_data+64)
  TEST_MADC_VV_OP_rd4( 37,  vmadc.vv, 0x0000000000000001, rs2_data+192, rs1_data+192)
  TEST_MADC_VV_OP_15( 38,  vmadc.vv, 0x0000000000000001, rs2_data+192, rs1_data+192)
  TEST_MADC_VV_OP_rd6( 39,  vmadc.vv, 0x0000000000000001, rs2_data+320, rs1_data+320)
  TEST_MADC_VV_OP_17( 40,  vmadc.vv, 0x0000000000000001, rs2_data+320, rs1_data+320)
  TEST_MADC_VV_OP_rd10( 41,  vmadc.vv, 0x0000000000000000, rs2_data+576, rs1_data+576)
  TEST_MADC_VV_OP_111( 42,  vmadc.vv, 0x0000000000000000, rs2_data+576, rs1_data+576)
  TEST_MADC_VV_OP_rd12( 43,  vmadc.vv, 0x0000000000000002, rs2_data+704, rs1_data+704)
  TEST_MADC_VV_OP_113( 44,  vmadc.vv, 0x0000000000000002, rs2_data+704, rs1_data+704)
  TEST_MADC_VV_OP_rd14( 45,  vmadc.vv, 0x0000000000000009, rs2_data+832, rs1_data+832)
  TEST_MADC_VV_OP_115( 46,  vmadc.vv, 0x0000000000000009, rs2_data+832, rs1_data+832)
  TEST_MADC_VV_OP_rd18( 47,  vmadc.vv, 0x0000000000000001, rs2_data+1088, rs1_data+1088)
  TEST_MADC_VV_OP_119( 48,  vmadc.vv, 0x0000000000000001, rs2_data+1088, rs1_data+1088)
  TEST_MADC_VV_OP_rd20( 49,  vmadc.vv, 0x0000000000000000, rs2_data+1216, rs1_data+1216)
  TEST_MADC_VV_OP_121( 50,  vmadc.vv, 0x0000000000000000, rs2_data+1216, rs1_data+1216)
  TEST_MADC_VV_OP_rd22( 51,  vmadc.vv, 0x0000000000000002, rs2_data+1344, rs1_data+1344)
  TEST_MADC_VV_OP_123( 52,  vmadc.vv, 0x0000000000000002, rs2_data+1344, rs1_data+1344)
  TEST_MADC_VV_OP_rd26( 53,  vmadc.vv, 0x0000000000000002, rs2_data+1600, rs1_data+1600)
  TEST_MADC_VV_OP_127( 54,  vmadc.vv, 0x0000000000000002, rs2_data+1600, rs1_data+1600)
  TEST_MADC_VV_OP_rd28( 55,  vmadc.vv, 0x0000000000000005, rs2_data+1728, rs1_data+1728)
  TEST_MADC_VV_OP_129( 56,  vmadc.vv, 0x0000000000000005, rs2_data+1728, rs1_data+1728)
  TEST_MADC_VV_OP_rd30( 57,  vmadc.vv, 0x0000000000000001, rs2_data+1856, rs1_data+1856)
  TEST_MADC_VV_OP_131( 58,  vmadc.vv, 0x0000000000000001, rs2_data+1856, rs1_data+1856)
  #-------------------------------------------------------------
  # VVM Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_MADC_VVM_OP( 59,  vmadc.vvm, 0x0000000000000010, rs2_data+0, rs1_data+0)
  TEST_MADC_VVM_OP( 60,  vmadc.vvm, 0x000000000000000f, rs2_data+64, rs1_data+64)
  TEST_MADC_VVM_OP( 61,  vmadc.vvm, 0x0000000000000000, rs2_data+128, rs1_data+128)
  TEST_MADC_VVM_OP( 62,  vmadc.vvm, 0x0000000000000001, rs2_data+192, rs1_data+192)
  TEST_MADC_VVM_OP( 63,  vmadc.vvm, 0x0000000000000000, rs2_data+256, rs1_data+256)
  TEST_MADC_VVM_OP( 64,  vmadc.vvm, 0x0000000000000001, rs2_data+320, rs1_data+320)
  TEST_MADC_VVM_OP( 65,  vmadc.vvm, 0x0000000000000002, rs2_data+384, rs1_data+384)
  TEST_MADC_VVM_OP( 66,  vmadc.vvm, 0x0000000000000006, rs2_data+448, rs1_data+448)
  TEST_MADC_VVM_OP( 67,  vmadc.vvm, 0x0000000000000002, rs2_data+512, rs1_data+512)
  TEST_MADC_VVM_OP( 68,  vmadc.vvm, 0x0000000000000000, rs2_data+576, rs1_data+576)
  TEST_MADC_VVM_OP( 69,  vmadc.vvm, 0x0000000000000002, rs2_data+640, rs1_data+640)
  TEST_MADC_VVM_OP( 70,  vmadc.vvm, 0x0000000000000002, rs2_data+704, rs1_data+704)
  TEST_MADC_VVM_OP( 71,  vmadc.vvm, 0x0000000000000008, rs2_data+768, rs1_data+768)
  TEST_MADC_VVM_OP( 72,  vmadc.vvm, 0x0000000000000009, rs2_data+832, rs1_data+832)
  TEST_MADC_VVM_OP( 73,  vmadc.vvm, 0x0000000000000001, rs2_data+896, rs1_data+896)
  TEST_MADC_VVM_OP( 74,  vmadc.vvm, 0x0000000000000001, rs2_data+960, rs1_data+960)
  TEST_MADC_VVM_OP( 75,  vmadc.vvm, 0x0000000000000001, rs2_data+1024, rs1_data+1024)
  TEST_MADC_VVM_OP( 76,  vmadc.vvm, 0x0000000000000001, rs2_data+1088, rs1_data+1088)
  TEST_MADC_VVM_OP( 77,  vmadc.vvm, 0x0000000000000000, rs2_data+1152, rs1_data+1152)
  TEST_MADC_VVM_OP( 78,  vmadc.vvm, 0x0000000000000000, rs2_data+1216, rs1_data+1216)
  TEST_MADC_VVM_OP( 79,  vmadc.vvm, 0x0000000000000000, rs2_data+1280, rs1_data+1280)
  TEST_MADC_VVM_OP( 80,  vmadc.vvm, 0x0000000000000002, rs2_data+1344, rs1_data+1344)
  TEST_MADC_VVM_OP( 81,  vmadc.vvm, 0x0000000000000002, rs2_data+1408, rs1_data+1408)
  TEST_MADC_VVM_OP( 82,  vmadc.vvm, 0x0000000000000002, rs2_data+1472, rs1_data+1472)
  TEST_MADC_VVM_OP( 83,  vmadc.vvm, 0x0000000000000002, rs2_data+1536, rs1_data+1536)
  TEST_MADC_VVM_OP( 84,  vmadc.vvm, 0x0000000000000002, rs2_data+1600, rs1_data+1600)
  TEST_MADC_VVM_OP( 85,  vmadc.vvm, 0x0000000000000006, rs2_data+1664, rs1_data+1664)
  TEST_MADC_VVM_OP( 86,  vmadc.vvm, 0x0000000000000005, rs2_data+1728, rs1_data+1728)
  TEST_MADC_VVM_OP( 87,  vmadc.vvm, 0x0000000000000000, rs2_data+1792, rs1_data+1792)
  TEST_MADC_VVM_OP( 88,  vmadc.vvm, 0x0000000000000001, rs2_data+1856, rs1_data+1856)
  TEST_MADC_VVM_OP( 89,  vmadc.vvm, 0x0000000000000003, rs2_data+1920, rs1_data+1920)
  TEST_MADC_VVM_OP( 90,  vmadc.vvm, 0x0000000000000005, rs2_data+1984, rs1_data+1984)
  TEST_MADC_VVM_OP( 91,  vmadc.vvm, 0x000000000000000c, rs2_data+2048, rs1_data+2048)
  TEST_MADC_VVM_OP( 92,  vmadc.vvm, 0x0000000000000002, rs2_data+2112, rs1_data+2112)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_MADC_VX_OP( 93,  vmadc.vx, 0x0000000000000010, rs2_data+0, 0xfffffffffffffffe)
  TEST_MADC_VX_OP( 94,  vmadc.vx, 0x0000000000000010, rs2_data+64, 0xfffffffffffffffd)
  TEST_MADC_VX_OP( 95,  vmadc.vx, 0x000000000000000d, rs2_data+128, 0xfffffffffffffffb)
  TEST_MADC_VX_OP( 96,  vmadc.vx, 0x0000000000000010, rs2_data+192, 0xfffffffffffffff7)
  TEST_MADC_VX_OP( 97,  vmadc.vx, 0x000000000000000b, rs2_data+256, 0xffffffffffffffef)
  TEST_MADC_VX_OP( 98,  vmadc.vx, 0x000000000000000d, rs2_data+320, 0xffffffffffffffdf)
  TEST_MADC_VX_OP( 99,  vmadc.vx, 0x000000000000000b, rs2_data+384, 0xffffffffffffffbf)
  TEST_MADC_VX_OP( 100,  vmadc.vx, 0x000000000000000b, rs2_data+448, 0xffffffffffffff7f)
  TEST_MADC_VX_OP( 101,  vmadc.vx, 0x000000000000000b, rs2_data+512, 0xfffffffffffffeff)
  TEST_MADC_VX_OP( 102,  vmadc.vx, 0x000000000000000c, rs2_data+576, 0xfffffffffffffdff)
  TEST_MADC_VX_OP( 103,  vmadc.vx, 0x000000000000000c, rs2_data+640, 0xfffffffffffffbff)
  TEST_MADC_VX_OP( 104,  vmadc.vx, 0x000000000000000b, rs2_data+704, 0xfffffffffffff7ff)
  TEST_MADC_VX_OP( 105,  vmadc.vx, 0x000000000000000c, rs2_data+768, 0xffffffffffffefff)
  TEST_MADC_VX_OP( 106,  vmadc.vx, 0x000000000000000c, rs2_data+832, 0xffffffffffffdfff)
  TEST_MADC_VX_OP( 107,  vmadc.vx, 0x000000000000000b, rs2_data+896, 0xffffffffffffbfff)
  TEST_MADC_VX_OP( 108,  vmadc.vx, 0x000000000000000b, rs2_data+960, 0xffffffffffff7fff)
  TEST_MADC_VX_OP( 109,  vmadc.vx, 0x000000000000000b, rs2_data+1024, 0xfffffffffffeffff)
  TEST_MADC_VX_OP( 110,  vmadc.vx, 0x0000000000000008, rs2_data+1088, 0xfffffffffffdffff)
  TEST_MADC_VX_OP( 111,  vmadc.vx, 0x000000000000000a, rs2_data+1152, 0xfffffffffffbffff)
  TEST_MADC_VX_OP( 112,  vmadc.vx, 0x0000000000000009, rs2_data+1216, 0xfffffffffff7ffff)
  TEST_MADC_VX_OP( 113,  vmadc.vx, 0x000000000000000a, rs2_data+1280, 0xffffffffffefffff)
  TEST_MADC_VX_OP( 114,  vmadc.vx, 0x000000000000000a, rs2_data+1344, 0xffffffffffdfffff)
  TEST_MADC_VX_OP( 115,  vmadc.vx, 0x0000000000000008, rs2_data+1408, 0xffffffffffbfffff)
  TEST_MADC_VX_OP( 116,  vmadc.vx, 0x000000000000000a, rs2_data+1472, 0xffffffffff7fffff)
  TEST_MADC_VX_OP( 117,  vmadc.vx, 0x000000000000000a, rs2_data+1536, 0xfffffffffeffffff)
  TEST_MADC_VX_OP( 118,  vmadc.vx, 0x0000000000000009, rs2_data+1600, 0xfffffffffdffffff)
  TEST_MADC_VX_OP( 119,  vmadc.vx, 0x0000000000000009, rs2_data+1664, 0xfffffffffbffffff)
  TEST_MADC_VX_OP( 120,  vmadc.vx, 0x000000000000000b, rs2_data+1728, 0xfffffffff7ffffff)
  TEST_MADC_VX_OP( 121,  vmadc.vx, 0x0000000000000008, rs2_data+1792, 0xffffffffefffffff)
  TEST_MADC_VX_OP( 122,  vmadc.vx, 0x000000000000000a, rs2_data+1856, 0xffffffffdfffffff)
  TEST_MADC_VX_OP( 123,  vmadc.vx, 0x0000000000000007, rs2_data+1920, 0xffffffffbfffffff)
  TEST_MADC_VX_OP( 124,  vmadc.vx, 0x0000000000000003, rs2_data+1984, 0x0000007fffffff)
  TEST_MADC_VX_OP( 125,  vmadc.vx, 0x0000000000000000, rs2_data+2048, 0x00000000000001)
  TEST_MADC_VX_OP( 126,  vmadc.vx, 0x0000000000000000, rs2_data+2112, 0x00000000000002)
  #-------------------------------------------------------------
  # VXM Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_MADC_VXM_OP( 127,  vmadc.vxm, 0x0000000000000010, rs2_data+0, 0xfffffffffffffffe)
  TEST_MADC_VXM_OP( 128,  vmadc.vxm, 0x0000000000000010, rs2_data+64, 0xfffffffffffffffd)
  TEST_MADC_VXM_OP( 129,  vmadc.vxm, 0x000000000000000d, rs2_data+128, 0xfffffffffffffffb)
  TEST_MADC_VXM_OP( 130,  vmadc.vxm, 0x0000000000000010, rs2_data+192, 0xfffffffffffffff7)
  TEST_MADC_VXM_OP( 131,  vmadc.vxm, 0x000000000000000b, rs2_data+256, 0xffffffffffffffef)
  TEST_MADC_VXM_OP( 132,  vmadc.vxm, 0x000000000000000d, rs2_data+320, 0xffffffffffffffdf)
  TEST_MADC_VXM_OP( 133,  vmadc.vxm, 0x000000000000000b, rs2_data+384, 0xffffffffffffffbf)
  TEST_MADC_VXM_OP( 134,  vmadc.vxm, 0x000000000000000b, rs2_data+448, 0xffffffffffffff7f)
  TEST_MADC_VXM_OP( 135,  vmadc.vxm, 0x000000000000000b, rs2_data+512, 0xfffffffffffffeff)
  TEST_MADC_VXM_OP( 136,  vmadc.vxm, 0x000000000000000c, rs2_data+576, 0xfffffffffffffdff)
  TEST_MADC_VXM_OP( 137,  vmadc.vxm, 0x000000000000000c, rs2_data+640, 0xfffffffffffffbff)
  TEST_MADC_VXM_OP( 138,  vmadc.vxm, 0x000000000000000b, rs2_data+704, 0xfffffffffffff7ff)
  TEST_MADC_VXM_OP( 139,  vmadc.vxm, 0x000000000000000c, rs2_data+768, 0xffffffffffffefff)
  TEST_MADC_VXM_OP( 140,  vmadc.vxm, 0x000000000000000c, rs2_data+832, 0xffffffffffffdfff)
  TEST_MADC_VXM_OP( 141,  vmadc.vxm, 0x000000000000000b, rs2_data+896, 0xffffffffffffbfff)
  TEST_MADC_VXM_OP( 142,  vmadc.vxm, 0x000000000000000b, rs2_data+960, 0xffffffffffff7fff)
  TEST_MADC_VXM_OP( 143,  vmadc.vxm, 0x000000000000000b, rs2_data+1024, 0xfffffffffffeffff)
  TEST_MADC_VXM_OP( 144,  vmadc.vxm, 0x0000000000000008, rs2_data+1088, 0xfffffffffffdffff)
  TEST_MADC_VXM_OP( 145,  vmadc.vxm, 0x000000000000000a, rs2_data+1152, 0xfffffffffffbffff)
  TEST_MADC_VXM_OP( 146,  vmadc.vxm, 0x0000000000000009, rs2_data+1216, 0xfffffffffff7ffff)
  TEST_MADC_VXM_OP( 147,  vmadc.vxm, 0x000000000000000a, rs2_data+1280, 0xffffffffffefffff)
  TEST_MADC_VXM_OP( 148,  vmadc.vxm, 0x000000000000000a, rs2_data+1344, 0xffffffffffdfffff)
  TEST_MADC_VXM_OP( 149,  vmadc.vxm, 0x0000000000000008, rs2_data+1408, 0xffffffffffbfffff)
  TEST_MADC_VXM_OP( 150,  vmadc.vxm, 0x000000000000000a, rs2_data+1472, 0xffffffffff7fffff)
  TEST_MADC_VXM_OP( 151,  vmadc.vxm, 0x000000000000000a, rs2_data+1536, 0xfffffffffeffffff)
  TEST_MADC_VXM_OP( 152,  vmadc.vxm, 0x0000000000000009, rs2_data+1600, 0xfffffffffdffffff)
  TEST_MADC_VXM_OP( 153,  vmadc.vxm, 0x0000000000000009, rs2_data+1664, 0xfffffffffbffffff)
  TEST_MADC_VXM_OP( 154,  vmadc.vxm, 0x000000000000000b, rs2_data+1728, 0xfffffffff7ffffff)
  TEST_MADC_VXM_OP( 155,  vmadc.vxm, 0x0000000000000008, rs2_data+1792, 0xffffffffefffffff)
  TEST_MADC_VXM_OP( 156,  vmadc.vxm, 0x000000000000000a, rs2_data+1856, 0xffffffffdfffffff)
  TEST_MADC_VXM_OP( 157,  vmadc.vxm, 0x0000000000000007, rs2_data+1920, 0xffffffffbfffffff)
  TEST_MADC_VXM_OP( 158,  vmadc.vxm, 0x0000000000000003, rs2_data+1984, 0x0000007fffffff)
  TEST_MADC_VXM_OP( 159,  vmadc.vxm, 0x0000000000000000, rs2_data+2048, 0x00000000000001)
  TEST_MADC_VXM_OP( 160,  vmadc.vxm, 0x0000000000000000, rs2_data+2112, 0x00000000000002)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_MADC_VI_OP( 161,  vmadc.vi, 0x0000000000000004, rs2_data+0, 14)
  TEST_MADC_VI_OP( 162,  vmadc.vi, 0x0000000000000000, rs2_data+64, 14)
  TEST_MADC_VI_OP( 163,  vmadc.vi, 0x0000000000000000, rs2_data+128, 14)
  TEST_MADC_VI_OP( 164,  vmadc.vi, 0x0000000000000000, rs2_data+192, 14)
  TEST_MADC_VI_OP( 165,  vmadc.vi, 0x0000000000000000, rs2_data+256, 14)
  TEST_MADC_VI_OP( 166,  vmadc.vi, 0x0000000000000000, rs2_data+320, 14)
  TEST_MADC_VI_OP( 167,  vmadc.vi, 0x0000000000000000, rs2_data+384, 14)
  TEST_MADC_VI_OP( 168,  vmadc.vi, 0x0000000000000000, rs2_data+448, 14)
  TEST_MADC_VI_OP( 169,  vmadc.vi, 0x0000000000000000, rs2_data+512, 14)
  TEST_MADC_VI_OP( 170,  vmadc.vi, 0x0000000000000000, rs2_data+576, 14)
  TEST_MADC_VI_OP( 171,  vmadc.vi, 0x0000000000000000, rs2_data+640, 14)
  TEST_MADC_VI_OP( 172,  vmadc.vi, 0x0000000000000000, rs2_data+704, 14)
  TEST_MADC_VI_OP( 173,  vmadc.vi, 0x0000000000000000, rs2_data+768, 14)
  TEST_MADC_VI_OP( 174,  vmadc.vi, 0x0000000000000000, rs2_data+832, 14)
  TEST_MADC_VI_OP( 175,  vmadc.vi, 0x0000000000000000, rs2_data+896, 14)
  TEST_MADC_VI_OP( 176,  vmadc.vi, 0x0000000000000000, rs2_data+960, 14)
  TEST_MADC_VI_OP( 177,  vmadc.vi, 0x0000000000000000, rs2_data+1024, 14)
  TEST_MADC_VI_OP( 178,  vmadc.vi, 0x0000000000000000, rs2_data+1088, 14)
  TEST_MADC_VI_OP( 179,  vmadc.vi, 0x0000000000000000, rs2_data+1152, 14)
  TEST_MADC_VI_OP( 180,  vmadc.vi, 0x0000000000000000, rs2_data+1216, 14)
  TEST_MADC_VI_OP( 181,  vmadc.vi, 0x0000000000000000, rs2_data+1280, 14)
  TEST_MADC_VI_OP( 182,  vmadc.vi, 0x0000000000000000, rs2_data+1344, 14)
  TEST_MADC_VI_OP( 183,  vmadc.vi, 0x0000000000000000, rs2_data+1408, 14)
  TEST_MADC_VI_OP( 184,  vmadc.vi, 0x0000000000000000, rs2_data+1472, 14)
  TEST_MADC_VI_OP( 185,  vmadc.vi, 0x0000000000000000, rs2_data+1536, 14)
  TEST_MADC_VI_OP( 186,  vmadc.vi, 0x0000000000000000, rs2_data+1600, 14)
  TEST_MADC_VI_OP( 187,  vmadc.vi, 0x0000000000000000, rs2_data+1664, 14)
  TEST_MADC_VI_OP( 188,  vmadc.vi, 0x0000000000000000, rs2_data+1728, 14)
  TEST_MADC_VI_OP( 189,  vmadc.vi, 0x0000000000000000, rs2_data+1792, 14)
  TEST_MADC_VI_OP( 190,  vmadc.vi, 0x0000000000000000, rs2_data+1856, 14)
  TEST_MADC_VI_OP( 191,  vmadc.vi, 0x0000000000000000, rs2_data+1920, 14)
  TEST_MADC_VI_OP( 192,  vmadc.vi, 0x0000000000000000, rs2_data+1984, 14)
  TEST_MADC_VI_OP( 193,  vmadc.vi, 0x0000000000000000, rs2_data+2048, 14)
  TEST_MADC_VI_OP( 194,  vmadc.vi, 0x0000000000000000, rs2_data+2112, 14)
  #-------------------------------------------------------------
  # VIM Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_MADC_VIM_OP( 195,  vmadc.vim, 0x0000000000000004, rs2_data+0, 14)
  TEST_MADC_VIM_OP( 196,  vmadc.vim, 0x0000000000000000, rs2_data+64, 14)
  TEST_MADC_VIM_OP( 197,  vmadc.vim, 0x0000000000000000, rs2_data+128, 14)
  TEST_MADC_VIM_OP( 198,  vmadc.vim, 0x0000000000000000, rs2_data+192, 14)
  TEST_MADC_VIM_OP( 199,  vmadc.vim, 0x0000000000000000, rs2_data+256, 14)
  TEST_MADC_VIM_OP( 200,  vmadc.vim, 0x0000000000000000, rs2_data+320, 14)
  TEST_MADC_VIM_OP( 201,  vmadc.vim, 0x0000000000000000, rs2_data+384, 14)
  TEST_MADC_VIM_OP( 202,  vmadc.vim, 0x0000000000000000, rs2_data+448, 14)
  TEST_MADC_VIM_OP( 203,  vmadc.vim, 0x0000000000000000, rs2_data+512, 14)
  TEST_MADC_VIM_OP( 204,  vmadc.vim, 0x0000000000000000, rs2_data+576, 14)
  TEST_MADC_VIM_OP( 205,  vmadc.vim, 0x0000000000000000, rs2_data+640, 14)
  TEST_MADC_VIM_OP( 206,  vmadc.vim, 0x0000000000000000, rs2_data+704, 14)
  TEST_MADC_VIM_OP( 207,  vmadc.vim, 0x0000000000000000, rs2_data+768, 14)
  TEST_MADC_VIM_OP( 208,  vmadc.vim, 0x0000000000000000, rs2_data+832, 14)
  TEST_MADC_VIM_OP( 209,  vmadc.vim, 0x0000000000000000, rs2_data+896, 14)
  TEST_MADC_VIM_OP( 210,  vmadc.vim, 0x0000000000000000, rs2_data+960, 14)
  TEST_MADC_VIM_OP( 211,  vmadc.vim, 0x0000000000000000, rs2_data+1024, 14)
  TEST_MADC_VIM_OP( 212,  vmadc.vim, 0x0000000000000000, rs2_data+1088, 14)
  TEST_MADC_VIM_OP( 213,  vmadc.vim, 0x0000000000000000, rs2_data+1152, 14)
  TEST_MADC_VIM_OP( 214,  vmadc.vim, 0x0000000000000000, rs2_data+1216, 14)
  TEST_MADC_VIM_OP( 215,  vmadc.vim, 0x0000000000000000, rs2_data+1280, 14)
  TEST_MADC_VIM_OP( 216,  vmadc.vim, 0x0000000000000000, rs2_data+1344, 14)
  TEST_MADC_VIM_OP( 217,  vmadc.vim, 0x0000000000000000, rs2_data+1408, 14)
  TEST_MADC_VIM_OP( 218,  vmadc.vim, 0x0000000000000000, rs2_data+1472, 14)
  TEST_MADC_VIM_OP( 219,  vmadc.vim, 0x0000000000000000, rs2_data+1536, 14)
  TEST_MADC_VIM_OP( 220,  vmadc.vim, 0x0000000000000000, rs2_data+1600, 14)
  TEST_MADC_VIM_OP( 221,  vmadc.vim, 0x0000000000000000, rs2_data+1664, 14)
  TEST_MADC_VIM_OP( 222,  vmadc.vim, 0x0000000000000000, rs2_data+1728, 14)
  TEST_MADC_VIM_OP( 223,  vmadc.vim, 0x0000000000000000, rs2_data+1792, 14)
  TEST_MADC_VIM_OP( 224,  vmadc.vim, 0x0000000000000000, rs2_data+1856, 14)
  TEST_MADC_VIM_OP( 225,  vmadc.vim, 0x0000000000000000, rs2_data+1920, 14)
  TEST_MADC_VIM_OP( 226,  vmadc.vim, 0x0000000000000000, rs2_data+1984, 14)
  TEST_MADC_VIM_OP( 227,  vmadc.vim, 0x0000000000000000, rs2_data+2048, 14)
  TEST_MADC_VIM_OP( 228,  vmadc.vim, 0x0000000000000000, rs2_data+2112, 14)
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
    

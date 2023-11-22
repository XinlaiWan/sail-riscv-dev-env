#----------------------------------------------------------------------------- 
    # vadc.S
    #-----------------------------------------------------------------------------
    #
    # Test vadc instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vadc)
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_ADC_VV_OP 
#define TEST_ADC_VV_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v8, v16, v0; \
        )
#undef TEST_ADC_VX_OP 
#define TEST_ADC_VX_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            li x1, MASK_VSEW(val2); \
            inst v24, v8, x1, v0; \
        )
#undef TEST_ADC_VI_OP 
#define TEST_ADC_VI_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            inst v24, v8, SEXT_IMM(val2), v0; \
        )
#define TEST_ADC_VV_OP_11( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v1, (x7); \
            inst v24, v8, v1, v0;  \
        )
#define TEST_ADC_VV_OP_12( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v2, (x7); \
            inst v24, v8, v2, v0;  \
        )
#define TEST_ADC_VV_OP_13( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v3, (x7); \
            inst v24, v8, v3, v0;  \
        )
#define TEST_ADC_VV_OP_14( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v4, (x7); \
            inst v24, v8, v4, v0;  \
        )
#define TEST_ADC_VV_OP_15( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v5, (x7); \
            inst v24, v8, v5, v0;  \
        )
#define TEST_ADC_VV_OP_16( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v6, (x7); \
            inst v24, v8, v6, v0;  \
        )
#define TEST_ADC_VV_OP_17( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v7, (x7); \
            inst v24, v8, v7, v0;  \
        )
#define TEST_ADC_VV_OP_19( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v9, (x7); \
            inst v24, v8, v9, v0;  \
        )
#define TEST_ADC_VV_OP_110( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v10, (x7); \
            inst v24, v8, v10, v0;  \
        )
#define TEST_ADC_VV_OP_111( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v11, (x7); \
            inst v24, v8, v11, v0;  \
        )
#define TEST_ADC_VV_OP_112( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v12, (x7); \
            inst v24, v8, v12, v0;  \
        )
#define TEST_ADC_VV_OP_113( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v13, (x7); \
            inst v24, v8, v13, v0;  \
        )
#define TEST_ADC_VV_OP_114( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v14, (x7); \
            inst v24, v8, v14, v0;  \
        )
#define TEST_ADC_VV_OP_115( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v15, (x7); \
            inst v24, v8, v15, v0;  \
        )
#define TEST_ADC_VV_OP_117( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v17, (x7); \
            inst v24, v8, v17, v0;  \
        )
#define TEST_ADC_VV_OP_118( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v18, (x7); \
            inst v24, v8, v18, v0;  \
        )
#define TEST_ADC_VV_OP_119( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v19, (x7); \
            inst v24, v8, v19, v0;  \
        )
#define TEST_ADC_VV_OP_120( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v20, (x7); \
            inst v24, v8, v20, v0;  \
        )
#define TEST_ADC_VV_OP_121( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v21, (x7); \
            inst v24, v8, v21, v0;  \
        )
#define TEST_ADC_VV_OP_122( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v22, (x7); \
            inst v24, v8, v22, v0;  \
        )
#define TEST_ADC_VV_OP_123( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v23, (x7); \
            inst v24, v8, v23, v0;  \
        )
#define TEST_ADC_VV_OP_125( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v25, (x7); \
            inst v24, v8, v25, v0;  \
        )
#define TEST_ADC_VV_OP_126( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v26, (x7); \
            inst v24, v8, v26, v0;  \
        )
#define TEST_ADC_VV_OP_127( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v27, (x7); \
            inst v24, v8, v27, v0;  \
        )
#define TEST_ADC_VV_OP_128( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v28, (x7); \
            inst v24, v8, v28, v0;  \
        )
#define TEST_ADC_VV_OP_129( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v29, (x7); \
            inst v24, v8, v29, v0;  \
        )
#define TEST_ADC_VV_OP_130( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v30, (x7); \
            inst v24, v8, v30, v0;  \
        )
#define TEST_ADC_VV_OP_131( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v31, (x7); \
            inst v24, v8, v31, v0;  \
        )
#define TEST_ADC_VV_OP_rd1( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v1, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v1, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v1, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd2( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v2, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v2, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v2, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd3( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v3, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v3, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v3, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd4( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v4, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v4, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v4, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd5( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v5, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v5, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v5, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd6( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v6, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v6, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v6, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd7( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v7, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v7, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v7, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd9( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v9, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v9, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v9, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd10( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v10, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v10, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v10, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd11( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v11, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v11, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v11, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd12( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v12, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v12, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v12, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd13( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v13, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v13, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v13, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd14( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v14, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v14, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd15( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v15, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v15, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v15, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd17( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v17, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v17, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v17, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd18( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v18, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v18, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v18, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd19( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v19, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v19, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v19, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd20( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v20, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v20, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v20, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd21( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v21, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v21, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v21, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd22( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v22, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v22, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v22, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd23( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v23, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v23, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v23, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd25( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v25, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v25, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v25, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd26( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v26, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v26, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v26, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd27( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v27, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v27, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v27, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd28( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v28, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v28, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v28, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd29( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v29, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v29, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v29, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd30( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v30, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v30, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v30, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd31( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v31, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v31, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v31, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd8( testnum, inst, result, val1, val2 ) \
    TEST_CASE_LOOP( testnum, v8, result, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle64.v v8, (x7); \
        la x7, mask_data; \
    vle64.v v0, (x7); \
            la x7, val1; \
        vle64.v v16, (x7); \
        la x7, val2; \
        vle64.v v24, (x7); \
        inst v8, v16, v24, v0; \
        )
#define TEST_ADC_VV_OP_rd16( testnum, inst, result, val1, val2 ) \
    TEST_CASE_LOOP( testnum, v16, result, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle64.v v16, (x7); \
        la x7, mask_data; \
    vle64.v v0, (x7); \
            la x7, val1; \
        vle64.v v8, (x7); \
        la x7, val2; \
        vle64.v v24, (x7); \
        inst v16, v8, v24, v0; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_ADC_VV_OP( 1,  vadc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP( 2,  vadc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP( 3,  vadc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP( 4,  vadc.vvm, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_ADC_VV_OP( 5,  vadc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP( 6,  vadc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP( 7,  vadc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP( 8,  vadc.vvm, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_ADC_VV_OP( 9,  vadc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP( 10,  vadc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP( 11,  vadc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP( 12,  vadc.vvm, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_ADC_VV_OP( 13,  vadc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP( 14,  vadc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP( 15,  vadc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP( 16,  vadc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP( 17,  vadc.vvm, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_ADC_VV_OP( 18,  vadc.vvm, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_ADC_VV_OP( 19,  vadc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP( 20,  vadc.vvm, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_ADC_VV_OP( 21,  vadc.vvm, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_ADC_VV_OP( 22,  vadc.vvm, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_ADC_VV_OP( 23,  vadc.vvm, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_ADC_VV_OP( 24,  vadc.vvm, rd_data_vv+1472, rs2_data+1472, rs1_data+1472)
  TEST_ADC_VV_OP( 25,  vadc.vvm, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_ADC_VV_OP( 26,  vadc.vvm, rd_data_vv+1600, rs2_data+1600, rs1_data+1600)
  TEST_ADC_VV_OP( 27,  vadc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP( 28,  vadc.vvm, rd_data_vv+1728, rs2_data+1728, rs1_data+1728)
  TEST_ADC_VV_OP( 29,  vadc.vvm, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_ADC_VV_OP( 30,  vadc.vvm, rd_data_vv+1856, rs2_data+1856, rs1_data+1856)
  TEST_ADC_VV_OP( 31,  vadc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP( 32,  vadc.vvm, rd_data_vv+1984, rs2_data+1984, rs1_data+1984)
  TEST_ADC_VV_OP( 33,  vadc.vvm, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_ADC_VV_OP( 34,  vadc.vvm, rd_data_vv+2112, rs2_data+2112, rs1_data+2112)
  TEST_ADC_VV_OP( 35,  vadc.vvm, rd_data_vv+2176, rs2_data+2176, rs1_data+2176)
  TEST_ADC_VV_OP( 36,  vadc.vvm, rd_data_vv+2240, rs2_data+2240, rs1_data+2240)
  TEST_ADC_VV_OP( 37,  vadc.vvm, rd_data_vv+2304, rs2_data+2304, rs1_data+2304)
  TEST_ADC_VV_OP( 38,  vadc.vvm, rd_data_vv+2368, rs2_data+2368, rs1_data+2368)
  TEST_ADC_VV_OP( 39,  vadc.vvm, rd_data_vv+2432, rs2_data+2432, rs1_data+2432)
  TEST_ADC_VV_OP( 40,  vadc.vvm, rd_data_vv+2496, rs2_data+2496, rs1_data+2496)
  TEST_ADC_VV_OP( 41,  vadc.vvm, rd_data_vv+2560, rs2_data+2560, rs1_data+2560)
  TEST_ADC_VV_OP( 42,  vadc.vvm, rd_data_vv+2624, rs2_data+2624, rs1_data+2624)
  TEST_ADC_VV_OP( 43,  vadc.vvm, rd_data_vv+2688, rs2_data+2688, rs1_data+2688)
  TEST_ADC_VV_OP( 44,  vadc.vvm, rd_data_vv+2752, rs2_data+2752, rs1_data+2752)
  TEST_ADC_VV_OP( 45,  vadc.vvm, rd_data_vv+2816, rs2_data+2816, rs1_data+2816)
  TEST_ADC_VV_OP( 46,  vadc.vvm, rd_data_vv+2880, rs2_data+2880, rs1_data+2880)
  TEST_ADC_VV_OP( 47,  vadc.vvm, rd_data_vv+2944, rs2_data+2944, rs1_data+2944)
  TEST_ADC_VV_OP( 48,  vadc.vvm, rd_data_vv+3008, rs2_data+3008, rs1_data+3008)
  TEST_ADC_VV_OP( 49,  vadc.vvm, rd_data_vv+3072, rs2_data+3072, rs1_data+3072)
  TEST_ADC_VV_OP( 50,  vadc.vvm, rd_data_vv+3136, rs2_data+3136, rs1_data+3136)
  TEST_ADC_VV_OP( 51,  vadc.vvm, rd_data_vv+3200, rs2_data+3200, rs1_data+3200)
  TEST_ADC_VV_OP( 52,  vadc.vvm, rd_data_vv+3264, rs2_data+3264, rs1_data+3264)
  TEST_ADC_VV_OP( 53,  vadc.vvm, rd_data_vv+3328, rs2_data+3328, rs1_data+3328)
  TEST_ADC_VV_OP( 54,  vadc.vvm, rd_data_vv+3392, rs2_data+3392, rs1_data+3392)
  TEST_ADC_VV_OP( 55,  vadc.vvm, rd_data_vv+3456, rs2_data+3456, rs1_data+3456)
  TEST_ADC_VV_OP( 56,  vadc.vvm, rd_data_vv+3520, rs2_data+3520, rs1_data+3520)
  TEST_ADC_VV_OP( 57,  vadc.vvm, rd_data_vv+3584, rs2_data+3584, rs1_data+3584)
  TEST_ADC_VV_OP( 58,  vadc.vvm, rd_data_vv+3648, rs2_data+3648, rs1_data+3648)
  TEST_ADC_VV_OP( 59,  vadc.vvm, rd_data_vv+3712, rs2_data+3712, rs1_data+3712)
  TEST_ADC_VV_OP( 60,  vadc.vvm, rd_data_vv+3776, rs2_data+3776, rs1_data+3776)
  TEST_ADC_VV_OP( 61,  vadc.vvm, rd_data_vv+3840, rs2_data+3840, rs1_data+3840)
  TEST_ADC_VV_OP( 62,  vadc.vvm, rd_data_vv+3904, rs2_data+3904, rs1_data+3904)
  TEST_ADC_VV_OP( 63,  vadc.vvm, rd_data_vv+3968, rs2_data+3968, rs1_data+3968)
  TEST_ADC_VV_OP( 64,  vadc.vvm, rd_data_vv+4032, rs2_data+4032, rs1_data+4032)
  TEST_ADC_VV_OP( 65,  vadc.vvm, rd_data_vv+4096, rs2_data+4096, rs1_data+4096)
  TEST_ADC_VV_OP( 66,  vadc.vvm, rd_data_vv+4160, rs2_data+4160, rs1_data+4160)
  TEST_ADC_VV_OP( 67,  vadc.vvm, rd_data_vv+4224, rs2_data+4224, rs1_data+4224)
  TEST_ADC_VV_OP( 68,  vadc.vvm, rd_data_vv+4288, rs2_data+4288, rs1_data+4288)
  TEST_ADC_VV_OP( 69,  vadc.vvm, rd_data_vv+4352, rs2_data+4352, rs1_data+4352)
  TEST_ADC_VV_OP( 70,  vadc.vvm, rd_data_vv+4416, rs2_data+4416, rs1_data+4416)
  TEST_ADC_VV_OP( 71,  vadc.vvm, rd_data_vv+4480, rs2_data+4480, rs1_data+4480)
  TEST_ADC_VV_OP( 72,  vadc.vvm, rd_data_vv+4544, rs2_data+4544, rs1_data+4544)
  TEST_ADC_VV_OP( 73,  vadc.vvm, rd_data_vv+4608, rs2_data+4608, rs1_data+4608)
  TEST_ADC_VV_OP( 74,  vadc.vvm, rd_data_vv+4672, rs2_data+4672, rs1_data+4672)
  TEST_ADC_VV_OP( 75,  vadc.vvm, rd_data_vv+4736, rs2_data+4736, rs1_data+4736)
  TEST_ADC_VV_OP( 76,  vadc.vvm, rd_data_vv+4800, rs2_data+4800, rs1_data+4800)
  TEST_ADC_VV_OP_rd1( 77,  vadc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP_12( 78,  vadc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP_rd2( 79,  vadc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP_13( 80,  vadc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP_rd3( 81,  vadc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP_14( 82,  vadc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP_rd4( 83,  vadc.vvm, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_ADC_VV_OP_15( 84,  vadc.vvm, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_ADC_VV_OP_rd5( 85,  vadc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP_16( 86,  vadc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP_rd6( 87,  vadc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP_17( 88,  vadc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP_rd7( 89,  vadc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP_rd8( 90,  vadc.vvm, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_ADC_VV_OP_19( 91,  vadc.vvm, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_ADC_VV_OP_rd9( 92,  vadc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP_110( 93,  vadc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP_rd10( 94,  vadc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP_111( 95,  vadc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP_rd11( 96,  vadc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP_112( 97,  vadc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP_rd12( 98,  vadc.vvm, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_ADC_VV_OP_113( 99,  vadc.vvm, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_ADC_VV_OP_rd13( 100,  vadc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP_114( 101,  vadc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP_rd14( 102,  vadc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP_115( 103,  vadc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP_rd15( 104,  vadc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP_rd16( 105,  vadc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP_117( 106,  vadc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP_rd17( 107,  vadc.vvm, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_ADC_VV_OP_118( 108,  vadc.vvm, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_ADC_VV_OP_rd18( 109,  vadc.vvm, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_ADC_VV_OP_119( 110,  vadc.vvm, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_ADC_VV_OP_rd19( 111,  vadc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP_120( 112,  vadc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP_rd20( 113,  vadc.vvm, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_ADC_VV_OP_121( 114,  vadc.vvm, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_ADC_VV_OP_rd21( 115,  vadc.vvm, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_ADC_VV_OP_122( 116,  vadc.vvm, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_ADC_VV_OP_rd22( 117,  vadc.vvm, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_ADC_VV_OP_123( 118,  vadc.vvm, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_ADC_VV_OP_rd23( 119,  vadc.vvm, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_ADC_VV_OP_rd25( 120,  vadc.vvm, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_ADC_VV_OP_126( 121,  vadc.vvm, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_ADC_VV_OP_rd26( 122,  vadc.vvm, rd_data_vv+1600, rs2_data+1600, rs1_data+1600)
  TEST_ADC_VV_OP_127( 123,  vadc.vvm, rd_data_vv+1600, rs2_data+1600, rs1_data+1600)
  TEST_ADC_VV_OP_rd27( 124,  vadc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP_128( 125,  vadc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP_rd28( 126,  vadc.vvm, rd_data_vv+1728, rs2_data+1728, rs1_data+1728)
  TEST_ADC_VV_OP_129( 127,  vadc.vvm, rd_data_vv+1728, rs2_data+1728, rs1_data+1728)
  TEST_ADC_VV_OP_rd29( 128,  vadc.vvm, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_ADC_VV_OP_130( 129,  vadc.vvm, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_ADC_VV_OP_rd30( 130,  vadc.vvm, rd_data_vv+1856, rs2_data+1856, rs1_data+1856)
  TEST_ADC_VV_OP_131( 131,  vadc.vvm, rd_data_vv+1856, rs2_data+1856, rs1_data+1856)
  TEST_ADC_VV_OP_rd31( 132,  vadc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP_12( 133,  vadc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP_rd1( 134,  vadc.vvm, rd_data_vv+1984, rs2_data+1984, rs1_data+1984)
  TEST_ADC_VV_OP_13( 135,  vadc.vvm, rd_data_vv+1984, rs2_data+1984, rs1_data+1984)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_ADC_VX_OP( 136,  vadc.vxm, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_ADC_VX_OP( 137,  vadc.vxm, rd_data_vx+64, rs2_data+64, 0xfffffffffffffffd)
  TEST_ADC_VX_OP( 138,  vadc.vxm, rd_data_vx+128, rs2_data+128, 0xfffffffffffffffb)
  TEST_ADC_VX_OP( 139,  vadc.vxm, rd_data_vx+192, rs2_data+192, 0xfffffffffffffff7)
  TEST_ADC_VX_OP( 140,  vadc.vxm, rd_data_vx+256, rs2_data+256, 0xffffffffffffffef)
  TEST_ADC_VX_OP( 141,  vadc.vxm, rd_data_vx+320, rs2_data+320, 0xffffffffffffffdf)
  TEST_ADC_VX_OP( 142,  vadc.vxm, rd_data_vx+384, rs2_data+384, 0xffffffffffffffbf)
  TEST_ADC_VX_OP( 143,  vadc.vxm, rd_data_vx+448, rs2_data+448, 0xffffffffffffff7f)
  TEST_ADC_VX_OP( 144,  vadc.vxm, rd_data_vx+512, rs2_data+512, 0xfffffffffffffeff)
  TEST_ADC_VX_OP( 145,  vadc.vxm, rd_data_vx+576, rs2_data+576, 0xfffffffffffffdff)
  TEST_ADC_VX_OP( 146,  vadc.vxm, rd_data_vx+640, rs2_data+640, 0xfffffffffffffbff)
  TEST_ADC_VX_OP( 147,  vadc.vxm, rd_data_vx+704, rs2_data+704, 0xfffffffffffff7ff)
  TEST_ADC_VX_OP( 148,  vadc.vxm, rd_data_vx+768, rs2_data+768, 0xffffffffffffefff)
  TEST_ADC_VX_OP( 149,  vadc.vxm, rd_data_vx+832, rs2_data+832, 0xffffffffffffdfff)
  TEST_ADC_VX_OP( 150,  vadc.vxm, rd_data_vx+896, rs2_data+896, 0xffffffffffffbfff)
  TEST_ADC_VX_OP( 151,  vadc.vxm, rd_data_vx+960, rs2_data+960, 0xffffffffffff7fff)
  TEST_ADC_VX_OP( 152,  vadc.vxm, rd_data_vx+1024, rs2_data+1024, 0xfffffffffffeffff)
  TEST_ADC_VX_OP( 153,  vadc.vxm, rd_data_vx+1088, rs2_data+1088, 0xfffffffffffdffff)
  TEST_ADC_VX_OP( 154,  vadc.vxm, rd_data_vx+1152, rs2_data+1152, 0xfffffffffffbffff)
  TEST_ADC_VX_OP( 155,  vadc.vxm, rd_data_vx+1216, rs2_data+1216, 0xfffffffffff7ffff)
  TEST_ADC_VX_OP( 156,  vadc.vxm, rd_data_vx+1280, rs2_data+1280, 0xffffffffffefffff)
  TEST_ADC_VX_OP( 157,  vadc.vxm, rd_data_vx+1344, rs2_data+1344, 0xffffffffffdfffff)
  TEST_ADC_VX_OP( 158,  vadc.vxm, rd_data_vx+1408, rs2_data+1408, 0xffffffffffbfffff)
  TEST_ADC_VX_OP( 159,  vadc.vxm, rd_data_vx+1472, rs2_data+1472, 0xffffffffff7fffff)
  TEST_ADC_VX_OP( 160,  vadc.vxm, rd_data_vx+1536, rs2_data+1536, 0xfffffffffeffffff)
  TEST_ADC_VX_OP( 161,  vadc.vxm, rd_data_vx+1600, rs2_data+1600, 0xfffffffffdffffff)
  TEST_ADC_VX_OP( 162,  vadc.vxm, rd_data_vx+1664, rs2_data+1664, 0xfffffffffbffffff)
  TEST_ADC_VX_OP( 163,  vadc.vxm, rd_data_vx+1728, rs2_data+1728, 0xfffffffff7ffffff)
  TEST_ADC_VX_OP( 164,  vadc.vxm, rd_data_vx+1792, rs2_data+1792, 0xffffffffefffffff)
  TEST_ADC_VX_OP( 165,  vadc.vxm, rd_data_vx+1856, rs2_data+1856, 0xffffffffdfffffff)
  TEST_ADC_VX_OP( 166,  vadc.vxm, rd_data_vx+1920, rs2_data+1920, 0xffffffffbfffffff)
  TEST_ADC_VX_OP( 167,  vadc.vxm, rd_data_vx+1984, rs2_data+1984, 0xffffffff7fffffff)
  TEST_ADC_VX_OP( 168,  vadc.vxm, rd_data_vx+2048, rs2_data+2048, 0xfffffffeffffffff)
  TEST_ADC_VX_OP( 169,  vadc.vxm, rd_data_vx+2112, rs2_data+2112, 0xfffffffdffffffff)
  TEST_ADC_VX_OP( 170,  vadc.vxm, rd_data_vx+2176, rs2_data+2176, 0xfffffffbffffffff)
  TEST_ADC_VX_OP( 171,  vadc.vxm, rd_data_vx+2240, rs2_data+2240, 0xfffffff7ffffffff)
  TEST_ADC_VX_OP( 172,  vadc.vxm, rd_data_vx+2304, rs2_data+2304, 0xffffffefffffffff)
  TEST_ADC_VX_OP( 173,  vadc.vxm, rd_data_vx+2368, rs2_data+2368, 0xffffffdfffffffff)
  TEST_ADC_VX_OP( 174,  vadc.vxm, rd_data_vx+2432, rs2_data+2432, 0xffffffbfffffffff)
  TEST_ADC_VX_OP( 175,  vadc.vxm, rd_data_vx+2496, rs2_data+2496, 0xffffff7fffffffff)
  TEST_ADC_VX_OP( 176,  vadc.vxm, rd_data_vx+2560, rs2_data+2560, 0xfffffeffffffffff)
  TEST_ADC_VX_OP( 177,  vadc.vxm, rd_data_vx+2624, rs2_data+2624, 0xfffffdffffffffff)
  TEST_ADC_VX_OP( 178,  vadc.vxm, rd_data_vx+2688, rs2_data+2688, 0xfffffbffffffffff)
  TEST_ADC_VX_OP( 179,  vadc.vxm, rd_data_vx+2752, rs2_data+2752, 0xfffff7ffffffffff)
  TEST_ADC_VX_OP( 180,  vadc.vxm, rd_data_vx+2816, rs2_data+2816, 0xffffefffffffffff)
  TEST_ADC_VX_OP( 181,  vadc.vxm, rd_data_vx+2880, rs2_data+2880, 0xffffdfffffffffff)
  TEST_ADC_VX_OP( 182,  vadc.vxm, rd_data_vx+2944, rs2_data+2944, 0xffffbfffffffffff)
  TEST_ADC_VX_OP( 183,  vadc.vxm, rd_data_vx+3008, rs2_data+3008, 0xffff7fffffffffff)
  TEST_ADC_VX_OP( 184,  vadc.vxm, rd_data_vx+3072, rs2_data+3072, 0xfffeffffffffffff)
  TEST_ADC_VX_OP( 185,  vadc.vxm, rd_data_vx+3136, rs2_data+3136, 0xfffdffffffffffff)
  TEST_ADC_VX_OP( 186,  vadc.vxm, rd_data_vx+3200, rs2_data+3200, 0xfffbffffffffffff)
  TEST_ADC_VX_OP( 187,  vadc.vxm, rd_data_vx+3264, rs2_data+3264, 0xfff7ffffffffffff)
  TEST_ADC_VX_OP( 188,  vadc.vxm, rd_data_vx+3328, rs2_data+3328, 0xffefffffffffffff)
  TEST_ADC_VX_OP( 189,  vadc.vxm, rd_data_vx+3392, rs2_data+3392, 0xffdfffffffffffff)
  TEST_ADC_VX_OP( 190,  vadc.vxm, rd_data_vx+3456, rs2_data+3456, 0xffbfffffffffffff)
  TEST_ADC_VX_OP( 191,  vadc.vxm, rd_data_vx+3520, rs2_data+3520, 0xff7fffffffffffff)
  TEST_ADC_VX_OP( 192,  vadc.vxm, rd_data_vx+3584, rs2_data+3584, 0xfeffffffffffffff)
  TEST_ADC_VX_OP( 193,  vadc.vxm, rd_data_vx+3648, rs2_data+3648, 0xfdffffffffffffff)
  TEST_ADC_VX_OP( 194,  vadc.vxm, rd_data_vx+3712, rs2_data+3712, 0xfbffffffffffffff)
  TEST_ADC_VX_OP( 195,  vadc.vxm, rd_data_vx+3776, rs2_data+3776, 0xf7ffffffffffffff)
  TEST_ADC_VX_OP( 196,  vadc.vxm, rd_data_vx+3840, rs2_data+3840, 0xefffffffffffffff)
  TEST_ADC_VX_OP( 197,  vadc.vxm, rd_data_vx+3904, rs2_data+3904, 0xdfffffffffffffff)
  TEST_ADC_VX_OP( 198,  vadc.vxm, rd_data_vx+3968, rs2_data+3968, 0xbfffffffffffffff)
  TEST_ADC_VX_OP( 199,  vadc.vxm, rd_data_vx+4032, rs2_data+4032, 0x7fffffffffffffff)
  TEST_ADC_VX_OP( 200,  vadc.vxm, rd_data_vx+4096, rs2_data+4096, 0x00000000000001)
  TEST_ADC_VX_OP( 201,  vadc.vxm, rd_data_vx+4160, rs2_data+4160, 0x00000000000002)
  TEST_ADC_VX_OP( 202,  vadc.vxm, rd_data_vx+4224, rs2_data+4224, 0x00000000000004)
  TEST_ADC_VX_OP( 203,  vadc.vxm, rd_data_vx+4288, rs2_data+4288, 0x00000000000008)
  TEST_ADC_VX_OP( 204,  vadc.vxm, rd_data_vx+4352, rs2_data+4352, 0x00000000000010)
  TEST_ADC_VX_OP( 205,  vadc.vxm, rd_data_vx+4416, rs2_data+4416, 0x00000000000020)
  TEST_ADC_VX_OP( 206,  vadc.vxm, rd_data_vx+4480, rs2_data+4480, 0x00000000000040)
  TEST_ADC_VX_OP( 207,  vadc.vxm, rd_data_vx+4544, rs2_data+4544, 0x00000000000080)
  TEST_ADC_VX_OP( 208,  vadc.vxm, rd_data_vx+4608, rs2_data+4608, 0x00000000000100)
  TEST_ADC_VX_OP( 209,  vadc.vxm, rd_data_vx+4672, rs2_data+4672, 0x00000000000200)
  TEST_ADC_VX_OP( 210,  vadc.vxm, rd_data_vx+4736, rs2_data+4736, 0x00000000000400)
  TEST_ADC_VX_OP( 211,  vadc.vxm, rd_data_vx+4800, rs2_data+4800, 0x00000000000800)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_ADC_VI_OP( 212,  vadc.vim, rd_data_vi+0, rs2_data+0, 14)
  TEST_ADC_VI_OP( 213,  vadc.vim, rd_data_vi+64, rs2_data+64, 14)
  TEST_ADC_VI_OP( 214,  vadc.vim, rd_data_vi+128, rs2_data+128, 14)
  TEST_ADC_VI_OP( 215,  vadc.vim, rd_data_vi+192, rs2_data+192, 14)
  TEST_ADC_VI_OP( 216,  vadc.vim, rd_data_vi+256, rs2_data+256, 14)
  TEST_ADC_VI_OP( 217,  vadc.vim, rd_data_vi+320, rs2_data+320, 14)
  TEST_ADC_VI_OP( 218,  vadc.vim, rd_data_vi+384, rs2_data+384, 14)
  TEST_ADC_VI_OP( 219,  vadc.vim, rd_data_vi+448, rs2_data+448, 14)
  TEST_ADC_VI_OP( 220,  vadc.vim, rd_data_vi+512, rs2_data+512, 14)
  TEST_ADC_VI_OP( 221,  vadc.vim, rd_data_vi+576, rs2_data+576, 14)
  TEST_ADC_VI_OP( 222,  vadc.vim, rd_data_vi+640, rs2_data+640, 14)
  TEST_ADC_VI_OP( 223,  vadc.vim, rd_data_vi+704, rs2_data+704, 14)
  TEST_ADC_VI_OP( 224,  vadc.vim, rd_data_vi+768, rs2_data+768, 14)
  TEST_ADC_VI_OP( 225,  vadc.vim, rd_data_vi+832, rs2_data+832, 14)
  TEST_ADC_VI_OP( 226,  vadc.vim, rd_data_vi+896, rs2_data+896, 14)
  TEST_ADC_VI_OP( 227,  vadc.vim, rd_data_vi+960, rs2_data+960, 14)
  TEST_ADC_VI_OP( 228,  vadc.vim, rd_data_vi+1024, rs2_data+1024, 14)
  TEST_ADC_VI_OP( 229,  vadc.vim, rd_data_vi+1088, rs2_data+1088, 14)
  TEST_ADC_VI_OP( 230,  vadc.vim, rd_data_vi+1152, rs2_data+1152, 14)
  TEST_ADC_VI_OP( 231,  vadc.vim, rd_data_vi+1216, rs2_data+1216, 14)
  TEST_ADC_VI_OP( 232,  vadc.vim, rd_data_vi+1280, rs2_data+1280, 14)
  TEST_ADC_VI_OP( 233,  vadc.vim, rd_data_vi+1344, rs2_data+1344, 14)
  TEST_ADC_VI_OP( 234,  vadc.vim, rd_data_vi+1408, rs2_data+1408, 14)
  TEST_ADC_VI_OP( 235,  vadc.vim, rd_data_vi+1472, rs2_data+1472, 14)
  TEST_ADC_VI_OP( 236,  vadc.vim, rd_data_vi+1536, rs2_data+1536, 14)
  TEST_ADC_VI_OP( 237,  vadc.vim, rd_data_vi+1600, rs2_data+1600, 14)
  TEST_ADC_VI_OP( 238,  vadc.vim, rd_data_vi+1664, rs2_data+1664, 14)
  TEST_ADC_VI_OP( 239,  vadc.vim, rd_data_vi+1728, rs2_data+1728, 14)
  TEST_ADC_VI_OP( 240,  vadc.vim, rd_data_vi+1792, rs2_data+1792, 14)
  TEST_ADC_VI_OP( 241,  vadc.vim, rd_data_vi+1856, rs2_data+1856, 14)
  TEST_ADC_VI_OP( 242,  vadc.vim, rd_data_vi+1920, rs2_data+1920, 14)
  TEST_ADC_VI_OP( 243,  vadc.vim, rd_data_vi+1984, rs2_data+1984, 14)
  TEST_ADC_VI_OP( 244,  vadc.vim, rd_data_vi+2048, rs2_data+2048, 14)
  TEST_ADC_VI_OP( 245,  vadc.vim, rd_data_vi+2112, rs2_data+2112, 14)
  TEST_ADC_VI_OP( 246,  vadc.vim, rd_data_vi+2176, rs2_data+2176, 14)
  TEST_ADC_VI_OP( 247,  vadc.vim, rd_data_vi+2240, rs2_data+2240, 14)
  TEST_ADC_VI_OP( 248,  vadc.vim, rd_data_vi+2304, rs2_data+2304, 14)
  TEST_ADC_VI_OP( 249,  vadc.vim, rd_data_vi+2368, rs2_data+2368, 14)
  TEST_ADC_VI_OP( 250,  vadc.vim, rd_data_vi+2432, rs2_data+2432, 14)
  TEST_ADC_VI_OP( 251,  vadc.vim, rd_data_vi+2496, rs2_data+2496, 14)
  TEST_ADC_VI_OP( 252,  vadc.vim, rd_data_vi+2560, rs2_data+2560, 14)
  TEST_ADC_VI_OP( 253,  vadc.vim, rd_data_vi+2624, rs2_data+2624, 14)
  TEST_ADC_VI_OP( 254,  vadc.vim, rd_data_vi+2688, rs2_data+2688, 14)
  TEST_ADC_VI_OP( 255,  vadc.vim, rd_data_vi+2752, rs2_data+2752, 14)
  TEST_ADC_VI_OP( 256,  vadc.vim, rd_data_vi+2816, rs2_data+2816, 14)
  TEST_ADC_VI_OP( 257,  vadc.vim, rd_data_vi+2880, rs2_data+2880, 14)
  TEST_ADC_VI_OP( 258,  vadc.vim, rd_data_vi+2944, rs2_data+2944, 14)
  TEST_ADC_VI_OP( 259,  vadc.vim, rd_data_vi+3008, rs2_data+3008, 14)
  TEST_ADC_VI_OP( 260,  vadc.vim, rd_data_vi+3072, rs2_data+3072, 14)
  TEST_ADC_VI_OP( 261,  vadc.vim, rd_data_vi+3136, rs2_data+3136, 14)
  TEST_ADC_VI_OP( 262,  vadc.vim, rd_data_vi+3200, rs2_data+3200, 14)
  TEST_ADC_VI_OP( 263,  vadc.vim, rd_data_vi+3264, rs2_data+3264, 14)
  TEST_ADC_VI_OP( 264,  vadc.vim, rd_data_vi+3328, rs2_data+3328, 14)
  TEST_ADC_VI_OP( 265,  vadc.vim, rd_data_vi+3392, rs2_data+3392, 14)
  TEST_ADC_VI_OP( 266,  vadc.vim, rd_data_vi+3456, rs2_data+3456, 14)
  TEST_ADC_VI_OP( 267,  vadc.vim, rd_data_vi+3520, rs2_data+3520, 14)
  TEST_ADC_VI_OP( 268,  vadc.vim, rd_data_vi+3584, rs2_data+3584, 14)
  TEST_ADC_VI_OP( 269,  vadc.vim, rd_data_vi+3648, rs2_data+3648, 14)
  TEST_ADC_VI_OP( 270,  vadc.vim, rd_data_vi+3712, rs2_data+3712, 14)
  TEST_ADC_VI_OP( 271,  vadc.vim, rd_data_vi+3776, rs2_data+3776, 14)
  TEST_ADC_VI_OP( 272,  vadc.vim, rd_data_vi+3840, rs2_data+3840, 14)
  TEST_ADC_VI_OP( 273,  vadc.vim, rd_data_vi+3904, rs2_data+3904, 14)
  TEST_ADC_VI_OP( 274,  vadc.vim, rd_data_vi+3968, rs2_data+3968, 14)
  TEST_ADC_VI_OP( 275,  vadc.vim, rd_data_vi+4032, rs2_data+4032, 14)
  TEST_ADC_VI_OP( 276,  vadc.vim, rd_data_vi+4096, rs2_data+4096, 14)
  TEST_ADC_VI_OP( 277,  vadc.vim, rd_data_vi+4160, rs2_data+4160, 14)
  TEST_ADC_VI_OP( 278,  vadc.vim, rd_data_vi+4224, rs2_data+4224, 14)
  TEST_ADC_VI_OP( 279,  vadc.vim, rd_data_vi+4288, rs2_data+4288, 14)
  TEST_ADC_VI_OP( 280,  vadc.vim, rd_data_vi+4352, rs2_data+4352, 14)
  TEST_ADC_VI_OP( 281,  vadc.vim, rd_data_vi+4416, rs2_data+4416, 14)
  TEST_ADC_VI_OP( 282,  vadc.vim, rd_data_vi+4480, rs2_data+4480, 14)
  TEST_ADC_VI_OP( 283,  vadc.vim, rd_data_vi+4544, rs2_data+4544, 14)
  TEST_ADC_VI_OP( 284,  vadc.vim, rd_data_vi+4608, rs2_data+4608, 14)
  TEST_ADC_VI_OP( 285,  vadc.vim, rd_data_vi+4672, rs2_data+4672, 14)
  TEST_ADC_VI_OP( 286,  vadc.vim, rd_data_vi+4736, rs2_data+4736, 14)
  TEST_ADC_VI_OP( 287,  vadc.vim, rd_data_vi+4800, rs2_data+4800, 14)
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
.dword	0xffffffff7fffffff
.dword	0xfffffffeffffffff
.dword	0xfffffffdffffffff
.dword	0xfffffffbffffffff
.dword	0xfffffff7ffffffff
.dword	0xffffffefffffffff
.dword	0xffffffdfffffffff
.dword	0xffffffbfffffffff
.dword	0xffffff7fffffffff
.dword	0xfffffeffffffffff
.dword	0xfffffdffffffffff
.dword	0xfffffbffffffffff
.dword	0xfffff7ffffffffff
.dword	0xffffefffffffffff
.dword	0xffffdfffffffffff
.dword	0xffffbfffffffffff
.dword	0xffff7fffffffffff
.dword	0xfffeffffffffffff
.dword	0xfffdffffffffffff
.dword	0xfffbffffffffffff
.dword	0xfff7ffffffffffff
.dword	0xffefffffffffffff
.dword	0xffdfffffffffffff
.dword	0xffbfffffffffffff
.dword	0xff7fffffffffffff
.dword	0xfeffffffffffffff
.dword	0xfdffffffffffffff
.dword	0xfbffffffffffffff
.dword	0xf7ffffffffffffff
.dword	0xefffffffffffffff
.dword	0xdfffffffffffffff
.dword	0xbfffffffffffffff
.dword	0x7fffffffffffffff
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
.dword	0x00000080000000
.dword	0x00000100000000
.dword	0x00000200000000
.dword	0x00000400000000
.dword	0x00000800000000
.dword	0x00001000000000
.dword	0x00002000000000
.dword	0x00004000000000
.dword	0x00008000000000
.dword	0x00010000000000
.dword	0x00020000000000
.dword	0x00040000000000
.dword	0x00080000000000
.dword	0x00100000000000
.dword	0x00200000000000
.dword	0x00400000000000
.dword	0x00800000000000
.dword	0x01000000000000
.dword	0x02000000000000
.dword	0x04000000000000
.dword	0x08000000000000
.dword	0x10000000000000
.dword	0x20000000000000
.dword	0x40000000000000
.dword	0x80000000000000
.dword	0x100000000000000
.dword	0x200000000000000
.dword	0x400000000000000
.dword	0x800000000000000
.dword	0x1000000000000000
.dword	0x2000000000000000
.dword	0x4000000000000000
.dword	0x8000000000000000
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
.dword	0x5555555555555555
.dword	0x00000000000003
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000000
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
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
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
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
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
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
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
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
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334

.align 8
rs2_data:
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
.dword	0xffffffff7fffffff
.dword	0xfffffffeffffffff
.dword	0xfffffffdffffffff
.dword	0xfffffffbffffffff
.dword	0xfffffff7ffffffff
.dword	0xffffffefffffffff
.dword	0xffffffdfffffffff
.dword	0xffffffbfffffffff
.dword	0xffffff7fffffffff
.dword	0xfffffeffffffffff
.dword	0xfffffdffffffffff
.dword	0xfffffbffffffffff
.dword	0xfffff7ffffffffff
.dword	0xffffefffffffffff
.dword	0xffffdfffffffffff
.dword	0xffffbfffffffffff
.dword	0xffff7fffffffffff
.dword	0xfffeffffffffffff
.dword	0xfffdffffffffffff
.dword	0xfffbffffffffffff
.dword	0xfff7ffffffffffff
.dword	0xffefffffffffffff
.dword	0xffdfffffffffffff
.dword	0xffbfffffffffffff
.dword	0xff7fffffffffffff
.dword	0xfeffffffffffffff
.dword	0xfdffffffffffffff
.dword	0xfbffffffffffffff
.dword	0xf7ffffffffffffff
.dword	0xefffffffffffffff
.dword	0xdfffffffffffffff
.dword	0xbfffffffffffffff
.dword	0x7fffffffffffffff
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
.dword	0x00000080000000
.dword	0x00000100000000
.dword	0x00000200000000
.dword	0x00000400000000
.dword	0x00000800000000
.dword	0x00001000000000
.dword	0x00002000000000
.dword	0x00004000000000
.dword	0x00008000000000
.dword	0x00010000000000
.dword	0x00020000000000
.dword	0x00040000000000
.dword	0x00080000000000
.dword	0x00100000000000
.dword	0x00200000000000
.dword	0x00400000000000
.dword	0x00800000000000
.dword	0x01000000000000
.dword	0x02000000000000
.dword	0x04000000000000
.dword	0x08000000000000
.dword	0x10000000000000
.dword	0x20000000000000
.dword	0x40000000000000
.dword	0x80000000000000
.dword	0x100000000000000
.dword	0x200000000000000
.dword	0x400000000000000
.dword	0x800000000000000
.dword	0x1000000000000000
.dword	0x2000000000000000
.dword	0x4000000000000000
.dword	0x8000000000000000
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x5555555555555555
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334

.align 8
rd_data_vv:
.dword	0xfffffffffffffffd
.dword	0xfffffffffffffffa
.dword	0xfffffffffffffff6
.dword	0xffffffffffffffee
.dword	0xffffffffffffffdf
.dword	0xffffffffffffffbe
.dword	0xffffffffffffff7e
.dword	0xfffffffffffffefe
.dword	0xfffffffffffffdff
.dword	0xfffffffffffffbfe
.dword	0xfffffffffffff7fe
.dword	0xffffffffffffeffe
.dword	0xffffffffffffdfff
.dword	0xffffffffffffbffe
.dword	0xffffffffffff7ffe
.dword	0xfffffffffffefffe
.dword	0xfffffffffffdffff
.dword	0xfffffffffffbfffe
.dword	0xfffffffffff7fffe
.dword	0xffffffffffeffffe
.dword	0xffffffffffdfffff
.dword	0xffffffffffbffffe
.dword	0xffffffffff7ffffe
.dword	0xfffffffffefffffe
.dword	0xfffffffffdffffff
.dword	0xfffffffffbfffffe
.dword	0xfffffffff7fffffe
.dword	0xffffffffeffffffe
.dword	0xffffffffdfffffff
.dword	0xffffffffbffffffe
.dword	0xffffffff7ffffffe
.dword	0xfffffffefffffffe
.dword	0xfffffffdffffffff
.dword	0xfffffffbfffffffe
.dword	0xfffffff7fffffffe
.dword	0xffffffeffffffffe
.dword	0xffffffdfffffffff
.dword	0xffffffbffffffffe
.dword	0xffffff7ffffffffe
.dword	0xfffffefffffffffe
.dword	0xfffffdffffffffff
.dword	0xfffffbfffffffffe
.dword	0xfffff7fffffffffe
.dword	0xffffeffffffffffe
.dword	0xffffdfffffffffff
.dword	0xffffbffffffffffe
.dword	0xffff7ffffffffffe
.dword	0xfffefffffffffffe
.dword	0xfffdffffffffffff
.dword	0xfffbfffffffffffe
.dword	0xfff7fffffffffffe
.dword	0xffeffffffffffffe
.dword	0xffdfffffffffffff
.dword	0xffbffffffffffffe
.dword	0xff7ffffffffffffe
.dword	0xfefffffffffffffe
.dword	0xfdffffffffffffff
.dword	0xfbfffffffffffffe
.dword	0xf7fffffffffffffe
.dword	0xeffffffffffffffe
.dword	0xdfffffffffffffff
.dword	0xbffffffffffffffe
.dword	0x7ffffffffffffffe
.dword	0xfffffffffffffffe
.dword	0x0000000000000003
.dword	0x0000000000000004
.dword	0x0000000000000008
.dword	0x0000000000000010
.dword	0x0000000000000021
.dword	0x0000000000000040
.dword	0x0000000000000080
.dword	0x0000000000000100
.dword	0x0000000000000201
.dword	0x0000000000000400
.dword	0x0000000000000800
.dword	0x0000000000001000
.dword	0x0000000000002001
.dword	0x0000000000004000
.dword	0x0000000000008000
.dword	0x0000000000010000
.dword	0x0000000000020001
.dword	0x0000000000040000
.dword	0x0000000000080000
.dword	0x0000000000100000
.dword	0x0000000000200001
.dword	0x0000000000400000
.dword	0x0000000000800000
.dword	0x0000000001000000
.dword	0x0000000002000001
.dword	0x0000000004000000
.dword	0x0000000008000000
.dword	0x0000000010000000
.dword	0x0000000020000001
.dword	0x0000000040000000
.dword	0x0000000080000000
.dword	0x0000000100000000
.dword	0x0000000200000001
.dword	0x0000000400000000
.dword	0x0000000800000000
.dword	0x0000001000000000
.dword	0x0000002000000001
.dword	0x0000004000000000
.dword	0x0000008000000000
.dword	0x0000010000000000
.dword	0x0000020000000001
.dword	0x0000040000000000
.dword	0x0000080000000000
.dword	0x0000100000000000
.dword	0x0000200000000001
.dword	0x0000400000000000
.dword	0x0000800000000000
.dword	0x0001000000000000
.dword	0x0002000000000001
.dword	0x0004000000000000
.dword	0x0008000000000000
.dword	0x0010000000000000
.dword	0x0020000000000001
.dword	0x0040000000000000
.dword	0x0080000000000000
.dword	0x0100000000000000
.dword	0x0200000000000001
.dword	0x0400000000000000
.dword	0x0800000000000000
.dword	0x1000000000000000
.dword	0x2000000000000001
.dword	0x4000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000007
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaad
.dword	0x0000000000000008
.dword	0x3333333333333337
.dword	0x6666666666666669
.dword	0xffffffff4afb0cd0
.dword	0x5555555555555558
.dword	0x00000000b504f337
.dword	0x0000000000000005
.dword	0x5555555555555557
.dword	0x0000000000000003
.dword	0x0000000000000008
.dword	0x3333333333333335
.dword	0xbbbbbbbbbbbbbbba
.dword	0xaaaaaaaaaaaaaaad
.dword	0xaaaaaaab5faf9ddd
.dword	0x5555555555555559
.dword	0xaaaaaaaaaaaaaaae
.dword	0x0000000000000009
.dword	0x3333333333333338
.dword	0x666666666666666a
.dword	0xffffffff4afb0cd1
.dword	0x00000000b504f334
.dword	0x0000000000000007
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xffffffffffffffff
.dword	0x555555555555555a
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x55555554a0506222
.dword	0x555555560a5a4888
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaa9
.dword	0x5555555555555555
.dword	0x5555555555555559
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbba
.dword	0x555555560a5a4887
.dword	0xaaaaaaaaaaaaaaab
.dword	0x0000000000000001
.dword	0x555555555555555b
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506224
.dword	0x555555560a5a4889
.dword	0x5555555555555558
.dword	0xffffffffffffffff
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xdddddddddddddddd
.dword	0x1111111111111110
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9ddd
.dword	0xaaaaaaaaaaaaaaac
.dword	0xfffffffffffffffe
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaae
.dword	0xdddddddddddddddc
.dword	0x111111111111110f
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaab5faf9ddc
.dword	0x0000000000000000
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab1
.dword	0xddddddddddddddde
.dword	0x1111111111111111
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9ddf
.dword	0x0000000000000008
.dword	0x555555555555555a
.dword	0xaaaaaaaaaaaaaaaf
.dword	0x000000000000000b
.dword	0x3333333333333338
.dword	0x666666666666666b
.dword	0xffffffff4afb0cd2
.dword	0x00000000b504f339
.dword	0x0000000000000007
.dword	0x5555555555555559
.dword	0x0000000000000005
.dword	0x000000000000000a
.dword	0x3333333333333337
.dword	0x666666666666666a
.dword	0x00000000b504f337
.dword	0x555555555555555c
.dword	0xaaaaaaaaaaaaaab0
.dword	0x000000000000000b
.dword	0x3333333333333339
.dword	0x666666666666666d
.dword	0xffffffff4afb0cd3
.dword	0x00000000b504f339
.dword	0x3333333333333336
.dword	0x8888888888888889
.dword	0xdddddddddddddddd
.dword	0x3333333333333338
.dword	0x6666666666666666
.dword	0x999999999999999a
.dword	0x333333327e2e4000
.dword	0x33333333e8382666
.dword	0x3333333333333335
.dword	0x8888888888888888
.dword	0x3333333333333333
.dword	0x3333333333333337
.dword	0x6666666666666665
.dword	0x9999999999999999
.dword	0x33333333e8382665
.dword	0x8888888888888889
.dword	0xddddddddddddddde
.dword	0x333333333333333a
.dword	0x6666666666666667
.dword	0x999999999999999a
.dword	0x333333327e2e4001
.dword	0x33333333e8382668
.dword	0x6666666666666669
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x1111111111111110
.dword	0x666666666666666c
.dword	0x9999999999999999
.dword	0xcccccccccccccccc
.dword	0x66666665b1617333
.dword	0x666666671b6b599a
.dword	0x6666666666666668
.dword	0xbbbbbbbbbbbbbbba
.dword	0x6666666666666666
.dword	0x666666666666666b
.dword	0x9999999999999998
.dword	0xcccccccccccccccb
.dword	0x666666671b6b5998
.dword	0xbbbbbbbbbbbbbbbd
.dword	0x1111111111111111
.dword	0x666666666666666c
.dword	0x999999999999999a
.dword	0xccccccccccccccce
.dword	0x66666665b1617334
.dword	0x666666671b6b599a
.dword	0xffffffff4afb0cd0
.dword	0x55555554a0506223
.dword	0xaaaaaaa9f5a5b777
.dword	0xffffffff4afb0cd2
.dword	0x333333327e2e4000
.dword	0x66666665b1617334
.dword	0xfffffffe95f6199a
.dword	0x0000000000000000
.dword	0xffffffff4afb0ccf
.dword	0x55555554a0506222
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0cd1
.dword	0x333333327e2e3fff
.dword	0x66666665b1617333
.dword	0xffffffffffffffff
.dword	0x55555554a0506223
.dword	0xaaaaaaa9f5a5b778
.dword	0xffffffff4afb0cd4
.dword	0x333333327e2e4001
.dword	0x66666665b1617334
.dword	0xfffffffe95f6199b
.dword	0x0000000000000002
.dword	0x00000000b504f336
.dword	0x555555560a5a4888
.dword	0xaaaaaaab5faf9ddd
.dword	0x00000000b504f339
.dword	0x33333333e8382666
.dword	0x666666671b6b5999
.dword	0x0000000000000000
.dword	0x000000016a09e667
.dword	0x00000000b504f335
.dword	0x555555560a5a4887
.dword	0x00000000b504f333
.dword	0x00000000b504f338
.dword	0x33333333e8382665
.dword	0x666666671b6b5998
.dword	0x000000016a09e665
.dword	0x555555560a5a488a
.dword	0xaaaaaaab5faf9dde
.dword	0x00000000b504f339
.dword	0x33333333e8382667
.dword	0x666666671b6b599b
.dword	0x0000000000000001
.dword	0x000000016a09e667
.dword	0x0000000000000005
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaac
.dword	0x0000000000000007
.dword	0x3333333333333335
.dword	0x6666666666666669
.dword	0xffffffff4afb0ccf
.dword	0x00000000b504f335
.dword	0x0000000000000004
.dword	0x5555555555555557
.dword	0x0000000000000002
.dword	0x0000000000000006
.dword	0x3333333333333334
.dword	0x6666666666666668
.dword	0x00000000b504f334
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaad
.dword	0x0000000000000009
.dword	0x3333333333333336
.dword	0x6666666666666669
.dword	0xffffffff4afb0cd0
.dword	0x00000000b504f337
.dword	0x5555555555555557
.dword	0xaaaaaaaaaaaaaaa9
.dword	0xfffffffffffffffe
.dword	0x555555555555555a
.dword	0x8888888888888887
.dword	0xbbbbbbbbbbbbbbba
.dword	0x55555554a0506221
.dword	0x555555560a5a4888
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaa8
.dword	0x5555555555555554
.dword	0x5555555555555559
.dword	0x8888888888888886
.dword	0xbbbbbbbbbbbbbbb9
.dword	0x555555560a5a4886
.dword	0xaaaaaaaaaaaaaaab
.dword	0xffffffffffffffff
.dword	0x555555555555555a
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506222
.dword	0x555555560a5a4888
.dword	0x0000000000000003
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x0000000000000005
.dword	0x3333333333333333
.dword	0x6666666666666667
.dword	0xffffffff4afb0ccd
.dword	0x00000000b504f333
.dword	0x0000000000000002
.dword	0x5555555555555555
.dword	0x0000000000000000
.dword	0x0000000000000004
.dword	0x3333333333333332
.dword	0x6666666666666666
.dword	0x00000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x0000000000000007
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x00000000b504f335
.dword	0x0000000000000007
.dword	0x5555555555555559
.dword	0xaaaaaaaaaaaaaaae
.dword	0x000000000000000a
.dword	0x3333333333333337
.dword	0x666666666666666a
.dword	0xffffffff4afb0cd1
.dword	0x00000000b504f338
.dword	0x0000000000000006
.dword	0x5555555555555558
.dword	0x0000000000000004
.dword	0x0000000000000009
.dword	0x3333333333333336
.dword	0x6666666666666669
.dword	0x00000000b504f336
.dword	0x555555555555555b
.dword	0xaaaaaaaaaaaaaaaf
.dword	0x000000000000000a
.dword	0x3333333333333338
.dword	0x666666666666666c
.dword	0xffffffff4afb0cd2
.dword	0x00000000b504f338
.dword	0x3333333333333335
.dword	0x8888888888888888
.dword	0xdddddddddddddddc
.dword	0x3333333333333337
.dword	0x6666666666666665
.dword	0x9999999999999999
.dword	0x333333327e2e3fff
.dword	0x33333333e8382665
.dword	0x3333333333333334
.dword	0x8888888888888887
.dword	0x3333333333333332
.dword	0x3333333333333336
.dword	0x6666666666666664
.dword	0x9999999999999998
.dword	0x33333333e8382664
.dword	0x8888888888888888
.dword	0xdddddddddddddddd
.dword	0x3333333333333339
.dword	0x6666666666666666
.dword	0x9999999999999999
.dword	0x333333327e2e4000
.dword	0x33333333e8382667
.dword	0x6666666666666668
.dword	0xbbbbbbbbbbbbbbba
.dword	0x111111111111110f
.dword	0x666666666666666b
.dword	0x9999999999999998
.dword	0xcccccccccccccccb
.dword	0x66666665b1617332
.dword	0x666666671b6b5999
.dword	0x6666666666666667
.dword	0xbbbbbbbbbbbbbbb9
.dword	0x6666666666666665
.dword	0x666666666666666a
.dword	0x9999999999999997
.dword	0xccccccccccccccca
.dword	0x666666671b6b5997
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x1111111111111110
.dword	0x666666666666666b
.dword	0x9999999999999999
.dword	0xcccccccccccccccd
.dword	0x66666665b1617333
.dword	0x666666671b6b5999
.dword	0x00000000b504f335
.dword	0x555555560a5a4888
.dword	0xaaaaaaab5faf9ddc
.dword	0x00000000b504f337
.dword	0x33333333e8382665
.dword	0x666666671b6b5999
.dword	0xffffffffffffffff
.dword	0x000000016a09e665
.dword	0x00000000b504f334
.dword	0x555555560a5a4887
.dword	0x00000000b504f332
.dword	0x00000000b504f336
.dword	0x33333333e8382664
.dword	0x666666671b6b5998
.dword	0x000000016a09e664
.dword	0x555555560a5a4888
.dword	0xaaaaaaab5faf9ddd
.dword	0x00000000b504f339
.dword	0x33333333e8382666
.dword	0x666666671b6b5999
.dword	0x0000000000000000
.dword	0x000000016a09e667
.dword	0x5555555555555559
.dword	0xaaaaaaaaaaaaaaab
.dword	0x0000000000000000
.dword	0x555555555555555c
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506223
.dword	0x555555560a5a488a
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x5555555555555556
.dword	0x555555555555555b
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x555555560a5a4888
.dword	0xaaaaaaaaaaaaaaad
.dword	0x0000000000000001
.dword	0x555555555555555c
.dword	0x888888888888888a
.dword	0xbbbbbbbbbbbbbbbe
.dword	0x55555554a0506224
.dword	0x555555560a5a488a
.dword	0xaaaaaaaaaaaaaaae
.dword	0x0000000000000001
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab0
.dword	0xddddddddddddddde
.dword	0x1111111111111112
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9dde
.dword	0xaaaaaaaaaaaaaaad
.dword	0x0000000000000000
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xdddddddddddddddd
.dword	0x1111111111111111
.dword	0xaaaaaaab5faf9ddd
.dword	0x0000000000000001
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaab2
.dword	0xdddddddddddddddf
.dword	0x1111111111111112
.dword	0xaaaaaaa9f5a5b779
.dword	0xaaaaaaab5faf9de0
.dword	0x0000000000000009
.dword	0x555555555555555b
.dword	0xaaaaaaaaaaaaaab0
.dword	0x000000000000000c
.dword	0x3333333333333339
.dword	0x666666666666666c
.dword	0xffffffff4afb0cd3
.dword	0x00000000b504f33a
.dword	0x0000000000000008
.dword	0x555555555555555a
.dword	0x0000000000000006
.dword	0x000000000000000b
.dword	0x3333333333333338
.dword	0x666666666666666b
.dword	0x00000000b504f338
.dword	0x555555555555555d
.dword	0xaaaaaaaaaaaaaab1
.dword	0x000000000000000c
.dword	0x333333333333333a
.dword	0x666666666666666e
.dword	0xffffffff4afb0cd4
.dword	0x00000000b504f33a
.dword	0x3333333333333337
.dword	0x888888888888888a
.dword	0xddddddddddddddde
.dword	0x3333333333333339
.dword	0x6666666666666667
.dword	0x999999999999999b
.dword	0x333333327e2e4001
.dword	0x33333333e8382667
.dword	0x3333333333333336
.dword	0x8888888888888889
.dword	0x3333333333333334
.dword	0x3333333333333338
.dword	0x6666666666666666
.dword	0x999999999999999a
.dword	0x33333333e8382666
.dword	0x888888888888888a
.dword	0xdddddddddddddddf
.dword	0x333333333333333b
.dword	0x6666666666666668
.dword	0x999999999999999b
.dword	0x333333327e2e4002
.dword	0x33333333e8382669
.dword	0x666666666666666a
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x1111111111111111
.dword	0x666666666666666d
.dword	0x999999999999999a
.dword	0xcccccccccccccccd
.dword	0x66666665b1617334
.dword	0x666666671b6b599b
.dword	0x6666666666666669
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x6666666666666667
.dword	0x666666666666666c
.dword	0x9999999999999999
.dword	0xcccccccccccccccc
.dword	0x666666671b6b5999
.dword	0xbbbbbbbbbbbbbbbe
.dword	0x1111111111111112
.dword	0x666666666666666d
.dword	0x999999999999999b
.dword	0xcccccccccccccccf
.dword	0x66666665b1617335
.dword	0x666666671b6b599b
.dword	0xffffffff4afb0cd1
.dword	0x55555554a0506224
.dword	0xaaaaaaa9f5a5b778
.dword	0xffffffff4afb0cd3
.dword	0x333333327e2e4001
.dword	0x66666665b1617335
.dword	0xfffffffe95f6199b
.dword	0x0000000000000001
.dword	0xffffffff4afb0cd0
.dword	0x55555554a0506223
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cd2
.dword	0x333333327e2e4000
.dword	0x66666665b1617334
.dword	0x0000000000000000
.dword	0x55555554a0506224
.dword	0xaaaaaaa9f5a5b779
.dword	0xffffffff4afb0cd5
.dword	0x333333327e2e4002
.dword	0x66666665b1617335
.dword	0xfffffffe95f6199c
.dword	0x0000000000000003
.dword	0x00000000b504f337
.dword	0x555555560a5a4889
.dword	0xaaaaaaab5faf9dde
.dword	0x00000000b504f33a
.dword	0x33333333e8382667
.dword	0x666666671b6b599a
.dword	0x0000000000000001
.dword	0x000000016a09e668
.dword	0x00000000b504f336
.dword	0x555555560a5a4888
.dword	0x00000000b504f334
.dword	0x00000000b504f339
.dword	0x33333333e8382666
.dword	0x666666671b6b5999
.dword	0x000000016a09e666
.dword	0xfffffffffffffffd
.dword	0xfffffffffffffffa
.dword	0xfffffffffffffff6
.dword	0xffffffffffffffee
.dword	0xffffffffffffffdf
.dword	0xffffffffffffffbe
.dword	0xffffffffffffff7e
.dword	0xfffffffffffffefe
.dword	0xfffffffffffffffd
.dword	0xfffffffffffffffa
.dword	0xfffffffffffffff6
.dword	0xffffffffffffffee
.dword	0xffffffffffffffdf
.dword	0xffffffffffffffbe
.dword	0xffffffffffffff7e
.dword	0xfffffffffffffefe
.dword	0xfffffffffffffdff
.dword	0xfffffffffffffbfe
.dword	0xfffffffffffff7fe
.dword	0xffffffffffffeffe
.dword	0xffffffffffffdfff
.dword	0xffffffffffffbffe
.dword	0xffffffffffff7ffe
.dword	0xfffffffffffefffe
.dword	0xfffffffffffffdff
.dword	0xfffffffffffffbfe
.dword	0xfffffffffffff7fe
.dword	0xffffffffffffeffe
.dword	0xffffffffffffdfff
.dword	0xffffffffffffbffe
.dword	0xffffffffffff7ffe
.dword	0xfffffffffffefffe
.dword	0xfffffffffffdffff
.dword	0xfffffffffffbfffe
.dword	0xfffffffffff7fffe
.dword	0xffffffffffeffffe
.dword	0xffffffffffdfffff
.dword	0xffffffffffbffffe
.dword	0xffffffffff7ffffe
.dword	0xfffffffffefffffe
.dword	0xfffffffffffdffff
.dword	0xfffffffffffbfffe
.dword	0xfffffffffff7fffe
.dword	0xffffffffffeffffe
.dword	0xffffffffffdfffff
.dword	0xffffffffffbffffe
.dword	0xffffffffff7ffffe
.dword	0xfffffffffefffffe
.dword	0xfffffffffdffffff
.dword	0xfffffffffbfffffe
.dword	0xfffffffff7fffffe
.dword	0xffffffffeffffffe
.dword	0xffffffffdfffffff
.dword	0xffffffffbffffffe
.dword	0xffffffff7ffffffe
.dword	0xfffffffefffffffe
.dword	0xfffffffffdffffff
.dword	0xfffffffffbfffffe
.dword	0xfffffffff7fffffe
.dword	0xffffffffeffffffe
.dword	0xffffffffdfffffff
.dword	0xffffffffbffffffe
.dword	0xffffffff7ffffffe
.dword	0xfffffffefffffffe
.dword	0xfffffffdffffffff
.dword	0xfffffffbfffffffe
.dword	0xfffffff7fffffffe
.dword	0xffffffeffffffffe
.dword	0xffffffdfffffffff
.dword	0xffffffbffffffffe
.dword	0xffffff7ffffffffe
.dword	0xfffffefffffffffe
.dword	0xfffffffdffffffff
.dword	0xfffffffbfffffffe
.dword	0xfffffff7fffffffe
.dword	0xffffffeffffffffe
.dword	0xffffffdfffffffff
.dword	0xffffffbffffffffe
.dword	0xffffff7ffffffffe
.dword	0xfffffefffffffffe
.dword	0xfffffdffffffffff
.dword	0xfffffbfffffffffe
.dword	0xfffff7fffffffffe
.dword	0xffffeffffffffffe
.dword	0xffffdfffffffffff
.dword	0xffffbffffffffffe
.dword	0xffff7ffffffffffe
.dword	0xfffefffffffffffe
.dword	0xfffffdffffffffff
.dword	0xfffffbfffffffffe
.dword	0xfffff7fffffffffe
.dword	0xffffeffffffffffe
.dword	0xffffdfffffffffff
.dword	0xffffbffffffffffe
.dword	0xffff7ffffffffffe
.dword	0xfffefffffffffffe
.dword	0xfffdffffffffffff
.dword	0xfffbfffffffffffe
.dword	0xfff7fffffffffffe
.dword	0xffeffffffffffffe
.dword	0xffdfffffffffffff
.dword	0xffbffffffffffffe
.dword	0xff7ffffffffffffe
.dword	0xfefffffffffffffe
.dword	0xfdffffffffffffff
.dword	0xfbfffffffffffffe
.dword	0xf7fffffffffffffe
.dword	0xeffffffffffffffe
.dword	0xdfffffffffffffff
.dword	0xbffffffffffffffe
.dword	0x7ffffffffffffffe
.dword	0xfffffffffffffffe
.dword	0xfdffffffffffffff
.dword	0xfbfffffffffffffe
.dword	0xf7fffffffffffffe
.dword	0xeffffffffffffffe
.dword	0xdfffffffffffffff
.dword	0xbffffffffffffffe
.dword	0x7ffffffffffffffe
.dword	0xfffffffffffffffe
.dword	0x0000000000000003
.dword	0x0000000000000004
.dword	0x0000000000000008
.dword	0x0000000000000010
.dword	0x0000000000000021
.dword	0x0000000000000040
.dword	0x0000000000000080
.dword	0x0000000000000100
.dword	0x0000000000000003
.dword	0x0000000000000004
.dword	0x0000000000000008
.dword	0x0000000000000010
.dword	0x0000000000000021
.dword	0x0000000000000040
.dword	0x0000000000000080
.dword	0x0000000000000100
.dword	0x0000000000000201
.dword	0x0000000000000400
.dword	0x0000000000000800
.dword	0x0000000000001000
.dword	0x0000000000002001
.dword	0x0000000000004000
.dword	0x0000000000008000
.dword	0x0000000000010000
.dword	0x0000000000000201
.dword	0x0000000000000400
.dword	0x0000000000000800
.dword	0x0000000000001000
.dword	0x0000000000002001
.dword	0x0000000000004000
.dword	0x0000000000008000
.dword	0x0000000000010000
.dword	0x0000000000020001
.dword	0x0000000000040000
.dword	0x0000000000080000
.dword	0x0000000000100000
.dword	0x0000000000200001
.dword	0x0000000000400000
.dword	0x0000000000800000
.dword	0x0000000001000000
.dword	0x0000000000020001
.dword	0x0000000000040000
.dword	0x0000000000080000
.dword	0x0000000000100000
.dword	0x0000000000200001
.dword	0x0000000000400000
.dword	0x0000000000800000
.dword	0x0000000001000000
.dword	0x0000000002000001
.dword	0x0000000004000000
.dword	0x0000000008000000
.dword	0x0000000010000000
.dword	0x0000000020000001
.dword	0x0000000040000000
.dword	0x0000000080000000
.dword	0x0000000100000000
.dword	0x0000000002000001
.dword	0x0000000004000000
.dword	0x0000000008000000
.dword	0x0000000010000000
.dword	0x0000000020000001
.dword	0x0000000040000000
.dword	0x0000000080000000
.dword	0x0000000100000000
.dword	0x0000000200000001
.dword	0x0000000400000000
.dword	0x0000000800000000
.dword	0x0000001000000000
.dword	0x0000002000000001
.dword	0x0000004000000000
.dword	0x0000008000000000
.dword	0x0000010000000000
.dword	0x0000000200000001
.dword	0x0000000400000000
.dword	0x0000000800000000
.dword	0x0000001000000000
.dword	0x0000002000000001
.dword	0x0000004000000000
.dword	0x0000008000000000
.dword	0x0000010000000000
.dword	0x0000020000000001
.dword	0x0000040000000000
.dword	0x0000080000000000
.dword	0x0000100000000000
.dword	0x0000200000000001
.dword	0x0000400000000000
.dword	0x0000800000000000
.dword	0x0001000000000000
.dword	0x0000020000000001
.dword	0x0000040000000000
.dword	0x0000080000000000
.dword	0x0000100000000000
.dword	0x0000200000000001
.dword	0x0000400000000000
.dword	0x0000800000000000
.dword	0x0001000000000000
.dword	0x0002000000000001
.dword	0x0004000000000000
.dword	0x0008000000000000
.dword	0x0010000000000000
.dword	0x0020000000000001
.dword	0x0040000000000000
.dword	0x0080000000000000
.dword	0x0100000000000000
.dword	0x0200000000000001
.dword	0x0400000000000000
.dword	0x0800000000000000
.dword	0x1000000000000000
.dword	0x2000000000000001
.dword	0x4000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000000
.dword	0x0200000000000001
.dword	0x0400000000000000
.dword	0x0800000000000000
.dword	0x1000000000000000
.dword	0x2000000000000001
.dword	0x4000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000007
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaad
.dword	0x0000000000000008
.dword	0x3333333333333337
.dword	0x6666666666666669
.dword	0xffffffff4afb0cd0
.dword	0x5555555555555558
.dword	0x0000000000000007
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaad
.dword	0x0000000000000008
.dword	0x3333333333333337
.dword	0x6666666666666669
.dword	0xffffffff4afb0cd0
.dword	0x5555555555555558
.dword	0x00000000b504f337
.dword	0x0000000000000005
.dword	0x5555555555555557
.dword	0x0000000000000003
.dword	0x0000000000000008
.dword	0x3333333333333335
.dword	0xbbbbbbbbbbbbbbba
.dword	0xaaaaaaaaaaaaaaad
.dword	0x00000000b504f337
.dword	0x0000000000000005
.dword	0x5555555555555557
.dword	0x0000000000000003
.dword	0x0000000000000008
.dword	0x3333333333333335
.dword	0xbbbbbbbbbbbbbbba
.dword	0xaaaaaaaaaaaaaaad
.dword	0xaaaaaaab5faf9ddd
.dword	0x5555555555555559
.dword	0xaaaaaaaaaaaaaaae
.dword	0x0000000000000009
.dword	0x3333333333333338
.dword	0x666666666666666a
.dword	0xffffffff4afb0cd1
.dword	0x00000000b504f334
.dword	0xaaaaaaab5faf9ddd
.dword	0x5555555555555559
.dword	0xaaaaaaaaaaaaaaae
.dword	0x0000000000000009
.dword	0x3333333333333338
.dword	0x666666666666666a
.dword	0xffffffff4afb0cd1
.dword	0x00000000b504f334
.dword	0x0000000000000007
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xffffffffffffffff
.dword	0x555555555555555a
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x55555554a0506222
.dword	0x555555560a5a4888
.dword	0x0000000000000007
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xffffffffffffffff
.dword	0x555555555555555a
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x55555554a0506222
.dword	0x555555560a5a4888
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaa9
.dword	0x5555555555555555
.dword	0x5555555555555559
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbba
.dword	0x555555560a5a4887
.dword	0xaaaaaaaaaaaaaaab
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaa9
.dword	0x5555555555555555
.dword	0x5555555555555559
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbba
.dword	0x555555560a5a4887
.dword	0xaaaaaaaaaaaaaaab
.dword	0x0000000000000001
.dword	0x555555555555555b
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506224
.dword	0x555555560a5a4889
.dword	0x5555555555555558
.dword	0xffffffffffffffff
.dword	0x0000000000000001
.dword	0x555555555555555b
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506224
.dword	0x555555560a5a4889
.dword	0x5555555555555558
.dword	0xffffffffffffffff
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xdddddddddddddddd
.dword	0x1111111111111110
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9ddd
.dword	0xaaaaaaaaaaaaaaac
.dword	0xfffffffffffffffe
.dword	0xaaaaaaaaaaaaaab1
.dword	0xddddddddddddddde
.dword	0x1111111111111111
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9ddf
.dword	0x0000000000000008
.dword	0x555555555555555a
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xaaaaaaaaaaaaaab1
.dword	0xddddddddddddddde
.dword	0x1111111111111111
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9ddf
.dword	0x0000000000000008
.dword	0x555555555555555a
.dword	0xaaaaaaaaaaaaaaaf
.dword	0x000000000000000b
.dword	0x3333333333333338
.dword	0x666666666666666b
.dword	0xffffffff4afb0cd2
.dword	0x00000000b504f339
.dword	0x0000000000000007
.dword	0x5555555555555559
.dword	0x0000000000000005
.dword	0x000000000000000b
.dword	0x3333333333333338
.dword	0x666666666666666b
.dword	0xffffffff4afb0cd2
.dword	0x00000000b504f339
.dword	0x0000000000000007
.dword	0x5555555555555559
.dword	0x0000000000000005
.dword	0x000000000000000a
.dword	0x3333333333333337
.dword	0x666666666666666a
.dword	0x00000000b504f337
.dword	0x555555555555555c
.dword	0xaaaaaaaaaaaaaab0
.dword	0x000000000000000b
.dword	0x3333333333333339
.dword	0x000000000000000a
.dword	0x3333333333333337
.dword	0x666666666666666a
.dword	0x00000000b504f337
.dword	0x555555555555555c
.dword	0xaaaaaaaaaaaaaab0
.dword	0x000000000000000b
.dword	0x3333333333333339
.dword	0x666666666666666d
.dword	0xffffffff4afb0cd3
.dword	0x00000000b504f339
.dword	0x3333333333333336
.dword	0x8888888888888889
.dword	0xdddddddddddddddd
.dword	0x3333333333333338
.dword	0x6666666666666666
.dword	0x666666666666666d
.dword	0xffffffff4afb0cd3
.dword	0x00000000b504f339
.dword	0x3333333333333336
.dword	0x8888888888888889
.dword	0xdddddddddddddddd
.dword	0x3333333333333338
.dword	0x6666666666666666
.dword	0x999999999999999a
.dword	0x333333327e2e4000
.dword	0x33333333e8382666
.dword	0x3333333333333335
.dword	0x8888888888888888
.dword	0x3333333333333333
.dword	0x3333333333333337
.dword	0x6666666666666665
.dword	0x999999999999999a
.dword	0x333333327e2e4000
.dword	0x33333333e8382666
.dword	0x3333333333333335
.dword	0x8888888888888888
.dword	0x3333333333333333
.dword	0x3333333333333337
.dword	0x6666666666666665
.dword	0x9999999999999999
.dword	0x33333333e8382665
.dword	0x8888888888888889
.dword	0xddddddddddddddde
.dword	0x333333333333333a
.dword	0x6666666666666667
.dword	0x999999999999999a
.dword	0x333333327e2e4001
.dword	0x9999999999999999
.dword	0x33333333e8382665
.dword	0x8888888888888889
.dword	0xddddddddddddddde
.dword	0x333333333333333a
.dword	0x6666666666666667
.dword	0x999999999999999a
.dword	0x333333327e2e4001
.dword	0x33333333e8382668
.dword	0x6666666666666669
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x1111111111111110
.dword	0x666666666666666c
.dword	0x9999999999999999
.dword	0xcccccccccccccccc
.dword	0x66666665b1617333
.dword	0x33333333e8382668
.dword	0x6666666666666669
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x1111111111111110
.dword	0x666666666666666c
.dword	0x9999999999999999
.dword	0xcccccccccccccccc
.dword	0x66666665b1617333
.dword	0x666666671b6b599a
.dword	0x6666666666666668
.dword	0xbbbbbbbbbbbbbbba
.dword	0x6666666666666666
.dword	0x666666666666666b
.dword	0x9999999999999998
.dword	0xcccccccccccccccb
.dword	0x666666671b6b5998
.dword	0x666666671b6b599a
.dword	0x6666666666666668
.dword	0xbbbbbbbbbbbbbbba
.dword	0x6666666666666666
.dword	0x666666666666666b
.dword	0x9999999999999998
.dword	0xcccccccccccccccb
.dword	0x666666671b6b5998

rd_data_vx:
.dword	0xfffffffffffffffd
.dword	0xfffffffffffffffb
.dword	0xfffffffffffffff9
.dword	0xfffffffffffffff5
.dword	0xffffffffffffffee
.dword	0xffffffffffffffdd
.dword	0xffffffffffffffbd
.dword	0xffffffffffffff7d
.dword	0xfffffffffffffefd
.dword	0xfffffffffffffdfc
.dword	0xfffffffffffffbfc
.dword	0xfffffffffffff7fc
.dword	0xffffffffffffeffd
.dword	0xffffffffffffdffc
.dword	0xffffffffffffbffc
.dword	0xffffffffffff7ffc
.dword	0xfffffffffffefffb
.dword	0xfffffffffffdfffa
.dword	0xfffffffffffbfffa
.dword	0xfffffffffff7fffa
.dword	0xffffffffffeffffb
.dword	0xffffffffffdffffa
.dword	0xffffffffffbffffa
.dword	0xffffffffff7ffffa
.dword	0xfffffffffefffff7
.dword	0xfffffffffdfffff6
.dword	0xfffffffffbfffff6
.dword	0xfffffffff7fffff6
.dword	0xffffffffeffffff7
.dword	0xffffffffdffffff6
.dword	0xffffffffbffffff6
.dword	0xffffffff7ffffff6
.dword	0xfffffffeffffffef
.dword	0xfffffffdffffffee
.dword	0xfffffffbffffffee
.dword	0xfffffff7ffffffee
.dword	0xffffffefffffffef
.dword	0xffffffdfffffffee
.dword	0xffffffbfffffffee
.dword	0xffffff7fffffffee
.dword	0xfffffeffffffffdf
.dword	0xfffffdffffffffde
.dword	0xfffffbffffffffde
.dword	0xfffff7ffffffffde
.dword	0xffffefffffffffdf
.dword	0xffffdfffffffffde
.dword	0xffffbfffffffffde
.dword	0xffff7fffffffffde
.dword	0xfffeffffffffffbf
.dword	0xfffdffffffffffbe
.dword	0xfffbffffffffffbe
.dword	0xfff7ffffffffffbe
.dword	0xffefffffffffffbf
.dword	0xffdfffffffffffbe
.dword	0xffbfffffffffffbe
.dword	0xff7fffffffffffbe
.dword	0xfeffffffffffff7f
.dword	0xfdffffffffffff7e
.dword	0xfbffffffffffff7e
.dword	0xf7ffffffffffff7e
.dword	0xefffffffffffff7f
.dword	0xdfffffffffffff7e
.dword	0xbfffffffffffff7e
.dword	0x7fffffffffffff7e
.dword	0xffffffffffffff01
.dword	0xffffffffffffff01
.dword	0xffffffffffffff03
.dword	0xffffffffffffff07
.dword	0xffffffffffffff10
.dword	0xffffffffffffff1f
.dword	0xffffffffffffff3f
.dword	0xffffffffffffff7f
.dword	0xffffffffffffff00
.dword	0xffffffffffffffff
.dword	0x00000000000001ff
.dword	0x00000000000005ff
.dword	0x0000000000000e00
.dword	0x0000000000001dff
.dword	0x0000000000003dff
.dword	0x0000000000007dff
.dword	0x000000000000fc00
.dword	0x000000000001fbff
.dword	0x000000000003fbff
.dword	0x000000000007fbff
.dword	0x00000000000ffc00
.dword	0x00000000001ffbff
.dword	0x00000000003ffbff
.dword	0x00000000007ffbff
.dword	0x0000000000fff800
.dword	0x0000000001fff7ff
.dword	0x0000000003fff7ff
.dword	0x0000000007fff7ff
.dword	0x000000000ffff800
.dword	0x000000001ffff7ff
.dword	0x000000003ffff7ff
.dword	0x000000007ffff7ff
.dword	0x00000000fffff000
.dword	0x00000001ffffefff
.dword	0x00000003ffffefff
.dword	0x00000007ffffefff
.dword	0x0000000ffffff000
.dword	0x0000001fffffefff
.dword	0x0000003fffffefff
.dword	0x0000007fffffefff
.dword	0x000000ffffffe000
.dword	0x000001ffffffdfff
.dword	0x000003ffffffdfff
.dword	0x000007ffffffdfff
.dword	0x00000fffffffe000
.dword	0x00001fffffffdfff
.dword	0x00003fffffffdfff
.dword	0x00007fffffffdfff
.dword	0x0000ffffffffc000
.dword	0x0001ffffffffbfff
.dword	0x0003ffffffffbfff
.dword	0x0007ffffffffbfff
.dword	0x000fffffffffc000
.dword	0x001fffffffffbfff
.dword	0x003fffffffffbfff
.dword	0x007fffffffffbfff
.dword	0x00ffffffffff8000
.dword	0x01ffffffffff7fff
.dword	0x03ffffffffff7fff
.dword	0x07ffffffffff7fff
.dword	0x0fffffffffff8000
.dword	0x1fffffffffff7fff
.dword	0x3fffffffffff7fff
.dword	0x7fffffffffff7fff
.dword	0xffffffffffff0003
.dword	0x5555555555545554
.dword	0xaaaaaaaaaaa9aaa9
.dword	0xffffffffffff0004
.dword	0x3333333333323333
.dword	0x6666666666656665
.dword	0xffffffff4afa0ccc
.dword	0x5555555555545554
.dword	0x00000000b502f333
.dword	0xfffffffffffe0001
.dword	0x5555555555535553
.dword	0xfffffffffffdffff
.dword	0xfffffffffffe0004
.dword	0x3333333333313331
.dword	0x6666666666646664
.dword	0xaaaaaaaaaaa8aaa9
.dword	0x00000000b500f332
.dword	0x5555555555515555
.dword	0xaaaaaaaaaaa6aaaa
.dword	0xfffffffffffc0005
.dword	0x33333333332f3334
.dword	0x6666666666626666
.dword	0xffffffff4af70ccd
.dword	0x00000000b500f333
.dword	0xfffffffffff80003
.dword	0x55555555554d5554
.dword	0xaaaaaaaaaaa2aaa9
.dword	0xfffffffffff80004
.dword	0x33333333332b3333
.dword	0x66666666665e6665
.dword	0xffffffff4af30ccc
.dword	0x00000000b4fcf332
.dword	0xfffffffffff00002
.dword	0x5555555555455553
.dword	0xffffffffffefffff
.dword	0xfffffffffff00003
.dword	0x3333333333233332
.dword	0x6666666666566664
.dword	0x00000000b4f4f331
.dword	0x5555555555455555
.dword	0xaaaaaaaaaa8aaaab
.dword	0xffffffffffe00005
.dword	0x3333333333133333
.dword	0x6666666666466666
.dword	0xffffffff4adb0cce
.dword	0x00000000b4e4f333
.dword	0xffffffffffe00002
.dword	0x5555555555355554
.dword	0xaaaaaaaaaa6aaaaa
.dword	0xffffffffffc00004
.dword	0x3333333332f33332
.dword	0x6666666666266665
.dword	0xffffffff4abb0ccd
.dword	0x00000000b4c4f332
.dword	0xffffffffffc00001
.dword	0x5555555555155553
.dword	0xffffffffff800000
.dword	0xffffffffff800003
.dword	0x3333333332b33331
.dword	0x6666666665e66664
.dword	0xffffffffff800000
.dword	0x00000000b484f331
.dword	0x5555555554d55555
.dword	0xaaaaaaaaaa2aaaaa
.dword	0xffffffffff000006
.dword	0x3333333332333333
.dword	0x6666666665666666
.dword	0xffffffff49fb0ccd
.dword	0x00000000b404f334
.dword	0xffffffffff000002
.dword	0x5555555554555554
.dword	0xaaaaaaaaa9aaaaa9
.dword	0xfffffffffe000005
.dword	0x3333333331333332
.dword	0x6666666664666665
.dword	0xffffffff48fb0ccc
.dword	0x00000000b304f333
.dword	0xfffffffffe000001
.dword	0x5555555553555553
.dword	0xfffffffffdffffff
.dword	0xfffffffffc000004
.dword	0x333333332f333331
.dword	0x6666666662666664
.dword	0x00000000b104f331
.dword	0x5555555551555556
.dword	0xaaaaaaaaa6aaaaaa
.dword	0xfffffffffc000005
.dword	0x333333332f333333
.dword	0x666666665e666667
.dword	0xffffffff42fb0ccd
.dword	0x00000000ad04f333
.dword	0xfffffffff8000002
.dword	0x555555554d555555
.dword	0xaaaaaaaaa2aaaaa9
.dword	0xfffffffff8000004
.dword	0x333333332b333332
.dword	0x6666666656666666
.dword	0xffffffff3afb0ccc
.dword	0x00000000a504f332
.dword	0xfffffffff0000001
.dword	0x5555555545555554
.dword	0xffffffffefffffff
.dword	0xfffffffff0000003
.dword	0x3333333323333331
.dword	0x6666666646666665
.dword	0x000000009504f331
.dword	0x5555555535555555
.dword	0xaaaaaaaa8aaaaaaa
.dword	0xffffffffe0000006
.dword	0x3333333313333333
.dword	0x6666666646666666
.dword	0xffffffff2afb0ccd
.dword	0x000000007504f334
.dword	0xffffffffc0000002
.dword	0x5555555515555554
.dword	0xaaaaaaaa6aaaaaa9
.dword	0xffffffffc0000005
.dword	0x33333332f3333332
.dword	0x6666666626666665
.dword	0xffffffff0afb0ccc
.dword	0x000000003504f333
.dword	0xffffffff80000001
.dword	0x55555554d5555553
.dword	0xffffffff7fffffff
.dword	0xffffffff80000004
.dword	0x33333332b3333331
.dword	0x66666665e6666664
.dword	0x000000003504f331
.dword	0x5555555455555556
.dword	0xaaaaaaa9aaaaaaaa
.dword	0xffffffff00000005
.dword	0x3333333233333333
.dword	0x6666666566666667
.dword	0xfffffffe4afb0ccd
.dword	0xffffffffb504f333
.dword	0xffffffff00000002
.dword	0x5555555355555555
.dword	0xaaaaaaa8aaaaaaa9
.dword	0xfffffffe00000004
.dword	0x3333333133333332
.dword	0x6666666466666666
.dword	0xfffffffd4afb0ccc
.dword	0xfffffffeb504f332
.dword	0xfffffffe00000001
.dword	0x5555555155555554
.dword	0xfffffffbffffffff
.dword	0xfffffffc00000003
.dword	0x3333332f33333331
.dword	0x6666666266666665
.dword	0xfffffffcb504f331
.dword	0x5555555155555555
.dword	0xaaaaaaa6aaaaaaaa
.dword	0xfffffff800000006
.dword	0x3333332b33333333
.dword	0x6666665e66666666
.dword	0xfffffff74afb0ccd
.dword	0xfffffff8b504f334
.dword	0xfffffff800000002
.dword	0x5555554d55555554
.dword	0xaaaaaaa2aaaaaaa9
.dword	0xfffffff000000005
.dword	0x3333332333333332
.dword	0x6666665666666665
.dword	0xffffffef4afb0ccc
.dword	0xfffffff0b504f333
.dword	0xfffffff000000001
.dword	0x5555554555555553
.dword	0xffffffefffffffff
.dword	0xffffffe000000004
.dword	0x3333331333333331
.dword	0x6666664666666664
.dword	0xffffffe0b504f331
.dword	0x5555553555555556
.dword	0xaaaaaa8aaaaaaaaa
.dword	0xffffffe000000005
.dword	0x3333331333333333
.dword	0x6666662666666667
.dword	0xffffffbf4afb0ccd
.dword	0xffffffc0b504f333
.dword	0xffffffc000000002
.dword	0x5555551555555555
.dword	0xaaaaaa6aaaaaaaa9
.dword	0xffffffc000000004
.dword	0x333332f333333332
.dword	0x666665e666666666
.dword	0xffffff7f4afb0ccc
.dword	0xffffff80b504f332
.dword	0xffffff8000000001
.dword	0x555554d555555554
.dword	0xffffff7fffffffff
.dword	0xffffff8000000003
.dword	0x333332b333333331
.dword	0x6666656666666665
.dword	0xffffff00b504f331
.dword	0x5555545555555555
.dword	0xaaaaa9aaaaaaaaaa
.dword	0xffffff0000000006
.dword	0x3333323333333333
.dword	0x6666656666666666
.dword	0xfffffeff4afb0ccd
.dword	0xfffffe00b504f334
.dword	0xfffffe0000000002
.dword	0x5555535555555554
.dword	0xaaaaa8aaaaaaaaa9
.dword	0xfffffe0000000005
.dword	0x3333313333333332
.dword	0x6666646666666665
.dword	0xfffffdff4afb0ccc
.dword	0xfffffc00b504f333
.dword	0xfffffc0000000001
.dword	0x5555515555555553
.dword	0xfffffbffffffffff
.dword	0xfffffc0000000004
.dword	0x33332f3333333331
.dword	0x6666626666666664
.dword	0xfffffc00b504f331
.dword	0x55554d5555555556
.dword	0xaaaaa2aaaaaaaaaa
.dword	0xfffff80000000005
.dword	0x33332b3333333333
.dword	0x66665e6666666667
.dword	0xfffff7ff4afb0ccd
.dword	0xfffff800b504f333
.dword	0xfffff80000000002
.dword	0x5555455555555555
.dword	0xaaaa9aaaaaaaaaa9
.dword	0xfffff00000000004
.dword	0x3333233333333332
.dword	0x6666566666666666
.dword	0xffffefff4afb0ccc
.dword	0xfffff000b504f332
.dword	0xfffff00000000001
.dword	0x5555355555555554
.dword	0xffffdfffffffffff
.dword	0xffffe00000000003
.dword	0x3333133333333331
.dword	0x6666466666666665
.dword	0xffffe000b504f331
.dword	0x5555355555555555
.dword	0xaaaa8aaaaaaaaaaa
.dword	0xffffc00000000006
.dword	0x3332f33333333333
.dword	0x6666266666666666
.dword	0xffffbfff4afb0ccd
.dword	0xffffc000b504f334
.dword	0xffffc00000000002
.dword	0x5555155555555554
.dword	0xaaaa6aaaaaaaaaa9
.dword	0xffff800000000005
.dword	0x3332b33333333332
.dword	0x6665e66666666665
.dword	0xffff7fff4afb0ccc
.dword	0xffff8000b504f333
.dword	0xffff800000000001
.dword	0x5554d55555555553
.dword	0xffff7fffffffffff
.dword	0xffff000000000004
.dword	0x3332333333333331
.dword	0x6665666666666664
.dword	0xffff0000b504f331
.dword	0x5554555555555556
.dword	0xaaa9aaaaaaaaaaaa
.dword	0xffff000000000005
.dword	0x3332333333333333
.dword	0x6664666666666667
.dword	0xfffdffff4afb0ccd
.dword	0xfffe0000b504f333
.dword	0xfffe000000000002
.dword	0x5553555555555555
.dword	0xaaa8aaaaaaaaaaa9
.dword	0xfffe000000000004
.dword	0x3331333333333332
.dword	0x6662666666666666
.dword	0xfffbffff4afb0ccc
.dword	0xfffc0000b504f332
.dword	0xfffc000000000001
.dword	0x5551555555555554
.dword	0xfffbffffffffffff
.dword	0xfffc000000000003
.dword	0x332f333333333331
.dword	0x665e666666666665
.dword	0xfff80000b504f331
.dword	0x554d555555555555
.dword	0xaaa2aaaaaaaaaaaa
.dword	0xfff8000000000006
.dword	0x332b333333333333
.dword	0x665e666666666666
.dword	0xfff7ffff4afb0ccd
.dword	0xfff00000b504f334
.dword	0xfff0000000000002
.dword	0x5545555555555554
.dword	0xaa9aaaaaaaaaaaa9
.dword	0xfff0000000000005
.dword	0x3323333333333332
.dword	0x6656666666666665
.dword	0xffefffff4afb0ccc
.dword	0xffe00000b504f333
.dword	0xffe0000000000001
.dword	0x5535555555555553
.dword	0xffdfffffffffffff
.dword	0xffe0000000000004
.dword	0x3313333333333331
.dword	0x6646666666666664
.dword	0xffe00000b504f331
.dword	0x5515555555555556
.dword	0xaa6aaaaaaaaaaaaa
.dword	0xffc0000000000005
.dword	0x32f3333333333333
.dword	0x6626666666666667
.dword	0xffbfffff4afb0ccd
.dword	0xffc00000b504f333
.dword	0xffc0000000000002
.dword	0x54d5555555555555
.dword	0xaa2aaaaaaaaaaaa9
.dword	0xff80000000000004
.dword	0x32b3333333333332
.dword	0x65e6666666666666
.dword	0xff7fffff4afb0ccc
.dword	0xff800000b504f332
.dword	0xff80000000000001
.dword	0x5455555555555554
.dword	0xfeffffffffffffff
.dword	0xff00000000000003
.dword	0x3233333333333331
.dword	0x6566666666666665
.dword	0xff000000b504f331
.dword	0x5455555555555555
.dword	0xa9aaaaaaaaaaaaaa
.dword	0xfe00000000000006
.dword	0x3133333333333333
.dword	0x6466666666666666
.dword	0xfdffffff4afb0ccd
.dword	0xfe000000b504f334
.dword	0xfe00000000000002
.dword	0x5355555555555554
.dword	0xa8aaaaaaaaaaaaa9
.dword	0xfc00000000000005
.dword	0x2f33333333333332
.dword	0x6266666666666665
.dword	0xfbffffff4afb0ccc
.dword	0xfc000000b504f333
.dword	0xfc00000000000001
.dword	0x5155555555555553
.dword	0xfbffffffffffffff
.dword	0xf800000000000004
.dword	0x2b33333333333331
.dword	0x5e66666666666664
.dword	0xf8000000b504f331
.dword	0x4d55555555555556
.dword	0xa2aaaaaaaaaaaaaa
.dword	0xf800000000000005
.dword	0x2b33333333333333
.dword	0x5666666666666667
.dword	0xefffffff4afb0ccd
.dword	0xf0000000b504f333
.dword	0xf000000000000002
.dword	0x4555555555555555
.dword	0x9aaaaaaaaaaaaaa9
.dword	0xf000000000000004
.dword	0x2333333333333332
.dword	0x4666666666666666
.dword	0xdfffffff4afb0ccc
.dword	0xe0000000b504f332
.dword	0xe000000000000001
.dword	0x3555555555555554
.dword	0xdfffffffffffffff
.dword	0xe000000000000003
.dword	0x1333333333333331
.dword	0x2666666666666665
.dword	0xc0000000b504f331
.dword	0x1555555555555555
.dword	0x6aaaaaaaaaaaaaaa
.dword	0xc000000000000006
.dword	0xf333333333333333
.dword	0x2666666666666666
.dword	0xbfffffff4afb0ccd
.dword	0x80000000b504f334
.dword	0x8000000000000002
.dword	0xd555555555555554
.dword	0x2aaaaaaaaaaaaaa9
.dword	0x8000000000000005
.dword	0xb333333333333332
.dword	0xe666666666666665
.dword	0x7fffffff4afb0ccc
.dword	0x00000000b504f335
.dword	0x0000000000000003
.dword	0x5555555555555555
.dword	0x0000000000000001
.dword	0x0000000000000006
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0x00000000b504f333
.dword	0x5555555555555559
.dword	0xaaaaaaaaaaaaaaad
.dword	0x0000000000000008
.dword	0x3333333333333336
.dword	0x666666666666666a
.dword	0xffffffff4afb0cd0
.dword	0x00000000b504f336
.dword	0x0000000000000005
.dword	0x555555555555555a
.dword	0xaaaaaaaaaaaaaaae
.dword	0x0000000000000009
.dword	0x3333333333333337
.dword	0x666666666666666b
.dword	0xffffffff4afb0cd1
.dword	0x00000000b504f337
.dword	0x0000000000000006
.dword	0x555555555555555d
.dword	0x0000000000000008
.dword	0x000000000000000c
.dword	0x333333333333333a
.dword	0x666666666666666e
.dword	0x00000000b504f33a
.dword	0x555555555555555e
.dword	0xaaaaaaaaaaaaaab3
.dword	0x0000000000000017
.dword	0x3333333333333344
.dword	0x6666666666666677
.dword	0xffffffff4afb0cde
.dword	0x00000000b504f345
.dword	0x0000000000000013
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaaba
.dword	0x0000000000000026
.dword	0x3333333333333353
.dword	0x6666666666666686
.dword	0xffffffff4afb0ced
.dword	0x00000000b504f354
.dword	0x0000000000000022
.dword	0x5555555555555574
.dword	0x0000000000000020
.dword	0x0000000000000045
.dword	0x3333333333333372
.dword	0x66666666666666a5
.dword	0x00000000b504f372
.dword	0x5555555555555597
.dword	0xaaaaaaaaaaaaaaeb
.dword	0x0000000000000046
.dword	0x3333333333333374
.dword	0x66666666666666e8
.dword	0xffffffff4afb0d4e
.dword	0x00000000b504f3b4
.dword	0x0000000000000083
.dword	0x55555555555555d6
.dword	0xaaaaaaaaaaaaab2a
.dword	0x0000000000000085
.dword	0x33333333333333b3
.dword	0x6666666666666767
.dword	0xffffffff4afb0dcd
.dword	0x00000000b504f433
.dword	0x0000000000000102
.dword	0x5555555555555655
.dword	0x0000000000000100
.dword	0x0000000000000104
.dword	0x3333333333333432
.dword	0x6666666666666866
.dword	0x00000000b504f532
.dword	0x5555555555555756
.dword	0xaaaaaaaaaaaaacab
.dword	0x0000000000000207
.dword	0x3333333333333534
.dword	0x6666666666666867
.dword	0xffffffff4afb0ece
.dword	0x00000000b504f735
.dword	0x0000000000000403
.dword	0x5555555555555955
.dword	0xaaaaaaaaaaaaaeaa
.dword	0x0000000000000406
.dword	0x3333333333333733
.dword	0x6666666666666a66
.dword	0xffffffff4afb10cd
.dword	0x00000000b504fb34
.dword	0x0000000000000802
.dword	0x5555555555555d54
.dword	0x0000000000000800
.dword	0x0000000000000805
.dword	0x3333333333333b32
.dword	0x6666666666666e65
.dword	0x00000000b504fb32

rd_data_vi:
.dword	0x000000000000000d
.dword	0x000000000000000b
.dword	0x0000000000000009
.dword	0x0000000000000005
.dword	0xfffffffffffffffe
.dword	0xffffffffffffffed
.dword	0xffffffffffffffcd
.dword	0xffffffffffffff8d
.dword	0xffffffffffffff0e
.dword	0xfffffffffffffe0d
.dword	0xfffffffffffffc0d
.dword	0xfffffffffffff80d
.dword	0xfffffffffffff00e
.dword	0xffffffffffffe00d
.dword	0xffffffffffffc00d
.dword	0xffffffffffff800d
.dword	0xffffffffffff000e
.dword	0xfffffffffffe000d
.dword	0xfffffffffffc000d
.dword	0xfffffffffff8000d
.dword	0xfffffffffff0000e
.dword	0xffffffffffe0000d
.dword	0xffffffffffc0000d
.dword	0xffffffffff80000d
.dword	0xffffffffff00000e
.dword	0xfffffffffe00000d
.dword	0xfffffffffc00000d
.dword	0xfffffffff800000d
.dword	0xfffffffff000000e
.dword	0xffffffffe000000d
.dword	0xffffffffc000000d
.dword	0xffffffff8000000d
.dword	0xffffffff0000000e
.dword	0xfffffffe0000000d
.dword	0xfffffffc0000000d
.dword	0xfffffff80000000d
.dword	0xfffffff00000000e
.dword	0xffffffe00000000d
.dword	0xffffffc00000000d
.dword	0xffffff800000000d
.dword	0xffffff000000000e
.dword	0xfffffe000000000d
.dword	0xfffffc000000000d
.dword	0xfffff8000000000d
.dword	0xfffff0000000000e
.dword	0xffffe0000000000d
.dword	0xffffc0000000000d
.dword	0xffff80000000000d
.dword	0xffff00000000000e
.dword	0xfffe00000000000d
.dword	0xfffc00000000000d
.dword	0xfff800000000000d
.dword	0xfff000000000000e
.dword	0xffe000000000000d
.dword	0xffc000000000000d
.dword	0xff8000000000000d
.dword	0xff0000000000000e
.dword	0xfe0000000000000d
.dword	0xfc0000000000000d
.dword	0xf80000000000000d
.dword	0xf00000000000000e
.dword	0xe00000000000000d
.dword	0xc00000000000000d
.dword	0x800000000000000d
.dword	0x0000000000000010
.dword	0x0000000000000010
.dword	0x0000000000000012
.dword	0x0000000000000016
.dword	0x000000000000001f
.dword	0x000000000000002e
.dword	0x000000000000004e
.dword	0x000000000000008e
.dword	0x000000000000010f
.dword	0x000000000000020e
.dword	0x000000000000040e
.dword	0x000000000000080e
.dword	0x000000000000100f
.dword	0x000000000000200e
.dword	0x000000000000400e
.dword	0x000000000000800e
.dword	0x000000000001000f
.dword	0x000000000002000e
.dword	0x000000000004000e
.dword	0x000000000008000e
.dword	0x000000000010000f
.dword	0x000000000020000e
.dword	0x000000000040000e
.dword	0x000000000080000e
.dword	0x000000000100000f
.dword	0x000000000200000e
.dword	0x000000000400000e
.dword	0x000000000800000e
.dword	0x000000001000000f
.dword	0x000000002000000e
.dword	0x000000004000000e
.dword	0x000000008000000e
.dword	0x000000010000000f
.dword	0x000000020000000e
.dword	0x000000040000000e
.dword	0x000000080000000e
.dword	0x000000100000000f
.dword	0x000000200000000e
.dword	0x000000400000000e
.dword	0x000000800000000e
.dword	0x000001000000000f
.dword	0x000002000000000e
.dword	0x000004000000000e
.dword	0x000008000000000e
.dword	0x000010000000000f
.dword	0x000020000000000e
.dword	0x000040000000000e
.dword	0x000080000000000e
.dword	0x000100000000000f
.dword	0x000200000000000e
.dword	0x000400000000000e
.dword	0x000800000000000e
.dword	0x001000000000000f
.dword	0x002000000000000e
.dword	0x004000000000000e
.dword	0x008000000000000e
.dword	0x010000000000000f
.dword	0x020000000000000e
.dword	0x040000000000000e
.dword	0x080000000000000e
.dword	0x100000000000000f
.dword	0x200000000000000e
.dword	0x400000000000000e
.dword	0x800000000000000e
.dword	0x0000000000000012
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333342
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x5555555555555563
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0xaaaaaaaaaaaaaab8
.dword	0x00000000b504f341
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333343
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000012
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333342
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000011
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333341
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaaba
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdd
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000f
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x000000000000000f
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314

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
    

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
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_ADC_VV_OP 
#define TEST_ADC_VV_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
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
#undef TEST_ADC_VX_OP 
#define TEST_ADC_VX_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
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
#undef TEST_ADC_VI_OP 
#define TEST_ADC_VI_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            inst v24, v8, SEXT_IMM(val2), v0; \
        )
#define TEST_ADC_VV_OP_11( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v1, (x7); \
            inst v24, v8, v1, v0;  \
        )
#define TEST_ADC_VV_OP_12( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v2, (x7); \
            inst v24, v8, v2, v0;  \
        )
#define TEST_ADC_VV_OP_13( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v3, (x7); \
            inst v24, v8, v3, v0;  \
        )
#define TEST_ADC_VV_OP_14( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v4, (x7); \
            inst v24, v8, v4, v0;  \
        )
#define TEST_ADC_VV_OP_15( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v5, (x7); \
            inst v24, v8, v5, v0;  \
        )
#define TEST_ADC_VV_OP_16( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v6, (x7); \
            inst v24, v8, v6, v0;  \
        )
#define TEST_ADC_VV_OP_17( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v7, (x7); \
            inst v24, v8, v7, v0;  \
        )
#define TEST_ADC_VV_OP_19( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v9, (x7); \
            inst v24, v8, v9, v0;  \
        )
#define TEST_ADC_VV_OP_110( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v10, (x7); \
            inst v24, v8, v10, v0;  \
        )
#define TEST_ADC_VV_OP_111( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v11, (x7); \
            inst v24, v8, v11, v0;  \
        )
#define TEST_ADC_VV_OP_112( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v12, (x7); \
            inst v24, v8, v12, v0;  \
        )
#define TEST_ADC_VV_OP_113( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v13, (x7); \
            inst v24, v8, v13, v0;  \
        )
#define TEST_ADC_VV_OP_114( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v14, (x7); \
            inst v24, v8, v14, v0;  \
        )
#define TEST_ADC_VV_OP_115( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v15, (x7); \
            inst v24, v8, v15, v0;  \
        )
#define TEST_ADC_VV_OP_117( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v17, (x7); \
            inst v24, v8, v17, v0;  \
        )
#define TEST_ADC_VV_OP_118( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v18, (x7); \
            inst v24, v8, v18, v0;  \
        )
#define TEST_ADC_VV_OP_119( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v19, (x7); \
            inst v24, v8, v19, v0;  \
        )
#define TEST_ADC_VV_OP_120( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v20, (x7); \
            inst v24, v8, v20, v0;  \
        )
#define TEST_ADC_VV_OP_121( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v21, (x7); \
            inst v24, v8, v21, v0;  \
        )
#define TEST_ADC_VV_OP_122( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v22, (x7); \
            inst v24, v8, v22, v0;  \
        )
#define TEST_ADC_VV_OP_123( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v23, (x7); \
            inst v24, v8, v23, v0;  \
        )
#define TEST_ADC_VV_OP_125( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v25, (x7); \
            inst v24, v8, v25, v0;  \
        )
#define TEST_ADC_VV_OP_126( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v26, (x7); \
            inst v24, v8, v26, v0;  \
        )
#define TEST_ADC_VV_OP_127( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v27, (x7); \
            inst v24, v8, v27, v0;  \
        )
#define TEST_ADC_VV_OP_128( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v28, (x7); \
            inst v24, v8, v28, v0;  \
        )
#define TEST_ADC_VV_OP_129( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v29, (x7); \
            inst v24, v8, v29, v0;  \
        )
#define TEST_ADC_VV_OP_130( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v30, (x7); \
            inst v24, v8, v30, v0;  \
        )
#define TEST_ADC_VV_OP_131( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v31, (x7); \
            inst v24, v8, v31, v0;  \
        )
#define TEST_ADC_VV_OP_rd1( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v1, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v1, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v1, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd2( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v2, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v2, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v2, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd3( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v3, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v3, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v3, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd4( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v4, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v4, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v4, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd5( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v5, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v5, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v5, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd6( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v6, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v6, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v6, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd7( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v7, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v7, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v7, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd9( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v9, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v9, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v9, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd10( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v10, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v10, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v10, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd11( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v11, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v11, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v11, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd12( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v12, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v12, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v12, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd13( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v13, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v13, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v13, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd14( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v14, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v14, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd15( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v15, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v15, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v15, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd17( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v17, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v17, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v17, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd18( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v18, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v18, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v18, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd19( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v19, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v19, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v19, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd20( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v20, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v20, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v20, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd21( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v21, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v21, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v21, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd22( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v22, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v22, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v22, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd23( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v23, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v23, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v23, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd25( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v25, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v25, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v25, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd26( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v26, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v26, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v26, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd27( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v27, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v27, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v27, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd28( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v28, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v28, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v28, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd29( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v29, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v29, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v29, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd30( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v30, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v30, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v30, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd31( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v31, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v31, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v31, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd8( testnum, inst, result, val1, val2 ) \
    TEST_CASE_LOOP( testnum, v8, result, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v8, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle32.v v16, (x7); \
        la x7, val2; \
        vle32.v v24, (x7); \
        inst v8, v16, v24, v0; \
        )
#define TEST_ADC_VV_OP_rd16( testnum, inst, result, val1, val2 ) \
    TEST_CASE_LOOP( testnum, v16, result, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle32.v v8, (x7); \
        la x7, val2; \
        vle32.v v24, (x7); \
        inst v16, v8, v24, v0; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_ADC_VV_OP( 1,  vadc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP( 2,  vadc.vvm, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_ADC_VV_OP( 3,  vadc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP( 4,  vadc.vvm, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_ADC_VV_OP( 5,  vadc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP( 6,  vadc.vvm, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_ADC_VV_OP( 7,  vadc.vvm, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_ADC_VV_OP( 8,  vadc.vvm, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_ADC_VV_OP( 9,  vadc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP( 10,  vadc.vvm, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_ADC_VV_OP( 11,  vadc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP( 12,  vadc.vvm, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_ADC_VV_OP( 13,  vadc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP( 14,  vadc.vvm, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_ADC_VV_OP( 15,  vadc.vvm, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_ADC_VV_OP( 16,  vadc.vvm, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_ADC_VV_OP( 17,  vadc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP( 18,  vadc.vvm, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_ADC_VV_OP( 19,  vadc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP( 20,  vadc.vvm, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_ADC_VV_OP( 21,  vadc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP( 22,  vadc.vvm, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_ADC_VV_OP( 23,  vadc.vvm, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_ADC_VV_OP( 24,  vadc.vvm, rd_data_vv+736, rs2_data+736, rs1_data+736)
  TEST_ADC_VV_OP( 25,  vadc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP( 26,  vadc.vvm, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_ADC_VV_OP( 27,  vadc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP( 28,  vadc.vvm, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_ADC_VV_OP( 29,  vadc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP( 30,  vadc.vvm, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_ADC_VV_OP( 31,  vadc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP( 32,  vadc.vvm, rd_data_vv+992, rs2_data+992, rs1_data+992)
  TEST_ADC_VV_OP( 33,  vadc.vvm, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_ADC_VV_OP( 34,  vadc.vvm, rd_data_vv+1056, rs2_data+1056, rs1_data+1056)
  TEST_ADC_VV_OP( 35,  vadc.vvm, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_ADC_VV_OP( 36,  vadc.vvm, rd_data_vv+1120, rs2_data+1120, rs1_data+1120)
  TEST_ADC_VV_OP( 37,  vadc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP( 38,  vadc.vvm, rd_data_vv+1184, rs2_data+1184, rs1_data+1184)
  TEST_ADC_VV_OP( 39,  vadc.vvm, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_ADC_VV_OP( 40,  vadc.vvm, rd_data_vv+1248, rs2_data+1248, rs1_data+1248)
  TEST_ADC_VV_OP( 41,  vadc.vvm, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_ADC_VV_OP( 42,  vadc.vvm, rd_data_vv+1312, rs2_data+1312, rs1_data+1312)
  TEST_ADC_VV_OP( 43,  vadc.vvm, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_ADC_VV_OP( 44,  vadc.vvm, rd_data_vv+1376, rs2_data+1376, rs1_data+1376)
  TEST_ADC_VV_OP( 45,  vadc.vvm, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_ADC_VV_OP( 46,  vadc.vvm, rd_data_vv+1440, rs2_data+1440, rs1_data+1440)
  TEST_ADC_VV_OP( 47,  vadc.vvm, rd_data_vv+1472, rs2_data+1472, rs1_data+1472)
  TEST_ADC_VV_OP( 48,  vadc.vvm, rd_data_vv+1504, rs2_data+1504, rs1_data+1504)
  TEST_ADC_VV_OP( 49,  vadc.vvm, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_ADC_VV_OP( 50,  vadc.vvm, rd_data_vv+1568, rs2_data+1568, rs1_data+1568)
  TEST_ADC_VV_OP( 51,  vadc.vvm, rd_data_vv+1600, rs2_data+1600, rs1_data+1600)
  TEST_ADC_VV_OP( 52,  vadc.vvm, rd_data_vv+1632, rs2_data+1632, rs1_data+1632)
  TEST_ADC_VV_OP( 53,  vadc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP( 54,  vadc.vvm, rd_data_vv+1696, rs2_data+1696, rs1_data+1696)
  TEST_ADC_VV_OP( 55,  vadc.vvm, rd_data_vv+1728, rs2_data+1728, rs1_data+1728)
  TEST_ADC_VV_OP( 56,  vadc.vvm, rd_data_vv+1760, rs2_data+1760, rs1_data+1760)
  TEST_ADC_VV_OP( 57,  vadc.vvm, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_ADC_VV_OP( 58,  vadc.vvm, rd_data_vv+1824, rs2_data+1824, rs1_data+1824)
  TEST_ADC_VV_OP( 59,  vadc.vvm, rd_data_vv+1856, rs2_data+1856, rs1_data+1856)
  TEST_ADC_VV_OP( 60,  vadc.vvm, rd_data_vv+1888, rs2_data+1888, rs1_data+1888)
  TEST_ADC_VV_OP( 61,  vadc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP( 62,  vadc.vvm, rd_data_vv+1952, rs2_data+1952, rs1_data+1952)
  TEST_ADC_VV_OP( 63,  vadc.vvm, rd_data_vv+1984, rs2_data+1984, rs1_data+1984)
  TEST_ADC_VV_OP( 64,  vadc.vvm, rd_data_vv+2016, rs2_data+2016, rs1_data+2016)
  TEST_ADC_VV_OP( 65,  vadc.vvm, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_ADC_VV_OP( 66,  vadc.vvm, rd_data_vv+2080, rs2_data+2080, rs1_data+2080)
  TEST_ADC_VV_OP( 67,  vadc.vvm, rd_data_vv+2112, rs2_data+2112, rs1_data+2112)
  TEST_ADC_VV_OP( 68,  vadc.vvm, rd_data_vv+2144, rs2_data+2144, rs1_data+2144)
  TEST_ADC_VV_OP_rd1( 69,  vadc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP_12( 70,  vadc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP_rd2( 71,  vadc.vvm, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_ADC_VV_OP_13( 72,  vadc.vvm, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_ADC_VV_OP_rd3( 73,  vadc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP_14( 74,  vadc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP_rd4( 75,  vadc.vvm, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_ADC_VV_OP_15( 76,  vadc.vvm, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_ADC_VV_OP_rd5( 77,  vadc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP_16( 78,  vadc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP_rd6( 79,  vadc.vvm, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_ADC_VV_OP_17( 80,  vadc.vvm, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_ADC_VV_OP_rd7( 81,  vadc.vvm, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_ADC_VV_OP_rd8( 82,  vadc.vvm, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_ADC_VV_OP_19( 83,  vadc.vvm, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_ADC_VV_OP_rd9( 84,  vadc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP_110( 85,  vadc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP_rd10( 86,  vadc.vvm, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_ADC_VV_OP_111( 87,  vadc.vvm, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_ADC_VV_OP_rd11( 88,  vadc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP_112( 89,  vadc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP_rd12( 90,  vadc.vvm, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_ADC_VV_OP_113( 91,  vadc.vvm, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_ADC_VV_OP_rd13( 92,  vadc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP_114( 93,  vadc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP_rd14( 94,  vadc.vvm, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_ADC_VV_OP_115( 95,  vadc.vvm, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_ADC_VV_OP_rd15( 96,  vadc.vvm, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_ADC_VV_OP_rd16( 97,  vadc.vvm, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_ADC_VV_OP_117( 98,  vadc.vvm, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_ADC_VV_OP_rd17( 99,  vadc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP_118( 100,  vadc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP_rd18( 101,  vadc.vvm, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_ADC_VV_OP_119( 102,  vadc.vvm, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_ADC_VV_OP_rd19( 103,  vadc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP_120( 104,  vadc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP_rd20( 105,  vadc.vvm, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_ADC_VV_OP_121( 106,  vadc.vvm, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_ADC_VV_OP_rd21( 107,  vadc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP_122( 108,  vadc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP_rd22( 109,  vadc.vvm, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_ADC_VV_OP_123( 110,  vadc.vvm, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_ADC_VV_OP_rd23( 111,  vadc.vvm, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_ADC_VV_OP_rd25( 112,  vadc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP_126( 113,  vadc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP_rd26( 114,  vadc.vvm, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_ADC_VV_OP_127( 115,  vadc.vvm, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_ADC_VV_OP_rd27( 116,  vadc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP_128( 117,  vadc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP_rd28( 118,  vadc.vvm, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_ADC_VV_OP_129( 119,  vadc.vvm, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_ADC_VV_OP_rd29( 120,  vadc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP_130( 121,  vadc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP_rd30( 122,  vadc.vvm, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_ADC_VV_OP_131( 123,  vadc.vvm, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_ADC_VV_OP_rd31( 124,  vadc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP_12( 125,  vadc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP_rd1( 126,  vadc.vvm, rd_data_vv+992, rs2_data+992, rs1_data+992)
  TEST_ADC_VV_OP_13( 127,  vadc.vvm, rd_data_vv+992, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_ADC_VX_OP( 128,  vadc.vxm, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_ADC_VX_OP( 129,  vadc.vxm, rd_data_vx+32, rs2_data+32, 0xfffffffffffffffd)
  TEST_ADC_VX_OP( 130,  vadc.vxm, rd_data_vx+64, rs2_data+64, 0xfffffffffffffffb)
  TEST_ADC_VX_OP( 131,  vadc.vxm, rd_data_vx+96, rs2_data+96, 0xfffffffffffffff7)
  TEST_ADC_VX_OP( 132,  vadc.vxm, rd_data_vx+128, rs2_data+128, 0xffffffffffffffef)
  TEST_ADC_VX_OP( 133,  vadc.vxm, rd_data_vx+160, rs2_data+160, 0xffffffffffffffdf)
  TEST_ADC_VX_OP( 134,  vadc.vxm, rd_data_vx+192, rs2_data+192, 0xffffffffffffffbf)
  TEST_ADC_VX_OP( 135,  vadc.vxm, rd_data_vx+224, rs2_data+224, 0xffffffffffffff7f)
  TEST_ADC_VX_OP( 136,  vadc.vxm, rd_data_vx+256, rs2_data+256, 0xfffffffffffffeff)
  TEST_ADC_VX_OP( 137,  vadc.vxm, rd_data_vx+288, rs2_data+288, 0xfffffffffffffdff)
  TEST_ADC_VX_OP( 138,  vadc.vxm, rd_data_vx+320, rs2_data+320, 0xfffffffffffffbff)
  TEST_ADC_VX_OP( 139,  vadc.vxm, rd_data_vx+352, rs2_data+352, 0xfffffffffffff7ff)
  TEST_ADC_VX_OP( 140,  vadc.vxm, rd_data_vx+384, rs2_data+384, 0xffffffffffffefff)
  TEST_ADC_VX_OP( 141,  vadc.vxm, rd_data_vx+416, rs2_data+416, 0xffffffffffffdfff)
  TEST_ADC_VX_OP( 142,  vadc.vxm, rd_data_vx+448, rs2_data+448, 0xffffffffffffbfff)
  TEST_ADC_VX_OP( 143,  vadc.vxm, rd_data_vx+480, rs2_data+480, 0xffffffffffff7fff)
  TEST_ADC_VX_OP( 144,  vadc.vxm, rd_data_vx+512, rs2_data+512, 0xfffffffffffeffff)
  TEST_ADC_VX_OP( 145,  vadc.vxm, rd_data_vx+544, rs2_data+544, 0xfffffffffffdffff)
  TEST_ADC_VX_OP( 146,  vadc.vxm, rd_data_vx+576, rs2_data+576, 0xfffffffffffbffff)
  TEST_ADC_VX_OP( 147,  vadc.vxm, rd_data_vx+608, rs2_data+608, 0xfffffffffff7ffff)
  TEST_ADC_VX_OP( 148,  vadc.vxm, rd_data_vx+640, rs2_data+640, 0xffffffffffefffff)
  TEST_ADC_VX_OP( 149,  vadc.vxm, rd_data_vx+672, rs2_data+672, 0xffffffffffdfffff)
  TEST_ADC_VX_OP( 150,  vadc.vxm, rd_data_vx+704, rs2_data+704, 0xffffffffffbfffff)
  TEST_ADC_VX_OP( 151,  vadc.vxm, rd_data_vx+736, rs2_data+736, 0xffffffffff7fffff)
  TEST_ADC_VX_OP( 152,  vadc.vxm, rd_data_vx+768, rs2_data+768, 0xfffffffffeffffff)
  TEST_ADC_VX_OP( 153,  vadc.vxm, rd_data_vx+800, rs2_data+800, 0xfffffffffdffffff)
  TEST_ADC_VX_OP( 154,  vadc.vxm, rd_data_vx+832, rs2_data+832, 0xfffffffffbffffff)
  TEST_ADC_VX_OP( 155,  vadc.vxm, rd_data_vx+864, rs2_data+864, 0xfffffffff7ffffff)
  TEST_ADC_VX_OP( 156,  vadc.vxm, rd_data_vx+896, rs2_data+896, 0xffffffffefffffff)
  TEST_ADC_VX_OP( 157,  vadc.vxm, rd_data_vx+928, rs2_data+928, 0xffffffffdfffffff)
  TEST_ADC_VX_OP( 158,  vadc.vxm, rd_data_vx+960, rs2_data+960, 0xffffffffbfffffff)
  TEST_ADC_VX_OP( 159,  vadc.vxm, rd_data_vx+992, rs2_data+992, 0x0000007fffffff)
  TEST_ADC_VX_OP( 160,  vadc.vxm, rd_data_vx+1024, rs2_data+1024, 0x00000000000001)
  TEST_ADC_VX_OP( 161,  vadc.vxm, rd_data_vx+1056, rs2_data+1056, 0x00000000000002)
  TEST_ADC_VX_OP( 162,  vadc.vxm, rd_data_vx+1088, rs2_data+1088, 0x00000000000004)
  TEST_ADC_VX_OP( 163,  vadc.vxm, rd_data_vx+1120, rs2_data+1120, 0x00000000000008)
  TEST_ADC_VX_OP( 164,  vadc.vxm, rd_data_vx+1152, rs2_data+1152, 0x00000000000010)
  TEST_ADC_VX_OP( 165,  vadc.vxm, rd_data_vx+1184, rs2_data+1184, 0x00000000000020)
  TEST_ADC_VX_OP( 166,  vadc.vxm, rd_data_vx+1216, rs2_data+1216, 0x00000000000040)
  TEST_ADC_VX_OP( 167,  vadc.vxm, rd_data_vx+1248, rs2_data+1248, 0x00000000000080)
  TEST_ADC_VX_OP( 168,  vadc.vxm, rd_data_vx+1280, rs2_data+1280, 0x00000000000100)
  TEST_ADC_VX_OP( 169,  vadc.vxm, rd_data_vx+1312, rs2_data+1312, 0x00000000000200)
  TEST_ADC_VX_OP( 170,  vadc.vxm, rd_data_vx+1344, rs2_data+1344, 0x00000000000400)
  TEST_ADC_VX_OP( 171,  vadc.vxm, rd_data_vx+1376, rs2_data+1376, 0x00000000000800)
  TEST_ADC_VX_OP( 172,  vadc.vxm, rd_data_vx+1408, rs2_data+1408, 0x00000000001000)
  TEST_ADC_VX_OP( 173,  vadc.vxm, rd_data_vx+1440, rs2_data+1440, 0x00000000002000)
  TEST_ADC_VX_OP( 174,  vadc.vxm, rd_data_vx+1472, rs2_data+1472, 0x00000000004000)
  TEST_ADC_VX_OP( 175,  vadc.vxm, rd_data_vx+1504, rs2_data+1504, 0x00000000008000)
  TEST_ADC_VX_OP( 176,  vadc.vxm, rd_data_vx+1536, rs2_data+1536, 0x00000000010000)
  TEST_ADC_VX_OP( 177,  vadc.vxm, rd_data_vx+1568, rs2_data+1568, 0x00000000020000)
  TEST_ADC_VX_OP( 178,  vadc.vxm, rd_data_vx+1600, rs2_data+1600, 0x00000000040000)
  TEST_ADC_VX_OP( 179,  vadc.vxm, rd_data_vx+1632, rs2_data+1632, 0x00000000080000)
  TEST_ADC_VX_OP( 180,  vadc.vxm, rd_data_vx+1664, rs2_data+1664, 0x00000000100000)
  TEST_ADC_VX_OP( 181,  vadc.vxm, rd_data_vx+1696, rs2_data+1696, 0x00000000200000)
  TEST_ADC_VX_OP( 182,  vadc.vxm, rd_data_vx+1728, rs2_data+1728, 0x00000000400000)
  TEST_ADC_VX_OP( 183,  vadc.vxm, rd_data_vx+1760, rs2_data+1760, 0x00000000800000)
  TEST_ADC_VX_OP( 184,  vadc.vxm, rd_data_vx+1792, rs2_data+1792, 0x00000001000000)
  TEST_ADC_VX_OP( 185,  vadc.vxm, rd_data_vx+1824, rs2_data+1824, 0x00000002000000)
  TEST_ADC_VX_OP( 186,  vadc.vxm, rd_data_vx+1856, rs2_data+1856, 0x00000004000000)
  TEST_ADC_VX_OP( 187,  vadc.vxm, rd_data_vx+1888, rs2_data+1888, 0x00000008000000)
  TEST_ADC_VX_OP( 188,  vadc.vxm, rd_data_vx+1920, rs2_data+1920, 0x00000010000000)
  TEST_ADC_VX_OP( 189,  vadc.vxm, rd_data_vx+1952, rs2_data+1952, 0x00000020000000)
  TEST_ADC_VX_OP( 190,  vadc.vxm, rd_data_vx+1984, rs2_data+1984, 0x00000040000000)
  TEST_ADC_VX_OP( 191,  vadc.vxm, rd_data_vx+2016, rs2_data+2016, 0xffffffff80000000)
  TEST_ADC_VX_OP( 192,  vadc.vxm, rd_data_vx+2048, rs2_data+2048, 0x00000000000003)
  TEST_ADC_VX_OP( 193,  vadc.vxm, rd_data_vx+2080, rs2_data+2080, 0x00000000000003)
  TEST_ADC_VX_OP( 194,  vadc.vxm, rd_data_vx+2112, rs2_data+2112, 0x00000000000003)
  TEST_ADC_VX_OP( 195,  vadc.vxm, rd_data_vx+2144, rs2_data+2144, 0x00000000000003)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_ADC_VI_OP( 196,  vadc.vim, rd_data_vi+0, rs2_data+0, 14)
  TEST_ADC_VI_OP( 197,  vadc.vim, rd_data_vi+32, rs2_data+32, 14)
  TEST_ADC_VI_OP( 198,  vadc.vim, rd_data_vi+64, rs2_data+64, 14)
  TEST_ADC_VI_OP( 199,  vadc.vim, rd_data_vi+96, rs2_data+96, 14)
  TEST_ADC_VI_OP( 200,  vadc.vim, rd_data_vi+128, rs2_data+128, 14)
  TEST_ADC_VI_OP( 201,  vadc.vim, rd_data_vi+160, rs2_data+160, 14)
  TEST_ADC_VI_OP( 202,  vadc.vim, rd_data_vi+192, rs2_data+192, 14)
  TEST_ADC_VI_OP( 203,  vadc.vim, rd_data_vi+224, rs2_data+224, 14)
  TEST_ADC_VI_OP( 204,  vadc.vim, rd_data_vi+256, rs2_data+256, 14)
  TEST_ADC_VI_OP( 205,  vadc.vim, rd_data_vi+288, rs2_data+288, 14)
  TEST_ADC_VI_OP( 206,  vadc.vim, rd_data_vi+320, rs2_data+320, 14)
  TEST_ADC_VI_OP( 207,  vadc.vim, rd_data_vi+352, rs2_data+352, 14)
  TEST_ADC_VI_OP( 208,  vadc.vim, rd_data_vi+384, rs2_data+384, 14)
  TEST_ADC_VI_OP( 209,  vadc.vim, rd_data_vi+416, rs2_data+416, 14)
  TEST_ADC_VI_OP( 210,  vadc.vim, rd_data_vi+448, rs2_data+448, 14)
  TEST_ADC_VI_OP( 211,  vadc.vim, rd_data_vi+480, rs2_data+480, 14)
  TEST_ADC_VI_OP( 212,  vadc.vim, rd_data_vi+512, rs2_data+512, 14)
  TEST_ADC_VI_OP( 213,  vadc.vim, rd_data_vi+544, rs2_data+544, 14)
  TEST_ADC_VI_OP( 214,  vadc.vim, rd_data_vi+576, rs2_data+576, 14)
  TEST_ADC_VI_OP( 215,  vadc.vim, rd_data_vi+608, rs2_data+608, 14)
  TEST_ADC_VI_OP( 216,  vadc.vim, rd_data_vi+640, rs2_data+640, 14)
  TEST_ADC_VI_OP( 217,  vadc.vim, rd_data_vi+672, rs2_data+672, 14)
  TEST_ADC_VI_OP( 218,  vadc.vim, rd_data_vi+704, rs2_data+704, 14)
  TEST_ADC_VI_OP( 219,  vadc.vim, rd_data_vi+736, rs2_data+736, 14)
  TEST_ADC_VI_OP( 220,  vadc.vim, rd_data_vi+768, rs2_data+768, 14)
  TEST_ADC_VI_OP( 221,  vadc.vim, rd_data_vi+800, rs2_data+800, 14)
  TEST_ADC_VI_OP( 222,  vadc.vim, rd_data_vi+832, rs2_data+832, 14)
  TEST_ADC_VI_OP( 223,  vadc.vim, rd_data_vi+864, rs2_data+864, 14)
  TEST_ADC_VI_OP( 224,  vadc.vim, rd_data_vi+896, rs2_data+896, 14)
  TEST_ADC_VI_OP( 225,  vadc.vim, rd_data_vi+928, rs2_data+928, 14)
  TEST_ADC_VI_OP( 226,  vadc.vim, rd_data_vi+960, rs2_data+960, 14)
  TEST_ADC_VI_OP( 227,  vadc.vim, rd_data_vi+992, rs2_data+992, 14)
  TEST_ADC_VI_OP( 228,  vadc.vim, rd_data_vi+1024, rs2_data+1024, 14)
  TEST_ADC_VI_OP( 229,  vadc.vim, rd_data_vi+1056, rs2_data+1056, 14)
  TEST_ADC_VI_OP( 230,  vadc.vim, rd_data_vi+1088, rs2_data+1088, 14)
  TEST_ADC_VI_OP( 231,  vadc.vim, rd_data_vi+1120, rs2_data+1120, 14)
  TEST_ADC_VI_OP( 232,  vadc.vim, rd_data_vi+1152, rs2_data+1152, 14)
  TEST_ADC_VI_OP( 233,  vadc.vim, rd_data_vi+1184, rs2_data+1184, 14)
  TEST_ADC_VI_OP( 234,  vadc.vim, rd_data_vi+1216, rs2_data+1216, 14)
  TEST_ADC_VI_OP( 235,  vadc.vim, rd_data_vi+1248, rs2_data+1248, 14)
  TEST_ADC_VI_OP( 236,  vadc.vim, rd_data_vi+1280, rs2_data+1280, 14)
  TEST_ADC_VI_OP( 237,  vadc.vim, rd_data_vi+1312, rs2_data+1312, 14)
  TEST_ADC_VI_OP( 238,  vadc.vim, rd_data_vi+1344, rs2_data+1344, 14)
  TEST_ADC_VI_OP( 239,  vadc.vim, rd_data_vi+1376, rs2_data+1376, 14)
  TEST_ADC_VI_OP( 240,  vadc.vim, rd_data_vi+1408, rs2_data+1408, 14)
  TEST_ADC_VI_OP( 241,  vadc.vim, rd_data_vi+1440, rs2_data+1440, 14)
  TEST_ADC_VI_OP( 242,  vadc.vim, rd_data_vi+1472, rs2_data+1472, 14)
  TEST_ADC_VI_OP( 243,  vadc.vim, rd_data_vi+1504, rs2_data+1504, 14)
  TEST_ADC_VI_OP( 244,  vadc.vim, rd_data_vi+1536, rs2_data+1536, 14)
  TEST_ADC_VI_OP( 245,  vadc.vim, rd_data_vi+1568, rs2_data+1568, 14)
  TEST_ADC_VI_OP( 246,  vadc.vim, rd_data_vi+1600, rs2_data+1600, 14)
  TEST_ADC_VI_OP( 247,  vadc.vim, rd_data_vi+1632, rs2_data+1632, 14)
  TEST_ADC_VI_OP( 248,  vadc.vim, rd_data_vi+1664, rs2_data+1664, 14)
  TEST_ADC_VI_OP( 249,  vadc.vim, rd_data_vi+1696, rs2_data+1696, 14)
  TEST_ADC_VI_OP( 250,  vadc.vim, rd_data_vi+1728, rs2_data+1728, 14)
  TEST_ADC_VI_OP( 251,  vadc.vim, rd_data_vi+1760, rs2_data+1760, 14)
  TEST_ADC_VI_OP( 252,  vadc.vim, rd_data_vi+1792, rs2_data+1792, 14)
  TEST_ADC_VI_OP( 253,  vadc.vim, rd_data_vi+1824, rs2_data+1824, 14)
  TEST_ADC_VI_OP( 254,  vadc.vim, rd_data_vi+1856, rs2_data+1856, 14)
  TEST_ADC_VI_OP( 255,  vadc.vim, rd_data_vi+1888, rs2_data+1888, 14)
  TEST_ADC_VI_OP( 256,  vadc.vim, rd_data_vi+1920, rs2_data+1920, 14)
  TEST_ADC_VI_OP( 257,  vadc.vim, rd_data_vi+1952, rs2_data+1952, 14)
  TEST_ADC_VI_OP( 258,  vadc.vim, rd_data_vi+1984, rs2_data+1984, 14)
  TEST_ADC_VI_OP( 259,  vadc.vim, rd_data_vi+2016, rs2_data+2016, 14)
  TEST_ADC_VI_OP( 260,  vadc.vim, rd_data_vi+2048, rs2_data+2048, 14)
  TEST_ADC_VI_OP( 261,  vadc.vim, rd_data_vi+2080, rs2_data+2080, 14)
  TEST_ADC_VI_OP( 262,  vadc.vim, rd_data_vi+2112, rs2_data+2112, 14)
  TEST_ADC_VI_OP( 263,  vadc.vim, rd_data_vi+2144, rs2_data+2144, 14)
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
.word	0xfffffffd
.word	0xfffffffa
.word	0xfffffff6
.word	0xffffffee
.word	0xffffffdf
.word	0xffffffbe
.word	0xffffff7e
.word	0xfffffefe
.word	0xfffffdff
.word	0xfffffbfe
.word	0xfffff7fe
.word	0xffffeffe
.word	0xffffdfff
.word	0xffffbffe
.word	0xffff7ffe
.word	0xfffefffe
.word	0xfffdffff
.word	0xfffbfffe
.word	0xfff7fffe
.word	0xffeffffe
.word	0xffdfffff
.word	0xffbffffe
.word	0xff7ffffe
.word	0xfefffffe
.word	0xfdffffff
.word	0xfbfffffe
.word	0xf7fffffe
.word	0xeffffffe
.word	0xdfffffff
.word	0xbffffffe
.word	0x7ffffffe
.word	0xfffffffe
.word	0x00000003
.word	0x00000004
.word	0x00000008
.word	0x00000010
.word	0x00000021
.word	0x00000040
.word	0x00000080
.word	0x00000100
.word	0x00000201
.word	0x00000400
.word	0x00000800
.word	0x00001000
.word	0x00002001
.word	0x00004000
.word	0x00008000
.word	0x00010000
.word	0x00020001
.word	0x00040000
.word	0x00080000
.word	0x00100000
.word	0x00200001
.word	0x00400000
.word	0x00800000
.word	0x01000000
.word	0x02000001
.word	0x04000000
.word	0x08000000
.word	0x10000000
.word	0x20000001
.word	0x40000000
.word	0x80000000
.word	0x00000000
.word	0x00000007
.word	0x55555558
.word	0xaaaaaaad
.word	0x00000008
.word	0x33333337
.word	0x66666669
.word	0xffff4aff
.word	0x55555558
.word	0x0000b508
.word	0x00000005
.word	0x55555557
.word	0x00000003
.word	0x00000008
.word	0x33333335
.word	0xbbbbbbba
.word	0xaaaaaaad
.word	0xaaab5fae
.word	0x55555559
.word	0xaaaaaaae
.word	0x00000009
.word	0x33333338
.word	0x6666666a
.word	0xffff4b00
.word	0x0000b505
.word	0x00000007
.word	0xaaaaaaaa
.word	0xffffffff
.word	0x5555555a
.word	0x88888889
.word	0xbbbbbbbb
.word	0x5554a051
.word	0x55560a59
.word	0x55555558
.word	0xaaaaaaa9
.word	0x55555555
.word	0x55555559
.word	0x88888888
.word	0xbbbbbbba
.word	0x55560a58
.word	0xaaaaaaab
.word	0x00000001
.word	0x5555555b
.word	0x88888889
.word	0xbbbbbbbc
.word	0x5554a053
.word	0x55560a5a
.word	0x55555558
.word	0xffffffff
.word	0x55555555
.word	0xaaaaaaaf
.word	0xdddddddd
.word	0x11111110
.word	0xaaa9f5a7
.word	0xaaab5fae
.word	0xaaaaaaac
.word	0xfffffffe
.word	0xaaaaaaab
.word	0xaaaaaaae
.word	0xdddddddc
.word	0x1111110f
.word	0xaaaaaaab
.word	0xaaab5fad
.word	0x00000000
.word	0x55555555
.word	0xaaaaaab1
.word	0xddddddde
.word	0x11111111
.word	0xaaa9f5a7
.word	0xaaab5fb0
.word	0x00000008
.word	0x5555555a
.word	0xaaaaaaaf
.word	0x0000000b
.word	0x33333338
.word	0x6666666b
.word	0xffff4b01
.word	0x0000b50a
.word	0x00000007
.word	0x55555559
.word	0x00000005
.word	0x0000000a
.word	0x33333337
.word	0x6666666a
.word	0x0000b508
.word	0x5555555c
.word	0xaaaaaab0
.word	0x0000000b
.word	0x33333339
.word	0x6666666d
.word	0xffff4b02
.word	0x0000b50a
.word	0x33333336
.word	0x88888889
.word	0xdddddddd
.word	0x33333338
.word	0x66666666
.word	0x9999999a
.word	0x33327e2f
.word	0x3333e837
.word	0x33333335
.word	0x88888888
.word	0x33333333
.word	0x33333337
.word	0x66666665
.word	0x99999999
.word	0x3333e836
.word	0x88888889
.word	0xddddddde
.word	0x3333333a
.word	0x66666667
.word	0x9999999a
.word	0x33327e30
.word	0x3333e839
.word	0x66666669
.word	0xbbbbbbbb
.word	0x11111110
.word	0x6666666c
.word	0x99999999
.word	0xcccccccc
.word	0x6665b162
.word	0x66671b6b
.word	0x66666668
.word	0xbbbbbbba
.word	0x66666666
.word	0x6666666b
.word	0x99999998
.word	0xcccccccb
.word	0x66671b69
.word	0xbbbbbbbd
.word	0x11111111
.word	0x6666666c
.word	0x9999999a
.word	0xccccccce
.word	0x6665b163
.word	0x66671b6b
.word	0xffff4aff
.word	0x5554a052
.word	0xaaa9f5a6
.word	0xffff4b01
.word	0x33327e2f
.word	0x6665b163
.word	0xfffe95f8
.word	0x00000000
.word	0xffff4afe
.word	0x5554a051
.word	0xffff4afc
.word	0xffff4b00
.word	0x33327e2e
.word	0x6665b162
.word	0xffffffff
.word	0x5554a052
.word	0xaaa9f5a7
.word	0xffff4b03
.word	0x33327e30
.word	0x6665b163
.word	0xfffe95f9
.word	0x00000002
.word	0x0000b507
.word	0x55560a59
.word	0xaaab5fae
.word	0x0000b50a
.word	0x3333e837
.word	0x66671b6a
.word	0x00000000
.word	0x00016a09
.word	0x0000b506
.word	0x55560a58
.word	0x0000b504
.word	0x0000b509
.word	0x3333e836
.word	0x66671b69
.word	0x00016a07
.word	0x55560a5b
.word	0xaaab5faf
.word	0x0000b50a
.word	0x3333e838
.word	0x66671b6c
.word	0x00000001
.word	0x00016a09
.word	0x00000005
.word	0x55555558
.word	0xaaaaaaac
.word	0x00000007
.word	0x33333335
.word	0x66666669
.word	0xffff4afe
.word	0x0000b506
.word	0x00000004
.word	0x55555557
.word	0x00000002
.word	0x00000006
.word	0x33333334
.word	0x66666668
.word	0x0000b505
.word	0x55555558
.word	0xaaaaaaad
.word	0x00000009
.word	0x33333336
.word	0x66666669
.word	0xffff4aff
.word	0x0000b508
.word	0x55555557
.word	0xaaaaaaa9
.word	0xfffffffe
.word	0x5555555a
.word	0x88888887
.word	0xbbbbbbba
.word	0x5554a050
.word	0x55560a59
.word	0x55555556
.word	0xaaaaaaa8
.word	0x55555554
.word	0x55555559
.word	0x88888886
.word	0xbbbbbbb9
.word	0x55560a57
.word	0xaaaaaaab
.word	0xffffffff
.word	0x5555555a
.word	0x88888888
.word	0xbbbbbbbc
.word	0x5554a051
.word	0x55560a59
.word	0x00000003
.word	0x55555556
.word	0xaaaaaaaa
.word	0x00000005
.word	0x33333333
.word	0x66666667
.word	0xffff4afc
.word	0x0000b504
.word	0x00000002
.word	0x55555555
.word	0x00000000
.word	0x00000004
.word	0x33333332
.word	0x66666666
.word	0x0000b503
.word	0x55555556
.word	0xaaaaaaab
.word	0x00000007
.word	0x33333334
.word	0x66666667
.word	0xffff4afd
.word	0x0000b506
.word	0x00000007
.word	0x55555559
.word	0xaaaaaaae
.word	0x0000000a
.word	0x33333337
.word	0x6666666a
.word	0xffff4b00
.word	0x0000b509
.word	0x00000006
.word	0x55555558
.word	0x00000004
.word	0x00000009
.word	0x33333336
.word	0x66666669
.word	0x0000b507
.word	0x5555555b
.word	0xaaaaaaaf
.word	0x0000000a
.word	0x33333338
.word	0x6666666c
.word	0xffff4b01
.word	0x0000b509
.word	0x33333335
.word	0x88888888
.word	0xdddddddc
.word	0x33333337
.word	0x66666665
.word	0x99999999
.word	0x33327e2e
.word	0x3333e836
.word	0x33333334
.word	0x88888887
.word	0x33333332
.word	0x33333336
.word	0x66666664
.word	0x99999998
.word	0x3333e835
.word	0x88888888
.word	0xdddddddd
.word	0x33333339
.word	0x66666666
.word	0x99999999
.word	0x33327e2f
.word	0x3333e838
.word	0x66666668
.word	0xbbbbbbba
.word	0x1111110f
.word	0x6666666b
.word	0x99999998
.word	0xcccccccb
.word	0x6665b161
.word	0x66671b6a
.word	0x66666667
.word	0xbbbbbbb9
.word	0x66666665
.word	0x6666666a
.word	0x99999997
.word	0xccccccca
.word	0x66671b68
.word	0xbbbbbbbc
.word	0x11111110
.word	0x6666666b
.word	0x99999999
.word	0xcccccccd
.word	0x6665b162
.word	0x66671b6a
.word	0x0000b506
.word	0x55560a59
.word	0xaaab5fad
.word	0x0000b508
.word	0x3333e836
.word	0x66671b6a
.word	0xffffffff
.word	0x00016a07
.word	0x0000b505
.word	0x55560a58
.word	0x0000b503
.word	0x0000b507
.word	0x3333e835
.word	0x66671b69
.word	0x00016a06
.word	0x55560a59
.word	0xaaab5fae
.word	0x0000b50a
.word	0x3333e837
.word	0x66671b6a
.word	0x00000000
.word	0x00016a09
.word	0x55555559
.word	0xaaaaaaab
.word	0x00000000
.word	0x5555555c
.word	0x88888889
.word	0xbbbbbbbc
.word	0x5554a052
.word	0x55560a5b
.word	0x55555558
.word	0xaaaaaaaa
.word	0x55555556
.word	0x5555555b
.word	0x88888888
.word	0xbbbbbbbb
.word	0x55560a59
.word	0xaaaaaaad
.word	0x00000001
.word	0x5555555c
.word	0x8888888a
.word	0xbbbbbbbe
.word	0x5554a053
.word	0x55560a5b
.word	0xaaaaaaae
.word	0x00000001
.word	0x55555555
.word	0xaaaaaab0
.word	0xddddddde
.word	0x11111112
.word	0xaaa9f5a7
.word	0xaaab5faf
.word	0xaaaaaaad
.word	0x00000000
.word	0xaaaaaaab
.word	0xaaaaaaaf
.word	0xdddddddd
.word	0x11111111
.word	0xaaab5fae
.word	0x00000001
.word	0x55555556
.word	0xaaaaaab2
.word	0xdddddddf
.word	0x11111112
.word	0xaaa9f5a8
.word	0xaaab5fb1
.word	0x00000009
.word	0x5555555b
.word	0xaaaaaab0
.word	0x0000000c
.word	0x33333339
.word	0x6666666c
.word	0xffff4b02
.word	0x0000b50b
.word	0x00000008
.word	0x5555555a
.word	0x00000006
.word	0x0000000b
.word	0x33333338
.word	0x6666666b
.word	0x0000b509
.word	0x5555555d
.word	0xaaaaaab1
.word	0x0000000c
.word	0x3333333a
.word	0x6666666e
.word	0xffff4b03
.word	0x0000b50b
.word	0x33333337
.word	0x8888888a
.word	0xddddddde
.word	0x33333339
.word	0x66666667
.word	0x9999999b
.word	0x33327e30
.word	0x3333e838
.word	0x33333336
.word	0x88888889
.word	0x33333334
.word	0x33333338
.word	0x66666666
.word	0x9999999a
.word	0x3333e837
.word	0x8888888a
.word	0xdddddddf
.word	0x3333333b
.word	0x66666668
.word	0x9999999b
.word	0x33327e31
.word	0x3333e83a
.word	0x6666666a
.word	0xbbbbbbbc
.word	0x11111111
.word	0x6666666d
.word	0x9999999a
.word	0xcccccccd
.word	0x6665b163
.word	0x66671b6c
.word	0x66666669
.word	0xbbbbbbbb
.word	0x66666667
.word	0x6666666c
.word	0x99999999
.word	0xcccccccc
.word	0x66671b6a
.word	0xbbbbbbbe
.word	0x11111112
.word	0x6666666d
.word	0x9999999b
.word	0xcccccccf
.word	0x6665b164
.word	0x66671b6c
.word	0xffff4b00
.word	0x5554a053
.word	0xaaa9f5a7
.word	0xffff4b02
.word	0x33327e30
.word	0x6665b164
.word	0xfffe95f9
.word	0x00000001
.word	0xffff4aff
.word	0x5554a052
.word	0xffff4afd
.word	0xffff4b01
.word	0x33327e2f
.word	0x6665b163
.word	0x00000000
.word	0x5554a053
.word	0xaaa9f5a8
.word	0xffff4b04
.word	0x33327e31
.word	0x6665b164
.word	0xfffe95fa
.word	0x00000003
.word	0x0000b508
.word	0x55560a5a
.word	0xaaab5faf
.word	0x0000b50b
.word	0x3333e838
.word	0x66671b6b
.word	0x00000001
.word	0x00016a0a
.word	0x0000b507
.word	0x55560a59
.word	0x0000b505
.word	0x0000b50a
.word	0x3333e837
.word	0x66671b6a
.word	0x00016a08
.word	0xfffffffd
.word	0xfffffffa
.word	0xfffffff6
.word	0xffffffee
.word	0xffffffdf
.word	0xffffffbe
.word	0xffffff7e
.word	0xfffffefe
.word	0xfffffffd
.word	0xfffffffa
.word	0xfffffff6
.word	0xffffffee
.word	0xffffffdf
.word	0xffffffbe
.word	0xffffff7e
.word	0xfffffefe
.word	0xfffffdff
.word	0xfffffbfe
.word	0xfffff7fe
.word	0xffffeffe
.word	0xffffdfff
.word	0xffffbffe
.word	0xffff7ffe
.word	0xfffefffe
.word	0xfffffdff
.word	0xfffffbfe
.word	0xfffff7fe
.word	0xffffeffe
.word	0xffffdfff
.word	0xffffbffe
.word	0xffff7ffe
.word	0xfffefffe
.word	0xfffdffff
.word	0xfffbfffe
.word	0xfff7fffe
.word	0xffeffffe
.word	0xffdfffff
.word	0xffbffffe
.word	0xff7ffffe
.word	0xfefffffe
.word	0xfffdffff
.word	0xfffbfffe
.word	0xfff7fffe
.word	0xffeffffe
.word	0xffdfffff
.word	0xffbffffe
.word	0xff7ffffe
.word	0xfefffffe
.word	0xfdffffff
.word	0xfbfffffe
.word	0xf7fffffe
.word	0xeffffffe
.word	0xdfffffff
.word	0xbffffffe
.word	0x7ffffffe
.word	0xfffffffe
.word	0xfdffffff
.word	0xfbfffffe
.word	0xf7fffffe
.word	0xeffffffe
.word	0xdfffffff
.word	0xbffffffe
.word	0x7ffffffe
.word	0xfffffffe
.word	0x00000003
.word	0x00000004
.word	0x00000008
.word	0x00000010
.word	0x00000021
.word	0x00000040
.word	0x00000080
.word	0x00000100
.word	0x00000003
.word	0x00000004
.word	0x00000008
.word	0x00000010
.word	0x00000021
.word	0x00000040
.word	0x00000080
.word	0x00000100
.word	0x00000201
.word	0x00000400
.word	0x00000800
.word	0x00001000
.word	0x00002001
.word	0x00004000
.word	0x00008000
.word	0x00010000
.word	0x00000201
.word	0x00000400
.word	0x00000800
.word	0x00001000
.word	0x00002001
.word	0x00004000
.word	0x00008000
.word	0x00010000
.word	0x00020001
.word	0x00040000
.word	0x00080000
.word	0x00100000
.word	0x00200001
.word	0x00400000
.word	0x00800000
.word	0x01000000
.word	0x02000001
.word	0x04000000
.word	0x08000000
.word	0x10000000
.word	0x20000001
.word	0x40000000
.word	0x80000000
.word	0x00000000
.word	0x02000001
.word	0x04000000
.word	0x08000000
.word	0x10000000
.word	0x20000001
.word	0x40000000
.word	0x80000000
.word	0x00000000
.word	0x00000007
.word	0x55555558
.word	0xaaaaaaad
.word	0x00000008
.word	0x33333337
.word	0x66666669
.word	0xffff4aff
.word	0x55555558
.word	0x00000007
.word	0x55555558
.word	0xaaaaaaad
.word	0x00000008
.word	0x33333337
.word	0x66666669
.word	0xffff4aff
.word	0x55555558
.word	0x0000b508
.word	0x00000005
.word	0x55555557
.word	0x00000003
.word	0x00000008
.word	0x33333335
.word	0xbbbbbbba
.word	0xaaaaaaad
.word	0x0000b508
.word	0x00000005
.word	0x55555557
.word	0x00000003
.word	0x00000008
.word	0x33333335
.word	0xbbbbbbba
.word	0xaaaaaaad
.word	0xaaab5fae
.word	0x55555559
.word	0xaaaaaaae
.word	0x00000009
.word	0x33333338
.word	0x6666666a
.word	0xffff4b00
.word	0x0000b505
.word	0xaaab5fae
.word	0x55555559
.word	0xaaaaaaae
.word	0x00000009
.word	0x33333338
.word	0x6666666a
.word	0xffff4b00
.word	0x0000b505
.word	0x00000007
.word	0xaaaaaaaa
.word	0xffffffff
.word	0x5555555a
.word	0x88888889
.word	0xbbbbbbbb
.word	0x5554a051
.word	0x55560a59
.word	0x00000007
.word	0xaaaaaaaa
.word	0xffffffff
.word	0x5555555a
.word	0x88888889
.word	0xbbbbbbbb
.word	0x5554a051
.word	0x55560a59
.word	0x55555558
.word	0xaaaaaaa9
.word	0x55555555
.word	0x55555559
.word	0x88888888
.word	0xbbbbbbba
.word	0x55560a58
.word	0xaaaaaaab
.word	0x55555558
.word	0xaaaaaaa9
.word	0x55555555
.word	0x55555559
.word	0x88888888
.word	0xbbbbbbba
.word	0x55560a58
.word	0xaaaaaaab
.word	0x00000001
.word	0x5555555b
.word	0x88888889
.word	0xbbbbbbbc
.word	0x5554a053
.word	0x55560a5a
.word	0x55555558
.word	0xffffffff
.word	0x00000001
.word	0x5555555b
.word	0x88888889
.word	0xbbbbbbbc
.word	0x5554a053
.word	0x55560a5a
.word	0x55555558
.word	0xffffffff
.word	0x55555555
.word	0xaaaaaaaf
.word	0xdddddddd
.word	0x11111110
.word	0xaaa9f5a7
.word	0xaaab5fae
.word	0xaaaaaaac
.word	0xfffffffe
.word	0xaaaaaaab
.word	0xaaaaaaae
.word	0xdddddddc
.word	0x1111110f
.word	0xaaaaaaab
.word	0xaaab5fad
.word	0x00000000
.word	0x55555555
.word	0xaaaaaaab
.word	0xaaaaaaae
.word	0xdddddddc
.word	0x1111110f
.word	0xaaaaaaab
.word	0xaaab5fad
.word	0x00000000
.word	0x55555555
.word	0xaaaaaab1
.word	0xddddddde
.word	0x11111111
.word	0xaaa9f5a7
.word	0xaaab5fb0
.word	0x00000008
.word	0x5555555a
.word	0xaaaaaaaf
.word	0xaaaaaab1
.word	0xddddddde
.word	0x11111111
.word	0xaaa9f5a7
.word	0xaaab5fb0
.word	0x00000008
.word	0x5555555a
.word	0xaaaaaaaf
.word	0x0000000b
.word	0x33333338
.word	0x6666666b
.word	0xffff4b01
.word	0x0000b50a
.word	0x00000007
.word	0x55555559
.word	0x00000005
.word	0x0000000b
.word	0x33333338
.word	0x6666666b
.word	0xffff4b01
.word	0x0000b50a
.word	0x00000007
.word	0x55555559
.word	0x00000005
.word	0x0000000a
.word	0x33333337
.word	0x6666666a
.word	0x0000b508
.word	0x5555555c
.word	0xaaaaaab0
.word	0x0000000b
.word	0x33333339
.word	0x0000000a
.word	0x33333337
.word	0x6666666a
.word	0x0000b508
.word	0x5555555c
.word	0xaaaaaab0
.word	0x0000000b
.word	0x33333339
.word	0x6666666d
.word	0xffff4b02
.word	0x0000b50a
.word	0x33333336
.word	0x88888889
.word	0xdddddddd
.word	0x33333338
.word	0x66666666
.word	0x6666666d
.word	0xffff4b02
.word	0x0000b50a
.word	0x33333336
.word	0x88888889
.word	0xdddddddd
.word	0x33333338
.word	0x66666666
.word	0x9999999a
.word	0x33327e2f
.word	0x3333e837
.word	0x33333335
.word	0x88888888
.word	0x33333333
.word	0x33333337
.word	0x66666665
.word	0x9999999a
.word	0x33327e2f
.word	0x3333e837
.word	0x33333335
.word	0x88888888
.word	0x33333333
.word	0x33333337
.word	0x66666665
.word	0x99999999
.word	0x3333e836
.word	0x88888889
.word	0xddddddde
.word	0x3333333a
.word	0x66666667
.word	0x9999999a
.word	0x33327e30
.word	0x99999999
.word	0x3333e836
.word	0x88888889
.word	0xddddddde
.word	0x3333333a
.word	0x66666667
.word	0x9999999a
.word	0x33327e30
.word	0x3333e839
.word	0x66666669
.word	0xbbbbbbbb
.word	0x11111110
.word	0x6666666c
.word	0x99999999
.word	0xcccccccc
.word	0x6665b162
.word	0xbbbbbbbd
.word	0x11111111
.word	0x6666666c
.word	0x9999999a
.word	0xccccccce
.word	0x6665b163
.word	0x66671b6b
.word	0xffff4aff
.word	0xbbbbbbbd
.word	0x11111111
.word	0x6666666c
.word	0x9999999a
.word	0xccccccce
.word	0x6665b163
.word	0x66671b6b
.word	0xffff4aff
.word	0x5554a052
.word	0xaaa9f5a6
.word	0xffff4b01
.word	0x33327e2f
.word	0x6665b163
.word	0xfffe95f8
.word	0x00000000
.word	0xffff4afe
.word	0x5554a052
.word	0xaaa9f5a6
.word	0xffff4b01
.word	0x33327e2f
.word	0x6665b163
.word	0xfffe95f8
.word	0x00000000
.word	0xffff4afe
.word	0x5554a051
.word	0xffff4afc
.word	0xffff4b00
.word	0x33327e2e
.word	0x6665b162
.word	0xffffffff
.word	0x5554a052
.word	0xaaa9f5a7
.word	0x5554a051
.word	0xffff4afc
.word	0xffff4b00
.word	0x33327e2e
.word	0x6665b162
.word	0xffffffff
.word	0x5554a052
.word	0xaaa9f5a7
.word	0xffff4b03
.word	0x33327e30
.word	0x6665b163
.word	0xfffe95f9
.word	0x00000002
.word	0x0000b507
.word	0x55560a59
.word	0xaaab5fae
.word	0xffff4b03
.word	0x33327e30
.word	0x6665b163
.word	0xfffe95f9
.word	0x00000002
.word	0x0000b507
.word	0x55560a59
.word	0xaaab5fae
.word	0x0000b50a
.word	0x3333e837
.word	0x66671b6a
.word	0x00000000
.word	0x00016a09
.word	0x0000b506
.word	0x55560a58
.word	0x0000b504
.word	0x0000b50a
.word	0x3333e837
.word	0x66671b6a
.word	0x00000000
.word	0x00016a09
.word	0x0000b506
.word	0x55560a58
.word	0x0000b504
.word	0x0000b509
.word	0x3333e836
.word	0x66671b69
.word	0x00016a07
.word	0x55560a5b
.word	0xaaab5faf
.word	0x0000b50a
.word	0x3333e838
.word	0x0000b509
.word	0x3333e836
.word	0x66671b69
.word	0x00016a07
.word	0x55560a5b
.word	0xaaab5faf
.word	0x0000b50a
.word	0x3333e838
.word	0x66671b6c
.word	0x00000001
.word	0x00016a09
.word	0x00000005
.word	0x55555558
.word	0xaaaaaaac
.word	0x00000007
.word	0x33333335
.word	0x66671b6c
.word	0x00000001
.word	0x00016a09
.word	0x00000005
.word	0x55555558
.word	0xaaaaaaac
.word	0x00000007
.word	0x33333335
.word	0x66666669
.word	0xffff4afe
.word	0x0000b506
.word	0x00000004
.word	0x55555557
.word	0x00000002
.word	0x00000006
.word	0x33333334
.word	0x66666669
.word	0xffff4afe
.word	0x0000b506
.word	0x00000004
.word	0x55555557
.word	0x00000002
.word	0x00000006
.word	0x33333334

rd_data_vx:
.word	0xfffffffd
.word	0xfffffffb
.word	0xfffffff9
.word	0xfffffff5
.word	0xffffffee
.word	0xffffffdd
.word	0xffffffbd
.word	0xffffff7d
.word	0xfffffefd
.word	0xfffffdfc
.word	0xfffffbfc
.word	0xfffff7fc
.word	0xffffeffd
.word	0xffffdffc
.word	0xffffbffc
.word	0xffff7ffc
.word	0xfffefffb
.word	0xfffdfffa
.word	0xfffbfffa
.word	0xfff7fffa
.word	0xffeffffb
.word	0xffdffffa
.word	0xffbffffa
.word	0xff7ffffa
.word	0xfefffff7
.word	0xfdfffff6
.word	0xfbfffff6
.word	0xf7fffff6
.word	0xeffffff7
.word	0xdffffff6
.word	0xbffffff6
.word	0x7ffffff6
.word	0xfffffff1
.word	0xfffffff1
.word	0xfffffff3
.word	0xfffffff7
.word	0x00000000
.word	0x0000000f
.word	0x0000002f
.word	0x0000006f
.word	0x000000e0
.word	0x000001df
.word	0x000003df
.word	0x000007df
.word	0x00000fe0
.word	0x00001fdf
.word	0x00003fdf
.word	0x00007fdf
.word	0x0000ffc0
.word	0x0001ffbf
.word	0x0003ffbf
.word	0x0007ffbf
.word	0x000fffc0
.word	0x001fffbf
.word	0x003fffbf
.word	0x007fffbf
.word	0x00ffff80
.word	0x01ffff7f
.word	0x03ffff7f
.word	0x07ffff7f
.word	0x0fffff80
.word	0x1fffff7f
.word	0x3fffff7f
.word	0x7fffff7f
.word	0xffffff03
.word	0x55555454
.word	0xaaaaa9a9
.word	0xffffff04
.word	0x33333233
.word	0x66666565
.word	0xffff49fb
.word	0x55555454
.word	0x0000b304
.word	0xfffffe01
.word	0x55555353
.word	0xfffffdff
.word	0xfffffe04
.word	0x33333131
.word	0x66666464
.word	0xaaaaa8a9
.word	0x0000b103
.word	0x55555155
.word	0xaaaaa6aa
.word	0xfffffc05
.word	0x33332f34
.word	0x66666266
.word	0xffff46fc
.word	0x0000b104
.word	0xfffff803
.word	0x55554d54
.word	0xaaaaa2a9
.word	0xfffff804
.word	0x33332b33
.word	0x66665e65
.word	0xffff42fb
.word	0x0000ad03
.word	0xfffff002
.word	0x55554553
.word	0xffffefff
.word	0xfffff003
.word	0x33332332
.word	0x66665664
.word	0x0000a502
.word	0x55554555
.word	0xaaaa8aab
.word	0xffffe005
.word	0x33331333
.word	0x66664666
.word	0xffff2afd
.word	0x00009504
.word	0xffffe002
.word	0x55553554
.word	0xaaaa6aaa
.word	0xffffc004
.word	0x3332f332
.word	0x66662665
.word	0xffff0afc
.word	0x00007503
.word	0xffffc001
.word	0x55551553
.word	0xffff8000
.word	0xffff8003
.word	0x3332b331
.word	0x6665e664
.word	0xffff8000
.word	0x00003502
.word	0x5554d555
.word	0xaaaa2aaa
.word	0xffff0006
.word	0x33323333
.word	0x66656666
.word	0xfffe4afc
.word	0xffffb505
.word	0xffff0002
.word	0x55545554
.word	0xaaa9aaa9
.word	0xfffe0005
.word	0x33313332
.word	0x66646665
.word	0xfffd4afb
.word	0xfffeb504
.word	0xfffe0001
.word	0x55535553
.word	0xfffdffff
.word	0xfffc0004
.word	0x332f3331
.word	0x66626664
.word	0xfffcb502
.word	0x55515556
.word	0xaaa6aaaa
.word	0xfffc0005
.word	0x332f3333
.word	0x665e6667
.word	0xfff74afc
.word	0xfff8b504
.word	0xfff80002
.word	0x554d5555
.word	0xaaa2aaa9
.word	0xfff80004
.word	0x332b3332
.word	0x66566666
.word	0xffef4afb
.word	0xfff0b503
.word	0xfff00001
.word	0x55455554
.word	0xffefffff
.word	0xfff00003
.word	0x33233331
.word	0x66466665
.word	0xffe0b502
.word	0x55355555
.word	0xaa8aaaaa
.word	0xffe00006
.word	0x33133333
.word	0x66466666
.word	0xffdf4afc
.word	0xffc0b505
.word	0xffc00002
.word	0x55155554
.word	0xaa6aaaa9
.word	0xffc00005
.word	0x32f33332
.word	0x66266665
.word	0xffbf4afb
.word	0xff80b504
.word	0xff800001
.word	0x54d55553
.word	0xff7fffff
.word	0xff800004
.word	0x32b33331
.word	0x65e66664
.word	0xff80b502
.word	0x54555556
.word	0xa9aaaaaa
.word	0xff000005
.word	0x32333333
.word	0x65666667
.word	0xfeff4afc
.word	0xff00b504
.word	0xff000002
.word	0x53555555
.word	0xa8aaaaa9
.word	0xfe000004
.word	0x31333332
.word	0x64666666
.word	0xfdff4afb
.word	0xfe00b503
.word	0xfe000001
.word	0x51555554
.word	0xfbffffff
.word	0xfc000003
.word	0x2f333331
.word	0x62666665
.word	0xfc00b502
.word	0x51555555
.word	0xa6aaaaaa
.word	0xf8000006
.word	0x2b333333
.word	0x5e666666
.word	0xf7ff4afc
.word	0xf800b505
.word	0xf8000002
.word	0x4d555554
.word	0xa2aaaaa9
.word	0xf0000005
.word	0x23333332
.word	0x56666665
.word	0xefff4afb
.word	0xf000b504
.word	0xf0000001
.word	0x45555553
.word	0xefffffff
.word	0xe0000004
.word	0x13333331
.word	0x46666664
.word	0xe000b502
.word	0x35555556
.word	0x8aaaaaaa
.word	0xe0000005
.word	0x13333333
.word	0x26666667
.word	0xbfff4afc
.word	0xc000b504
.word	0xc0000002
.word	0x15555555
.word	0x6aaaaaa9
.word	0xc0000004
.word	0xf3333332
.word	0xe6666666
.word	0x7fff4afb
.word	0x8000b503
.word	0x80000001
.word	0xd5555554
.word	0x7fffffff
.word	0x80000003
.word	0xb3333331
.word	0x66666667
.word	0x0000b504
.word	0x55555557
.word	0xaaaaaaac
.word	0x00000008
.word	0x33333335
.word	0x66666668
.word	0xffff4afe
.word	0x0000b508
.word	0x00000005
.word	0x55555557
.word	0xaaaaaaac
.word	0x00000008
.word	0x33333335
.word	0x66666668
.word	0xffff4afe
.word	0x0000b509
.word	0x00000006
.word	0x55555558
.word	0x00000004
.word	0x00000009
.word	0x33333336
.word	0x66666669
.word	0x0000b507
.word	0x5555555f
.word	0xaaaaaab3
.word	0x0000000e
.word	0x3333333c
.word	0x66666670
.word	0xffff4b05
.word	0x0000b50d
.word	0x0000000b
.word	0x55555566
.word	0xaaaaaaba
.word	0x00000015
.word	0x33333343
.word	0x66666677
.word	0xffff4b0c
.word	0x0000b514
.word	0x00000012
.word	0x55555575
.word	0x00000020
.word	0x00000024
.word	0x33333352
.word	0x66666686
.word	0x0000b523
.word	0x55555576
.word	0xaaaaaacb
.word	0x00000047
.word	0x33333374
.word	0x666666a7
.word	0xffff4b3d
.word	0x0000b546
.word	0x00000043
.word	0x55555595
.word	0xaaaaaaea
.word	0x00000086
.word	0x333333b3
.word	0x666666e6
.word	0xffff4b7c
.word	0x0000b585
.word	0x00000082
.word	0x555555d4
.word	0x00000080
.word	0x00000105
.word	0x33333432
.word	0x66666765
.word	0x0000b603
.word	0x55555657
.word	0xaaaaabab
.word	0x00000106
.word	0x33333434
.word	0x66666868
.word	0xffff4cfd
.word	0x0000b705
.word	0x00000203
.word	0x55555756
.word	0xaaaaacaa
.word	0x00000205
.word	0x33333533
.word	0x66666a67
.word	0xffff4efc
.word	0x0000b904
.word	0x00000402
.word	0x55555955
.word	0x00000400
.word	0x00000404
.word	0x33333732
.word	0x66666e66
.word	0x0000bd03
.word	0x55555d56
.word	0xaaaab2ab
.word	0x00000807
.word	0x33333b34
.word	0x66666e67
.word	0xffff52fd
.word	0x0000c506
.word	0x00001003
.word	0x55556555
.word	0xaaaabaaa
.word	0x00001006
.word	0x33334333
.word	0x66667666
.word	0xffff5afc
.word	0x0000d505
.word	0x00002002
.word	0x55557554
.word	0x00002000
.word	0x00002005
.word	0x33335332
.word	0x66668665
.word	0x0000d503
.word	0x55559557
.word	0xaaaaeaab
.word	0x00004006
.word	0x33337334
.word	0x6666a668
.word	0xffff8afd
.word	0x0000f505
.word	0x00004003
.word	0x5555d556
.word	0xaaab2aaa
.word	0x00008005
.word	0x3333b333
.word	0x6666e667
.word	0xffffcafc
.word	0x00013504
.word	0x00008002
.word	0x55565555
.word	0x00010000
.word	0x00010004
.word	0x33343332
.word	0x66676666
.word	0x0001b503
.word	0x55565556
.word	0xaaabaaab
.word	0x00020007
.word	0x33353334
.word	0x66686667
.word	0x00014afd
.word	0x0002b506
.word	0x00020003
.word	0x55575555
.word	0xaaacaaaa
.word	0x00040006
.word	0x33373333
.word	0x666a6666
.word	0x00034afc
.word	0x0004b505
.word	0x00040002
.word	0x55595554
.word	0x00040000
.word	0x00080005
.word	0x333b3332
.word	0x666e6665
.word	0x0008b503
.word	0x555d5557
.word	0xaab2aaab
.word	0x00080006
.word	0x333b3334
.word	0x66766668
.word	0x000f4afd
.word	0x0010b505
.word	0x00100003
.word	0x55655556
.word	0xaabaaaaa
.word	0x00100005
.word	0x33433333
.word	0x66866667
.word	0x001f4afc
.word	0x0020b504
.word	0x00200002
.word	0x55755555
.word	0x00200000
.word	0x00200004
.word	0x33533332
.word	0x66a66666
.word	0x0040b503
.word	0x55955556
.word	0xaaeaaaab
.word	0x00400007
.word	0x33733334
.word	0x66a66667
.word	0x003f4afd
.word	0x0080b506
.word	0x00800003
.word	0x55d55555
.word	0xab2aaaaa
.word	0x00800006
.word	0x33b33333
.word	0x66e66666
.word	0x007f4afc
.word	0x0100b505
.word	0x01000002
.word	0x56555554
.word	0x01000000
.word	0x01000005
.word	0x34333332
.word	0x67666665
.word	0x0100b503
.word	0x57555557
.word	0xacaaaaab
.word	0x02000006
.word	0x35333334
.word	0x68666668
.word	0x01ff4afd
.word	0x0200b505
.word	0x02000003
.word	0x59555556
.word	0xaeaaaaaa
.word	0x04000005
.word	0x37333333
.word	0x6a666667
.word	0x03ff4afc
.word	0x0400b504
.word	0x04000002
.word	0x5d555555
.word	0x08000000
.word	0x08000004
.word	0x3b333332
.word	0x6e666666
.word	0x0800b503
.word	0x5d555556
.word	0xb2aaaaab
.word	0x10000007
.word	0x43333334
.word	0x76666667
.word	0x0fff4afd
.word	0x1000b506
.word	0x10000003
.word	0x65555555
.word	0xbaaaaaaa
.word	0x20000006
.word	0x53333333
.word	0x86666666
.word	0x1fff4afc
.word	0x2000b505
.word	0x20000002
.word	0x75555554
.word	0x20000000
.word	0x40000005
.word	0x73333332
.word	0xa6666665
.word	0x4000b503
.word	0x95555557
.word	0xeaaaaaab
.word	0x40000006
.word	0x73333334
.word	0xe6666668
.word	0x7fff4afd
.word	0x8000b505
.word	0x80000003
.word	0xd5555556
.word	0x2aaaaaaa
.word	0x80000005
.word	0xb3333333
.word	0x6666666a
.word	0xffff4aff
.word	0x0000b507
.word	0x00000005
.word	0x55555558
.word	0x00000003
.word	0x00000007
.word	0x33333335
.word	0x66666669
.word	0x0000b506
.word	0x55555559
.word	0xaaaaaaae
.word	0x0000000a
.word	0x33333337
.word	0x6666666a
.word	0xffff4b00
.word	0x0000b509
.word	0x00000006
.word	0x55555558
.word	0xaaaaaaad
.word	0x00000009
.word	0x33333336
.word	0x66666669
.word	0xffff4aff
.word	0x0000b508
.word	0x00000005
.word	0x55555557
.word	0x00000003
.word	0x00000008
.word	0x33333335
.word	0x66666668
.word	0x0000b506

rd_data_vi:
.word	0x0000000d
.word	0x0000000b
.word	0x00000009
.word	0x00000005
.word	0xfffffffe
.word	0xffffffed
.word	0xffffffcd
.word	0xffffff8d
.word	0xffffff0e
.word	0xfffffe0d
.word	0xfffffc0d
.word	0xfffff80d
.word	0xfffff00e
.word	0xffffe00d
.word	0xffffc00d
.word	0xffff800d
.word	0xffff000e
.word	0xfffe000d
.word	0xfffc000d
.word	0xfff8000d
.word	0xfff0000e
.word	0xffe0000d
.word	0xffc0000d
.word	0xff80000d
.word	0xff00000e
.word	0xfe00000d
.word	0xfc00000d
.word	0xf800000d
.word	0xf000000e
.word	0xe000000d
.word	0xc000000d
.word	0x8000000d
.word	0x00000010
.word	0x00000010
.word	0x00000012
.word	0x00000016
.word	0x0000001f
.word	0x0000002e
.word	0x0000004e
.word	0x0000008e
.word	0x0000010f
.word	0x0000020e
.word	0x0000040e
.word	0x0000080e
.word	0x0000100f
.word	0x0000200e
.word	0x0000400e
.word	0x0000800e
.word	0x0001000f
.word	0x0002000e
.word	0x0004000e
.word	0x0008000e
.word	0x0010000f
.word	0x0020000e
.word	0x0040000e
.word	0x0080000e
.word	0x0100000f
.word	0x0200000e
.word	0x0400000e
.word	0x0800000e
.word	0x1000000f
.word	0x2000000e
.word	0x4000000e
.word	0x8000000e
.word	0x00000012
.word	0x55555563
.word	0xaaaaaab8
.word	0x00000013
.word	0x33333342
.word	0x66666674
.word	0xffff4b0a
.word	0x55555563
.word	0x0000b513
.word	0x00000010
.word	0x55555562
.word	0x0000000e
.word	0x00000013
.word	0x33333340
.word	0x66666673
.word	0xaaaaaab8
.word	0x0000b512
.word	0x55555564
.word	0xaaaaaab9
.word	0x00000014
.word	0x33333343
.word	0x66666675
.word	0xffff4b0b
.word	0x0000b513
.word	0x00000012
.word	0x55555563
.word	0xaaaaaab8
.word	0x00000013
.word	0x33333342
.word	0x66666674
.word	0xffff4b0a
.word	0x0000b512
.word	0x00000011
.word	0x55555562
.word	0x0000000e
.word	0x00000012
.word	0x33333341
.word	0x66666673
.word	0x0000b511
.word	0x55555564
.word	0xaaaaaaba
.word	0x00000014
.word	0x33333342
.word	0x66666675
.word	0xffff4b0c
.word	0x0000b513
.word	0x00000011
.word	0x55555563
.word	0xaaaaaab9
.word	0x00000013
.word	0x33333341
.word	0x66666674
.word	0xffff4b0b
.word	0x0000b512
.word	0x00000010
.word	0x55555562
.word	0x0000000f
.word	0x00000012
.word	0x33333340
.word	0x66666673
.word	0x0000000f
.word	0x0000b511
.word	0x55555564
.word	0xaaaaaab9
.word	0x00000015
.word	0x33333342
.word	0x66666675
.word	0xffff4b0b
.word	0x0000b514
.word	0x00000011
.word	0x55555563
.word	0xaaaaaab8
.word	0x00000014
.word	0x33333341
.word	0x66666674
.word	0xffff4b0a
.word	0x0000b513
.word	0x00000010
.word	0x55555562
.word	0x0000000e
.word	0x00000013
.word	0x33333340
.word	0x66666673
.word	0x0000b511
.word	0x55555565
.word	0xaaaaaab9
.word	0x00000014
.word	0x33333342
.word	0x66666676
.word	0xffff4b0b
.word	0x0000b513
.word	0x00000011
.word	0x55555564
.word	0xaaaaaab8
.word	0x00000013
.word	0x33333341
.word	0x66666675
.word	0xffff4b0a
.word	0x0000b512
.word	0x00000010
.word	0x55555563
.word	0x0000000e
.word	0x00000012
.word	0x33333340
.word	0x66666674
.word	0x0000b511
.word	0x55555564
.word	0xaaaaaab9
.word	0x00000015
.word	0x33333342
.word	0x66666675
.word	0xffff4b0b
.word	0x0000b514
.word	0x00000011
.word	0x55555563
.word	0xaaaaaab8
.word	0x00000014
.word	0x33333341
.word	0x66666674
.word	0xffff4b0a
.word	0x0000b513
.word	0x00000010
.word	0x55555562
.word	0x0000000e
.word	0x00000013
.word	0x33333340
.word	0x66666673
.word	0x0000b511
.word	0x55555565
.word	0xaaaaaab9
.word	0x00000014
.word	0x33333342
.word	0x66666676
.word	0xffff4b0b
.word	0x0000b513
.word	0x00000011
.word	0x55555564
.word	0xaaaaaab8
.word	0x00000013
.word	0x33333341
.word	0x66666675
.word	0xffff4b0a
.word	0x0000b512
.word	0x00000010
.word	0x55555563
.word	0x0000000e
.word	0x00000012
.word	0x33333340
.word	0x66666674
.word	0x0000b511
.word	0x55555564
.word	0xaaaaaab9
.word	0x00000015
.word	0x33333342
.word	0x66666675
.word	0xffff4b0b
.word	0x0000b514
.word	0x00000011
.word	0x55555563
.word	0xaaaaaab8
.word	0x00000014
.word	0x33333341
.word	0x66666674
.word	0xffff4b0a
.word	0x0000b513
.word	0x00000010
.word	0x55555562
.word	0x0000000e
.word	0x00000013
.word	0x33333340
.word	0x66666673
.word	0x0000b511
.word	0x55555565
.word	0xaaaaaab9
.word	0x00000014
.word	0x33333342
.word	0x66666676
.word	0xffff4b0b
.word	0x0000b513
.word	0x00000011
.word	0x55555564
.word	0xaaaaaab8
.word	0x00000013
.word	0x33333341
.word	0x66666675
.word	0xffff4b0a
.word	0x0000b512
.word	0x00000010
.word	0x55555563
.word	0x0000000e
.word	0x00000012
.word	0x33333340
.word	0x66666674
.word	0x0000b511
.word	0x55555564
.word	0xaaaaaab9
.word	0x00000015
.word	0x33333342
.word	0x66666675
.word	0xffff4b0b
.word	0x0000b514
.word	0x00000011
.word	0x55555563
.word	0xaaaaaab8
.word	0x00000014
.word	0x33333341
.word	0x66666674
.word	0xffff4b0a
.word	0x0000b513
.word	0x00000010
.word	0x55555562
.word	0x0000000e
.word	0x00000013
.word	0x33333340
.word	0x66666673
.word	0x0000b511
.word	0x55555565
.word	0xaaaaaab9
.word	0x00000014
.word	0x33333342
.word	0x66666676
.word	0xffff4b0b
.word	0x0000b513
.word	0x00000011
.word	0x55555564
.word	0xaaaaaab8
.word	0x00000013
.word	0x33333341
.word	0x66666675
.word	0xffff4b0a
.word	0x0000b512
.word	0x00000010
.word	0x55555563
.word	0x0000000e
.word	0x00000012
.word	0x33333340
.word	0x66666674
.word	0x0000b511
.word	0x55555564
.word	0xaaaaaab9
.word	0x00000015
.word	0x33333342
.word	0x66666675
.word	0xffff4b0b
.word	0x0000b514
.word	0x00000011
.word	0x55555563
.word	0xaaaaaab8
.word	0x00000014
.word	0x33333341
.word	0x66666674
.word	0xffff4b0a
.word	0x0000b513
.word	0x00000010
.word	0x55555562
.word	0x0000000e
.word	0x00000013
.word	0x33333340
.word	0x66666673
.word	0x0000b511
.word	0x55555565
.word	0xaaaaaab9
.word	0x00000014
.word	0x33333342
.word	0x66666676
.word	0xffff4b0b
.word	0x0000b513
.word	0x00000011
.word	0x55555564
.word	0xaaaaaab8
.word	0x00000013
.word	0x33333341
.word	0x66666675
.word	0xffff4b0a
.word	0x0000b512
.word	0x00000010
.word	0x55555563
.word	0x0000000e
.word	0x00000012
.word	0x33333340
.word	0x66666674
.word	0x0000b511
.word	0x55555564
.word	0xaaaaaab9
.word	0x00000015
.word	0x33333342
.word	0x66666675
.word	0xffff4b0b
.word	0x0000b514
.word	0x00000011
.word	0x55555563
.word	0xaaaaaab8
.word	0x00000014
.word	0x33333341
.word	0x66666674
.word	0xffff4b0a
.word	0x0000b513
.word	0x00000010
.word	0x55555562
.word	0x0000000e
.word	0x00000013
.word	0x33333340
.word	0x66666673
.word	0x0000b511
.word	0x55555565
.word	0xaaaaaab9
.word	0x00000014
.word	0x33333342
.word	0x66666676
.word	0xffff4b0b
.word	0x0000b513
.word	0x00000011
.word	0x55555564
.word	0xaaaaaab8
.word	0x00000013
.word	0x33333341
.word	0x66666675
.word	0xffff4b0a
.word	0x0000b512
.word	0x00000010
.word	0x55555563
.word	0x0000000e
.word	0x00000012
.word	0x33333340
.word	0x66666674
.word	0x0000b511
.word	0x55555564
.word	0xaaaaaab9
.word	0x00000015
.word	0x33333342
.word	0x66666675
.word	0xffff4b0b
.word	0x0000b514
.word	0x00000011
.word	0x55555563
.word	0xaaaaaab8
.word	0x00000014
.word	0x33333341
.word	0x66666674
.word	0xffff4b0a
.word	0x0000b513
.word	0x00000010
.word	0x55555562
.word	0x0000000e
.word	0x00000013
.word	0x33333340
.word	0x66666673
.word	0x0000b511
.word	0x55555565
.word	0xaaaaaab9
.word	0x00000014
.word	0x33333342
.word	0x66666676
.word	0xffff4b0b
.word	0x0000b513
.word	0x00000011
.word	0x55555564
.word	0xaaaaaab8
.word	0x00000013
.word	0x33333341
.word	0x66666675
.word	0xffff4b0a
.word	0x0000b512
.word	0x00000010
.word	0x55555563
.word	0x0000000e
.word	0x00000012
.word	0x33333340
.word	0x66666674
.word	0x0000b511
.word	0x55555564
.word	0xaaaaaab9
.word	0x00000015
.word	0x33333342
.word	0x66666675
.word	0xffff4b0b
.word	0x0000b514
.word	0x00000011
.word	0x55555563
.word	0xaaaaaab8
.word	0x00000014
.word	0x33333341
.word	0x66666674
.word	0xffff4b0a
.word	0x0000b513
.word	0x00000010
.word	0x55555562
.word	0x0000000e
.word	0x00000013
.word	0x33333340
.word	0x66666673
.word	0x0000b511
.word	0x55555565
.word	0xaaaaaab9
.word	0x00000014
.word	0x33333342
.word	0x66666676
.word	0xffff4b0b
.word	0x0000b513
.word	0x00000011
.word	0x55555564
.word	0xaaaaaab8
.word	0x00000013
.word	0x33333341
.word	0x66666675
.word	0xffff4b0a
.word	0x0000b512
.word	0x00000010
.word	0x55555563
.word	0x0000000e
.word	0x00000012
.word	0x33333340
.word	0x66666674
.word	0x0000b511
.word	0x55555564
.word	0xaaaaaab9
.word	0x00000015
.word	0x33333342
.word	0x66666675
.word	0xffff4b0b
.word	0x0000b514
.word	0x00000011
.word	0x55555563
.word	0xaaaaaab8
.word	0x00000014
.word	0x33333341
.word	0x66666674
.word	0xffff4b0a
.word	0x0000b513
.word	0x00000010
.word	0x55555562
.word	0x0000000e
.word	0x00000013
.word	0x33333340
.word	0x66666673
.word	0x0000b511
.word	0x55555565
.word	0xaaaaaab9
.word	0x00000014
.word	0x33333342
.word	0x66666676
.word	0xffff4b0b
.word	0x0000b513
.word	0x00000011
.word	0x55555564
.word	0xaaaaaab8
.word	0x00000013
.word	0x33333341
.word	0x66666675
.word	0xffff4b0a
.word	0x0000b512
.word	0x00000010
.word	0x55555563
.word	0x0000000e
.word	0x00000012
.word	0x33333340
.word	0x66666674
.word	0x0000b511
.word	0x55555564
.word	0xaaaaaab9
.word	0x00000015
.word	0x33333342
.word	0x66666675
.word	0xffff4b0b
.word	0x0000b514
.word	0x00000011
.word	0x55555563
.word	0xaaaaaab8
.word	0x00000014
.word	0x33333341
.word	0x66666674
.word	0xffff4b0a
.word	0x0000b513
.word	0x00000010
.word	0x55555562
.word	0x0000000e
.word	0x00000013
.word	0x33333340
.word	0x66666673
.word	0x0000b511
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314

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
    

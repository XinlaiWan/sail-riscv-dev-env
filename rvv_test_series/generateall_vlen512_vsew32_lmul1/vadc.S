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
  TEST_ADC_VV_OP_rd1( 35,  vadc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP_12( 36,  vadc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP_rd2( 37,  vadc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP_13( 38,  vadc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP_rd3( 39,  vadc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP_14( 40,  vadc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP_rd4( 41,  vadc.vvm, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_ADC_VV_OP_15( 42,  vadc.vvm, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_ADC_VV_OP_rd5( 43,  vadc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP_16( 44,  vadc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP_rd6( 45,  vadc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP_17( 46,  vadc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP_rd7( 47,  vadc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP_rd8( 48,  vadc.vvm, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_ADC_VV_OP_19( 49,  vadc.vvm, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_ADC_VV_OP_rd9( 50,  vadc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP_110( 51,  vadc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP_rd10( 52,  vadc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP_111( 53,  vadc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP_rd11( 54,  vadc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP_112( 55,  vadc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP_rd12( 56,  vadc.vvm, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_ADC_VV_OP_113( 57,  vadc.vvm, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_ADC_VV_OP_rd13( 58,  vadc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP_114( 59,  vadc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP_rd14( 60,  vadc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP_115( 61,  vadc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP_rd15( 62,  vadc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP_rd16( 63,  vadc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP_117( 64,  vadc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP_rd17( 65,  vadc.vvm, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_ADC_VV_OP_118( 66,  vadc.vvm, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_ADC_VV_OP_rd18( 67,  vadc.vvm, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_ADC_VV_OP_119( 68,  vadc.vvm, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_ADC_VV_OP_rd19( 69,  vadc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP_120( 70,  vadc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP_rd20( 71,  vadc.vvm, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_ADC_VV_OP_121( 72,  vadc.vvm, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_ADC_VV_OP_rd21( 73,  vadc.vvm, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_ADC_VV_OP_122( 74,  vadc.vvm, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_ADC_VV_OP_rd22( 75,  vadc.vvm, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_ADC_VV_OP_123( 76,  vadc.vvm, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_ADC_VV_OP_rd23( 77,  vadc.vvm, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_ADC_VV_OP_rd25( 78,  vadc.vvm, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_ADC_VV_OP_126( 79,  vadc.vvm, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_ADC_VV_OP_rd26( 80,  vadc.vvm, rd_data_vv+1600, rs2_data+1600, rs1_data+1600)
  TEST_ADC_VV_OP_127( 81,  vadc.vvm, rd_data_vv+1600, rs2_data+1600, rs1_data+1600)
  TEST_ADC_VV_OP_rd27( 82,  vadc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP_128( 83,  vadc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP_rd28( 84,  vadc.vvm, rd_data_vv+1728, rs2_data+1728, rs1_data+1728)
  TEST_ADC_VV_OP_129( 85,  vadc.vvm, rd_data_vv+1728, rs2_data+1728, rs1_data+1728)
  TEST_ADC_VV_OP_rd29( 86,  vadc.vvm, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_ADC_VV_OP_130( 87,  vadc.vvm, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_ADC_VV_OP_rd30( 88,  vadc.vvm, rd_data_vv+1856, rs2_data+1856, rs1_data+1856)
  TEST_ADC_VV_OP_131( 89,  vadc.vvm, rd_data_vv+1856, rs2_data+1856, rs1_data+1856)
  TEST_ADC_VV_OP_rd31( 90,  vadc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP_12( 91,  vadc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP_rd1( 92,  vadc.vvm, rd_data_vv+1984, rs2_data+1984, rs1_data+1984)
  TEST_ADC_VV_OP_13( 93,  vadc.vvm, rd_data_vv+1984, rs2_data+1984, rs1_data+1984)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_ADC_VX_OP( 94,  vadc.vxm, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_ADC_VX_OP( 95,  vadc.vxm, rd_data_vx+64, rs2_data+64, 0xfffffffffffffffd)
  TEST_ADC_VX_OP( 96,  vadc.vxm, rd_data_vx+128, rs2_data+128, 0xfffffffffffffffb)
  TEST_ADC_VX_OP( 97,  vadc.vxm, rd_data_vx+192, rs2_data+192, 0xfffffffffffffff7)
  TEST_ADC_VX_OP( 98,  vadc.vxm, rd_data_vx+256, rs2_data+256, 0xffffffffffffffef)
  TEST_ADC_VX_OP( 99,  vadc.vxm, rd_data_vx+320, rs2_data+320, 0xffffffffffffffdf)
  TEST_ADC_VX_OP( 100,  vadc.vxm, rd_data_vx+384, rs2_data+384, 0xffffffffffffffbf)
  TEST_ADC_VX_OP( 101,  vadc.vxm, rd_data_vx+448, rs2_data+448, 0xffffffffffffff7f)
  TEST_ADC_VX_OP( 102,  vadc.vxm, rd_data_vx+512, rs2_data+512, 0xfffffffffffffeff)
  TEST_ADC_VX_OP( 103,  vadc.vxm, rd_data_vx+576, rs2_data+576, 0xfffffffffffffdff)
  TEST_ADC_VX_OP( 104,  vadc.vxm, rd_data_vx+640, rs2_data+640, 0xfffffffffffffbff)
  TEST_ADC_VX_OP( 105,  vadc.vxm, rd_data_vx+704, rs2_data+704, 0xfffffffffffff7ff)
  TEST_ADC_VX_OP( 106,  vadc.vxm, rd_data_vx+768, rs2_data+768, 0xffffffffffffefff)
  TEST_ADC_VX_OP( 107,  vadc.vxm, rd_data_vx+832, rs2_data+832, 0xffffffffffffdfff)
  TEST_ADC_VX_OP( 108,  vadc.vxm, rd_data_vx+896, rs2_data+896, 0xffffffffffffbfff)
  TEST_ADC_VX_OP( 109,  vadc.vxm, rd_data_vx+960, rs2_data+960, 0xffffffffffff7fff)
  TEST_ADC_VX_OP( 110,  vadc.vxm, rd_data_vx+1024, rs2_data+1024, 0xfffffffffffeffff)
  TEST_ADC_VX_OP( 111,  vadc.vxm, rd_data_vx+1088, rs2_data+1088, 0xfffffffffffdffff)
  TEST_ADC_VX_OP( 112,  vadc.vxm, rd_data_vx+1152, rs2_data+1152, 0xfffffffffffbffff)
  TEST_ADC_VX_OP( 113,  vadc.vxm, rd_data_vx+1216, rs2_data+1216, 0xfffffffffff7ffff)
  TEST_ADC_VX_OP( 114,  vadc.vxm, rd_data_vx+1280, rs2_data+1280, 0xffffffffffefffff)
  TEST_ADC_VX_OP( 115,  vadc.vxm, rd_data_vx+1344, rs2_data+1344, 0xffffffffffdfffff)
  TEST_ADC_VX_OP( 116,  vadc.vxm, rd_data_vx+1408, rs2_data+1408, 0xffffffffffbfffff)
  TEST_ADC_VX_OP( 117,  vadc.vxm, rd_data_vx+1472, rs2_data+1472, 0xffffffffff7fffff)
  TEST_ADC_VX_OP( 118,  vadc.vxm, rd_data_vx+1536, rs2_data+1536, 0xfffffffffeffffff)
  TEST_ADC_VX_OP( 119,  vadc.vxm, rd_data_vx+1600, rs2_data+1600, 0xfffffffffdffffff)
  TEST_ADC_VX_OP( 120,  vadc.vxm, rd_data_vx+1664, rs2_data+1664, 0xfffffffffbffffff)
  TEST_ADC_VX_OP( 121,  vadc.vxm, rd_data_vx+1728, rs2_data+1728, 0xfffffffff7ffffff)
  TEST_ADC_VX_OP( 122,  vadc.vxm, rd_data_vx+1792, rs2_data+1792, 0xffffffffefffffff)
  TEST_ADC_VX_OP( 123,  vadc.vxm, rd_data_vx+1856, rs2_data+1856, 0xffffffffdfffffff)
  TEST_ADC_VX_OP( 124,  vadc.vxm, rd_data_vx+1920, rs2_data+1920, 0xffffffffbfffffff)
  TEST_ADC_VX_OP( 125,  vadc.vxm, rd_data_vx+1984, rs2_data+1984, 0x0000007fffffff)
  TEST_ADC_VX_OP( 126,  vadc.vxm, rd_data_vx+2048, rs2_data+2048, 0x00000000000001)
  TEST_ADC_VX_OP( 127,  vadc.vxm, rd_data_vx+2112, rs2_data+2112, 0x00000000000002)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_ADC_VI_OP( 128,  vadc.vim, rd_data_vi+0, rs2_data+0, 14)
  TEST_ADC_VI_OP( 129,  vadc.vim, rd_data_vi+64, rs2_data+64, 14)
  TEST_ADC_VI_OP( 130,  vadc.vim, rd_data_vi+128, rs2_data+128, 14)
  TEST_ADC_VI_OP( 131,  vadc.vim, rd_data_vi+192, rs2_data+192, 14)
  TEST_ADC_VI_OP( 132,  vadc.vim, rd_data_vi+256, rs2_data+256, 14)
  TEST_ADC_VI_OP( 133,  vadc.vim, rd_data_vi+320, rs2_data+320, 14)
  TEST_ADC_VI_OP( 134,  vadc.vim, rd_data_vi+384, rs2_data+384, 14)
  TEST_ADC_VI_OP( 135,  vadc.vim, rd_data_vi+448, rs2_data+448, 14)
  TEST_ADC_VI_OP( 136,  vadc.vim, rd_data_vi+512, rs2_data+512, 14)
  TEST_ADC_VI_OP( 137,  vadc.vim, rd_data_vi+576, rs2_data+576, 14)
  TEST_ADC_VI_OP( 138,  vadc.vim, rd_data_vi+640, rs2_data+640, 14)
  TEST_ADC_VI_OP( 139,  vadc.vim, rd_data_vi+704, rs2_data+704, 14)
  TEST_ADC_VI_OP( 140,  vadc.vim, rd_data_vi+768, rs2_data+768, 14)
  TEST_ADC_VI_OP( 141,  vadc.vim, rd_data_vi+832, rs2_data+832, 14)
  TEST_ADC_VI_OP( 142,  vadc.vim, rd_data_vi+896, rs2_data+896, 14)
  TEST_ADC_VI_OP( 143,  vadc.vim, rd_data_vi+960, rs2_data+960, 14)
  TEST_ADC_VI_OP( 144,  vadc.vim, rd_data_vi+1024, rs2_data+1024, 14)
  TEST_ADC_VI_OP( 145,  vadc.vim, rd_data_vi+1088, rs2_data+1088, 14)
  TEST_ADC_VI_OP( 146,  vadc.vim, rd_data_vi+1152, rs2_data+1152, 14)
  TEST_ADC_VI_OP( 147,  vadc.vim, rd_data_vi+1216, rs2_data+1216, 14)
  TEST_ADC_VI_OP( 148,  vadc.vim, rd_data_vi+1280, rs2_data+1280, 14)
  TEST_ADC_VI_OP( 149,  vadc.vim, rd_data_vi+1344, rs2_data+1344, 14)
  TEST_ADC_VI_OP( 150,  vadc.vim, rd_data_vi+1408, rs2_data+1408, 14)
  TEST_ADC_VI_OP( 151,  vadc.vim, rd_data_vi+1472, rs2_data+1472, 14)
  TEST_ADC_VI_OP( 152,  vadc.vim, rd_data_vi+1536, rs2_data+1536, 14)
  TEST_ADC_VI_OP( 153,  vadc.vim, rd_data_vi+1600, rs2_data+1600, 14)
  TEST_ADC_VI_OP( 154,  vadc.vim, rd_data_vi+1664, rs2_data+1664, 14)
  TEST_ADC_VI_OP( 155,  vadc.vim, rd_data_vi+1728, rs2_data+1728, 14)
  TEST_ADC_VI_OP( 156,  vadc.vim, rd_data_vi+1792, rs2_data+1792, 14)
  TEST_ADC_VI_OP( 157,  vadc.vim, rd_data_vi+1856, rs2_data+1856, 14)
  TEST_ADC_VI_OP( 158,  vadc.vim, rd_data_vi+1920, rs2_data+1920, 14)
  TEST_ADC_VI_OP( 159,  vadc.vim, rd_data_vi+1984, rs2_data+1984, 14)
  TEST_ADC_VI_OP( 160,  vadc.vim, rd_data_vi+2048, rs2_data+2048, 14)
  TEST_ADC_VI_OP( 161,  vadc.vim, rd_data_vi+2112, rs2_data+2112, 14)
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
.word	0xfffffdff
.word	0xfffffbfe
.word	0xfffff7fe
.word	0xffffeffe
.word	0xffffdfff
.word	0xffffbffe
.word	0xffff7ffe
.word	0xfffefffe
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

rd_data_vx:
.word	0xfffffffd
.word	0xfffffffb
.word	0xfffffff9
.word	0xfffffff5
.word	0xffffffee
.word	0xffffffdd
.word	0xffffffbd
.word	0xffffff7d
.word	0xfffffefe
.word	0xfffffdfd
.word	0xfffffbfd
.word	0xfffff7fd
.word	0xffffeffe
.word	0xffffdffd
.word	0xffffbffd
.word	0xffff7ffd
.word	0xfffefffd
.word	0xfffdfffc
.word	0xfffbfffc
.word	0xfff7fffc
.word	0xffeffffd
.word	0xffdffffc
.word	0xffbffffc
.word	0xff7ffffc
.word	0xfefffffd
.word	0xfdfffffc
.word	0xfbfffffc
.word	0xf7fffffc
.word	0xeffffffd
.word	0xdffffffc
.word	0xbffffffc
.word	0x7ffffffc
.word	0xfffffffd
.word	0xfffffffd
.word	0xffffffff
.word	0x00000003
.word	0x0000000c
.word	0x0000001b
.word	0x0000003b
.word	0x0000007b
.word	0x000000fc
.word	0x000001fb
.word	0x000003fb
.word	0x000007fb
.word	0x00000ffc
.word	0x00001ffb
.word	0x00003ffb
.word	0x00007ffb
.word	0x0000fff8
.word	0x0001fff7
.word	0x0003fff7
.word	0x0007fff7
.word	0x000ffff8
.word	0x001ffff7
.word	0x003ffff7
.word	0x007ffff7
.word	0x00fffff8
.word	0x01fffff7
.word	0x03fffff7
.word	0x07fffff7
.word	0x0ffffff8
.word	0x1ffffff7
.word	0x3ffffff7
.word	0x7ffffff7
.word	0xfffffff3
.word	0x55555544
.word	0xaaaaaa99
.word	0xfffffff4
.word	0x33333323
.word	0x66666655
.word	0xffff4aeb
.word	0x55555544
.word	0x0000b4f4
.word	0xfffffff1
.word	0x55555543
.word	0xffffffef
.word	0xfffffff4
.word	0x33333321
.word	0x66666654
.word	0xaaaaaa99
.word	0x0000b4e3
.word	0x55555535
.word	0xaaaaaa8a
.word	0xffffffe5
.word	0x33333314
.word	0x66666646
.word	0xffff4adc
.word	0x0000b4e4
.word	0xffffffe3
.word	0x55555534
.word	0xaaaaaa89
.word	0xffffffe4
.word	0x33333313
.word	0x66666645
.word	0xffff4adb
.word	0x0000b4e3
.word	0xffffffc2
.word	0x55555513
.word	0xffffffbf
.word	0xffffffc3
.word	0x333332f2
.word	0x66666624
.word	0x0000b4c2
.word	0x55555515
.word	0xaaaaaa6b
.word	0xffffffc5
.word	0x333332f3
.word	0x66666626
.word	0xffff4abd
.word	0x0000b4c4
.word	0xffffffc2
.word	0x55555514
.word	0xaaaaaa2a
.word	0xffffff84
.word	0x333332b2
.word	0x666665e5
.word	0xffff4a7c
.word	0x0000b483
.word	0xffffff81
.word	0x555554d3
.word	0xffffff80
.word	0xffffff83
.word	0x333332b1
.word	0x666665e4
.word	0xffffff80
.word	0x0000b482
.word	0x555554d5
.word	0xaaaaaa2a
.word	0xffffff06
.word	0x33333233
.word	0x66666566
.word	0xffff49fc
.word	0x0000b405
.word	0xffffff02
.word	0x55555454
.word	0xaaaaa9a9
.word	0xffffff05
.word	0x33333232
.word	0x66666565
.word	0xffff49fb
.word	0x0000b404
.word	0xffffff01
.word	0x55555453
.word	0xfffffeff
.word	0xfffffe04
.word	0x33333131
.word	0x66666464
.word	0x0000b302
.word	0x55555356
.word	0xaaaaa8aa
.word	0xfffffe05
.word	0x33333133
.word	0x66666467
.word	0xffff48fc
.word	0x0000b304
.word	0xfffffe02
.word	0x55555355
.word	0xaaaaa8a9
.word	0xfffffe04
.word	0x33333132
.word	0x66666266
.word	0xffff46fb
.word	0x0000b103
.word	0xfffffc01
.word	0x55555154
.word	0xfffffbff
.word	0xfffffc03
.word	0x33332f31
.word	0x66666265
.word	0x0000b102
.word	0x55555155
.word	0xaaaaa6aa
.word	0xfffffc06
.word	0x33332f33
.word	0x66666266
.word	0xffff46fc
.word	0x0000ad05
.word	0xfffff802
.word	0x55554d54
.word	0xaaaaa2a9
.word	0xfffff805
.word	0x33332b32
.word	0x66665e65
.word	0xffff42fb
.word	0x0000ad04
.word	0xfffff801
.word	0x55554d53
.word	0xfffff7ff
.word	0xfffff804
.word	0x33332b31
.word	0x66665e64
.word	0x0000ad02
.word	0x55554556
.word	0xaaaa9aaa
.word	0xfffff005
.word	0x33332333
.word	0x66665667
.word	0xffff3afc
.word	0x0000a504
.word	0xfffff002
.word	0x55554555
.word	0xaaaa9aa9
.word	0xfffff004
.word	0x33332332
.word	0x66665666
.word	0xffff3afb
.word	0x0000a503
.word	0xfffff001
.word	0x55553554
.word	0xffffdfff
.word	0xffffe003
.word	0x33331331
.word	0x66664665
.word	0x00009502
.word	0x55553555
.word	0xaaaa8aaa
.word	0xffffe006
.word	0x33331333
.word	0x66664666
.word	0xffff2afc
.word	0x00009505
.word	0xffffe002
.word	0x55553554
.word	0xaaaa8aa9
.word	0xffffc005
.word	0x3332f332
.word	0x66662665
.word	0xffff0afb
.word	0x00007504
.word	0xffffc001
.word	0x55551553
.word	0xffffbfff
.word	0xffffc004
.word	0x3332f331
.word	0x66662664
.word	0x00007502
.word	0x55551556
.word	0xaaaa6aaa
.word	0xffffc005
.word	0x3332f333
.word	0x6665e667
.word	0xfffecafc
.word	0x00003504
.word	0xffff8002
.word	0x5554d555
.word	0xaaaa2aa9
.word	0xffff8004
.word	0x3332b332
.word	0x6665e666
.word	0xfffecafb
.word	0x00003503
.word	0xffff8001
.word	0x5554d554
.word	0xffff7fff
.word	0xffff8003
.word	0x3332b331
.word	0x66656665
.word	0xffffb502
.word	0x55545555
.word	0xaaa9aaaa
.word	0xffff0006
.word	0x33323333
.word	0x66656666
.word	0xfffe4afc
.word	0xffffb505
.word	0xffff0002
.word	0x55545554
.word	0xaaa9aaa9
.word	0xffff0005
.word	0x33323332
.word	0x66656665
.word	0xfffe4afb
.word	0xfffeb504
.word	0xfffe0001
.word	0x55535553
.word	0xfffdffff
.word	0xfffe0004
.word	0x33313331
.word	0x66646664
.word	0xfffeb502
.word	0x55535556
.word	0xaaa8aaaa
.word	0xfffe0005
.word	0x33313333
.word	0x66646667
.word	0xfffd4afc
.word	0xfffeb504
.word	0xfffe0002
.word	0x55515555
.word	0xaaa6aaa9
.word	0xfffc0004
.word	0x332f3332
.word	0x66626666
.word	0xfffb4afb
.word	0xfffcb503
.word	0xfffc0001
.word	0x55515554
.word	0xfffbffff
.word	0xfffc0003
.word	0x332f3331
.word	0x66626665
.word	0xfffcb502
.word	0x55515555
.word	0xaaa6aaaa
.word	0xfff80006
.word	0x332b3333
.word	0x665e6666
.word	0xfff74afc
.word	0xfff8b505
.word	0xfff80002
.word	0x554d5554
.word	0xaaa2aaa9
.word	0xfff80005
.word	0x332b3332
.word	0x665e6665
.word	0xfff74afb
.word	0xfff8b504
.word	0xfff80001
.word	0x554d5553
.word	0xfff7ffff
.word	0xfff00004
.word	0x33233331
.word	0x66566664
.word	0xfff0b502
.word	0x55455556
.word	0xaa9aaaaa
.word	0xfff00005
.word	0x33233333
.word	0x66566667
.word	0xffef4afc
.word	0xfff0b504
.word	0xfff00002
.word	0x55455555
.word	0xaa9aaaa9
.word	0xfff00004
.word	0x33233332
.word	0x66466666
.word	0xffdf4afb
.word	0xffe0b503
.word	0xffe00001
.word	0x55355554
.word	0xffdfffff
.word	0xffe00003
.word	0x33133331
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
.word	0xffc0b504
.word	0xffc00001
.word	0x55155553
.word	0xffbfffff
.word	0xffc00004
.word	0x32f33331
.word	0x66266664
.word	0xffc0b502
.word	0x54d55556
.word	0xaa2aaaaa
.word	0xff800005
.word	0x32b33333
.word	0x65e66667
.word	0xff7f4afc
.word	0xff80b504
.word	0xff800002
.word	0x54d55555
.word	0xaa2aaaa9
.word	0xff800004
.word	0x32b33332
.word	0x65e66666
.word	0xff7f4afb
.word	0xff80b503
.word	0xff800001
.word	0x54555554
.word	0xfeffffff
.word	0xff000003
.word	0x32333331
.word	0x65666665
.word	0xff00b502
.word	0x54555555
.word	0xa9aaaaaa
.word	0xff000006
.word	0x32333333
.word	0x65666666
.word	0xfeff4afc
.word	0xff00b505
.word	0xff000002
.word	0x54555554
.word	0xa9aaaaa9
.word	0xfe000005
.word	0x31333332
.word	0x64666665
.word	0xfdff4afb
.word	0xfe00b504
.word	0xfe000001
.word	0x53555553
.word	0xfdffffff
.word	0xfe000004
.word	0x31333331
.word	0x64666664
.word	0xfe00b502
.word	0x53555556
.word	0xa8aaaaaa
.word	0xfe000005
.word	0x31333333
.word	0x62666667
.word	0xfbff4afc
.word	0xfc00b504
.word	0xfc000002
.word	0x51555555
.word	0xa6aaaaa9
.word	0xfc000004
.word	0x2f333332
.word	0x62666666
.word	0xfbff4afb
.word	0xfc00b503
.word	0xfc000001
.word	0x51555554
.word	0xfbffffff
.word	0xfc000003
.word	0x2f333331
.word	0x5e666665
.word	0xf800b502
.word	0x4d555555
.word	0xa2aaaaaa
.word	0xf8000006
.word	0x2b333333
.word	0x5e666666
.word	0xf7ff4afc
.word	0xf800b505
.word	0xf8000002
.word	0x4d555554
.word	0xa2aaaaa9
.word	0xf8000005
.word	0x2b333332
.word	0x5e666665
.word	0xf7ff4afb
.word	0xf000b504
.word	0xf0000001
.word	0x45555553
.word	0xefffffff
.word	0xf0000004
.word	0x23333331
.word	0x56666664
.word	0xf000b502
.word	0x45555556
.word	0x9aaaaaaa
.word	0xf0000005
.word	0x23333333
.word	0x56666667
.word	0xefff4afc
.word	0xf000b504
.word	0xf0000002
.word	0x35555555
.word	0x8aaaaaa9
.word	0xe0000004
.word	0x13333332
.word	0x46666666
.word	0xdfff4afb
.word	0xe000b503
.word	0xe0000001
.word	0x35555554
.word	0xdfffffff
.word	0xe0000003
.word	0x13333331
.word	0x46666665
.word	0xe000b502
.word	0x35555555
.word	0x8aaaaaaa
.word	0xc0000006
.word	0xf3333333
.word	0x26666666
.word	0xbfff4afc
.word	0xc000b505
.word	0xc0000002
.word	0x15555554
.word	0x6aaaaaa9
.word	0xc0000005
.word	0xf3333332
.word	0x26666665
.word	0xbfff4afb
.word	0xc000b504
.word	0xc0000001
.word	0x15555553
.word	0xbfffffff
.word	0x80000004
.word	0xb3333331
.word	0xe6666664
.word	0x8000b502
.word	0xd5555556
.word	0x2aaaaaaa
.word	0x80000005
.word	0xb3333333
.word	0xe6666667
.word	0x7fff4afc
.word	0x8000b504
.word	0x80000002
.word	0xd5555555
.word	0x2aaaaaa9
.word	0x80000004
.word	0xb3333332
.word	0x66666668
.word	0xffff4afd
.word	0x0000b505
.word	0x00000003
.word	0x55555556
.word	0x00000001
.word	0x00000005
.word	0x33333333
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
.word	0x0000b507
.word	0x00000004
.word	0x55555556
.word	0x00000002
.word	0x00000007
.word	0x33333334
.word	0x66666667
.word	0x0000b505

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
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
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
    

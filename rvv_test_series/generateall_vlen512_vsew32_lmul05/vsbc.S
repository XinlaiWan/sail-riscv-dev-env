#----------------------------------------------------------------------------- 
    # vsbc.S
    #-----------------------------------------------------------------------------
    #
    # Test vsbc instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vsbc)
    
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
  TEST_ADC_VV_OP( 1,  vsbc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP( 2,  vsbc.vvm, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_ADC_VV_OP( 3,  vsbc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP( 4,  vsbc.vvm, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_ADC_VV_OP( 5,  vsbc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP( 6,  vsbc.vvm, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_ADC_VV_OP( 7,  vsbc.vvm, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_ADC_VV_OP( 8,  vsbc.vvm, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_ADC_VV_OP( 9,  vsbc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP( 10,  vsbc.vvm, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_ADC_VV_OP( 11,  vsbc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP( 12,  vsbc.vvm, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_ADC_VV_OP( 13,  vsbc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP( 14,  vsbc.vvm, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_ADC_VV_OP( 15,  vsbc.vvm, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_ADC_VV_OP( 16,  vsbc.vvm, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_ADC_VV_OP( 17,  vsbc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP( 18,  vsbc.vvm, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_ADC_VV_OP( 19,  vsbc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP( 20,  vsbc.vvm, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_ADC_VV_OP( 21,  vsbc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP( 22,  vsbc.vvm, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_ADC_VV_OP( 23,  vsbc.vvm, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_ADC_VV_OP( 24,  vsbc.vvm, rd_data_vv+736, rs2_data+736, rs1_data+736)
  TEST_ADC_VV_OP( 25,  vsbc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP( 26,  vsbc.vvm, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_ADC_VV_OP( 27,  vsbc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP( 28,  vsbc.vvm, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_ADC_VV_OP( 29,  vsbc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP( 30,  vsbc.vvm, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_ADC_VV_OP( 31,  vsbc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP( 32,  vsbc.vvm, rd_data_vv+992, rs2_data+992, rs1_data+992)
  TEST_ADC_VV_OP( 33,  vsbc.vvm, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_ADC_VV_OP( 34,  vsbc.vvm, rd_data_vv+1056, rs2_data+1056, rs1_data+1056)
  TEST_ADC_VV_OP( 35,  vsbc.vvm, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_ADC_VV_OP( 36,  vsbc.vvm, rd_data_vv+1120, rs2_data+1120, rs1_data+1120)
  TEST_ADC_VV_OP( 37,  vsbc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP( 38,  vsbc.vvm, rd_data_vv+1184, rs2_data+1184, rs1_data+1184)
  TEST_ADC_VV_OP( 39,  vsbc.vvm, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_ADC_VV_OP( 40,  vsbc.vvm, rd_data_vv+1248, rs2_data+1248, rs1_data+1248)
  TEST_ADC_VV_OP( 41,  vsbc.vvm, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_ADC_VV_OP( 42,  vsbc.vvm, rd_data_vv+1312, rs2_data+1312, rs1_data+1312)
  TEST_ADC_VV_OP( 43,  vsbc.vvm, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_ADC_VV_OP( 44,  vsbc.vvm, rd_data_vv+1376, rs2_data+1376, rs1_data+1376)
  TEST_ADC_VV_OP( 45,  vsbc.vvm, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_ADC_VV_OP( 46,  vsbc.vvm, rd_data_vv+1440, rs2_data+1440, rs1_data+1440)
  TEST_ADC_VV_OP( 47,  vsbc.vvm, rd_data_vv+1472, rs2_data+1472, rs1_data+1472)
  TEST_ADC_VV_OP( 48,  vsbc.vvm, rd_data_vv+1504, rs2_data+1504, rs1_data+1504)
  TEST_ADC_VV_OP( 49,  vsbc.vvm, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_ADC_VV_OP( 50,  vsbc.vvm, rd_data_vv+1568, rs2_data+1568, rs1_data+1568)
  TEST_ADC_VV_OP( 51,  vsbc.vvm, rd_data_vv+1600, rs2_data+1600, rs1_data+1600)
  TEST_ADC_VV_OP( 52,  vsbc.vvm, rd_data_vv+1632, rs2_data+1632, rs1_data+1632)
  TEST_ADC_VV_OP( 53,  vsbc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP( 54,  vsbc.vvm, rd_data_vv+1696, rs2_data+1696, rs1_data+1696)
  TEST_ADC_VV_OP( 55,  vsbc.vvm, rd_data_vv+1728, rs2_data+1728, rs1_data+1728)
  TEST_ADC_VV_OP( 56,  vsbc.vvm, rd_data_vv+1760, rs2_data+1760, rs1_data+1760)
  TEST_ADC_VV_OP( 57,  vsbc.vvm, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_ADC_VV_OP( 58,  vsbc.vvm, rd_data_vv+1824, rs2_data+1824, rs1_data+1824)
  TEST_ADC_VV_OP( 59,  vsbc.vvm, rd_data_vv+1856, rs2_data+1856, rs1_data+1856)
  TEST_ADC_VV_OP( 60,  vsbc.vvm, rd_data_vv+1888, rs2_data+1888, rs1_data+1888)
  TEST_ADC_VV_OP( 61,  vsbc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP( 62,  vsbc.vvm, rd_data_vv+1952, rs2_data+1952, rs1_data+1952)
  TEST_ADC_VV_OP( 63,  vsbc.vvm, rd_data_vv+1984, rs2_data+1984, rs1_data+1984)
  TEST_ADC_VV_OP( 64,  vsbc.vvm, rd_data_vv+2016, rs2_data+2016, rs1_data+2016)
  TEST_ADC_VV_OP( 65,  vsbc.vvm, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_ADC_VV_OP( 66,  vsbc.vvm, rd_data_vv+2080, rs2_data+2080, rs1_data+2080)
  TEST_ADC_VV_OP( 67,  vsbc.vvm, rd_data_vv+2112, rs2_data+2112, rs1_data+2112)
  TEST_ADC_VV_OP( 68,  vsbc.vvm, rd_data_vv+2144, rs2_data+2144, rs1_data+2144)
  TEST_ADC_VV_OP_rd1( 69,  vsbc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP_12( 70,  vsbc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP_rd2( 71,  vsbc.vvm, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_ADC_VV_OP_13( 72,  vsbc.vvm, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_ADC_VV_OP_rd3( 73,  vsbc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP_14( 74,  vsbc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP_rd4( 75,  vsbc.vvm, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_ADC_VV_OP_15( 76,  vsbc.vvm, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_ADC_VV_OP_rd5( 77,  vsbc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP_16( 78,  vsbc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP_rd6( 79,  vsbc.vvm, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_ADC_VV_OP_17( 80,  vsbc.vvm, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_ADC_VV_OP_rd7( 81,  vsbc.vvm, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_ADC_VV_OP_rd8( 82,  vsbc.vvm, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_ADC_VV_OP_19( 83,  vsbc.vvm, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_ADC_VV_OP_rd9( 84,  vsbc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP_110( 85,  vsbc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP_rd10( 86,  vsbc.vvm, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_ADC_VV_OP_111( 87,  vsbc.vvm, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_ADC_VV_OP_rd11( 88,  vsbc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP_112( 89,  vsbc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP_rd12( 90,  vsbc.vvm, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_ADC_VV_OP_113( 91,  vsbc.vvm, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_ADC_VV_OP_rd13( 92,  vsbc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP_114( 93,  vsbc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP_rd14( 94,  vsbc.vvm, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_ADC_VV_OP_115( 95,  vsbc.vvm, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_ADC_VV_OP_rd15( 96,  vsbc.vvm, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_ADC_VV_OP_rd16( 97,  vsbc.vvm, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_ADC_VV_OP_117( 98,  vsbc.vvm, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_ADC_VV_OP_rd17( 99,  vsbc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP_118( 100,  vsbc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP_rd18( 101,  vsbc.vvm, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_ADC_VV_OP_119( 102,  vsbc.vvm, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_ADC_VV_OP_rd19( 103,  vsbc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP_120( 104,  vsbc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP_rd20( 105,  vsbc.vvm, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_ADC_VV_OP_121( 106,  vsbc.vvm, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_ADC_VV_OP_rd21( 107,  vsbc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP_122( 108,  vsbc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP_rd22( 109,  vsbc.vvm, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_ADC_VV_OP_123( 110,  vsbc.vvm, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_ADC_VV_OP_rd23( 111,  vsbc.vvm, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_ADC_VV_OP_rd25( 112,  vsbc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP_126( 113,  vsbc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP_rd26( 114,  vsbc.vvm, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_ADC_VV_OP_127( 115,  vsbc.vvm, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_ADC_VV_OP_rd27( 116,  vsbc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP_128( 117,  vsbc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP_rd28( 118,  vsbc.vvm, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_ADC_VV_OP_129( 119,  vsbc.vvm, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_ADC_VV_OP_rd29( 120,  vsbc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP_130( 121,  vsbc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP_rd30( 122,  vsbc.vvm, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_ADC_VV_OP_131( 123,  vsbc.vvm, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_ADC_VV_OP_rd31( 124,  vsbc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP_12( 125,  vsbc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP_rd1( 126,  vsbc.vvm, rd_data_vv+992, rs2_data+992, rs1_data+992)
  TEST_ADC_VV_OP_13( 127,  vsbc.vvm, rd_data_vv+992, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_ADC_VX_OP( 128,  vsbc.vxm, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_ADC_VX_OP( 129,  vsbc.vxm, rd_data_vx+32, rs2_data+32, 0xfffffffffffffffd)
  TEST_ADC_VX_OP( 130,  vsbc.vxm, rd_data_vx+64, rs2_data+64, 0xfffffffffffffffb)
  TEST_ADC_VX_OP( 131,  vsbc.vxm, rd_data_vx+96, rs2_data+96, 0xfffffffffffffff7)
  TEST_ADC_VX_OP( 132,  vsbc.vxm, rd_data_vx+128, rs2_data+128, 0xffffffffffffffef)
  TEST_ADC_VX_OP( 133,  vsbc.vxm, rd_data_vx+160, rs2_data+160, 0xffffffffffffffdf)
  TEST_ADC_VX_OP( 134,  vsbc.vxm, rd_data_vx+192, rs2_data+192, 0xffffffffffffffbf)
  TEST_ADC_VX_OP( 135,  vsbc.vxm, rd_data_vx+224, rs2_data+224, 0xffffffffffffff7f)
  TEST_ADC_VX_OP( 136,  vsbc.vxm, rd_data_vx+256, rs2_data+256, 0xfffffffffffffeff)
  TEST_ADC_VX_OP( 137,  vsbc.vxm, rd_data_vx+288, rs2_data+288, 0xfffffffffffffdff)
  TEST_ADC_VX_OP( 138,  vsbc.vxm, rd_data_vx+320, rs2_data+320, 0xfffffffffffffbff)
  TEST_ADC_VX_OP( 139,  vsbc.vxm, rd_data_vx+352, rs2_data+352, 0xfffffffffffff7ff)
  TEST_ADC_VX_OP( 140,  vsbc.vxm, rd_data_vx+384, rs2_data+384, 0xffffffffffffefff)
  TEST_ADC_VX_OP( 141,  vsbc.vxm, rd_data_vx+416, rs2_data+416, 0xffffffffffffdfff)
  TEST_ADC_VX_OP( 142,  vsbc.vxm, rd_data_vx+448, rs2_data+448, 0xffffffffffffbfff)
  TEST_ADC_VX_OP( 143,  vsbc.vxm, rd_data_vx+480, rs2_data+480, 0xffffffffffff7fff)
  TEST_ADC_VX_OP( 144,  vsbc.vxm, rd_data_vx+512, rs2_data+512, 0xfffffffffffeffff)
  TEST_ADC_VX_OP( 145,  vsbc.vxm, rd_data_vx+544, rs2_data+544, 0xfffffffffffdffff)
  TEST_ADC_VX_OP( 146,  vsbc.vxm, rd_data_vx+576, rs2_data+576, 0xfffffffffffbffff)
  TEST_ADC_VX_OP( 147,  vsbc.vxm, rd_data_vx+608, rs2_data+608, 0xfffffffffff7ffff)
  TEST_ADC_VX_OP( 148,  vsbc.vxm, rd_data_vx+640, rs2_data+640, 0xffffffffffefffff)
  TEST_ADC_VX_OP( 149,  vsbc.vxm, rd_data_vx+672, rs2_data+672, 0xffffffffffdfffff)
  TEST_ADC_VX_OP( 150,  vsbc.vxm, rd_data_vx+704, rs2_data+704, 0xffffffffffbfffff)
  TEST_ADC_VX_OP( 151,  vsbc.vxm, rd_data_vx+736, rs2_data+736, 0xffffffffff7fffff)
  TEST_ADC_VX_OP( 152,  vsbc.vxm, rd_data_vx+768, rs2_data+768, 0xfffffffffeffffff)
  TEST_ADC_VX_OP( 153,  vsbc.vxm, rd_data_vx+800, rs2_data+800, 0xfffffffffdffffff)
  TEST_ADC_VX_OP( 154,  vsbc.vxm, rd_data_vx+832, rs2_data+832, 0xfffffffffbffffff)
  TEST_ADC_VX_OP( 155,  vsbc.vxm, rd_data_vx+864, rs2_data+864, 0xfffffffff7ffffff)
  TEST_ADC_VX_OP( 156,  vsbc.vxm, rd_data_vx+896, rs2_data+896, 0xffffffffefffffff)
  TEST_ADC_VX_OP( 157,  vsbc.vxm, rd_data_vx+928, rs2_data+928, 0xffffffffdfffffff)
  TEST_ADC_VX_OP( 158,  vsbc.vxm, rd_data_vx+960, rs2_data+960, 0xffffffffbfffffff)
  TEST_ADC_VX_OP( 159,  vsbc.vxm, rd_data_vx+992, rs2_data+992, 0x0000007fffffff)
  TEST_ADC_VX_OP( 160,  vsbc.vxm, rd_data_vx+1024, rs2_data+1024, 0x00000000000001)
  TEST_ADC_VX_OP( 161,  vsbc.vxm, rd_data_vx+1056, rs2_data+1056, 0x00000000000002)
  TEST_ADC_VX_OP( 162,  vsbc.vxm, rd_data_vx+1088, rs2_data+1088, 0x00000000000004)
  TEST_ADC_VX_OP( 163,  vsbc.vxm, rd_data_vx+1120, rs2_data+1120, 0x00000000000008)
  TEST_ADC_VX_OP( 164,  vsbc.vxm, rd_data_vx+1152, rs2_data+1152, 0x00000000000010)
  TEST_ADC_VX_OP( 165,  vsbc.vxm, rd_data_vx+1184, rs2_data+1184, 0x00000000000020)
  TEST_ADC_VX_OP( 166,  vsbc.vxm, rd_data_vx+1216, rs2_data+1216, 0x00000000000040)
  TEST_ADC_VX_OP( 167,  vsbc.vxm, rd_data_vx+1248, rs2_data+1248, 0x00000000000080)
  TEST_ADC_VX_OP( 168,  vsbc.vxm, rd_data_vx+1280, rs2_data+1280, 0x00000000000100)
  TEST_ADC_VX_OP( 169,  vsbc.vxm, rd_data_vx+1312, rs2_data+1312, 0x00000000000200)
  TEST_ADC_VX_OP( 170,  vsbc.vxm, rd_data_vx+1344, rs2_data+1344, 0x00000000000400)
  TEST_ADC_VX_OP( 171,  vsbc.vxm, rd_data_vx+1376, rs2_data+1376, 0x00000000000800)
  TEST_ADC_VX_OP( 172,  vsbc.vxm, rd_data_vx+1408, rs2_data+1408, 0x00000000001000)
  TEST_ADC_VX_OP( 173,  vsbc.vxm, rd_data_vx+1440, rs2_data+1440, 0x00000000002000)
  TEST_ADC_VX_OP( 174,  vsbc.vxm, rd_data_vx+1472, rs2_data+1472, 0x00000000004000)
  TEST_ADC_VX_OP( 175,  vsbc.vxm, rd_data_vx+1504, rs2_data+1504, 0x00000000008000)
  TEST_ADC_VX_OP( 176,  vsbc.vxm, rd_data_vx+1536, rs2_data+1536, 0x00000000010000)
  TEST_ADC_VX_OP( 177,  vsbc.vxm, rd_data_vx+1568, rs2_data+1568, 0x00000000020000)
  TEST_ADC_VX_OP( 178,  vsbc.vxm, rd_data_vx+1600, rs2_data+1600, 0x00000000040000)
  TEST_ADC_VX_OP( 179,  vsbc.vxm, rd_data_vx+1632, rs2_data+1632, 0x00000000080000)
  TEST_ADC_VX_OP( 180,  vsbc.vxm, rd_data_vx+1664, rs2_data+1664, 0x00000000100000)
  TEST_ADC_VX_OP( 181,  vsbc.vxm, rd_data_vx+1696, rs2_data+1696, 0x00000000200000)
  TEST_ADC_VX_OP( 182,  vsbc.vxm, rd_data_vx+1728, rs2_data+1728, 0x00000000400000)
  TEST_ADC_VX_OP( 183,  vsbc.vxm, rd_data_vx+1760, rs2_data+1760, 0x00000000800000)
  TEST_ADC_VX_OP( 184,  vsbc.vxm, rd_data_vx+1792, rs2_data+1792, 0x00000001000000)
  TEST_ADC_VX_OP( 185,  vsbc.vxm, rd_data_vx+1824, rs2_data+1824, 0x00000002000000)
  TEST_ADC_VX_OP( 186,  vsbc.vxm, rd_data_vx+1856, rs2_data+1856, 0x00000004000000)
  TEST_ADC_VX_OP( 187,  vsbc.vxm, rd_data_vx+1888, rs2_data+1888, 0x00000008000000)
  TEST_ADC_VX_OP( 188,  vsbc.vxm, rd_data_vx+1920, rs2_data+1920, 0x00000010000000)
  TEST_ADC_VX_OP( 189,  vsbc.vxm, rd_data_vx+1952, rs2_data+1952, 0x00000020000000)
  TEST_ADC_VX_OP( 190,  vsbc.vxm, rd_data_vx+1984, rs2_data+1984, 0x00000040000000)
  TEST_ADC_VX_OP( 191,  vsbc.vxm, rd_data_vx+2016, rs2_data+2016, 0xffffffff80000000)
  TEST_ADC_VX_OP( 192,  vsbc.vxm, rd_data_vx+2048, rs2_data+2048, 0x00000000000003)
  TEST_ADC_VX_OP( 193,  vsbc.vxm, rd_data_vx+2080, rs2_data+2080, 0x00000000000003)
  TEST_ADC_VX_OP( 194,  vsbc.vxm, rd_data_vx+2112, rs2_data+2112, 0x00000000000003)
  TEST_ADC_VX_OP( 195,  vsbc.vxm, rd_data_vx+2144, rs2_data+2144, 0x00000000000003)
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
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x55555552
.word	0xaaaaaaa7
.word	0x00000002
.word	0x3333332f
.word	0x66666663
.word	0xffff4af9
.word	0x55555552
.word	0x0000b500
.word	0xffffffff
.word	0x55555551
.word	0xfffffffd
.word	0x00000000
.word	0x3333332f
.word	0x11111110
.word	0xaaaaaaa7
.word	0x55560a58
.word	0x55555553
.word	0xaaaaaaa8
.word	0x00000003
.word	0x33333330
.word	0x66666664
.word	0xffff4afa
.word	0x0000b505
.word	0xffffffff
.word	0x00000000
.word	0x55555555
.word	0xaaaaaab0
.word	0xdddddddd
.word	0x11111111
.word	0xaaa9f5a7
.word	0xaaab5faf
.word	0xaaaaaaac
.word	0xffffffff
.word	0xaaaaaaab
.word	0xaaaaaaaf
.word	0xdddddddc
.word	0x11111110
.word	0xaaab5fae
.word	0x00000001
.word	0x55555555
.word	0xaaaaaab1
.word	0xdddddddf
.word	0x11111112
.word	0xaaa9f5a7
.word	0xaaab5fb0
.word	0xaaaaaaae
.word	0xaaaaaaab
.word	0xffffffff
.word	0x5555555b
.word	0x88888889
.word	0xbbbbbbbc
.word	0x5554a051
.word	0x55560a5a
.word	0x55555558
.word	0xaaaaaaaa
.word	0x55555555
.word	0x5555555a
.word	0x88888888
.word	0xbbbbbbbb
.word	0x55555555
.word	0x55560a59
.word	0xaaaaaaac
.word	0x00000001
.word	0x5555555b
.word	0x8888888a
.word	0xbbbbbbbd
.word	0x5554a053
.word	0x55560a5a
.word	0xfffffffe
.word	0x55555550
.word	0xaaaaaaa5
.word	0xffffffff
.word	0x3333332e
.word	0x66666661
.word	0xffff4af7
.word	0x0000b4fe
.word	0xfffffffd
.word	0x5555554f
.word	0xfffffffb
.word	0xfffffffe
.word	0x3333332d
.word	0x66666660
.word	0x0000b4fe
.word	0x55555550
.word	0xaaaaaaa6
.word	0x00000001
.word	0x3333332f
.word	0x66666661
.word	0xffff4af8
.word	0x0000b500
.word	0xccccccd0
.word	0x22222221
.word	0x77777777
.word	0xccccccd2
.word	0x00000000
.word	0x33333332
.word	0xcccc17c9
.word	0xcccd81d1
.word	0xcccccccf
.word	0x22222220
.word	0xcccccccd
.word	0xccccccd1
.word	0xffffffff
.word	0x33333331
.word	0xcccd81d0
.word	0x22222223
.word	0x77777778
.word	0xccccccd2
.word	0x00000001
.word	0x33333334
.word	0xcccc17ca
.word	0xcccd81d1
.word	0x9999999d
.word	0xeeeeeeef
.word	0x44444444
.word	0x9999999e
.word	0xcccccccd
.word	0x00000000
.word	0x9998e496
.word	0x999a4e9d
.word	0x9999999c
.word	0xeeeeeeee
.word	0x9999999a
.word	0x9999999d
.word	0xcccccccc
.word	0xffffffff
.word	0x999a4e9d
.word	0xeeeeeeef
.word	0x44444445
.word	0x999999a0
.word	0xccccccce
.word	0x00000000
.word	0x9998e497
.word	0x999a4e9f
.word	0x0000b507
.word	0x55560a58
.word	0xaaab5fae
.word	0x0000b509
.word	0x3333e837
.word	0x66671b69
.word	0x00000000
.word	0x00016a08
.word	0x0000b506
.word	0x55560a57
.word	0x0000b504
.word	0x0000b508
.word	0x3333e836
.word	0x66671b68
.word	0x00016a07
.word	0x55560a5a
.word	0xaaab5faf
.word	0x0000b509
.word	0x3333e838
.word	0x66671b6b
.word	0x00000001
.word	0x00016a08
.word	0xffff4aff
.word	0x5554a051
.word	0xaaa9f5a6
.word	0xffff4b00
.word	0x33327e2f
.word	0x6665b162
.word	0xfffe95f8
.word	0xffffffff
.word	0xffff4afe
.word	0x5554a050
.word	0xffff4afc
.word	0xffff4aff
.word	0x33327e2e
.word	0x6665b161
.word	0xffffffff
.word	0x5554a051
.word	0xaaa9f5a7
.word	0xffff4b02
.word	0x33327e30
.word	0x6665b162
.word	0xfffe95f9
.word	0x00000001
.word	0x00000001
.word	0x55555552
.word	0xaaaaaaa8
.word	0x00000003
.word	0x33333331
.word	0x66666663
.word	0xffff4afa
.word	0x0000b502
.word	0x00000000
.word	0x55555551
.word	0xfffffffe
.word	0x00000002
.word	0x33333330
.word	0x66666662
.word	0x0000b501
.word	0x55555554
.word	0xaaaaaaa9
.word	0x00000003
.word	0x33333332
.word	0x66666665
.word	0xffff4afb
.word	0x0000b502
.word	0xaaaaaaaf
.word	0x00000001
.word	0x55555556
.word	0xaaaaaab0
.word	0xdddddddf
.word	0x11111112
.word	0xaaa9f5a8
.word	0xaaab5faf
.word	0xaaaaaaae
.word	0x00000000
.word	0xaaaaaaac
.word	0xaaaaaaaf
.word	0xddddddde
.word	0x11111111
.word	0xaaab5faf
.word	0x00000001
.word	0x55555557
.word	0xaaaaaab2
.word	0xdddddde0
.word	0x11111112
.word	0xaaa9f5a9
.word	0xaaab5fb1
.word	0x00000003
.word	0x55555554
.word	0xaaaaaaaa
.word	0x00000005
.word	0x33333333
.word	0x66666665
.word	0xffff4afc
.word	0x0000b504
.word	0x00000002
.word	0x55555553
.word	0x00000000
.word	0x00000004
.word	0x33333332
.word	0x66666664
.word	0x0000b503
.word	0x55555556
.word	0xaaaaaaab
.word	0x00000005
.word	0x33333334
.word	0x66666667
.word	0xffff4afd
.word	0x0000b504
.word	0xffffffff
.word	0x55555551
.word	0xaaaaaaa6
.word	0x00000000
.word	0x3333332f
.word	0x66666662
.word	0xffff4af8
.word	0x0000b4ff
.word	0xfffffffe
.word	0x55555550
.word	0xfffffffc
.word	0xffffffff
.word	0x3333332e
.word	0x66666661
.word	0x0000b4ff
.word	0x55555551
.word	0xaaaaaaa7
.word	0x00000002
.word	0x33333330
.word	0x66666662
.word	0xffff4af9
.word	0x0000b501
.word	0xccccccd1
.word	0x22222222
.word	0x77777778
.word	0xccccccd3
.word	0x00000001
.word	0x33333333
.word	0xcccc17ca
.word	0xcccd81d2
.word	0xccccccd0
.word	0x22222221
.word	0xccccccce
.word	0xccccccd2
.word	0x00000000
.word	0x33333332
.word	0xcccd81d1
.word	0x22222224
.word	0x77777779
.word	0xccccccd3
.word	0x00000002
.word	0x33333335
.word	0xcccc17cb
.word	0xcccd81d2
.word	0x9999999e
.word	0xeeeeeef0
.word	0x44444445
.word	0x9999999f
.word	0xccccccce
.word	0x00000001
.word	0x9998e497
.word	0x999a4e9e
.word	0x9999999d
.word	0xeeeeeeef
.word	0x9999999b
.word	0x9999999e
.word	0xcccccccd
.word	0x00000000
.word	0x999a4e9e
.word	0xeeeeeef0
.word	0x44444446
.word	0x999999a1
.word	0xcccccccf
.word	0x00000001
.word	0x9998e498
.word	0x999a4ea0
.word	0xffff4b00
.word	0x5554a051
.word	0xaaa9f5a7
.word	0xffff4b02
.word	0x33327e30
.word	0x6665b162
.word	0xfffe95f9
.word	0x00000001
.word	0xffff4aff
.word	0x5554a050
.word	0xffff4afd
.word	0xffff4b01
.word	0x33327e2f
.word	0x6665b161
.word	0x00000000
.word	0x5554a053
.word	0xaaa9f5a8
.word	0xffff4b02
.word	0x33327e31
.word	0x6665b164
.word	0xfffe95fa
.word	0x00000001
.word	0xaaaaaaad
.word	0xffffffff
.word	0x55555554
.word	0xaaaaaaae
.word	0xdddddddd
.word	0x11111110
.word	0xaaa9f5a6
.word	0xaaab5fad
.word	0xaaaaaaac
.word	0xfffffffe
.word	0xaaaaaaaa
.word	0xaaaaaaad
.word	0xdddddddc
.word	0x1111110f
.word	0xaaab5fad
.word	0xffffffff
.word	0x55555555
.word	0xaaaaaab0
.word	0xddddddde
.word	0x11111110
.word	0xaaa9f5a7
.word	0xaaab5faf
.word	0x55555558
.word	0xaaaaaaa9
.word	0xffffffff
.word	0x5555555a
.word	0x88888888
.word	0xbbbbbbba
.word	0x5554a051
.word	0x55560a59
.word	0x55555557
.word	0xaaaaaaa8
.word	0x55555555
.word	0x55555559
.word	0x88888887
.word	0xbbbbbbb9
.word	0x55560a58
.word	0xaaaaaaab
.word	0x00000000
.word	0x5555555a
.word	0x88888889
.word	0xbbbbbbbc
.word	0x5554a052
.word	0x55560a59
.word	0xfffffffd
.word	0x5555554f
.word	0xaaaaaaa4
.word	0xfffffffe
.word	0x3333332d
.word	0x66666660
.word	0xffff4af6
.word	0x0000b4fd
.word	0xfffffffc
.word	0x5555554e
.word	0xfffffffa
.word	0xfffffffd
.word	0x3333332c
.word	0x6666665f
.word	0x0000b4fd
.word	0x5555554f
.word	0xaaaaaaa5
.word	0x00000000
.word	0x3333332e
.word	0x66666660
.word	0xffff4af7
.word	0x0000b4ff
.word	0xcccccccf
.word	0x22222220
.word	0x77777776
.word	0xccccccd1
.word	0xffffffff
.word	0x33333331
.word	0xcccc17c8
.word	0xcccd81d0
.word	0xccccccce
.word	0x2222221f
.word	0xcccccccc
.word	0xccccccd0
.word	0xfffffffe
.word	0x33333330
.word	0xcccd81cf
.word	0x22222222
.word	0x77777777
.word	0xccccccd1
.word	0x00000000
.word	0x33333333
.word	0xcccc17c9
.word	0xcccd81d0
.word	0x9999999c
.word	0xeeeeeeee
.word	0x44444443
.word	0x9999999d
.word	0xcccccccc
.word	0xffffffff
.word	0x9998e495
.word	0x999a4e9c
.word	0x9999999b
.word	0xeeeeeeed
.word	0x99999999
.word	0x9999999c
.word	0xcccccccb
.word	0xfffffffe
.word	0x999a4e9c
.word	0xeeeeeeee
.word	0x44444444
.word	0x9999999f
.word	0xcccccccd
.word	0xffffffff
.word	0x9998e496
.word	0x999a4e9e
.word	0x0000b506
.word	0x55560a57
.word	0xaaab5fad
.word	0x0000b508
.word	0x3333e836
.word	0x66671b68
.word	0xffffffff
.word	0x00016a07
.word	0x0000b505
.word	0x55560a56
.word	0x0000b503
.word	0x0000b507
.word	0x3333e835
.word	0x66671b67
.word	0x00016a06
.word	0x55560a59
.word	0xaaab5fae
.word	0x0000b508
.word	0x3333e837
.word	0x66671b6a
.word	0x00000000
.word	0x00016a07
.word	0xffff4afe
.word	0x5554a050
.word	0xaaa9f5a5
.word	0xffff4aff
.word	0x33327e2e
.word	0x6665b161
.word	0xfffe95f7
.word	0xfffffffe
.word	0xffff4afd
.word	0x5554a04f
.word	0xffff4afb
.word	0xffff4afe
.word	0x33327e2d
.word	0x6665b160
.word	0xfffffffe
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0x55555552
.word	0xaaaaaaa7
.word	0x00000002
.word	0x3333332f
.word	0x66666663
.word	0xffff4af9
.word	0x55555552
.word	0xffffffff
.word	0x55555552
.word	0xaaaaaaa7
.word	0x00000002
.word	0x3333332f
.word	0x66666663
.word	0xffff4af9
.word	0x55555552
.word	0x0000b500
.word	0xffffffff
.word	0x55555551
.word	0xfffffffd
.word	0x00000000
.word	0x3333332f
.word	0x11111110
.word	0xaaaaaaa7
.word	0x0000b500
.word	0xffffffff
.word	0x55555551
.word	0xfffffffd
.word	0x00000000
.word	0x3333332f
.word	0x11111110
.word	0xaaaaaaa7
.word	0x55560a58
.word	0x55555553
.word	0xaaaaaaa8
.word	0x00000003
.word	0x33333330
.word	0x66666664
.word	0xffff4afa
.word	0x0000b505
.word	0x55560a58
.word	0x55555553
.word	0xaaaaaaa8
.word	0x00000003
.word	0x33333330
.word	0x66666664
.word	0xffff4afa
.word	0x0000b505
.word	0xffffffff
.word	0x00000000
.word	0x55555555
.word	0xaaaaaab0
.word	0xdddddddd
.word	0x11111111
.word	0xaaa9f5a7
.word	0xaaab5faf
.word	0xffffffff
.word	0x00000000
.word	0x55555555
.word	0xaaaaaab0
.word	0xdddddddd
.word	0x11111111
.word	0xaaa9f5a7
.word	0xaaab5faf
.word	0xaaaaaaac
.word	0xffffffff
.word	0xaaaaaaab
.word	0xaaaaaaaf
.word	0xdddddddc
.word	0x11111110
.word	0xaaab5fae
.word	0x00000001
.word	0xaaaaaaac
.word	0xffffffff
.word	0xaaaaaaab
.word	0xaaaaaaaf
.word	0xdddddddc
.word	0x11111110
.word	0xaaab5fae
.word	0x00000001
.word	0x55555555
.word	0xaaaaaab1
.word	0xdddddddf
.word	0x11111112
.word	0xaaa9f5a7
.word	0xaaab5fb0
.word	0xaaaaaaae
.word	0xaaaaaaab
.word	0x55555555
.word	0xaaaaaab1
.word	0xdddddddf
.word	0x11111112
.word	0xaaa9f5a7
.word	0xaaab5fb0
.word	0xaaaaaaae
.word	0xaaaaaaab
.word	0xffffffff
.word	0x5555555b
.word	0x88888889
.word	0xbbbbbbbc
.word	0x5554a051
.word	0x55560a5a
.word	0x55555558
.word	0xaaaaaaaa
.word	0x55555555
.word	0x5555555a
.word	0x88888888
.word	0xbbbbbbbb
.word	0x55555555
.word	0x55560a59
.word	0xaaaaaaac
.word	0x00000001
.word	0x55555555
.word	0x5555555a
.word	0x88888888
.word	0xbbbbbbbb
.word	0x55555555
.word	0x55560a59
.word	0xaaaaaaac
.word	0x00000001
.word	0x5555555b
.word	0x8888888a
.word	0xbbbbbbbd
.word	0x5554a053
.word	0x55560a5a
.word	0xfffffffe
.word	0x55555550
.word	0xaaaaaaa5
.word	0x5555555b
.word	0x8888888a
.word	0xbbbbbbbd
.word	0x5554a053
.word	0x55560a5a
.word	0xfffffffe
.word	0x55555550
.word	0xaaaaaaa5
.word	0xffffffff
.word	0x3333332e
.word	0x66666661
.word	0xffff4af7
.word	0x0000b4fe
.word	0xfffffffd
.word	0x5555554f
.word	0xfffffffb
.word	0xffffffff
.word	0x3333332e
.word	0x66666661
.word	0xffff4af7
.word	0x0000b4fe
.word	0xfffffffd
.word	0x5555554f
.word	0xfffffffb
.word	0xfffffffe
.word	0x3333332d
.word	0x66666660
.word	0x0000b4fe
.word	0x55555550
.word	0xaaaaaaa6
.word	0x00000001
.word	0x3333332f
.word	0xfffffffe
.word	0x3333332d
.word	0x66666660
.word	0x0000b4fe
.word	0x55555550
.word	0xaaaaaaa6
.word	0x00000001
.word	0x3333332f
.word	0x66666661
.word	0xffff4af8
.word	0x0000b500
.word	0xccccccd0
.word	0x22222221
.word	0x77777777
.word	0xccccccd2
.word	0x00000000
.word	0x66666661
.word	0xffff4af8
.word	0x0000b500
.word	0xccccccd0
.word	0x22222221
.word	0x77777777
.word	0xccccccd2
.word	0x00000000
.word	0x33333332
.word	0xcccc17c9
.word	0xcccd81d1
.word	0xcccccccf
.word	0x22222220
.word	0xcccccccd
.word	0xccccccd1
.word	0xffffffff
.word	0x33333332
.word	0xcccc17c9
.word	0xcccd81d1
.word	0xcccccccf
.word	0x22222220
.word	0xcccccccd
.word	0xccccccd1
.word	0xffffffff
.word	0x33333331
.word	0xcccd81d0
.word	0x22222223
.word	0x77777778
.word	0xccccccd2
.word	0x00000001
.word	0x33333334
.word	0xcccc17ca
.word	0x33333331
.word	0xcccd81d0
.word	0x22222223
.word	0x77777778
.word	0xccccccd2
.word	0x00000001
.word	0x33333334
.word	0xcccc17ca
.word	0xcccd81d1
.word	0x9999999d
.word	0xeeeeeeef
.word	0x44444444
.word	0x9999999e
.word	0xcccccccd
.word	0x00000000
.word	0x9998e496
.word	0xeeeeeeef
.word	0x44444445
.word	0x999999a0
.word	0xccccccce
.word	0x00000000
.word	0x9998e497
.word	0x999a4e9f
.word	0x0000b507
.word	0xeeeeeeef
.word	0x44444445
.word	0x999999a0
.word	0xccccccce
.word	0x00000000
.word	0x9998e497
.word	0x999a4e9f
.word	0x0000b507
.word	0x55560a58
.word	0xaaab5fae
.word	0x0000b509
.word	0x3333e837
.word	0x66671b69
.word	0x00000000
.word	0x00016a08
.word	0x0000b506
.word	0x55560a58
.word	0xaaab5fae
.word	0x0000b509
.word	0x3333e837
.word	0x66671b69
.word	0x00000000
.word	0x00016a08
.word	0x0000b506
.word	0x55560a57
.word	0x0000b504
.word	0x0000b508
.word	0x3333e836
.word	0x66671b68
.word	0x00016a07
.word	0x55560a5a
.word	0xaaab5faf
.word	0x55560a57
.word	0x0000b504
.word	0x0000b508
.word	0x3333e836
.word	0x66671b68
.word	0x00016a07
.word	0x55560a5a
.word	0xaaab5faf
.word	0x0000b509
.word	0x3333e838
.word	0x66671b6b
.word	0x00000001
.word	0x00016a08
.word	0xffff4aff
.word	0x5554a051
.word	0xaaa9f5a6
.word	0x0000b509
.word	0x3333e838
.word	0x66671b6b
.word	0x00000001
.word	0x00016a08
.word	0xffff4aff
.word	0x5554a051
.word	0xaaa9f5a6
.word	0xffff4b00
.word	0x33327e2f
.word	0x6665b162
.word	0xfffe95f8
.word	0xffffffff
.word	0xffff4afe
.word	0x5554a050
.word	0xffff4afc
.word	0xffff4b00
.word	0x33327e2f
.word	0x6665b162
.word	0xfffe95f8
.word	0xffffffff
.word	0xffff4afe
.word	0x5554a050
.word	0xffff4afc
.word	0xffff4aff
.word	0x33327e2e
.word	0x6665b161
.word	0xffffffff
.word	0x5554a051
.word	0xaaa9f5a7
.word	0xffff4b02
.word	0x33327e30
.word	0xffff4aff
.word	0x33327e2e
.word	0x6665b161
.word	0xffffffff
.word	0x5554a051
.word	0xaaa9f5a7
.word	0xffff4b02
.word	0x33327e30
.word	0x6665b162
.word	0xfffe95f9
.word	0x00000001
.word	0x00000001
.word	0x55555552
.word	0xaaaaaaa8
.word	0x00000003
.word	0x33333331
.word	0x6665b162
.word	0xfffe95f9
.word	0x00000001
.word	0x00000001
.word	0x55555552
.word	0xaaaaaaa8
.word	0x00000003
.word	0x33333331
.word	0x66666663
.word	0xffff4afa
.word	0x0000b502
.word	0x00000000
.word	0x55555551
.word	0xfffffffe
.word	0x00000002
.word	0x33333330
.word	0x66666663
.word	0xffff4afa
.word	0x0000b502
.word	0x00000000
.word	0x55555551
.word	0xfffffffe
.word	0x00000002
.word	0x33333330

rd_data_vx:
.word	0xffffffff
.word	0xffffffff
.word	0xfffffffd
.word	0xfffffff9
.word	0xfffffff0
.word	0xffffffe1
.word	0xffffffc1
.word	0xffffff81
.word	0xffffff01
.word	0xfffffe02
.word	0xfffffc02
.word	0xfffff802
.word	0xfffff001
.word	0xffffe002
.word	0xffffc002
.word	0xffff8002
.word	0xffff0003
.word	0xfffe0004
.word	0xfffc0004
.word	0xfff80004
.word	0xfff00003
.word	0xffe00004
.word	0xffc00004
.word	0xff800004
.word	0xff000007
.word	0xfe000008
.word	0xfc000008
.word	0xf8000008
.word	0xf0000007
.word	0xe0000008
.word	0xc0000008
.word	0x80000008
.word	0x00000011
.word	0x00000013
.word	0x00000015
.word	0x00000019
.word	0x00000020
.word	0x00000031
.word	0x00000051
.word	0x00000091
.word	0x00000120
.word	0x00000221
.word	0x00000421
.word	0x00000821
.word	0x00001020
.word	0x00002021
.word	0x00004021
.word	0x00008021
.word	0x00010040
.word	0x00020041
.word	0x00040041
.word	0x00080041
.word	0x00100040
.word	0x00200041
.word	0x00400041
.word	0x00800041
.word	0x01000080
.word	0x02000081
.word	0x04000081
.word	0x08000081
.word	0x10000080
.word	0x20000081
.word	0x40000081
.word	0x80000081
.word	0x00000103
.word	0x55555656
.word	0xaaaaabab
.word	0x00000106
.word	0x33333433
.word	0x66666767
.word	0xffff4bfd
.word	0x55555656
.word	0x0000b704
.word	0x00000203
.word	0x55555755
.word	0x00000201
.word	0x00000204
.word	0x33333533
.word	0x66666866
.word	0xaaaaacab
.word	0x0000b903
.word	0x55555957
.word	0xaaaaaeac
.word	0x00000407
.word	0x33333734
.word	0x66666a68
.word	0xffff4efe
.word	0x0000b906
.word	0x00000803
.word	0x55555d56
.word	0xaaaab2ab
.word	0x00000806
.word	0x33333b33
.word	0x66666e67
.word	0xffff52fd
.word	0x0000bd05
.word	0x00001002
.word	0x55556555
.word	0x00001001
.word	0x00001005
.word	0x33334332
.word	0x66667666
.word	0x0000c504
.word	0x55556557
.word	0xaaaacaab
.word	0x00002007
.word	0x33335335
.word	0x66668668
.word	0xffff6afd
.word	0x0000d506
.word	0x00002004
.word	0x55557556
.word	0xaaaaeaaa
.word	0x00004006
.word	0x33337334
.word	0x6666a667
.word	0xffff8afc
.word	0x0000f505
.word	0x00004003
.word	0x55559555
.word	0x00008000
.word	0x00008005
.word	0x3333b333
.word	0x6666e666
.word	0x00008000
.word	0x00013504
.word	0x5555d557
.word	0xaaab2aac
.word	0x00010006
.word	0x33343335
.word	0x66676668
.word	0x00004afe
.word	0x0001b505
.word	0x00010004
.word	0x55565556
.word	0xaaabaaab
.word	0x00020005
.word	0x33353334
.word	0x66686667
.word	0x00014afd
.word	0x0002b504
.word	0x00020003
.word	0x55575555
.word	0x00020001
.word	0x00040004
.word	0x33373333
.word	0x666a6666
.word	0x0004b504
.word	0x55595556
.word	0xaaaeaaac
.word	0x00040007
.word	0x33373335
.word	0x666e6667
.word	0x00074afe
.word	0x0008b506
.word	0x00080004
.word	0x555d5555
.word	0xaab2aaab
.word	0x00080006
.word	0x333b3334
.word	0x66766666
.word	0x000f4afd
.word	0x0010b505
.word	0x00100003
.word	0x55655554
.word	0x00100001
.word	0x00100005
.word	0x33433333
.word	0x66866665
.word	0x0020b504
.word	0x55755557
.word	0xaacaaaac
.word	0x00200006
.word	0x33533335
.word	0x66866668
.word	0x001f4afe
.word	0x0040b505
.word	0x00400004
.word	0x55955556
.word	0xaaeaaaab
.word	0x00400005
.word	0x33733334
.word	0x66a66667
.word	0x003f4afd
.word	0x0080b504
.word	0x00800003
.word	0x55d55555
.word	0x00800001
.word	0x00800004
.word	0x33b33333
.word	0x66e66666
.word	0x0080b504
.word	0x56555556
.word	0xabaaaaac
.word	0x01000007
.word	0x34333335
.word	0x67666667
.word	0x00ff4afe
.word	0x0100b506
.word	0x01000004
.word	0x57555555
.word	0xacaaaaab
.word	0x02000006
.word	0x35333334
.word	0x68666666
.word	0x01ff4afd
.word	0x0200b505
.word	0x02000003
.word	0x59555554
.word	0x04000001
.word	0x04000005
.word	0x37333333
.word	0x6a666665
.word	0x0400b504
.word	0x59555557
.word	0xaeaaaaac
.word	0x08000006
.word	0x3b333335
.word	0x6e666668
.word	0x07ff4afe
.word	0x0800b505
.word	0x08000004
.word	0x5d555556
.word	0xb2aaaaab
.word	0x10000005
.word	0x43333334
.word	0x76666667
.word	0x0fff4afd
.word	0x1000b504
.word	0x10000003
.word	0x65555555
.word	0x10000001
.word	0x20000004
.word	0x53333333
.word	0x86666666
.word	0x2000b504
.word	0x75555556
.word	0xcaaaaaac
.word	0x20000007
.word	0x53333335
.word	0xa6666667
.word	0x3fff4afe
.word	0x4000b506
.word	0x40000004
.word	0x95555555
.word	0xeaaaaaab
.word	0x40000006
.word	0x73333334
.word	0xe6666666
.word	0x7fff4afd
.word	0x8000b505
.word	0x80000003
.word	0xd5555554
.word	0x80000001
.word	0x80000005
.word	0xb3333333
.word	0x66666663
.word	0x0000b502
.word	0x55555555
.word	0xaaaaaaaa
.word	0x00000004
.word	0x33333333
.word	0x66666666
.word	0xffff4afc
.word	0x0000b502
.word	0x00000001
.word	0x55555553
.word	0xaaaaaaa8
.word	0x00000002
.word	0x33333331
.word	0x66666664
.word	0xffff4afa
.word	0x0000b4ff
.word	0xfffffffe
.word	0x55555550
.word	0xfffffffc
.word	0xffffffff
.word	0x3333332e
.word	0x66666661
.word	0x0000b4ff
.word	0x5555554d
.word	0xaaaaaaa3
.word	0xfffffffe
.word	0x3333332c
.word	0x6666665e
.word	0xffff4af5
.word	0x0000b4fd
.word	0xfffffffb
.word	0x55555544
.word	0xaaaaaa9a
.word	0xfffffff5
.word	0x33333323
.word	0x66666655
.word	0xffff4aec
.word	0x0000b4f4
.word	0xfffffff2
.word	0x55555533
.word	0xffffffe0
.word	0xffffffe4
.word	0x33333312
.word	0x66666644
.word	0x0000b4e3
.word	0x55555536
.word	0xaaaaaa8b
.word	0xffffffc5
.word	0x333332f4
.word	0x66666627
.word	0xffff4abd
.word	0x0000b4c4
.word	0xffffffc3
.word	0x55555515
.word	0xaaaaaa6a
.word	0xffffff84
.word	0x333332b3
.word	0x666665e6
.word	0xffff4a7c
.word	0x0000b483
.word	0xffffff82
.word	0x555554d4
.word	0xffffff80
.word	0xffffff03
.word	0x33333232
.word	0x66666565
.word	0x0000b403
.word	0x55555455
.word	0xaaaaa9ab
.word	0xffffff06
.word	0x33333234
.word	0x66666466
.word	0xffff48fd
.word	0x0000b305
.word	0xfffffe03
.word	0x55555354
.word	0xaaaaa8aa
.word	0xfffffe05
.word	0x33333133
.word	0x66666265
.word	0xffff46fc
.word	0x0000b104
.word	0xfffffc02
.word	0x55555153
.word	0xfffffc00
.word	0xfffffc04
.word	0x33332f32
.word	0x66665e64
.word	0x0000ad03
.word	0x55554d56
.word	0xaaaaa2ab
.word	0xfffff805
.word	0x33332b34
.word	0x66665e67
.word	0xffff42fd
.word	0x0000a504
.word	0xfffff003
.word	0x55554555
.word	0xaaaa9aaa
.word	0xfffff004
.word	0x33332333
.word	0x66665666
.word	0xffff3afc
.word	0x00009503
.word	0xffffe002
.word	0x55553554
.word	0xffffe000
.word	0xffffe003
.word	0x33331332
.word	0x66664665
.word	0x00009503
.word	0x55551555
.word	0xaaaa6aab
.word	0xffffc006
.word	0x3332f334
.word	0x66662666
.word	0xffff0afd
.word	0x00007505
.word	0xffffc003
.word	0x5554d554
.word	0xaaaa2aaa
.word	0xffff8005
.word	0x3332b333
.word	0x6665e665
.word	0xfffecafc
.word	0x00003504
.word	0xffff8002
.word	0x55545553
.word	0xffff0000
.word	0xffff0004
.word	0x33323332
.word	0x66656664
.word	0xffffb503
.word	0x55545556
.word	0xaaa9aaab
.word	0xfffe0005
.word	0x33313334
.word	0x66646667
.word	0xfffd4afd
.word	0xfffeb504
.word	0xfffe0003
.word	0x55535555
.word	0xaaa8aaaa
.word	0xfffc0004
.word	0x332f3333
.word	0x66626666
.word	0xfffb4afc
.word	0xfffcb503
.word	0xfffc0002
.word	0x55515554
.word	0xfffc0000
.word	0xfff80003
.word	0x332b3332
.word	0x665e6665
.word	0xfff8b503
.word	0x554d5555
.word	0xaaa2aaab
.word	0xfff80006
.word	0x332b3334
.word	0x66566666
.word	0xffef4afd
.word	0xfff0b505
.word	0xfff00003
.word	0x55455554
.word	0xaa9aaaaa
.word	0xfff00005
.word	0x33233333
.word	0x66466665
.word	0xffdf4afc
.word	0xffe0b504
.word	0xffe00002
.word	0x55355553
.word	0xffe00000
.word	0xffe00004
.word	0x33133332
.word	0x66266664
.word	0xffc0b503
.word	0x55155556
.word	0xaa6aaaab
.word	0xffc00005
.word	0x32f33334
.word	0x66266667
.word	0xffbf4afd
.word	0xff80b504
.word	0xff800003
.word	0x54d55555
.word	0xaa2aaaaa
.word	0xff800004
.word	0x32b33333
.word	0x65e66666
.word	0xff7f4afc
.word	0xff00b503
.word	0xff000002
.word	0x54555554
.word	0xff000000
.word	0xff000003
.word	0x32333332
.word	0x65666665
.word	0xff00b503
.word	0x53555555
.word	0xa8aaaaab
.word	0xfe000006
.word	0x31333334
.word	0x64666666
.word	0xfdff4afd
.word	0xfe00b505
.word	0xfe000003
.word	0x51555554
.word	0xa6aaaaaa
.word	0xfc000005
.word	0x2f333333
.word	0x62666665
.word	0xfbff4afc
.word	0xfc00b504
.word	0xfc000002
.word	0x4d555553
.word	0xf8000000
.word	0xf8000004
.word	0x2b333332
.word	0x5e666664
.word	0xf800b503
.word	0x4d555556
.word	0xa2aaaaab
.word	0xf0000005
.word	0x23333334
.word	0x56666667
.word	0xefff4afd
.word	0xf000b504
.word	0xf0000003
.word	0x45555555
.word	0x9aaaaaaa
.word	0xe0000004
.word	0x13333333
.word	0x46666666
.word	0xdfff4afc
.word	0xe000b503
.word	0xe0000002
.word	0x35555554
.word	0xe0000000
.word	0xc0000003
.word	0xf3333332
.word	0x26666665
.word	0xc000b503
.word	0x15555555
.word	0x6aaaaaab
.word	0xc0000006
.word	0xf3333334
.word	0xe6666666
.word	0x7fff4afd
.word	0x8000b505
.word	0x80000003
.word	0xd5555554
.word	0x2aaaaaaa
.word	0x80000005
.word	0xb3333333
.word	0x66666662
.word	0xffff4af9
.word	0x0000b501
.word	0xffffffff
.word	0x55555550
.word	0xfffffffd
.word	0x00000001
.word	0x3333332f
.word	0x66666661
.word	0x0000b500
.word	0x55555553
.word	0xaaaaaaa8
.word	0x00000002
.word	0x33333331
.word	0x66666664
.word	0xffff4afa
.word	0x0000b501
.word	0x00000000
.word	0x55555552
.word	0xaaaaaaa7
.word	0x00000001
.word	0x33333330
.word	0x66666663
.word	0xffff4af9
.word	0x0000b500
.word	0xffffffff
.word	0x55555551
.word	0xfffffffd
.word	0x00000000
.word	0x3333332f
.word	0x66666662
.word	0x0000b500

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
    

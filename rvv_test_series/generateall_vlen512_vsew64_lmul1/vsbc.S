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
  TEST_ADC_VV_OP( 1,  vsbc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP( 2,  vsbc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP( 3,  vsbc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP( 4,  vsbc.vvm, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_ADC_VV_OP( 5,  vsbc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP( 6,  vsbc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP( 7,  vsbc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP( 8,  vsbc.vvm, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_ADC_VV_OP( 9,  vsbc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP( 10,  vsbc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP( 11,  vsbc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP( 12,  vsbc.vvm, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_ADC_VV_OP( 13,  vsbc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP( 14,  vsbc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP( 15,  vsbc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP( 16,  vsbc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP( 17,  vsbc.vvm, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_ADC_VV_OP( 18,  vsbc.vvm, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_ADC_VV_OP( 19,  vsbc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP( 20,  vsbc.vvm, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_ADC_VV_OP( 21,  vsbc.vvm, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_ADC_VV_OP( 22,  vsbc.vvm, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_ADC_VV_OP( 23,  vsbc.vvm, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_ADC_VV_OP( 24,  vsbc.vvm, rd_data_vv+1472, rs2_data+1472, rs1_data+1472)
  TEST_ADC_VV_OP( 25,  vsbc.vvm, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_ADC_VV_OP( 26,  vsbc.vvm, rd_data_vv+1600, rs2_data+1600, rs1_data+1600)
  TEST_ADC_VV_OP( 27,  vsbc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP( 28,  vsbc.vvm, rd_data_vv+1728, rs2_data+1728, rs1_data+1728)
  TEST_ADC_VV_OP( 29,  vsbc.vvm, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_ADC_VV_OP( 30,  vsbc.vvm, rd_data_vv+1856, rs2_data+1856, rs1_data+1856)
  TEST_ADC_VV_OP( 31,  vsbc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP( 32,  vsbc.vvm, rd_data_vv+1984, rs2_data+1984, rs1_data+1984)
  TEST_ADC_VV_OP( 33,  vsbc.vvm, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_ADC_VV_OP( 34,  vsbc.vvm, rd_data_vv+2112, rs2_data+2112, rs1_data+2112)
  TEST_ADC_VV_OP( 35,  vsbc.vvm, rd_data_vv+2176, rs2_data+2176, rs1_data+2176)
  TEST_ADC_VV_OP( 36,  vsbc.vvm, rd_data_vv+2240, rs2_data+2240, rs1_data+2240)
  TEST_ADC_VV_OP( 37,  vsbc.vvm, rd_data_vv+2304, rs2_data+2304, rs1_data+2304)
  TEST_ADC_VV_OP( 38,  vsbc.vvm, rd_data_vv+2368, rs2_data+2368, rs1_data+2368)
  TEST_ADC_VV_OP( 39,  vsbc.vvm, rd_data_vv+2432, rs2_data+2432, rs1_data+2432)
  TEST_ADC_VV_OP( 40,  vsbc.vvm, rd_data_vv+2496, rs2_data+2496, rs1_data+2496)
  TEST_ADC_VV_OP( 41,  vsbc.vvm, rd_data_vv+2560, rs2_data+2560, rs1_data+2560)
  TEST_ADC_VV_OP( 42,  vsbc.vvm, rd_data_vv+2624, rs2_data+2624, rs1_data+2624)
  TEST_ADC_VV_OP( 43,  vsbc.vvm, rd_data_vv+2688, rs2_data+2688, rs1_data+2688)
  TEST_ADC_VV_OP( 44,  vsbc.vvm, rd_data_vv+2752, rs2_data+2752, rs1_data+2752)
  TEST_ADC_VV_OP( 45,  vsbc.vvm, rd_data_vv+2816, rs2_data+2816, rs1_data+2816)
  TEST_ADC_VV_OP( 46,  vsbc.vvm, rd_data_vv+2880, rs2_data+2880, rs1_data+2880)
  TEST_ADC_VV_OP( 47,  vsbc.vvm, rd_data_vv+2944, rs2_data+2944, rs1_data+2944)
  TEST_ADC_VV_OP( 48,  vsbc.vvm, rd_data_vv+3008, rs2_data+3008, rs1_data+3008)
  TEST_ADC_VV_OP( 49,  vsbc.vvm, rd_data_vv+3072, rs2_data+3072, rs1_data+3072)
  TEST_ADC_VV_OP( 50,  vsbc.vvm, rd_data_vv+3136, rs2_data+3136, rs1_data+3136)
  TEST_ADC_VV_OP( 51,  vsbc.vvm, rd_data_vv+3200, rs2_data+3200, rs1_data+3200)
  TEST_ADC_VV_OP( 52,  vsbc.vvm, rd_data_vv+3264, rs2_data+3264, rs1_data+3264)
  TEST_ADC_VV_OP( 53,  vsbc.vvm, rd_data_vv+3328, rs2_data+3328, rs1_data+3328)
  TEST_ADC_VV_OP( 54,  vsbc.vvm, rd_data_vv+3392, rs2_data+3392, rs1_data+3392)
  TEST_ADC_VV_OP( 55,  vsbc.vvm, rd_data_vv+3456, rs2_data+3456, rs1_data+3456)
  TEST_ADC_VV_OP( 56,  vsbc.vvm, rd_data_vv+3520, rs2_data+3520, rs1_data+3520)
  TEST_ADC_VV_OP( 57,  vsbc.vvm, rd_data_vv+3584, rs2_data+3584, rs1_data+3584)
  TEST_ADC_VV_OP( 58,  vsbc.vvm, rd_data_vv+3648, rs2_data+3648, rs1_data+3648)
  TEST_ADC_VV_OP( 59,  vsbc.vvm, rd_data_vv+3712, rs2_data+3712, rs1_data+3712)
  TEST_ADC_VV_OP( 60,  vsbc.vvm, rd_data_vv+3776, rs2_data+3776, rs1_data+3776)
  TEST_ADC_VV_OP( 61,  vsbc.vvm, rd_data_vv+3840, rs2_data+3840, rs1_data+3840)
  TEST_ADC_VV_OP( 62,  vsbc.vvm, rd_data_vv+3904, rs2_data+3904, rs1_data+3904)
  TEST_ADC_VV_OP( 63,  vsbc.vvm, rd_data_vv+3968, rs2_data+3968, rs1_data+3968)
  TEST_ADC_VV_OP( 64,  vsbc.vvm, rd_data_vv+4032, rs2_data+4032, rs1_data+4032)
  TEST_ADC_VV_OP( 65,  vsbc.vvm, rd_data_vv+4096, rs2_data+4096, rs1_data+4096)
  TEST_ADC_VV_OP( 66,  vsbc.vvm, rd_data_vv+4160, rs2_data+4160, rs1_data+4160)
  TEST_ADC_VV_OP( 67,  vsbc.vvm, rd_data_vv+4224, rs2_data+4224, rs1_data+4224)
  TEST_ADC_VV_OP( 68,  vsbc.vvm, rd_data_vv+4288, rs2_data+4288, rs1_data+4288)
  TEST_ADC_VV_OP( 69,  vsbc.vvm, rd_data_vv+4352, rs2_data+4352, rs1_data+4352)
  TEST_ADC_VV_OP( 70,  vsbc.vvm, rd_data_vv+4416, rs2_data+4416, rs1_data+4416)
  TEST_ADC_VV_OP( 71,  vsbc.vvm, rd_data_vv+4480, rs2_data+4480, rs1_data+4480)
  TEST_ADC_VV_OP( 72,  vsbc.vvm, rd_data_vv+4544, rs2_data+4544, rs1_data+4544)
  TEST_ADC_VV_OP( 73,  vsbc.vvm, rd_data_vv+4608, rs2_data+4608, rs1_data+4608)
  TEST_ADC_VV_OP( 74,  vsbc.vvm, rd_data_vv+4672, rs2_data+4672, rs1_data+4672)
  TEST_ADC_VV_OP( 75,  vsbc.vvm, rd_data_vv+4736, rs2_data+4736, rs1_data+4736)
  TEST_ADC_VV_OP( 76,  vsbc.vvm, rd_data_vv+4800, rs2_data+4800, rs1_data+4800)
  TEST_ADC_VV_OP_rd1( 77,  vsbc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP_12( 78,  vsbc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP_rd2( 79,  vsbc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP_13( 80,  vsbc.vvm, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_ADC_VV_OP_rd3( 81,  vsbc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP_14( 82,  vsbc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP_rd4( 83,  vsbc.vvm, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_ADC_VV_OP_15( 84,  vsbc.vvm, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_ADC_VV_OP_rd5( 85,  vsbc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP_16( 86,  vsbc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP_rd6( 87,  vsbc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP_17( 88,  vsbc.vvm, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_ADC_VV_OP_rd7( 89,  vsbc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP_rd8( 90,  vsbc.vvm, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_ADC_VV_OP_19( 91,  vsbc.vvm, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_ADC_VV_OP_rd9( 92,  vsbc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP_110( 93,  vsbc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP_rd10( 94,  vsbc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP_111( 95,  vsbc.vvm, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_ADC_VV_OP_rd11( 96,  vsbc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP_112( 97,  vsbc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP_rd12( 98,  vsbc.vvm, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_ADC_VV_OP_113( 99,  vsbc.vvm, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_ADC_VV_OP_rd13( 100,  vsbc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP_114( 101,  vsbc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP_rd14( 102,  vsbc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP_115( 103,  vsbc.vvm, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_ADC_VV_OP_rd15( 104,  vsbc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP_rd16( 105,  vsbc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP_117( 106,  vsbc.vvm, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_ADC_VV_OP_rd17( 107,  vsbc.vvm, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_ADC_VV_OP_118( 108,  vsbc.vvm, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_ADC_VV_OP_rd18( 109,  vsbc.vvm, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_ADC_VV_OP_119( 110,  vsbc.vvm, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_ADC_VV_OP_rd19( 111,  vsbc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP_120( 112,  vsbc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP_rd20( 113,  vsbc.vvm, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_ADC_VV_OP_121( 114,  vsbc.vvm, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_ADC_VV_OP_rd21( 115,  vsbc.vvm, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_ADC_VV_OP_122( 116,  vsbc.vvm, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_ADC_VV_OP_rd22( 117,  vsbc.vvm, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_ADC_VV_OP_123( 118,  vsbc.vvm, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_ADC_VV_OP_rd23( 119,  vsbc.vvm, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_ADC_VV_OP_rd25( 120,  vsbc.vvm, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_ADC_VV_OP_126( 121,  vsbc.vvm, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_ADC_VV_OP_rd26( 122,  vsbc.vvm, rd_data_vv+1600, rs2_data+1600, rs1_data+1600)
  TEST_ADC_VV_OP_127( 123,  vsbc.vvm, rd_data_vv+1600, rs2_data+1600, rs1_data+1600)
  TEST_ADC_VV_OP_rd27( 124,  vsbc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP_128( 125,  vsbc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP_rd28( 126,  vsbc.vvm, rd_data_vv+1728, rs2_data+1728, rs1_data+1728)
  TEST_ADC_VV_OP_129( 127,  vsbc.vvm, rd_data_vv+1728, rs2_data+1728, rs1_data+1728)
  TEST_ADC_VV_OP_rd29( 128,  vsbc.vvm, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_ADC_VV_OP_130( 129,  vsbc.vvm, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_ADC_VV_OP_rd30( 130,  vsbc.vvm, rd_data_vv+1856, rs2_data+1856, rs1_data+1856)
  TEST_ADC_VV_OP_131( 131,  vsbc.vvm, rd_data_vv+1856, rs2_data+1856, rs1_data+1856)
  TEST_ADC_VV_OP_rd31( 132,  vsbc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP_12( 133,  vsbc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP_rd1( 134,  vsbc.vvm, rd_data_vv+1984, rs2_data+1984, rs1_data+1984)
  TEST_ADC_VV_OP_13( 135,  vsbc.vvm, rd_data_vv+1984, rs2_data+1984, rs1_data+1984)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_ADC_VX_OP( 136,  vsbc.vxm, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_ADC_VX_OP( 137,  vsbc.vxm, rd_data_vx+64, rs2_data+64, 0xfffffffffffffffd)
  TEST_ADC_VX_OP( 138,  vsbc.vxm, rd_data_vx+128, rs2_data+128, 0xfffffffffffffffb)
  TEST_ADC_VX_OP( 139,  vsbc.vxm, rd_data_vx+192, rs2_data+192, 0xfffffffffffffff7)
  TEST_ADC_VX_OP( 140,  vsbc.vxm, rd_data_vx+256, rs2_data+256, 0xffffffffffffffef)
  TEST_ADC_VX_OP( 141,  vsbc.vxm, rd_data_vx+320, rs2_data+320, 0xffffffffffffffdf)
  TEST_ADC_VX_OP( 142,  vsbc.vxm, rd_data_vx+384, rs2_data+384, 0xffffffffffffffbf)
  TEST_ADC_VX_OP( 143,  vsbc.vxm, rd_data_vx+448, rs2_data+448, 0xffffffffffffff7f)
  TEST_ADC_VX_OP( 144,  vsbc.vxm, rd_data_vx+512, rs2_data+512, 0xfffffffffffffeff)
  TEST_ADC_VX_OP( 145,  vsbc.vxm, rd_data_vx+576, rs2_data+576, 0xfffffffffffffdff)
  TEST_ADC_VX_OP( 146,  vsbc.vxm, rd_data_vx+640, rs2_data+640, 0xfffffffffffffbff)
  TEST_ADC_VX_OP( 147,  vsbc.vxm, rd_data_vx+704, rs2_data+704, 0xfffffffffffff7ff)
  TEST_ADC_VX_OP( 148,  vsbc.vxm, rd_data_vx+768, rs2_data+768, 0xffffffffffffefff)
  TEST_ADC_VX_OP( 149,  vsbc.vxm, rd_data_vx+832, rs2_data+832, 0xffffffffffffdfff)
  TEST_ADC_VX_OP( 150,  vsbc.vxm, rd_data_vx+896, rs2_data+896, 0xffffffffffffbfff)
  TEST_ADC_VX_OP( 151,  vsbc.vxm, rd_data_vx+960, rs2_data+960, 0xffffffffffff7fff)
  TEST_ADC_VX_OP( 152,  vsbc.vxm, rd_data_vx+1024, rs2_data+1024, 0xfffffffffffeffff)
  TEST_ADC_VX_OP( 153,  vsbc.vxm, rd_data_vx+1088, rs2_data+1088, 0xfffffffffffdffff)
  TEST_ADC_VX_OP( 154,  vsbc.vxm, rd_data_vx+1152, rs2_data+1152, 0xfffffffffffbffff)
  TEST_ADC_VX_OP( 155,  vsbc.vxm, rd_data_vx+1216, rs2_data+1216, 0xfffffffffff7ffff)
  TEST_ADC_VX_OP( 156,  vsbc.vxm, rd_data_vx+1280, rs2_data+1280, 0xffffffffffefffff)
  TEST_ADC_VX_OP( 157,  vsbc.vxm, rd_data_vx+1344, rs2_data+1344, 0xffffffffffdfffff)
  TEST_ADC_VX_OP( 158,  vsbc.vxm, rd_data_vx+1408, rs2_data+1408, 0xffffffffffbfffff)
  TEST_ADC_VX_OP( 159,  vsbc.vxm, rd_data_vx+1472, rs2_data+1472, 0xffffffffff7fffff)
  TEST_ADC_VX_OP( 160,  vsbc.vxm, rd_data_vx+1536, rs2_data+1536, 0xfffffffffeffffff)
  TEST_ADC_VX_OP( 161,  vsbc.vxm, rd_data_vx+1600, rs2_data+1600, 0xfffffffffdffffff)
  TEST_ADC_VX_OP( 162,  vsbc.vxm, rd_data_vx+1664, rs2_data+1664, 0xfffffffffbffffff)
  TEST_ADC_VX_OP( 163,  vsbc.vxm, rd_data_vx+1728, rs2_data+1728, 0xfffffffff7ffffff)
  TEST_ADC_VX_OP( 164,  vsbc.vxm, rd_data_vx+1792, rs2_data+1792, 0xffffffffefffffff)
  TEST_ADC_VX_OP( 165,  vsbc.vxm, rd_data_vx+1856, rs2_data+1856, 0xffffffffdfffffff)
  TEST_ADC_VX_OP( 166,  vsbc.vxm, rd_data_vx+1920, rs2_data+1920, 0xffffffffbfffffff)
  TEST_ADC_VX_OP( 167,  vsbc.vxm, rd_data_vx+1984, rs2_data+1984, 0xffffffff7fffffff)
  TEST_ADC_VX_OP( 168,  vsbc.vxm, rd_data_vx+2048, rs2_data+2048, 0xfffffffeffffffff)
  TEST_ADC_VX_OP( 169,  vsbc.vxm, rd_data_vx+2112, rs2_data+2112, 0xfffffffdffffffff)
  TEST_ADC_VX_OP( 170,  vsbc.vxm, rd_data_vx+2176, rs2_data+2176, 0xfffffffbffffffff)
  TEST_ADC_VX_OP( 171,  vsbc.vxm, rd_data_vx+2240, rs2_data+2240, 0xfffffff7ffffffff)
  TEST_ADC_VX_OP( 172,  vsbc.vxm, rd_data_vx+2304, rs2_data+2304, 0xffffffefffffffff)
  TEST_ADC_VX_OP( 173,  vsbc.vxm, rd_data_vx+2368, rs2_data+2368, 0xffffffdfffffffff)
  TEST_ADC_VX_OP( 174,  vsbc.vxm, rd_data_vx+2432, rs2_data+2432, 0xffffffbfffffffff)
  TEST_ADC_VX_OP( 175,  vsbc.vxm, rd_data_vx+2496, rs2_data+2496, 0xffffff7fffffffff)
  TEST_ADC_VX_OP( 176,  vsbc.vxm, rd_data_vx+2560, rs2_data+2560, 0xfffffeffffffffff)
  TEST_ADC_VX_OP( 177,  vsbc.vxm, rd_data_vx+2624, rs2_data+2624, 0xfffffdffffffffff)
  TEST_ADC_VX_OP( 178,  vsbc.vxm, rd_data_vx+2688, rs2_data+2688, 0xfffffbffffffffff)
  TEST_ADC_VX_OP( 179,  vsbc.vxm, rd_data_vx+2752, rs2_data+2752, 0xfffff7ffffffffff)
  TEST_ADC_VX_OP( 180,  vsbc.vxm, rd_data_vx+2816, rs2_data+2816, 0xffffefffffffffff)
  TEST_ADC_VX_OP( 181,  vsbc.vxm, rd_data_vx+2880, rs2_data+2880, 0xffffdfffffffffff)
  TEST_ADC_VX_OP( 182,  vsbc.vxm, rd_data_vx+2944, rs2_data+2944, 0xffffbfffffffffff)
  TEST_ADC_VX_OP( 183,  vsbc.vxm, rd_data_vx+3008, rs2_data+3008, 0xffff7fffffffffff)
  TEST_ADC_VX_OP( 184,  vsbc.vxm, rd_data_vx+3072, rs2_data+3072, 0xfffeffffffffffff)
  TEST_ADC_VX_OP( 185,  vsbc.vxm, rd_data_vx+3136, rs2_data+3136, 0xfffdffffffffffff)
  TEST_ADC_VX_OP( 186,  vsbc.vxm, rd_data_vx+3200, rs2_data+3200, 0xfffbffffffffffff)
  TEST_ADC_VX_OP( 187,  vsbc.vxm, rd_data_vx+3264, rs2_data+3264, 0xfff7ffffffffffff)
  TEST_ADC_VX_OP( 188,  vsbc.vxm, rd_data_vx+3328, rs2_data+3328, 0xffefffffffffffff)
  TEST_ADC_VX_OP( 189,  vsbc.vxm, rd_data_vx+3392, rs2_data+3392, 0xffdfffffffffffff)
  TEST_ADC_VX_OP( 190,  vsbc.vxm, rd_data_vx+3456, rs2_data+3456, 0xffbfffffffffffff)
  TEST_ADC_VX_OP( 191,  vsbc.vxm, rd_data_vx+3520, rs2_data+3520, 0xff7fffffffffffff)
  TEST_ADC_VX_OP( 192,  vsbc.vxm, rd_data_vx+3584, rs2_data+3584, 0xfeffffffffffffff)
  TEST_ADC_VX_OP( 193,  vsbc.vxm, rd_data_vx+3648, rs2_data+3648, 0xfdffffffffffffff)
  TEST_ADC_VX_OP( 194,  vsbc.vxm, rd_data_vx+3712, rs2_data+3712, 0xfbffffffffffffff)
  TEST_ADC_VX_OP( 195,  vsbc.vxm, rd_data_vx+3776, rs2_data+3776, 0xf7ffffffffffffff)
  TEST_ADC_VX_OP( 196,  vsbc.vxm, rd_data_vx+3840, rs2_data+3840, 0xefffffffffffffff)
  TEST_ADC_VX_OP( 197,  vsbc.vxm, rd_data_vx+3904, rs2_data+3904, 0xdfffffffffffffff)
  TEST_ADC_VX_OP( 198,  vsbc.vxm, rd_data_vx+3968, rs2_data+3968, 0xbfffffffffffffff)
  TEST_ADC_VX_OP( 199,  vsbc.vxm, rd_data_vx+4032, rs2_data+4032, 0x7fffffffffffffff)
  TEST_ADC_VX_OP( 200,  vsbc.vxm, rd_data_vx+4096, rs2_data+4096, 0x00000000000001)
  TEST_ADC_VX_OP( 201,  vsbc.vxm, rd_data_vx+4160, rs2_data+4160, 0x00000000000002)
  TEST_ADC_VX_OP( 202,  vsbc.vxm, rd_data_vx+4224, rs2_data+4224, 0x00000000000004)
  TEST_ADC_VX_OP( 203,  vsbc.vxm, rd_data_vx+4288, rs2_data+4288, 0x00000000000008)
  TEST_ADC_VX_OP( 204,  vsbc.vxm, rd_data_vx+4352, rs2_data+4352, 0x00000000000010)
  TEST_ADC_VX_OP( 205,  vsbc.vxm, rd_data_vx+4416, rs2_data+4416, 0x00000000000020)
  TEST_ADC_VX_OP( 206,  vsbc.vxm, rd_data_vx+4480, rs2_data+4480, 0x00000000000040)
  TEST_ADC_VX_OP( 207,  vsbc.vxm, rd_data_vx+4544, rs2_data+4544, 0x00000000000080)
  TEST_ADC_VX_OP( 208,  vsbc.vxm, rd_data_vx+4608, rs2_data+4608, 0x00000000000100)
  TEST_ADC_VX_OP( 209,  vsbc.vxm, rd_data_vx+4672, rs2_data+4672, 0x00000000000200)
  TEST_ADC_VX_OP( 210,  vsbc.vxm, rd_data_vx+4736, rs2_data+4736, 0x00000000000400)
  TEST_ADC_VX_OP( 211,  vsbc.vxm, rd_data_vx+4800, rs2_data+4800, 0x00000000000800)
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
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x5555555555555552
.dword	0xaaaaaaaaaaaaaaa7
.dword	0x0000000000000002
.dword	0x333333333333332f
.dword	0x6666666666666663
.dword	0xffffffff4afb0cca
.dword	0x5555555555555552
.dword	0x00000000b504f32f
.dword	0xffffffffffffffff
.dword	0x5555555555555551
.dword	0xfffffffffffffffd
.dword	0x0000000000000000
.dword	0x333333333333332f
.dword	0x1111111111111110
.dword	0xaaaaaaaaaaaaaaa7
.dword	0x555555560a5a4887
.dword	0x5555555555555553
.dword	0xaaaaaaaaaaaaaaa8
.dword	0x0000000000000003
.dword	0x3333333333333330
.dword	0x6666666666666664
.dword	0xffffffff4afb0ccb
.dword	0x00000000b504f334
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab0
.dword	0xdddddddddddddddd
.dword	0x1111111111111111
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9dde
.dword	0xaaaaaaaaaaaaaaac
.dword	0xffffffffffffffff
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xdddddddddddddddc
.dword	0x1111111111111110
.dword	0xaaaaaaab5faf9ddd
.dword	0x0000000000000001
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab1
.dword	0xdddddddddddddddf
.dword	0x1111111111111112
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9ddf
.dword	0xaaaaaaaaaaaaaaae
.dword	0xaaaaaaaaaaaaaaab
.dword	0xffffffffffffffff
.dword	0x555555555555555b
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506222
.dword	0x555555560a5a4889
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x5555555555555555
.dword	0x555555555555555a
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x5555555555555555
.dword	0x555555560a5a4888
.dword	0xaaaaaaaaaaaaaaac
.dword	0x0000000000000001
.dword	0x555555555555555b
.dword	0x888888888888888a
.dword	0xbbbbbbbbbbbbbbbd
.dword	0x55555554a0506224
.dword	0x555555560a5a4889
.dword	0xfffffffffffffffe
.dword	0x5555555555555550
.dword	0xaaaaaaaaaaaaaaa5
.dword	0xffffffffffffffff
.dword	0x333333333333332e
.dword	0x6666666666666661
.dword	0xffffffff4afb0cc8
.dword	0x00000000b504f32d
.dword	0xfffffffffffffffd
.dword	0x555555555555554f
.dword	0xfffffffffffffffb
.dword	0xfffffffffffffffe
.dword	0x333333333333332d
.dword	0x6666666666666660
.dword	0x00000000b504f32d
.dword	0x5555555555555550
.dword	0xaaaaaaaaaaaaaaa6
.dword	0x0000000000000001
.dword	0x333333333333332f
.dword	0x6666666666666661
.dword	0xffffffff4afb0cc9
.dword	0x00000000b504f32f
.dword	0xccccccccccccccd0
.dword	0x2222222222222221
.dword	0x7777777777777777
.dword	0xccccccccccccccd2
.dword	0x0000000000000000
.dword	0x3333333333333332
.dword	0xcccccccc17c7d99a
.dword	0xcccccccd81d1c000
.dword	0xcccccccccccccccf
.dword	0x2222222222222220
.dword	0xcccccccccccccccd
.dword	0xccccccccccccccd1
.dword	0xffffffffffffffff
.dword	0x3333333333333331
.dword	0xcccccccd81d1bfff
.dword	0x2222222222222223
.dword	0x7777777777777778
.dword	0xccccccccccccccd2
.dword	0x0000000000000001
.dword	0x3333333333333334
.dword	0xcccccccc17c7d99b
.dword	0xcccccccd81d1c000
.dword	0x999999999999999d
.dword	0xeeeeeeeeeeeeeeef
.dword	0x4444444444444444
.dword	0x999999999999999e
.dword	0xcccccccccccccccd
.dword	0x0000000000000000
.dword	0x99999998e494a667
.dword	0x9999999a4e9e8ccc
.dword	0x999999999999999c
.dword	0xeeeeeeeeeeeeeeee
.dword	0x999999999999999a
.dword	0x999999999999999d
.dword	0xcccccccccccccccc
.dword	0xffffffffffffffff
.dword	0x9999999a4e9e8ccc
.dword	0xeeeeeeeeeeeeeeef
.dword	0x4444444444444445
.dword	0x99999999999999a0
.dword	0xccccccccccccccce
.dword	0x0000000000000000
.dword	0x99999998e494a668
.dword	0x9999999a4e9e8cce
.dword	0x00000000b504f336
.dword	0x555555560a5a4887
.dword	0xaaaaaaab5faf9ddd
.dword	0x00000000b504f338
.dword	0x33333333e8382666
.dword	0x666666671b6b5998
.dword	0x0000000000000000
.dword	0x000000016a09e666
.dword	0x00000000b504f335
.dword	0x555555560a5a4886
.dword	0x00000000b504f333
.dword	0x00000000b504f337
.dword	0x33333333e8382665
.dword	0x666666671b6b5997
.dword	0x000000016a09e665
.dword	0x555555560a5a4889
.dword	0xaaaaaaab5faf9dde
.dword	0x00000000b504f338
.dword	0x33333333e8382667
.dword	0x666666671b6b599a
.dword	0x0000000000000001
.dword	0x000000016a09e666
.dword	0xffffffff4afb0cd0
.dword	0x55555554a0506222
.dword	0xaaaaaaa9f5a5b777
.dword	0xffffffff4afb0cd1
.dword	0x333333327e2e4000
.dword	0x66666665b1617333
.dword	0xfffffffe95f6199a
.dword	0xffffffffffffffff
.dword	0xffffffff4afb0ccf
.dword	0x55555554a0506221
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0cd0
.dword	0x333333327e2e3fff
.dword	0x66666665b1617332
.dword	0xffffffffffffffff
.dword	0x55555554a0506222
.dword	0xaaaaaaa9f5a5b778
.dword	0xffffffff4afb0cd3
.dword	0x333333327e2e4001
.dword	0x66666665b1617333
.dword	0xfffffffe95f6199b
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x5555555555555552
.dword	0xaaaaaaaaaaaaaaa8
.dword	0x0000000000000003
.dword	0x3333333333333331
.dword	0x6666666666666663
.dword	0xffffffff4afb0ccb
.dword	0x00000000b504f331
.dword	0x0000000000000000
.dword	0x5555555555555551
.dword	0xfffffffffffffffe
.dword	0x0000000000000002
.dword	0x3333333333333330
.dword	0x6666666666666662
.dword	0x00000000b504f330
.dword	0x5555555555555554
.dword	0xaaaaaaaaaaaaaaa9
.dword	0x0000000000000003
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0xffffffff4afb0ccc
.dword	0x00000000b504f331
.dword	0xaaaaaaaaaaaaaaaf
.dword	0x0000000000000001
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaab0
.dword	0xdddddddddddddddf
.dword	0x1111111111111112
.dword	0xaaaaaaa9f5a5b779
.dword	0xaaaaaaab5faf9dde
.dword	0xaaaaaaaaaaaaaaae
.dword	0x0000000000000000
.dword	0xaaaaaaaaaaaaaaac
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xddddddddddddddde
.dword	0x1111111111111111
.dword	0xaaaaaaab5faf9dde
.dword	0x0000000000000001
.dword	0x5555555555555557
.dword	0xaaaaaaaaaaaaaab2
.dword	0xdddddddddddddde0
.dword	0x1111111111111112
.dword	0xaaaaaaa9f5a5b77a
.dword	0xaaaaaaab5faf9de0
.dword	0x0000000000000003
.dword	0x5555555555555554
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x0000000000000005
.dword	0x3333333333333333
.dword	0x6666666666666665
.dword	0xffffffff4afb0ccd
.dword	0x00000000b504f333
.dword	0x0000000000000002
.dword	0x5555555555555553
.dword	0x0000000000000000
.dword	0x0000000000000004
.dword	0x3333333333333332
.dword	0x6666666666666664
.dword	0x00000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x0000000000000005
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x00000000b504f333
.dword	0xffffffffffffffff
.dword	0x5555555555555551
.dword	0xaaaaaaaaaaaaaaa6
.dword	0x0000000000000000
.dword	0x333333333333332f
.dword	0x6666666666666662
.dword	0xffffffff4afb0cc9
.dword	0x00000000b504f32e
.dword	0xfffffffffffffffe
.dword	0x5555555555555550
.dword	0xfffffffffffffffc
.dword	0xffffffffffffffff
.dword	0x333333333333332e
.dword	0x6666666666666661
.dword	0x00000000b504f32e
.dword	0x5555555555555551
.dword	0xaaaaaaaaaaaaaaa7
.dword	0x0000000000000002
.dword	0x3333333333333330
.dword	0x6666666666666662
.dword	0xffffffff4afb0cca
.dword	0x00000000b504f330
.dword	0xccccccccccccccd1
.dword	0x2222222222222222
.dword	0x7777777777777778
.dword	0xccccccccccccccd3
.dword	0x0000000000000001
.dword	0x3333333333333333
.dword	0xcccccccc17c7d99b
.dword	0xcccccccd81d1c001
.dword	0xccccccccccccccd0
.dword	0x2222222222222221
.dword	0xccccccccccccccce
.dword	0xccccccccccccccd2
.dword	0x0000000000000000
.dword	0x3333333333333332
.dword	0xcccccccd81d1c000
.dword	0x2222222222222224
.dword	0x7777777777777779
.dword	0xccccccccccccccd3
.dword	0x0000000000000002
.dword	0x3333333333333335
.dword	0xcccccccc17c7d99c
.dword	0xcccccccd81d1c001
.dword	0x999999999999999e
.dword	0xeeeeeeeeeeeeeef0
.dword	0x4444444444444445
.dword	0x999999999999999f
.dword	0xccccccccccccccce
.dword	0x0000000000000001
.dword	0x99999998e494a668
.dword	0x9999999a4e9e8ccd
.dword	0x999999999999999d
.dword	0xeeeeeeeeeeeeeeef
.dword	0x999999999999999b
.dword	0x999999999999999e
.dword	0xcccccccccccccccd
.dword	0x0000000000000000
.dword	0x9999999a4e9e8ccd
.dword	0xeeeeeeeeeeeeeef0
.dword	0x4444444444444446
.dword	0x99999999999999a1
.dword	0xcccccccccccccccf
.dword	0x0000000000000001
.dword	0x99999998e494a669
.dword	0x9999999a4e9e8ccf
.dword	0xffffffff4afb0cd1
.dword	0x55555554a0506222
.dword	0xaaaaaaa9f5a5b778
.dword	0xffffffff4afb0cd3
.dword	0x333333327e2e4001
.dword	0x66666665b1617333
.dword	0xfffffffe95f6199b
.dword	0x0000000000000001
.dword	0xffffffff4afb0cd0
.dword	0x55555554a0506221
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cd2
.dword	0x333333327e2e4000
.dword	0x66666665b1617332
.dword	0x0000000000000000
.dword	0x55555554a0506224
.dword	0xaaaaaaa9f5a5b779
.dword	0xffffffff4afb0cd3
.dword	0x333333327e2e4002
.dword	0x66666665b1617335
.dword	0xfffffffe95f6199c
.dword	0x0000000000000001
.dword	0xaaaaaaaaaaaaaaad
.dword	0xffffffffffffffff
.dword	0x5555555555555554
.dword	0xaaaaaaaaaaaaaaae
.dword	0xdddddddddddddddd
.dword	0x1111111111111110
.dword	0xaaaaaaa9f5a5b777
.dword	0xaaaaaaab5faf9ddc
.dword	0xaaaaaaaaaaaaaaac
.dword	0xfffffffffffffffe
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaad
.dword	0xdddddddddddddddc
.dword	0x111111111111110f
.dword	0xaaaaaaab5faf9ddc
.dword	0xffffffffffffffff
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab0
.dword	0xddddddddddddddde
.dword	0x1111111111111110
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9dde
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaa9
.dword	0xffffffffffffffff
.dword	0x555555555555555a
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbba
.dword	0x55555554a0506222
.dword	0x555555560a5a4888
.dword	0x5555555555555557
.dword	0xaaaaaaaaaaaaaaa8
.dword	0x5555555555555555
.dword	0x5555555555555559
.dword	0x8888888888888887
.dword	0xbbbbbbbbbbbbbbb9
.dword	0x555555560a5a4887
.dword	0xaaaaaaaaaaaaaaab
.dword	0x0000000000000000
.dword	0x555555555555555a
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506223
.dword	0x555555560a5a4888
.dword	0xfffffffffffffffd
.dword	0x555555555555554f
.dword	0xaaaaaaaaaaaaaaa4
.dword	0xfffffffffffffffe
.dword	0x333333333333332d
.dword	0x6666666666666660
.dword	0xffffffff4afb0cc7
.dword	0x00000000b504f32c
.dword	0xfffffffffffffffc
.dword	0x555555555555554e
.dword	0xfffffffffffffffa
.dword	0xfffffffffffffffd
.dword	0x333333333333332c
.dword	0x666666666666665f
.dword	0x00000000b504f32c
.dword	0x555555555555554f
.dword	0xaaaaaaaaaaaaaaa5
.dword	0x0000000000000000
.dword	0x333333333333332e
.dword	0x6666666666666660
.dword	0xffffffff4afb0cc8
.dword	0x00000000b504f32e
.dword	0xcccccccccccccccf
.dword	0x2222222222222220
.dword	0x7777777777777776
.dword	0xccccccccccccccd1
.dword	0xffffffffffffffff
.dword	0x3333333333333331
.dword	0xcccccccc17c7d999
.dword	0xcccccccd81d1bfff
.dword	0xccccccccccccccce
.dword	0x222222222222221f
.dword	0xcccccccccccccccc
.dword	0xccccccccccccccd0
.dword	0xfffffffffffffffe
.dword	0x3333333333333330
.dword	0xcccccccd81d1bffe
.dword	0x2222222222222222
.dword	0x7777777777777777
.dword	0xccccccccccccccd1
.dword	0x0000000000000000
.dword	0x3333333333333333
.dword	0xcccccccc17c7d99a
.dword	0xcccccccd81d1bfff
.dword	0x999999999999999c
.dword	0xeeeeeeeeeeeeeeee
.dword	0x4444444444444443
.dword	0x999999999999999d
.dword	0xcccccccccccccccc
.dword	0xffffffffffffffff
.dword	0x99999998e494a666
.dword	0x9999999a4e9e8ccb
.dword	0x999999999999999b
.dword	0xeeeeeeeeeeeeeeed
.dword	0x9999999999999999
.dword	0x999999999999999c
.dword	0xcccccccccccccccb
.dword	0xfffffffffffffffe
.dword	0x9999999a4e9e8ccb
.dword	0xeeeeeeeeeeeeeeee
.dword	0x4444444444444444
.dword	0x999999999999999f
.dword	0xcccccccccccccccd
.dword	0xffffffffffffffff
.dword	0x99999998e494a667
.dword	0x9999999a4e9e8ccd
.dword	0x00000000b504f335
.dword	0x555555560a5a4886
.dword	0xaaaaaaab5faf9ddc
.dword	0x00000000b504f337
.dword	0x33333333e8382665
.dword	0x666666671b6b5997
.dword	0xffffffffffffffff
.dword	0x000000016a09e665
.dword	0x00000000b504f334
.dword	0x555555560a5a4885
.dword	0x00000000b504f332
.dword	0x00000000b504f336
.dword	0x33333333e8382664
.dword	0x666666671b6b5996
.dword	0x000000016a09e664
.dword	0x555555560a5a4888
.dword	0xaaaaaaab5faf9ddd
.dword	0x00000000b504f337
.dword	0x33333333e8382666
.dword	0x666666671b6b5999
.dword	0x0000000000000000
.dword	0x000000016a09e665
.dword	0xffffffff4afb0ccf
.dword	0x55555554a0506221
.dword	0xaaaaaaa9f5a5b776
.dword	0xffffffff4afb0cd0
.dword	0x333333327e2e3fff
.dword	0x66666665b1617332
.dword	0xfffffffe95f61999
.dword	0xfffffffffffffffe
.dword	0xffffffff4afb0cce
.dword	0x55555554a0506220
.dword	0xffffffff4afb0ccc
.dword	0xffffffff4afb0ccf
.dword	0x333333327e2e3ffe
.dword	0x66666665b1617331
.dword	0xfffffffffffffffe
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x5555555555555552
.dword	0xaaaaaaaaaaaaaaa7
.dword	0x0000000000000002
.dword	0x333333333333332f
.dword	0x6666666666666663
.dword	0xffffffff4afb0cca
.dword	0x5555555555555552
.dword	0xffffffffffffffff
.dword	0x5555555555555552
.dword	0xaaaaaaaaaaaaaaa7
.dword	0x0000000000000002
.dword	0x333333333333332f
.dword	0x6666666666666663
.dword	0xffffffff4afb0cca
.dword	0x5555555555555552
.dword	0x00000000b504f32f
.dword	0xffffffffffffffff
.dword	0x5555555555555551
.dword	0xfffffffffffffffd
.dword	0x0000000000000000
.dword	0x333333333333332f
.dword	0x1111111111111110
.dword	0xaaaaaaaaaaaaaaa7
.dword	0x00000000b504f32f
.dword	0xffffffffffffffff
.dword	0x5555555555555551
.dword	0xfffffffffffffffd
.dword	0x0000000000000000
.dword	0x333333333333332f
.dword	0x1111111111111110
.dword	0xaaaaaaaaaaaaaaa7
.dword	0x555555560a5a4887
.dword	0x5555555555555553
.dword	0xaaaaaaaaaaaaaaa8
.dword	0x0000000000000003
.dword	0x3333333333333330
.dword	0x6666666666666664
.dword	0xffffffff4afb0ccb
.dword	0x00000000b504f334
.dword	0x555555560a5a4887
.dword	0x5555555555555553
.dword	0xaaaaaaaaaaaaaaa8
.dword	0x0000000000000003
.dword	0x3333333333333330
.dword	0x6666666666666664
.dword	0xffffffff4afb0ccb
.dword	0x00000000b504f334
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab0
.dword	0xdddddddddddddddd
.dword	0x1111111111111111
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9dde
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab0
.dword	0xdddddddddddddddd
.dword	0x1111111111111111
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9dde
.dword	0xaaaaaaaaaaaaaaac
.dword	0xffffffffffffffff
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xdddddddddddddddc
.dword	0x1111111111111110
.dword	0xaaaaaaab5faf9ddd
.dword	0x0000000000000001
.dword	0xaaaaaaaaaaaaaaac
.dword	0xffffffffffffffff
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xdddddddddddddddc
.dword	0x1111111111111110
.dword	0xaaaaaaab5faf9ddd
.dword	0x0000000000000001
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab1
.dword	0xdddddddddddddddf
.dword	0x1111111111111112
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9ddf
.dword	0xaaaaaaaaaaaaaaae
.dword	0xaaaaaaaaaaaaaaab
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab1
.dword	0xdddddddddddddddf
.dword	0x1111111111111112
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9ddf
.dword	0xaaaaaaaaaaaaaaae
.dword	0xaaaaaaaaaaaaaaab
.dword	0xffffffffffffffff
.dword	0x555555555555555b
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506222
.dword	0x555555560a5a4889
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x555555555555555b
.dword	0x888888888888888a
.dword	0xbbbbbbbbbbbbbbbd
.dword	0x55555554a0506224
.dword	0x555555560a5a4889
.dword	0xfffffffffffffffe
.dword	0x5555555555555550
.dword	0xaaaaaaaaaaaaaaa5
.dword	0x555555555555555b
.dword	0x888888888888888a
.dword	0xbbbbbbbbbbbbbbbd
.dword	0x55555554a0506224
.dword	0x555555560a5a4889
.dword	0xfffffffffffffffe
.dword	0x5555555555555550
.dword	0xaaaaaaaaaaaaaaa5
.dword	0xffffffffffffffff
.dword	0x333333333333332e
.dword	0x6666666666666661
.dword	0xffffffff4afb0cc8
.dword	0x00000000b504f32d
.dword	0xfffffffffffffffd
.dword	0x555555555555554f
.dword	0xfffffffffffffffb
.dword	0xffffffffffffffff
.dword	0x333333333333332e
.dword	0x6666666666666661
.dword	0xffffffff4afb0cc8
.dword	0x00000000b504f32d
.dword	0xfffffffffffffffd
.dword	0x555555555555554f
.dword	0xfffffffffffffffb
.dword	0xfffffffffffffffe
.dword	0x333333333333332d
.dword	0x6666666666666660
.dword	0x00000000b504f32d
.dword	0x5555555555555550
.dword	0xaaaaaaaaaaaaaaa6
.dword	0x0000000000000001
.dword	0x333333333333332f
.dword	0xfffffffffffffffe
.dword	0x333333333333332d
.dword	0x6666666666666660
.dword	0x00000000b504f32d
.dword	0x5555555555555550
.dword	0xaaaaaaaaaaaaaaa6
.dword	0x0000000000000001
.dword	0x333333333333332f
.dword	0x6666666666666661
.dword	0xffffffff4afb0cc9
.dword	0x00000000b504f32f
.dword	0xccccccccccccccd0
.dword	0x2222222222222221
.dword	0x7777777777777777
.dword	0xccccccccccccccd2
.dword	0x0000000000000000
.dword	0x6666666666666661
.dword	0xffffffff4afb0cc9
.dword	0x00000000b504f32f
.dword	0xccccccccccccccd0
.dword	0x2222222222222221
.dword	0x7777777777777777
.dword	0xccccccccccccccd2
.dword	0x0000000000000000
.dword	0x3333333333333332
.dword	0xcccccccc17c7d99a
.dword	0xcccccccd81d1c000
.dword	0xcccccccccccccccf
.dword	0x2222222222222220
.dword	0xcccccccccccccccd
.dword	0xccccccccccccccd1
.dword	0xffffffffffffffff
.dword	0x3333333333333332
.dword	0xcccccccc17c7d99a
.dword	0xcccccccd81d1c000
.dword	0xcccccccccccccccf
.dword	0x2222222222222220
.dword	0xcccccccccccccccd
.dword	0xccccccccccccccd1
.dword	0xffffffffffffffff
.dword	0x3333333333333331
.dword	0xcccccccd81d1bfff
.dword	0x2222222222222223
.dword	0x7777777777777778
.dword	0xccccccccccccccd2
.dword	0x0000000000000001
.dword	0x3333333333333334
.dword	0xcccccccc17c7d99b
.dword	0x3333333333333331
.dword	0xcccccccd81d1bfff
.dword	0x2222222222222223
.dword	0x7777777777777778
.dword	0xccccccccccccccd2
.dword	0x0000000000000001
.dword	0x3333333333333334
.dword	0xcccccccc17c7d99b
.dword	0xcccccccd81d1c000
.dword	0x999999999999999d
.dword	0xeeeeeeeeeeeeeeef
.dword	0x4444444444444444
.dword	0x999999999999999e
.dword	0xcccccccccccccccd
.dword	0x0000000000000000
.dword	0x99999998e494a667
.dword	0xcccccccd81d1c000
.dword	0x999999999999999d
.dword	0xeeeeeeeeeeeeeeef
.dword	0x4444444444444444
.dword	0x999999999999999e
.dword	0xcccccccccccccccd
.dword	0x0000000000000000
.dword	0x99999998e494a667
.dword	0x9999999a4e9e8ccc
.dword	0x999999999999999c
.dword	0xeeeeeeeeeeeeeeee
.dword	0x999999999999999a
.dword	0x999999999999999d
.dword	0xcccccccccccccccc
.dword	0xffffffffffffffff
.dword	0x9999999a4e9e8ccc
.dword	0x9999999a4e9e8ccc
.dword	0x999999999999999c
.dword	0xeeeeeeeeeeeeeeee
.dword	0x999999999999999a
.dword	0x999999999999999d
.dword	0xcccccccccccccccc
.dword	0xffffffffffffffff
.dword	0x9999999a4e9e8ccc

rd_data_vx:
.dword	0xffffffffffffffff
.dword	0xffffffffffffffff
.dword	0xfffffffffffffffd
.dword	0xfffffffffffffff9
.dword	0xfffffffffffffff0
.dword	0xffffffffffffffe1
.dword	0xffffffffffffffc1
.dword	0xffffffffffffff81
.dword	0xffffffffffffff01
.dword	0xfffffffffffffe02
.dword	0xfffffffffffffc02
.dword	0xfffffffffffff802
.dword	0xfffffffffffff001
.dword	0xffffffffffffe002
.dword	0xffffffffffffc002
.dword	0xffffffffffff8002
.dword	0xffffffffffff0003
.dword	0xfffffffffffe0004
.dword	0xfffffffffffc0004
.dword	0xfffffffffff80004
.dword	0xfffffffffff00003
.dword	0xffffffffffe00004
.dword	0xffffffffffc00004
.dword	0xffffffffff800004
.dword	0xffffffffff000007
.dword	0xfffffffffe000008
.dword	0xfffffffffc000008
.dword	0xfffffffff8000008
.dword	0xfffffffff0000007
.dword	0xffffffffe0000008
.dword	0xffffffffc0000008
.dword	0xffffffff80000008
.dword	0xffffffff0000000f
.dword	0xfffffffe00000010
.dword	0xfffffffc00000010
.dword	0xfffffff800000010
.dword	0xfffffff00000000f
.dword	0xffffffe000000010
.dword	0xffffffc000000010
.dword	0xffffff8000000010
.dword	0xffffff000000001f
.dword	0xfffffe0000000020
.dword	0xfffffc0000000020
.dword	0xfffff80000000020
.dword	0xfffff0000000001f
.dword	0xffffe00000000020
.dword	0xffffc00000000020
.dword	0xffff800000000020
.dword	0xffff00000000003f
.dword	0xfffe000000000040
.dword	0xfffc000000000040
.dword	0xfff8000000000040
.dword	0xfff000000000003f
.dword	0xffe0000000000040
.dword	0xffc0000000000040
.dword	0xff80000000000040
.dword	0xff0000000000007f
.dword	0xfe00000000000080
.dword	0xfc00000000000080
.dword	0xf800000000000080
.dword	0xf00000000000007f
.dword	0xe000000000000080
.dword	0xc000000000000080
.dword	0x8000000000000080
.dword	0x0000000000000101
.dword	0x0000000000000103
.dword	0x0000000000000105
.dword	0x0000000000000109
.dword	0x0000000000000110
.dword	0x0000000000000121
.dword	0x0000000000000141
.dword	0x0000000000000181
.dword	0x0000000000000300
.dword	0x0000000000000401
.dword	0x0000000000000601
.dword	0x0000000000000a01
.dword	0x0000000000001200
.dword	0x0000000000002201
.dword	0x0000000000004201
.dword	0x0000000000008201
.dword	0x0000000000010400
.dword	0x0000000000020401
.dword	0x0000000000040401
.dword	0x0000000000080401
.dword	0x0000000000100400
.dword	0x0000000000200401
.dword	0x0000000000400401
.dword	0x0000000000800401
.dword	0x0000000001000800
.dword	0x0000000002000801
.dword	0x0000000004000801
.dword	0x0000000008000801
.dword	0x0000000010000800
.dword	0x0000000020000801
.dword	0x0000000040000801
.dword	0x0000000080000801
.dword	0x0000000100001000
.dword	0x0000000200001001
.dword	0x0000000400001001
.dword	0x0000000800001001
.dword	0x0000001000001000
.dword	0x0000002000001001
.dword	0x0000004000001001
.dword	0x0000008000001001
.dword	0x0000010000002000
.dword	0x0000020000002001
.dword	0x0000040000002001
.dword	0x0000080000002001
.dword	0x0000100000002000
.dword	0x0000200000002001
.dword	0x0000400000002001
.dword	0x0000800000002001
.dword	0x0001000000004000
.dword	0x0002000000004001
.dword	0x0004000000004001
.dword	0x0008000000004001
.dword	0x0010000000004000
.dword	0x0020000000004001
.dword	0x0040000000004001
.dword	0x0080000000004001
.dword	0x0100000000008000
.dword	0x0200000000008001
.dword	0x0400000000008001
.dword	0x0800000000008001
.dword	0x1000000000008000
.dword	0x2000000000008001
.dword	0x4000000000008001
.dword	0x8000000000008001
.dword	0x0000000000010003
.dword	0x5555555555565556
.dword	0xaaaaaaaaaaabaaab
.dword	0x0000000000010006
.dword	0x3333333333343333
.dword	0x6666666666676667
.dword	0xffffffff4afc0cce
.dword	0x5555555555565556
.dword	0x00000000b506f333
.dword	0x0000000000020003
.dword	0x5555555555575555
.dword	0x0000000000020001
.dword	0x0000000000020004
.dword	0x3333333333353333
.dword	0x6666666666686666
.dword	0xaaaaaaaaaaacaaab
.dword	0x00000000b508f332
.dword	0x5555555555595557
.dword	0xaaaaaaaaaaaeaaac
.dword	0x0000000000040007
.dword	0x3333333333373334
.dword	0x66666666666a6668
.dword	0xffffffff4aff0ccf
.dword	0x00000000b508f335
.dword	0x0000000000080003
.dword	0x55555555555d5556
.dword	0xaaaaaaaaaab2aaab
.dword	0x0000000000080006
.dword	0x33333333333b3333
.dword	0x66666666666e6667
.dword	0xffffffff4b030cce
.dword	0x00000000b50cf334
.dword	0x0000000000100002
.dword	0x5555555555655555
.dword	0x0000000000100001
.dword	0x0000000000100005
.dword	0x3333333333433332
.dword	0x6666666666766666
.dword	0x00000000b514f333
.dword	0x5555555555655557
.dword	0xaaaaaaaaaacaaaab
.dword	0x0000000000200007
.dword	0x3333333333533335
.dword	0x6666666666866668
.dword	0xffffffff4b1b0cce
.dword	0x00000000b524f335
.dword	0x0000000000200004
.dword	0x5555555555755556
.dword	0xaaaaaaaaaaeaaaaa
.dword	0x0000000000400006
.dword	0x3333333333733334
.dword	0x6666666666a66667
.dword	0xffffffff4b3b0ccd
.dword	0x00000000b544f334
.dword	0x0000000000400003
.dword	0x5555555555955555
.dword	0x0000000000800000
.dword	0x0000000000800005
.dword	0x3333333333b33333
.dword	0x6666666666e66666
.dword	0x0000000000800000
.dword	0x00000000b584f333
.dword	0x5555555555d55557
.dword	0xaaaaaaaaab2aaaac
.dword	0x0000000001000006
.dword	0x3333333334333335
.dword	0x6666666667666668
.dword	0xffffffff4bfb0ccf
.dword	0x00000000b604f334
.dword	0x0000000001000004
.dword	0x5555555556555556
.dword	0xaaaaaaaaabaaaaab
.dword	0x0000000002000005
.dword	0x3333333335333334
.dword	0x6666666668666667
.dword	0xffffffff4cfb0cce
.dword	0x00000000b704f333
.dword	0x0000000002000003
.dword	0x5555555557555555
.dword	0x0000000002000001
.dword	0x0000000004000004
.dword	0x3333333337333333
.dword	0x666666666a666666
.dword	0x00000000b904f333
.dword	0x5555555559555556
.dword	0xaaaaaaaaaeaaaaac
.dword	0x0000000004000007
.dword	0x3333333337333335
.dword	0x666666666e666667
.dword	0xffffffff52fb0ccf
.dword	0x00000000bd04f335
.dword	0x0000000008000004
.dword	0x555555555d555555
.dword	0xaaaaaaaab2aaaaab
.dword	0x0000000008000006
.dword	0x333333333b333334
.dword	0x6666666676666666
.dword	0xffffffff5afb0cce
.dword	0x00000000c504f334
.dword	0x0000000010000003
.dword	0x5555555565555554
.dword	0x0000000010000001
.dword	0x0000000010000005
.dword	0x3333333343333333
.dword	0x6666666686666665
.dword	0x00000000d504f333
.dword	0x5555555575555557
.dword	0xaaaaaaaacaaaaaac
.dword	0x0000000020000006
.dword	0x3333333353333335
.dword	0x6666666686666668
.dword	0xffffffff6afb0ccf
.dword	0x00000000f504f334
.dword	0x0000000040000004
.dword	0x5555555595555556
.dword	0xaaaaaaaaeaaaaaab
.dword	0x0000000040000005
.dword	0x3333333373333334
.dword	0x66666666a6666667
.dword	0xffffffff8afb0cce
.dword	0x000000013504f333
.dword	0x0000000080000003
.dword	0x55555555d5555555
.dword	0x0000000080000001
.dword	0x0000000080000004
.dword	0x33333333b3333333
.dword	0x66666666e6666666
.dword	0x000000013504f333
.dword	0x5555555655555556
.dword	0xaaaaaaabaaaaaaac
.dword	0x0000000100000007
.dword	0x3333333433333335
.dword	0x6666666766666667
.dword	0x000000004afb0ccf
.dword	0x00000001b504f335
.dword	0x0000000100000004
.dword	0x5555555755555555
.dword	0xaaaaaaacaaaaaaab
.dword	0x0000000200000006
.dword	0x3333333533333334
.dword	0x6666666866666666
.dword	0x000000014afb0cce
.dword	0x00000002b504f334
.dword	0x0000000200000003
.dword	0x5555555955555554
.dword	0x0000000400000001
.dword	0x0000000400000005
.dword	0x3333333733333333
.dword	0x6666666a66666665
.dword	0x00000004b504f333
.dword	0x5555555955555557
.dword	0xaaaaaaaeaaaaaaac
.dword	0x0000000800000006
.dword	0x3333333b33333335
.dword	0x6666666e66666668
.dword	0x000000074afb0ccf
.dword	0x00000008b504f334
.dword	0x0000000800000004
.dword	0x5555555d55555556
.dword	0xaaaaaab2aaaaaaab
.dword	0x0000001000000005
.dword	0x3333334333333334
.dword	0x6666667666666667
.dword	0x0000000f4afb0cce
.dword	0x00000010b504f333
.dword	0x0000001000000003
.dword	0x5555556555555555
.dword	0x0000001000000001
.dword	0x0000002000000004
.dword	0x3333335333333333
.dword	0x6666668666666666
.dword	0x00000020b504f333
.dword	0x5555557555555556
.dword	0xaaaaaacaaaaaaaac
.dword	0x0000002000000007
.dword	0x3333335333333335
.dword	0x666666a666666667
.dword	0x0000003f4afb0ccf
.dword	0x00000040b504f335
.dword	0x0000004000000004
.dword	0x5555559555555555
.dword	0xaaaaaaeaaaaaaaab
.dword	0x0000004000000006
.dword	0x3333337333333334
.dword	0x666666e666666666
.dword	0x0000007f4afb0cce
.dword	0x00000080b504f334
.dword	0x0000008000000003
.dword	0x555555d555555554
.dword	0x0000008000000001
.dword	0x0000008000000005
.dword	0x333333b333333333
.dword	0x6666676666666665
.dword	0x00000100b504f333
.dword	0x5555565555555557
.dword	0xaaaaabaaaaaaaaac
.dword	0x0000010000000006
.dword	0x3333343333333335
.dword	0x6666676666666668
.dword	0x000000ff4afb0ccf
.dword	0x00000200b504f334
.dword	0x0000020000000004
.dword	0x5555575555555556
.dword	0xaaaaacaaaaaaaaab
.dword	0x0000020000000005
.dword	0x3333353333333334
.dword	0x6666686666666667
.dword	0x000001ff4afb0cce
.dword	0x00000400b504f333
.dword	0x0000040000000003
.dword	0x5555595555555555
.dword	0x0000040000000001
.dword	0x0000040000000004
.dword	0x3333373333333333
.dword	0x66666a6666666666
.dword	0x00000400b504f333
.dword	0x55555d5555555556
.dword	0xaaaab2aaaaaaaaac
.dword	0x0000080000000007
.dword	0x33333b3333333335
.dword	0x66666e6666666667
.dword	0x000007ff4afb0ccf
.dword	0x00000800b504f335
.dword	0x0000080000000004
.dword	0x5555655555555555
.dword	0xaaaabaaaaaaaaaab
.dword	0x0000100000000006
.dword	0x3333433333333334
.dword	0x6666766666666666
.dword	0x00000fff4afb0cce
.dword	0x00001000b504f334
.dword	0x0000100000000003
.dword	0x5555755555555554
.dword	0x0000200000000001
.dword	0x0000200000000005
.dword	0x3333533333333333
.dword	0x6666866666666665
.dword	0x00002000b504f333
.dword	0x5555755555555557
.dword	0xaaaacaaaaaaaaaac
.dword	0x0000400000000006
.dword	0x3333733333333335
.dword	0x6666a66666666668
.dword	0x00003fff4afb0ccf
.dword	0x00004000b504f334
.dword	0x0000400000000004
.dword	0x5555955555555556
.dword	0xaaaaeaaaaaaaaaab
.dword	0x0000800000000005
.dword	0x3333b33333333334
.dword	0x6666e66666666667
.dword	0x00007fff4afb0cce
.dword	0x00008000b504f333
.dword	0x0000800000000003
.dword	0x5555d55555555555
.dword	0x0000800000000001
.dword	0x0001000000000004
.dword	0x3334333333333333
.dword	0x6667666666666666
.dword	0x00010000b504f333
.dword	0x5556555555555556
.dword	0xaaabaaaaaaaaaaac
.dword	0x0001000000000007
.dword	0x3334333333333335
.dword	0x6668666666666667
.dword	0x0001ffff4afb0ccf
.dword	0x00020000b504f335
.dword	0x0002000000000004
.dword	0x5557555555555555
.dword	0xaaacaaaaaaaaaaab
.dword	0x0002000000000006
.dword	0x3335333333333334
.dword	0x666a666666666666
.dword	0x0003ffff4afb0cce
.dword	0x00040000b504f334
.dword	0x0004000000000003
.dword	0x5559555555555554
.dword	0x0004000000000001
.dword	0x0004000000000005
.dword	0x3337333333333333
.dword	0x666e666666666665
.dword	0x00080000b504f333
.dword	0x555d555555555557
.dword	0xaab2aaaaaaaaaaac
.dword	0x0008000000000006
.dword	0x333b333333333335
.dword	0x666e666666666668
.dword	0x0007ffff4afb0ccf
.dword	0x00100000b504f334
.dword	0x0010000000000004
.dword	0x5565555555555556
.dword	0xaabaaaaaaaaaaaab
.dword	0x0010000000000005
.dword	0x3343333333333334
.dword	0x6676666666666667
.dword	0x000fffff4afb0cce
.dword	0x00200000b504f333
.dword	0x0020000000000003
.dword	0x5575555555555555
.dword	0x0020000000000001
.dword	0x0020000000000004
.dword	0x3353333333333333
.dword	0x6686666666666666
.dword	0x00200000b504f333
.dword	0x5595555555555556
.dword	0xaaeaaaaaaaaaaaac
.dword	0x0040000000000007
.dword	0x3373333333333335
.dword	0x66a6666666666667
.dword	0x003fffff4afb0ccf
.dword	0x00400000b504f335
.dword	0x0040000000000004
.dword	0x55d5555555555555
.dword	0xab2aaaaaaaaaaaab
.dword	0x0080000000000006
.dword	0x33b3333333333334
.dword	0x66e6666666666666
.dword	0x007fffff4afb0cce
.dword	0x00800000b504f334
.dword	0x0080000000000003
.dword	0x5655555555555554
.dword	0x0100000000000001
.dword	0x0100000000000005
.dword	0x3433333333333333
.dword	0x6766666666666665
.dword	0x01000000b504f333
.dword	0x5655555555555557
.dword	0xabaaaaaaaaaaaaac
.dword	0x0200000000000006
.dword	0x3533333333333335
.dword	0x6866666666666668
.dword	0x01ffffff4afb0ccf
.dword	0x02000000b504f334
.dword	0x0200000000000004
.dword	0x5755555555555556
.dword	0xacaaaaaaaaaaaaab
.dword	0x0400000000000005
.dword	0x3733333333333334
.dword	0x6a66666666666667
.dword	0x03ffffff4afb0cce
.dword	0x04000000b504f333
.dword	0x0400000000000003
.dword	0x5955555555555555
.dword	0x0400000000000001
.dword	0x0800000000000004
.dword	0x3b33333333333333
.dword	0x6e66666666666666
.dword	0x08000000b504f333
.dword	0x5d55555555555556
.dword	0xb2aaaaaaaaaaaaac
.dword	0x0800000000000007
.dword	0x3b33333333333335
.dword	0x7666666666666667
.dword	0x0fffffff4afb0ccf
.dword	0x10000000b504f335
.dword	0x1000000000000004
.dword	0x6555555555555555
.dword	0xbaaaaaaaaaaaaaab
.dword	0x1000000000000006
.dword	0x4333333333333334
.dword	0x8666666666666666
.dword	0x1fffffff4afb0cce
.dword	0x20000000b504f334
.dword	0x2000000000000003
.dword	0x7555555555555554
.dword	0x2000000000000001
.dword	0x2000000000000005
.dword	0x5333333333333333
.dword	0xa666666666666665
.dword	0x40000000b504f333
.dword	0x9555555555555557
.dword	0xeaaaaaaaaaaaaaac
.dword	0x4000000000000006
.dword	0x7333333333333335
.dword	0xa666666666666668
.dword	0x3fffffff4afb0ccf
.dword	0x80000000b504f334
.dword	0x8000000000000004
.dword	0xd555555555555556
.dword	0x2aaaaaaaaaaaaaab
.dword	0x8000000000000005
.dword	0xb333333333333334
.dword	0xe666666666666667
.dword	0x7fffffff4afb0cce
.dword	0x00000000b504f331
.dword	0x0000000000000001
.dword	0x5555555555555553
.dword	0xffffffffffffffff
.dword	0x0000000000000002
.dword	0x3333333333333331
.dword	0x6666666666666664
.dword	0x00000000b504f331
.dword	0x5555555555555553
.dword	0xaaaaaaaaaaaaaaa9
.dword	0x0000000000000004
.dword	0x3333333333333332
.dword	0x6666666666666664
.dword	0xffffffff4afb0ccc
.dword	0x00000000b504f332
.dword	0x0000000000000001
.dword	0x5555555555555550
.dword	0xaaaaaaaaaaaaaaa6
.dword	0x0000000000000001
.dword	0x333333333333332f
.dword	0x6666666666666661
.dword	0xffffffff4afb0cc9
.dword	0x00000000b504f32f
.dword	0xfffffffffffffffe
.dword	0x555555555555554b
.dword	0xfffffffffffffff8
.dword	0xfffffffffffffffc
.dword	0x333333333333332a
.dword	0x666666666666665c
.dword	0x00000000b504f32a
.dword	0x555555555555554e
.dword	0xaaaaaaaaaaaaaaa3
.dword	0xfffffffffffffff5
.dword	0x3333333333333324
.dword	0x6666666666666657
.dword	0xffffffff4afb0cbe
.dword	0x00000000b504f323
.dword	0xfffffffffffffff3
.dword	0x5555555555555545
.dword	0xaaaaaaaaaaaaaa9a
.dword	0xffffffffffffffe4
.dword	0x3333333333333313
.dword	0x6666666666666646
.dword	0xffffffff4afb0cad
.dword	0x00000000b504f312
.dword	0xffffffffffffffe2
.dword	0x5555555555555534
.dword	0xffffffffffffffe0
.dword	0xffffffffffffffc3
.dword	0x33333333333332f2
.dword	0x6666666666666625
.dword	0x00000000b504f2f2
.dword	0x5555555555555515
.dword	0xaaaaaaaaaaaaaa6b
.dword	0xffffffffffffffc6
.dword	0x33333333333332f4
.dword	0x66666666666665e6
.dword	0xffffffff4afb0c4e
.dword	0x00000000b504f2b4
.dword	0xffffffffffffff83
.dword	0x55555555555554d4
.dword	0xaaaaaaaaaaaaaa2a
.dword	0xffffffffffffff85
.dword	0x33333333333332b3
.dword	0x6666666666666565
.dword	0xffffffff4afb0bcd
.dword	0x00000000b504f233
.dword	0xffffffffffffff02
.dword	0x5555555555555453
.dword	0xffffffffffffff00
.dword	0xffffffffffffff04
.dword	0x3333333333333232
.dword	0x6666666666666464
.dword	0x00000000b504f132
.dword	0x5555555555555356
.dword	0xaaaaaaaaaaaaa8ab
.dword	0xfffffffffffffe05
.dword	0x3333333333333134
.dword	0x6666666666666467
.dword	0xffffffff4afb0ace
.dword	0x00000000b504ef33
.dword	0xfffffffffffffc03
.dword	0x5555555555555155
.dword	0xaaaaaaaaaaaaa6aa
.dword	0xfffffffffffffc04
.dword	0x3333333333332f33
.dword	0x6666666666666266
.dword	0xffffffff4afb08cd
.dword	0x00000000b504eb32
.dword	0xfffffffffffff802
.dword	0x5555555555554d54
.dword	0xfffffffffffff800
.dword	0xfffffffffffff803
.dword	0x3333333333332b32
.dword	0x6666666666665e65
.dword	0x00000000b504eb32

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
    

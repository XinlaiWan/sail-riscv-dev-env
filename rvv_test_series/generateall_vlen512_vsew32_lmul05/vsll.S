#----------------------------------------------------------------------------- 
    # vsll.S
    #-----------------------------------------------------------------------------
    #
    # Test vsll instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vsll)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_VV_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v24, v16, v8, v0.t; \
        )
#define TEST_VX_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            li x1, MASK_XLEN(val1); \
            inst v16, v8, x1, v0.t; ; \
        )
#define TEST_VI_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            inst v16, v8, SEXT_IMM(val1), v0.t; ; \
        )
#define TEST_VV_OP_12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v2, (x7); \
            inst v24, v16, v2, v0.t;  \
        )
#define TEST_VV_OP_13( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v3, (x7); \
            inst v24, v16, v3, v0.t;  \
        )
#define TEST_VV_OP_14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v4, (x7); \
            inst v24, v16, v4, v0.t;  \
        )
#define TEST_VV_OP_15( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v5, (x7); \
            inst v24, v16, v5, v0.t;  \
        )
#define TEST_VV_OP_16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v6, (x7); \
            inst v24, v16, v6, v0.t;  \
        )
#define TEST_VV_OP_17( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v7, (x7); \
            inst v24, v16, v7, v0.t;  \
        )
#define TEST_VV_OP_19( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v9, (x7); \
            inst v24, v16, v9, v0.t;  \
        )
#define TEST_VV_OP_110( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v10, (x7); \
            inst v24, v16, v10, v0.t;  \
        )
#define TEST_VV_OP_111( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v11, (x7); \
            inst v24, v16, v11, v0.t;  \
        )
#define TEST_VV_OP_112( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v12, (x7); \
            inst v24, v16, v12, v0.t;  \
        )
#define TEST_VV_OP_113( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v13, (x7); \
            inst v24, v16, v13, v0.t;  \
        )
#define TEST_VV_OP_114( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v14, (x7); \
            inst v24, v16, v14, v0.t;  \
        )
#define TEST_VV_OP_115( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v15, (x7); \
            inst v24, v16, v15, v0.t;  \
        )
#define TEST_VV_OP_117( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v17, (x7); \
            inst v24, v16, v17, v0.t;  \
        )
#define TEST_VV_OP_118( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v18, (x7); \
            inst v24, v16, v18, v0.t;  \
        )
#define TEST_VV_OP_119( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v19, (x7); \
            inst v24, v16, v19, v0.t;  \
        )
#define TEST_VV_OP_120( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v20, (x7); \
            inst v24, v16, v20, v0.t;  \
        )
#define TEST_VV_OP_121( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v21, (x7); \
            inst v24, v16, v21, v0.t;  \
        )
#define TEST_VV_OP_122( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v22, (x7); \
            inst v24, v16, v22, v0.t;  \
        )
#define TEST_VV_OP_123( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v23, (x7); \
            inst v24, v16, v23, v0.t;  \
        )
#define TEST_VV_OP_125( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v25, (x7); \
            inst v24, v16, v25, v0.t;  \
        )
#define TEST_VV_OP_126( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v26, (x7); \
            inst v24, v16, v26, v0.t;  \
        )
#define TEST_VV_OP_127( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v27, (x7); \
            inst v24, v16, v27, v0.t;  \
        )
#define TEST_VV_OP_128( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v28, (x7); \
            inst v24, v16, v28, v0.t;  \
        )
#define TEST_VV_OP_129( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v29, (x7); \
            inst v24, v16, v29, v0.t;  \
        )
#define TEST_VV_OP_130( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v30, (x7); \
            inst v24, v16, v30, v0.t;  \
        )
#define TEST_VV_OP_131( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v31, (x7); \
            inst v24, v16, v31, v0.t;  \
        )
#define TEST_VV_OP_rd1( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v1, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v1, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v1, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd2( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v2, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v2, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v2, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd3( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v3, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v3, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v3, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd4( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v4, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v4, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v4, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd5( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v5, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v5, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v5, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd6( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v6, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v6, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v6, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd7( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v7, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v7, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v7, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd9( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v9, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v9, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v9, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd10( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v10, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v10, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v10, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd11( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v11, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v11, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v11, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd12( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v12, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v12, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v12, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd13( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v13, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v13, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v13, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd14( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v14, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v14, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd15( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v15, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v15, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v15, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd17( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v17, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v17, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v17, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd18( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v18, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v18, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v18, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd19( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v19, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v19, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v19, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd20( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v20, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v20, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v20, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd21( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v21, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v21, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v21, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd22( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v22, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v22, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v22, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd23( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v23, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v23, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v23, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd25( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v25, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v25, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v25, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd26( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v26, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v26, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v26, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd27( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v27, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v27, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v27, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd28( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v28, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v28, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v28, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd29( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v29, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v29, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v29, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd30( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v30, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v30, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v30, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd31( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v31, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v31, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v31, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd8( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v8, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v24, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v8, v24, v16, v0.t; ; \
        )
#define TEST_VV_OP_rd16( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v24, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v16, v24, v8, v0.t; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VV_OP( 1,  vsll.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP( 2,  vsll.vv, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_VV_OP( 3,  vsll.vv, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_VV_OP( 4,  vsll.vv, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_VV_OP( 5,  vsll.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP( 6,  vsll.vv, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_VV_OP( 7,  vsll.vv, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_VV_OP( 8,  vsll.vv, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_VV_OP( 9,  vsll.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP( 10,  vsll.vv, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_VV_OP( 11,  vsll.vv, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_VV_OP( 12,  vsll.vv, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_VV_OP( 13,  vsll.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP( 14,  vsll.vv, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_VV_OP( 15,  vsll.vv, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_VV_OP( 16,  vsll.vv, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_VV_OP( 17,  vsll.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP( 18,  vsll.vv, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_VV_OP( 19,  vsll.vv, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_VV_OP( 20,  vsll.vv, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_VV_OP( 21,  vsll.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP( 22,  vsll.vv, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_VV_OP( 23,  vsll.vv, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_VV_OP( 24,  vsll.vv, rd_data_vv+736, rs2_data+736, rs1_data+736)
  TEST_VV_OP( 25,  vsll.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP( 26,  vsll.vv, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_VV_OP( 27,  vsll.vv, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_VV_OP( 28,  vsll.vv, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_VV_OP( 29,  vsll.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP( 30,  vsll.vv, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_VV_OP( 31,  vsll.vv, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_VV_OP( 32,  vsll.vv, rd_data_vv+992, rs2_data+992, rs1_data+992)
  TEST_VV_OP( 33,  vsll.vv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_VV_OP( 34,  vsll.vv, rd_data_vv+1056, rs2_data+1056, rs1_data+1056)
  TEST_VV_OP( 35,  vsll.vv, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_VV_OP( 36,  vsll.vv, rd_data_vv+1120, rs2_data+1120, rs1_data+1120)
  TEST_VV_OP( 37,  vsll.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP( 38,  vsll.vv, rd_data_vv+1184, rs2_data+1184, rs1_data+1184)
  TEST_VV_OP( 39,  vsll.vv, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_VV_OP( 40,  vsll.vv, rd_data_vv+1248, rs2_data+1248, rs1_data+1248)
  TEST_VV_OP( 41,  vsll.vv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_VV_OP( 42,  vsll.vv, rd_data_vv+1312, rs2_data+1312, rs1_data+1312)
  TEST_VV_OP( 43,  vsll.vv, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_VV_OP( 44,  vsll.vv, rd_data_vv+1376, rs2_data+1376, rs1_data+1376)
  TEST_VV_OP( 45,  vsll.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP( 46,  vsll.vv, rd_data_vv+1440, rs2_data+1440, rs1_data+1440)
  TEST_VV_OP( 47,  vsll.vv, rd_data_vv+1472, rs2_data+1472, rs1_data+1472)
  TEST_VV_OP( 48,  vsll.vv, rd_data_vv+1504, rs2_data+1504, rs1_data+1504)
  TEST_VV_OP( 49,  vsll.vv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_VV_OP( 50,  vsll.vv, rd_data_vv+1568, rs2_data+1568, rs1_data+1568)
  TEST_VV_OP( 51,  vsll.vv, rd_data_vv+1600, rs2_data+1600, rs1_data+1600)
  TEST_VV_OP( 52,  vsll.vv, rd_data_vv+1632, rs2_data+1632, rs1_data+1632)
  TEST_VV_OP( 53,  vsll.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP( 54,  vsll.vv, rd_data_vv+1696, rs2_data+1696, rs1_data+1696)
  TEST_VV_OP( 55,  vsll.vv, rd_data_vv+1728, rs2_data+1728, rs1_data+1728)
  TEST_VV_OP( 56,  vsll.vv, rd_data_vv+1760, rs2_data+1760, rs1_data+1760)
  TEST_VV_OP( 57,  vsll.vv, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_VV_OP( 58,  vsll.vv, rd_data_vv+1824, rs2_data+1824, rs1_data+1824)
  TEST_VV_OP( 59,  vsll.vv, rd_data_vv+1856, rs2_data+1856, rs1_data+1856)
  TEST_VV_OP( 60,  vsll.vv, rd_data_vv+1888, rs2_data+1888, rs1_data+1888)
  TEST_VV_OP( 61,  vsll.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_VV_OP( 62,  vsll.vv, rd_data_vv+1952, rs2_data+1952, rs1_data+1952)
  TEST_VV_OP( 63,  vsll.vv, rd_data_vv+1984, rs2_data+1984, rs1_data+1984)
  TEST_VV_OP( 64,  vsll.vv, rd_data_vv+2016, rs2_data+2016, rs1_data+2016)
  TEST_VV_OP( 65,  vsll.vv, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_VV_OP( 66,  vsll.vv, rd_data_vv+2080, rs2_data+2080, rs1_data+2080)
  TEST_VV_OP( 67,  vsll.vv, rd_data_vv+2112, rs2_data+2112, rs1_data+2112)
  TEST_VV_OP( 68,  vsll.vv, rd_data_vv+2144, rs2_data+2144, rs1_data+2144)
  TEST_VV_OP_rd1( 69,  vsll.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_12( 70,  vsll.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_rd2( 71,  vsll.vv, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_VV_OP_13( 72,  vsll.vv, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_VV_OP_rd3( 73,  vsll.vv, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_VV_OP_14( 74,  vsll.vv, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_VV_OP_rd4( 75,  vsll.vv, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_VV_OP_15( 76,  vsll.vv, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_VV_OP_rd5( 77,  vsll.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_16( 78,  vsll.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_rd6( 79,  vsll.vv, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_VV_OP_17( 80,  vsll.vv, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_VV_OP_rd7( 81,  vsll.vv, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_VV_OP_rd8( 82,  vsll.vv, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_VV_OP_19( 83,  vsll.vv, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_VV_OP_rd9( 84,  vsll.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_110( 85,  vsll.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_rd10( 86,  vsll.vv, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_VV_OP_111( 87,  vsll.vv, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_VV_OP_rd11( 88,  vsll.vv, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_VV_OP_112( 89,  vsll.vv, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_VV_OP_rd12( 90,  vsll.vv, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_VV_OP_113( 91,  vsll.vv, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_VV_OP_rd13( 92,  vsll.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_114( 93,  vsll.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_rd14( 94,  vsll.vv, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_VV_OP_115( 95,  vsll.vv, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_VV_OP_rd15( 96,  vsll.vv, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_VV_OP_rd16( 97,  vsll.vv, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_VV_OP_117( 98,  vsll.vv, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_VV_OP_rd17( 99,  vsll.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_118( 100,  vsll.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_rd18( 101,  vsll.vv, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_VV_OP_119( 102,  vsll.vv, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_VV_OP_rd19( 103,  vsll.vv, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_VV_OP_120( 104,  vsll.vv, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_VV_OP_rd20( 105,  vsll.vv, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_VV_OP_121( 106,  vsll.vv, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_VV_OP_rd21( 107,  vsll.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_122( 108,  vsll.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_rd22( 109,  vsll.vv, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_VV_OP_123( 110,  vsll.vv, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_VV_OP_rd23( 111,  vsll.vv, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_VV_OP_rd25( 112,  vsll.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_126( 113,  vsll.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_rd26( 114,  vsll.vv, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_VV_OP_127( 115,  vsll.vv, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_VV_OP_rd27( 116,  vsll.vv, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_VV_OP_128( 117,  vsll.vv, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_VV_OP_rd28( 118,  vsll.vv, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_VV_OP_129( 119,  vsll.vv, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_VV_OP_rd29( 120,  vsll.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_130( 121,  vsll.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_rd30( 122,  vsll.vv, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_VV_OP_131( 123,  vsll.vv, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_VV_OP_rd31( 124,  vsll.vv, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_VV_OP_12( 125,  vsll.vv, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_VV_OP_rd1( 126,  vsll.vv, rd_data_vv+992, rs2_data+992, rs1_data+992)
  TEST_VV_OP_13( 127,  vsll.vv, rd_data_vv+992, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VX_OP( 128,  vsll.vx, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_VX_OP( 129,  vsll.vx, rd_data_vx+32, rs2_data+32, 0xfffffffffffffffe)
  TEST_VX_OP( 130,  vsll.vx, rd_data_vx+64, rs2_data+64, 0xfffffffffffffffe)
  TEST_VX_OP( 131,  vsll.vx, rd_data_vx+96, rs2_data+96, 0xfffffffffffffffe)
  TEST_VX_OP( 132,  vsll.vx, rd_data_vx+128, rs2_data+128, 0xfffffffffffffffe)
  TEST_VX_OP( 133,  vsll.vx, rd_data_vx+160, rs2_data+160, 0xfffffffffffffffe)
  TEST_VX_OP( 134,  vsll.vx, rd_data_vx+192, rs2_data+192, 0xfffffffffffffffe)
  TEST_VX_OP( 135,  vsll.vx, rd_data_vx+224, rs2_data+224, 0xfffffffffffffffe)
  TEST_VX_OP( 136,  vsll.vx, rd_data_vx+256, rs2_data+256, 0xfffffffffffffffe)
  TEST_VX_OP( 137,  vsll.vx, rd_data_vx+288, rs2_data+288, 0xfffffffffffffffe)
  TEST_VX_OP( 138,  vsll.vx, rd_data_vx+320, rs2_data+320, 0xfffffffffffffffe)
  TEST_VX_OP( 139,  vsll.vx, rd_data_vx+352, rs2_data+352, 0xfffffffffffffffe)
  TEST_VX_OP( 140,  vsll.vx, rd_data_vx+384, rs2_data+384, 0xfffffffffffffffe)
  TEST_VX_OP( 141,  vsll.vx, rd_data_vx+416, rs2_data+416, 0xfffffffffffffffe)
  TEST_VX_OP( 142,  vsll.vx, rd_data_vx+448, rs2_data+448, 0xfffffffffffffffe)
  TEST_VX_OP( 143,  vsll.vx, rd_data_vx+480, rs2_data+480, 0xfffffffffffffffe)
  TEST_VX_OP( 144,  vsll.vx, rd_data_vx+512, rs2_data+512, 0xfffffffffffffffe)
  TEST_VX_OP( 145,  vsll.vx, rd_data_vx+544, rs2_data+544, 0xfffffffffffffffe)
  TEST_VX_OP( 146,  vsll.vx, rd_data_vx+576, rs2_data+576, 0xfffffffffffffffe)
  TEST_VX_OP( 147,  vsll.vx, rd_data_vx+608, rs2_data+608, 0xfffffffffffffffe)
  TEST_VX_OP( 148,  vsll.vx, rd_data_vx+640, rs2_data+640, 0xfffffffffffffffe)
  TEST_VX_OP( 149,  vsll.vx, rd_data_vx+672, rs2_data+672, 0xfffffffffffffffe)
  TEST_VX_OP( 150,  vsll.vx, rd_data_vx+704, rs2_data+704, 0xfffffffffffffffe)
  TEST_VX_OP( 151,  vsll.vx, rd_data_vx+736, rs2_data+736, 0xfffffffffffffffe)
  TEST_VX_OP( 152,  vsll.vx, rd_data_vx+768, rs2_data+768, 0xfffffffffffffffe)
  TEST_VX_OP( 153,  vsll.vx, rd_data_vx+800, rs2_data+800, 0xfffffffffffffffe)
  TEST_VX_OP( 154,  vsll.vx, rd_data_vx+832, rs2_data+832, 0xfffffffffffffffe)
  TEST_VX_OP( 155,  vsll.vx, rd_data_vx+864, rs2_data+864, 0xfffffffffffffffe)
  TEST_VX_OP( 156,  vsll.vx, rd_data_vx+896, rs2_data+896, 0xfffffffffffffffe)
  TEST_VX_OP( 157,  vsll.vx, rd_data_vx+928, rs2_data+928, 0xfffffffffffffffe)
  TEST_VX_OP( 158,  vsll.vx, rd_data_vx+960, rs2_data+960, 0xfffffffffffffffe)
  TEST_VX_OP( 159,  vsll.vx, rd_data_vx+992, rs2_data+992, 0xfffffffffffffffe)
  TEST_VX_OP( 160,  vsll.vx, rd_data_vx+1024, rs2_data+1024, 0xfffffffffffffffe)
  TEST_VX_OP( 161,  vsll.vx, rd_data_vx+1056, rs2_data+1056, 0xfffffffffffffffe)
  TEST_VX_OP( 162,  vsll.vx, rd_data_vx+1088, rs2_data+1088, 0xfffffffffffffffe)
  TEST_VX_OP( 163,  vsll.vx, rd_data_vx+1120, rs2_data+1120, 0xfffffffffffffffe)
  TEST_VX_OP( 164,  vsll.vx, rd_data_vx+1152, rs2_data+1152, 0xfffffffffffffffe)
  TEST_VX_OP( 165,  vsll.vx, rd_data_vx+1184, rs2_data+1184, 0xfffffffffffffffe)
  TEST_VX_OP( 166,  vsll.vx, rd_data_vx+1216, rs2_data+1216, 0xfffffffffffffffe)
  TEST_VX_OP( 167,  vsll.vx, rd_data_vx+1248, rs2_data+1248, 0xfffffffffffffffe)
  TEST_VX_OP( 168,  vsll.vx, rd_data_vx+1280, rs2_data+1280, 0xfffffffffffffffe)
  TEST_VX_OP( 169,  vsll.vx, rd_data_vx+1312, rs2_data+1312, 0xfffffffffffffffe)
  TEST_VX_OP( 170,  vsll.vx, rd_data_vx+1344, rs2_data+1344, 0xfffffffffffffffe)
  TEST_VX_OP( 171,  vsll.vx, rd_data_vx+1376, rs2_data+1376, 0xfffffffffffffffe)
  TEST_VX_OP( 172,  vsll.vx, rd_data_vx+1408, rs2_data+1408, 0xfffffffffffffffe)
  TEST_VX_OP( 173,  vsll.vx, rd_data_vx+1440, rs2_data+1440, 0xfffffffffffffffe)
  TEST_VX_OP( 174,  vsll.vx, rd_data_vx+1472, rs2_data+1472, 0xfffffffffffffffe)
  TEST_VX_OP( 175,  vsll.vx, rd_data_vx+1504, rs2_data+1504, 0xfffffffffffffffe)
  TEST_VX_OP( 176,  vsll.vx, rd_data_vx+1536, rs2_data+1536, 0xfffffffffffffffe)
  TEST_VX_OP( 177,  vsll.vx, rd_data_vx+1568, rs2_data+1568, 0xfffffffffffffffe)
  TEST_VX_OP( 178,  vsll.vx, rd_data_vx+1600, rs2_data+1600, 0xfffffffffffffffe)
  TEST_VX_OP( 179,  vsll.vx, rd_data_vx+1632, rs2_data+1632, 0xfffffffffffffffe)
  TEST_VX_OP( 180,  vsll.vx, rd_data_vx+1664, rs2_data+1664, 0xfffffffffffffffe)
  TEST_VX_OP( 181,  vsll.vx, rd_data_vx+1696, rs2_data+1696, 0xfffffffffffffffe)
  TEST_VX_OP( 182,  vsll.vx, rd_data_vx+1728, rs2_data+1728, 0xfffffffffffffffe)
  TEST_VX_OP( 183,  vsll.vx, rd_data_vx+1760, rs2_data+1760, 0xfffffffffffffffe)
  TEST_VX_OP( 184,  vsll.vx, rd_data_vx+1792, rs2_data+1792, 0xfffffffffffffffe)
  TEST_VX_OP( 185,  vsll.vx, rd_data_vx+1824, rs2_data+1824, 0xfffffffffffffffe)
  TEST_VX_OP( 186,  vsll.vx, rd_data_vx+1856, rs2_data+1856, 0xfffffffffffffffe)
  TEST_VX_OP( 187,  vsll.vx, rd_data_vx+1888, rs2_data+1888, 0xfffffffffffffffe)
  TEST_VX_OP( 188,  vsll.vx, rd_data_vx+1920, rs2_data+1920, 0xfffffffffffffffe)
  TEST_VX_OP( 189,  vsll.vx, rd_data_vx+1952, rs2_data+1952, 0xfffffffffffffffe)
  TEST_VX_OP( 190,  vsll.vx, rd_data_vx+1984, rs2_data+1984, 0xfffffffffffffffe)
  TEST_VX_OP( 191,  vsll.vx, rd_data_vx+2016, rs2_data+2016, 0xfffffffffffffffe)
  TEST_VX_OP( 192,  vsll.vx, rd_data_vx+2048, rs2_data+2048, 0xfffffffffffffffe)
  TEST_VX_OP( 193,  vsll.vx, rd_data_vx+2080, rs2_data+2080, 0xfffffffffffffffe)
  TEST_VX_OP( 194,  vsll.vx, rd_data_vx+2112, rs2_data+2112, 0xfffffffffffffffe)
  TEST_VX_OP( 195,  vsll.vx, rd_data_vx+2144, rs2_data+2144, 0xfffffffffffffffe)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VI_OP( 196,  vsll.vi, rd_data_vi+0, rs2_data+0, 15)
  TEST_VI_OP( 197,  vsll.vi, rd_data_vi+32, rs2_data+32, 15)
  TEST_VI_OP( 198,  vsll.vi, rd_data_vi+64, rs2_data+64, 15)
  TEST_VI_OP( 199,  vsll.vi, rd_data_vi+96, rs2_data+96, 15)
  TEST_VI_OP( 200,  vsll.vi, rd_data_vi+128, rs2_data+128, 15)
  TEST_VI_OP( 201,  vsll.vi, rd_data_vi+160, rs2_data+160, 15)
  TEST_VI_OP( 202,  vsll.vi, rd_data_vi+192, rs2_data+192, 15)
  TEST_VI_OP( 203,  vsll.vi, rd_data_vi+224, rs2_data+224, 15)
  TEST_VI_OP( 204,  vsll.vi, rd_data_vi+256, rs2_data+256, 15)
  TEST_VI_OP( 205,  vsll.vi, rd_data_vi+288, rs2_data+288, 15)
  TEST_VI_OP( 206,  vsll.vi, rd_data_vi+320, rs2_data+320, 15)
  TEST_VI_OP( 207,  vsll.vi, rd_data_vi+352, rs2_data+352, 15)
  TEST_VI_OP( 208,  vsll.vi, rd_data_vi+384, rs2_data+384, 15)
  TEST_VI_OP( 209,  vsll.vi, rd_data_vi+416, rs2_data+416, 15)
  TEST_VI_OP( 210,  vsll.vi, rd_data_vi+448, rs2_data+448, 15)
  TEST_VI_OP( 211,  vsll.vi, rd_data_vi+480, rs2_data+480, 15)
  TEST_VI_OP( 212,  vsll.vi, rd_data_vi+512, rs2_data+512, 15)
  TEST_VI_OP( 213,  vsll.vi, rd_data_vi+544, rs2_data+544, 15)
  TEST_VI_OP( 214,  vsll.vi, rd_data_vi+576, rs2_data+576, 15)
  TEST_VI_OP( 215,  vsll.vi, rd_data_vi+608, rs2_data+608, 15)
  TEST_VI_OP( 216,  vsll.vi, rd_data_vi+640, rs2_data+640, 15)
  TEST_VI_OP( 217,  vsll.vi, rd_data_vi+672, rs2_data+672, 15)
  TEST_VI_OP( 218,  vsll.vi, rd_data_vi+704, rs2_data+704, 15)
  TEST_VI_OP( 219,  vsll.vi, rd_data_vi+736, rs2_data+736, 15)
  TEST_VI_OP( 220,  vsll.vi, rd_data_vi+768, rs2_data+768, 15)
  TEST_VI_OP( 221,  vsll.vi, rd_data_vi+800, rs2_data+800, 15)
  TEST_VI_OP( 222,  vsll.vi, rd_data_vi+832, rs2_data+832, 15)
  TEST_VI_OP( 223,  vsll.vi, rd_data_vi+864, rs2_data+864, 15)
  TEST_VI_OP( 224,  vsll.vi, rd_data_vi+896, rs2_data+896, 15)
  TEST_VI_OP( 225,  vsll.vi, rd_data_vi+928, rs2_data+928, 15)
  TEST_VI_OP( 226,  vsll.vi, rd_data_vi+960, rs2_data+960, 15)
  TEST_VI_OP( 227,  vsll.vi, rd_data_vi+992, rs2_data+992, 15)
  TEST_VI_OP( 228,  vsll.vi, rd_data_vi+1024, rs2_data+1024, 15)
  TEST_VI_OP( 229,  vsll.vi, rd_data_vi+1056, rs2_data+1056, 15)
  TEST_VI_OP( 230,  vsll.vi, rd_data_vi+1088, rs2_data+1088, 15)
  TEST_VI_OP( 231,  vsll.vi, rd_data_vi+1120, rs2_data+1120, 15)
  TEST_VI_OP( 232,  vsll.vi, rd_data_vi+1152, rs2_data+1152, 15)
  TEST_VI_OP( 233,  vsll.vi, rd_data_vi+1184, rs2_data+1184, 15)
  TEST_VI_OP( 234,  vsll.vi, rd_data_vi+1216, rs2_data+1216, 15)
  TEST_VI_OP( 235,  vsll.vi, rd_data_vi+1248, rs2_data+1248, 15)
  TEST_VI_OP( 236,  vsll.vi, rd_data_vi+1280, rs2_data+1280, 15)
  TEST_VI_OP( 237,  vsll.vi, rd_data_vi+1312, rs2_data+1312, 15)
  TEST_VI_OP( 238,  vsll.vi, rd_data_vi+1344, rs2_data+1344, 15)
  TEST_VI_OP( 239,  vsll.vi, rd_data_vi+1376, rs2_data+1376, 15)
  TEST_VI_OP( 240,  vsll.vi, rd_data_vi+1408, rs2_data+1408, 15)
  TEST_VI_OP( 241,  vsll.vi, rd_data_vi+1440, rs2_data+1440, 15)
  TEST_VI_OP( 242,  vsll.vi, rd_data_vi+1472, rs2_data+1472, 15)
  TEST_VI_OP( 243,  vsll.vi, rd_data_vi+1504, rs2_data+1504, 15)
  TEST_VI_OP( 244,  vsll.vi, rd_data_vi+1536, rs2_data+1536, 15)
  TEST_VI_OP( 245,  vsll.vi, rd_data_vi+1568, rs2_data+1568, 15)
  TEST_VI_OP( 246,  vsll.vi, rd_data_vi+1600, rs2_data+1600, 15)
  TEST_VI_OP( 247,  vsll.vi, rd_data_vi+1632, rs2_data+1632, 15)
  TEST_VI_OP( 248,  vsll.vi, rd_data_vi+1664, rs2_data+1664, 15)
  TEST_VI_OP( 249,  vsll.vi, rd_data_vi+1696, rs2_data+1696, 15)
  TEST_VI_OP( 250,  vsll.vi, rd_data_vi+1728, rs2_data+1728, 15)
  TEST_VI_OP( 251,  vsll.vi, rd_data_vi+1760, rs2_data+1760, 15)
  TEST_VI_OP( 252,  vsll.vi, rd_data_vi+1792, rs2_data+1792, 15)
  TEST_VI_OP( 253,  vsll.vi, rd_data_vi+1824, rs2_data+1824, 15)
  TEST_VI_OP( 254,  vsll.vi, rd_data_vi+1856, rs2_data+1856, 15)
  TEST_VI_OP( 255,  vsll.vi, rd_data_vi+1888, rs2_data+1888, 15)
  TEST_VI_OP( 256,  vsll.vi, rd_data_vi+1920, rs2_data+1920, 15)
  TEST_VI_OP( 257,  vsll.vi, rd_data_vi+1952, rs2_data+1952, 15)
  TEST_VI_OP( 258,  vsll.vi, rd_data_vi+1984, rs2_data+1984, 15)
  TEST_VI_OP( 259,  vsll.vi, rd_data_vi+2016, rs2_data+2016, 15)
  TEST_VI_OP( 260,  vsll.vi, rd_data_vi+2048, rs2_data+2048, 15)
  TEST_VI_OP( 261,  vsll.vi, rd_data_vi+2080, rs2_data+2080, 15)
  TEST_VI_OP( 262,  vsll.vi, rd_data_vi+2112, rs2_data+2112, 15)
  TEST_VI_OP( 263,  vsll.vi, rd_data_vi+2144, rs2_data+2144, 15)
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
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff78000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x10000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000018
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0005a820
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x02d40c00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x999999a0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000018
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66600000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00400000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66400000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55600000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5fa00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaa800
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfd2bf000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00001800
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02d41400
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000000a0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0016a080
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000080
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaac0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccccce0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaa80000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33300000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaa00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33280000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00300000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa8280000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000140
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x002d4100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000100
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x999999c0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x50000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x60000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x50000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x60000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x50000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000050
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000b5040
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000040
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555560
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666670
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555554
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99999998
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555550
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99999994
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000018
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0002d414
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00500000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x50400000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00400000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55600000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66700000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b505
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000050
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000b5040
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000040
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555560
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666670
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55540000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99980000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55500000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99940000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00180000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd4140000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000000a0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0016a080
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000080
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaac0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccce0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333330
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333328
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000030
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0005a828
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01400000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x41000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55800000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99c00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaa800
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaa000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33332800
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x05a82800
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000140
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x002d4100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000100
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x999999c0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55500000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66600000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55400000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66500000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00600000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x50500000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000280
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x005a8200
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaab00
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333380
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000000a0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0016a080
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000080
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff78000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff78000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00001000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x10000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x01000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x10000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000018
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000018
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0005a820
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0005a820
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x02d40c00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x999999a0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x02d40c00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x999999a0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000018
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66600000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000018
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66600000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00400000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66400000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00400000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66400000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55600000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5fa00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55600000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5fa00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaa800
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfd2bf000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00001800
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02d41400
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00001800
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02d41400
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000000a0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0016a080
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000000a0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0016a080
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000080
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaac0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000080
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaac0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccccce0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaa80000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcccccce0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaa80000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33300000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaa00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33300000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaa00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33280000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00300000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33280000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00300000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa8280000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000140
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x999999c0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x999999c0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x50000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x60000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x50000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x60000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x50000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x50000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x60000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x50000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x60000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x50000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000050
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000b5040
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000050
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000b5040
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000040
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555560
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000040
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555560
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666670
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555554
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666670
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555554
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99999998
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555550
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99999998
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555550
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e

rd_data_vx:
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e

rd_data_vi:
.word	0xffff0000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff78000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff7f8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7ff8000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7fff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00008000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00080000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00800000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x08000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00018000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99998000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a820000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a818000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x999a0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00018000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99998000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99990000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55558000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa57e8000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55550000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa57e0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00030000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5a828000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00028000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5a820000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa8000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33330000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33328000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00030000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a828000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00028000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a820000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab0000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33330000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa0000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33328000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00030000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5a828000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00028000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5a820000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa8000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33330000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33328000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00030000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a828000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00028000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a820000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab0000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33330000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa0000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33328000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00030000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5a828000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00028000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5a820000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa8000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33330000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33328000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00030000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a828000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00028000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a820000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab0000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33330000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa0000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33328000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00030000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5a828000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00028000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5a820000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa8000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33330000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33328000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00030000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a828000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00028000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a820000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab0000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33330000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa0000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33328000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00030000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5a828000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00028000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5a820000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa8000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33330000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33328000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00030000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a828000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00028000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a820000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
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
    

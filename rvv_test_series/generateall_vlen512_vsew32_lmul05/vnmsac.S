#----------------------------------------------------------------------------- 
    # vnmsac.S
    #-----------------------------------------------------------------------------
    #
    # Test vnmsac instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vnmsac)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_VV_OP_WITH_INIT 
#define TEST_VV_OP_WITH_INIT( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v8, (x7); \
            inst v24, v16, v8, v0.t; \
        )
#define TEST_VV_OP_WITH_INIT_11( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v1, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v1, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_12( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v2, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v2, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_13( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v3, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v3, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_14( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v4, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v4, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_15( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v5, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v5, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_16( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v6, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v6, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_17( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v7, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v7, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_19( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v9, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v9, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_110( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v10, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v10, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_111( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v11, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v11, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_112( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v12, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v12, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_113( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v13, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v13, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_114( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v14, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v14, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_115( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v15, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v15, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_117( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v17, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v17, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_118( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v18, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v18, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_119( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v19, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v19, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_120( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v20, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v20, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_121( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v21, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v21, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_122( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v22, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v22, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_123( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v23, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v23, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_125( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v25, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v25, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_126( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v26, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v26, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_127( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v27, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v27, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_128( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v28, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v28, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_129( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v29, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v29, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_130( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v30, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v30, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_131( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v31, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v31, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_rd1( testnum, inst, result, val1, val2 )  \
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
            inst v1, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd2( testnum, inst, result, val1, val2 )  \
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
            inst v2, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd3( testnum, inst, result, val1, val2 )  \
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
            inst v3, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd4( testnum, inst, result, val1, val2 )  \
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
            inst v4, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd5( testnum, inst, result, val1, val2 )  \
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
            inst v5, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd6( testnum, inst, result, val1, val2 )  \
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
            inst v6, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd7( testnum, inst, result, val1, val2 )  \
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
            inst v7, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd9( testnum, inst, result, val1, val2 )  \
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
            inst v9, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd10( testnum, inst, result, val1, val2 )  \
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
            inst v10, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd11( testnum, inst, result, val1, val2 )  \
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
            inst v11, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd12( testnum, inst, result, val1, val2 )  \
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
            inst v12, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd13( testnum, inst, result, val1, val2 )  \
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
            inst v13, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd14( testnum, inst, result, val1, val2 )  \
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
            inst v14, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd15( testnum, inst, result, val1, val2 )  \
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
            inst v15, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd17( testnum, inst, result, val1, val2 )  \
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
            inst v17, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd18( testnum, inst, result, val1, val2 )  \
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
            inst v18, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd19( testnum, inst, result, val1, val2 )  \
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
            inst v19, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd20( testnum, inst, result, val1, val2 )  \
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
            inst v20, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd21( testnum, inst, result, val1, val2 )  \
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
            inst v21, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd22( testnum, inst, result, val1, val2 )  \
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
            inst v22, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd23( testnum, inst, result, val1, val2 )  \
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
            inst v23, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd25( testnum, inst, result, val1, val2 )  \
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
            inst v25, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd26( testnum, inst, result, val1, val2 )  \
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
            inst v26, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd27( testnum, inst, result, val1, val2 )  \
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
            inst v27, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd28( testnum, inst, result, val1, val2 )  \
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
            inst v28, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd29( testnum, inst, result, val1, val2 )  \
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
            inst v29, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd30( testnum, inst, result, val1, val2 )  \
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
            inst v30, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd31( testnum, inst, result, val1, val2 )  \
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
            inst v31, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd8( testnum, inst, result, val1, val2 ) \
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
            inst v8, v16, v24, v0.t; ; \
        )
#define TEST_VV_OP_WITH_INIT_rd16( testnum, inst, result, val1, val2 ) \
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
            inst v16, v8, v24, v0.t; ; \
        )
#udnef TEST_VX_OP_RV 
#define TEST_VX_OP_RV( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            li x1, MASK_XLEN(val1); \
            inst v24, x1, v8, v0.t;  \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VV_OP_WITH_INIT( 1,  vnmsac.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_WITH_INIT( 2,  vnmsac.vv, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_VV_OP_WITH_INIT( 3,  vnmsac.vv, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_VV_OP_WITH_INIT( 4,  vnmsac.vv, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_VV_OP_WITH_INIT( 5,  vnmsac.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT( 6,  vnmsac.vv, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_VV_OP_WITH_INIT( 7,  vnmsac.vv, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_VV_OP_WITH_INIT( 8,  vnmsac.vv, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_VV_OP_WITH_INIT( 9,  vnmsac.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_WITH_INIT( 10,  vnmsac.vv, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_VV_OP_WITH_INIT( 11,  vnmsac.vv, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_VV_OP_WITH_INIT( 12,  vnmsac.vv, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_VV_OP_WITH_INIT( 13,  vnmsac.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT( 14,  vnmsac.vv, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_VV_OP_WITH_INIT( 15,  vnmsac.vv, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_VV_OP_WITH_INIT( 16,  vnmsac.vv, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_VV_OP_WITH_INIT( 17,  vnmsac.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_WITH_INIT( 18,  vnmsac.vv, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_VV_OP_WITH_INIT( 19,  vnmsac.vv, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_VV_OP_WITH_INIT( 20,  vnmsac.vv, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_VV_OP_WITH_INIT( 21,  vnmsac.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT( 22,  vnmsac.vv, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_VV_OP_WITH_INIT( 23,  vnmsac.vv, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_VV_OP_WITH_INIT( 24,  vnmsac.vv, rd_data_vv+736, rs2_data+736, rs1_data+736)
  TEST_VV_OP_WITH_INIT( 25,  vnmsac.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_WITH_INIT( 26,  vnmsac.vv, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_VV_OP_WITH_INIT( 27,  vnmsac.vv, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_VV_OP_WITH_INIT( 28,  vnmsac.vv, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_VV_OP_WITH_INIT( 29,  vnmsac.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT( 30,  vnmsac.vv, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_VV_OP_WITH_INIT( 31,  vnmsac.vv, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_VV_OP_WITH_INIT( 32,  vnmsac.vv, rd_data_vv+992, rs2_data+992, rs1_data+992)
  TEST_VV_OP_WITH_INIT( 33,  vnmsac.vv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_VV_OP_WITH_INIT( 34,  vnmsac.vv, rd_data_vv+1056, rs2_data+1056, rs1_data+1056)
  TEST_VV_OP_WITH_INIT( 35,  vnmsac.vv, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_VV_OP_WITH_INIT( 36,  vnmsac.vv, rd_data_vv+1120, rs2_data+1120, rs1_data+1120)
  TEST_VV_OP_WITH_INIT( 37,  vnmsac.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_WITH_INIT( 38,  vnmsac.vv, rd_data_vv+1184, rs2_data+1184, rs1_data+1184)
  TEST_VV_OP_WITH_INIT( 39,  vnmsac.vv, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_VV_OP_WITH_INIT( 40,  vnmsac.vv, rd_data_vv+1248, rs2_data+1248, rs1_data+1248)
  TEST_VV_OP_WITH_INIT( 41,  vnmsac.vv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_VV_OP_WITH_INIT( 42,  vnmsac.vv, rd_data_vv+1312, rs2_data+1312, rs1_data+1312)
  TEST_VV_OP_WITH_INIT( 43,  vnmsac.vv, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_VV_OP_WITH_INIT( 44,  vnmsac.vv, rd_data_vv+1376, rs2_data+1376, rs1_data+1376)
  TEST_VV_OP_WITH_INIT( 45,  vnmsac.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_WITH_INIT( 46,  vnmsac.vv, rd_data_vv+1440, rs2_data+1440, rs1_data+1440)
  TEST_VV_OP_WITH_INIT( 47,  vnmsac.vv, rd_data_vv+1472, rs2_data+1472, rs1_data+1472)
  TEST_VV_OP_WITH_INIT( 48,  vnmsac.vv, rd_data_vv+1504, rs2_data+1504, rs1_data+1504)
  TEST_VV_OP_WITH_INIT( 49,  vnmsac.vv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_VV_OP_WITH_INIT( 50,  vnmsac.vv, rd_data_vv+1568, rs2_data+1568, rs1_data+1568)
  TEST_VV_OP_WITH_INIT( 51,  vnmsac.vv, rd_data_vv+1600, rs2_data+1600, rs1_data+1600)
  TEST_VV_OP_WITH_INIT( 52,  vnmsac.vv, rd_data_vv+1632, rs2_data+1632, rs1_data+1632)
  TEST_VV_OP_WITH_INIT( 53,  vnmsac.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_WITH_INIT( 54,  vnmsac.vv, rd_data_vv+1696, rs2_data+1696, rs1_data+1696)
  TEST_VV_OP_WITH_INIT( 55,  vnmsac.vv, rd_data_vv+1728, rs2_data+1728, rs1_data+1728)
  TEST_VV_OP_WITH_INIT( 56,  vnmsac.vv, rd_data_vv+1760, rs2_data+1760, rs1_data+1760)
  TEST_VV_OP_WITH_INIT( 57,  vnmsac.vv, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_VV_OP_WITH_INIT( 58,  vnmsac.vv, rd_data_vv+1824, rs2_data+1824, rs1_data+1824)
  TEST_VV_OP_WITH_INIT( 59,  vnmsac.vv, rd_data_vv+1856, rs2_data+1856, rs1_data+1856)
  TEST_VV_OP_WITH_INIT( 60,  vnmsac.vv, rd_data_vv+1888, rs2_data+1888, rs1_data+1888)
  TEST_VV_OP_WITH_INIT( 61,  vnmsac.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_VV_OP_WITH_INIT( 62,  vnmsac.vv, rd_data_vv+1952, rs2_data+1952, rs1_data+1952)
  TEST_VV_OP_WITH_INIT( 63,  vnmsac.vv, rd_data_vv+1984, rs2_data+1984, rs1_data+1984)
  TEST_VV_OP_WITH_INIT( 64,  vnmsac.vv, rd_data_vv+2016, rs2_data+2016, rs1_data+2016)
  TEST_VV_OP_WITH_INIT( 65,  vnmsac.vv, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_VV_OP_WITH_INIT( 66,  vnmsac.vv, rd_data_vv+2080, rs2_data+2080, rs1_data+2080)
  TEST_VV_OP_WITH_INIT( 67,  vnmsac.vv, rd_data_vv+2112, rs2_data+2112, rs1_data+2112)
  TEST_VV_OP_WITH_INIT( 68,  vnmsac.vv, rd_data_vv+2144, rs2_data+2144, rs1_data+2144)
  TEST_VV_OP_WITH_INIT_rd1( 69,  vnmsac.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_WITH_INIT_12( 70,  vnmsac.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_WITH_INIT_rd2( 71,  vnmsac.vv, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_VV_OP_WITH_INIT_13( 72,  vnmsac.vv, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_VV_OP_WITH_INIT_rd3( 73,  vnmsac.vv, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_VV_OP_WITH_INIT_14( 74,  vnmsac.vv, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_VV_OP_WITH_INIT_rd4( 75,  vnmsac.vv, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_VV_OP_WITH_INIT_15( 76,  vnmsac.vv, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_VV_OP_WITH_INIT_rd5( 77,  vnmsac.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT_16( 78,  vnmsac.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT_rd6( 79,  vnmsac.vv, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_VV_OP_WITH_INIT_17( 80,  vnmsac.vv, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_VV_OP_WITH_INIT_rd7( 81,  vnmsac.vv, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_VV_OP_WITH_INIT_rd8( 82,  vnmsac.vv, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_VV_OP_WITH_INIT_19( 83,  vnmsac.vv, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_VV_OP_WITH_INIT_rd9( 84,  vnmsac.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_WITH_INIT_110( 85,  vnmsac.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_WITH_INIT_rd10( 86,  vnmsac.vv, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_VV_OP_WITH_INIT_111( 87,  vnmsac.vv, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_VV_OP_WITH_INIT_rd11( 88,  vnmsac.vv, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_VV_OP_WITH_INIT_112( 89,  vnmsac.vv, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_VV_OP_WITH_INIT_rd12( 90,  vnmsac.vv, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_VV_OP_WITH_INIT_113( 91,  vnmsac.vv, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_VV_OP_WITH_INIT_rd13( 92,  vnmsac.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT_114( 93,  vnmsac.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT_rd14( 94,  vnmsac.vv, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_VV_OP_WITH_INIT_115( 95,  vnmsac.vv, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_VV_OP_WITH_INIT_rd15( 96,  vnmsac.vv, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_VV_OP_WITH_INIT_rd16( 97,  vnmsac.vv, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_VV_OP_WITH_INIT_117( 98,  vnmsac.vv, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_VV_OP_WITH_INIT_rd17( 99,  vnmsac.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_WITH_INIT_118( 100,  vnmsac.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_WITH_INIT_rd18( 101,  vnmsac.vv, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_VV_OP_WITH_INIT_119( 102,  vnmsac.vv, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_VV_OP_WITH_INIT_rd19( 103,  vnmsac.vv, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_VV_OP_WITH_INIT_120( 104,  vnmsac.vv, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_VV_OP_WITH_INIT_rd20( 105,  vnmsac.vv, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_VV_OP_WITH_INIT_121( 106,  vnmsac.vv, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_VV_OP_WITH_INIT_rd21( 107,  vnmsac.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT_122( 108,  vnmsac.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT_rd22( 109,  vnmsac.vv, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_VV_OP_WITH_INIT_123( 110,  vnmsac.vv, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_VV_OP_WITH_INIT_rd23( 111,  vnmsac.vv, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_VV_OP_WITH_INIT_rd25( 112,  vnmsac.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_WITH_INIT_126( 113,  vnmsac.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_WITH_INIT_rd26( 114,  vnmsac.vv, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_VV_OP_WITH_INIT_127( 115,  vnmsac.vv, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_VV_OP_WITH_INIT_rd27( 116,  vnmsac.vv, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_VV_OP_WITH_INIT_128( 117,  vnmsac.vv, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_VV_OP_WITH_INIT_rd28( 118,  vnmsac.vv, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_VV_OP_WITH_INIT_129( 119,  vnmsac.vv, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_VV_OP_WITH_INIT_rd29( 120,  vnmsac.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT_130( 121,  vnmsac.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT_rd30( 122,  vnmsac.vv, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_VV_OP_WITH_INIT_131( 123,  vnmsac.vv, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_VV_OP_WITH_INIT_rd31( 124,  vnmsac.vv, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_VV_OP_WITH_INIT_12( 125,  vnmsac.vv, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_VV_OP_WITH_INIT_rd1( 126,  vnmsac.vv, rd_data_vv+992, rs2_data+992, rs1_data+992)
  TEST_VV_OP_WITH_INIT_13( 127,  vnmsac.vv, rd_data_vv+992, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VX_OP_RV( 128,  vnmsac.vx, rd_data_vx+0, 0xfffffffffffffffe, rs1_data+0)
  TEST_VX_OP_RV( 129,  vnmsac.vx, rd_data_vx+32, 0xfffffffffffffffe, rs1_data+32)
  TEST_VX_OP_RV( 130,  vnmsac.vx, rd_data_vx+64, 0xfffffffffffffffe, rs1_data+64)
  TEST_VX_OP_RV( 131,  vnmsac.vx, rd_data_vx+96, 0xfffffffffffffffe, rs1_data+96)
  TEST_VX_OP_RV( 132,  vnmsac.vx, rd_data_vx+128, 0xfffffffffffffffe, rs1_data+128)
  TEST_VX_OP_RV( 133,  vnmsac.vx, rd_data_vx+160, 0xfffffffffffffffe, rs1_data+160)
  TEST_VX_OP_RV( 134,  vnmsac.vx, rd_data_vx+192, 0xfffffffffffffffe, rs1_data+192)
  TEST_VX_OP_RV( 135,  vnmsac.vx, rd_data_vx+224, 0xfffffffffffffffe, rs1_data+224)
  TEST_VX_OP_RV( 136,  vnmsac.vx, rd_data_vx+256, 0xfffffffffffffffe, rs1_data+256)
  TEST_VX_OP_RV( 137,  vnmsac.vx, rd_data_vx+288, 0xfffffffffffffffe, rs1_data+288)
  TEST_VX_OP_RV( 138,  vnmsac.vx, rd_data_vx+320, 0xfffffffffffffffe, rs1_data+320)
  TEST_VX_OP_RV( 139,  vnmsac.vx, rd_data_vx+352, 0xfffffffffffffffe, rs1_data+352)
  TEST_VX_OP_RV( 140,  vnmsac.vx, rd_data_vx+384, 0xfffffffffffffffe, rs1_data+384)
  TEST_VX_OP_RV( 141,  vnmsac.vx, rd_data_vx+416, 0xfffffffffffffffe, rs1_data+416)
  TEST_VX_OP_RV( 142,  vnmsac.vx, rd_data_vx+448, 0xfffffffffffffffe, rs1_data+448)
  TEST_VX_OP_RV( 143,  vnmsac.vx, rd_data_vx+480, 0xfffffffffffffffe, rs1_data+480)
  TEST_VX_OP_RV( 144,  vnmsac.vx, rd_data_vx+512, 0xfffffffffffffffe, rs1_data+512)
  TEST_VX_OP_RV( 145,  vnmsac.vx, rd_data_vx+544, 0xfffffffffffffffe, rs1_data+544)
  TEST_VX_OP_RV( 146,  vnmsac.vx, rd_data_vx+576, 0xfffffffffffffffe, rs1_data+576)
  TEST_VX_OP_RV( 147,  vnmsac.vx, rd_data_vx+608, 0xfffffffffffffffe, rs1_data+608)
  TEST_VX_OP_RV( 148,  vnmsac.vx, rd_data_vx+640, 0xfffffffffffffffe, rs1_data+640)
  TEST_VX_OP_RV( 149,  vnmsac.vx, rd_data_vx+672, 0xfffffffffffffffe, rs1_data+672)
  TEST_VX_OP_RV( 150,  vnmsac.vx, rd_data_vx+704, 0xfffffffffffffffe, rs1_data+704)
  TEST_VX_OP_RV( 151,  vnmsac.vx, rd_data_vx+736, 0xfffffffffffffffe, rs1_data+736)
  TEST_VX_OP_RV( 152,  vnmsac.vx, rd_data_vx+768, 0xfffffffffffffffe, rs1_data+768)
  TEST_VX_OP_RV( 153,  vnmsac.vx, rd_data_vx+800, 0xfffffffffffffffe, rs1_data+800)
  TEST_VX_OP_RV( 154,  vnmsac.vx, rd_data_vx+832, 0xfffffffffffffffe, rs1_data+832)
  TEST_VX_OP_RV( 155,  vnmsac.vx, rd_data_vx+864, 0xfffffffffffffffe, rs1_data+864)
  TEST_VX_OP_RV( 156,  vnmsac.vx, rd_data_vx+896, 0xfffffffffffffffe, rs1_data+896)
  TEST_VX_OP_RV( 157,  vnmsac.vx, rd_data_vx+928, 0xfffffffffffffffe, rs1_data+928)
  TEST_VX_OP_RV( 158,  vnmsac.vx, rd_data_vx+960, 0xfffffffffffffffe, rs1_data+960)
  TEST_VX_OP_RV( 159,  vnmsac.vx, rd_data_vx+992, 0xfffffffffffffffe, rs1_data+992)
  TEST_VX_OP_RV( 160,  vnmsac.vx, rd_data_vx+1024, 0xfffffffffffffffe, rs1_data+1024)
  TEST_VX_OP_RV( 161,  vnmsac.vx, rd_data_vx+1056, 0xfffffffffffffffe, rs1_data+1056)
  TEST_VX_OP_RV( 162,  vnmsac.vx, rd_data_vx+1088, 0xfffffffffffffffe, rs1_data+1088)
  TEST_VX_OP_RV( 163,  vnmsac.vx, rd_data_vx+1120, 0xfffffffffffffffe, rs1_data+1120)
  TEST_VX_OP_RV( 164,  vnmsac.vx, rd_data_vx+1152, 0xfffffffffffffffe, rs1_data+1152)
  TEST_VX_OP_RV( 165,  vnmsac.vx, rd_data_vx+1184, 0xfffffffffffffffe, rs1_data+1184)
  TEST_VX_OP_RV( 166,  vnmsac.vx, rd_data_vx+1216, 0xfffffffffffffffe, rs1_data+1216)
  TEST_VX_OP_RV( 167,  vnmsac.vx, rd_data_vx+1248, 0xfffffffffffffffe, rs1_data+1248)
  TEST_VX_OP_RV( 168,  vnmsac.vx, rd_data_vx+1280, 0xfffffffffffffffe, rs1_data+1280)
  TEST_VX_OP_RV( 169,  vnmsac.vx, rd_data_vx+1312, 0xfffffffffffffffe, rs1_data+1312)
  TEST_VX_OP_RV( 170,  vnmsac.vx, rd_data_vx+1344, 0xfffffffffffffffe, rs1_data+1344)
  TEST_VX_OP_RV( 171,  vnmsac.vx, rd_data_vx+1376, 0xfffffffffffffffe, rs1_data+1376)
  TEST_VX_OP_RV( 172,  vnmsac.vx, rd_data_vx+1408, 0xfffffffffffffffe, rs1_data+1408)
  TEST_VX_OP_RV( 173,  vnmsac.vx, rd_data_vx+1440, 0xfffffffffffffffe, rs1_data+1440)
  TEST_VX_OP_RV( 174,  vnmsac.vx, rd_data_vx+1472, 0xfffffffffffffffe, rs1_data+1472)
  TEST_VX_OP_RV( 175,  vnmsac.vx, rd_data_vx+1504, 0xfffffffffffffffe, rs1_data+1504)
  TEST_VX_OP_RV( 176,  vnmsac.vx, rd_data_vx+1536, 0xfffffffffffffffe, rs1_data+1536)
  TEST_VX_OP_RV( 177,  vnmsac.vx, rd_data_vx+1568, 0xfffffffffffffffe, rs1_data+1568)
  TEST_VX_OP_RV( 178,  vnmsac.vx, rd_data_vx+1600, 0xfffffffffffffffe, rs1_data+1600)
  TEST_VX_OP_RV( 179,  vnmsac.vx, rd_data_vx+1632, 0xfffffffffffffffe, rs1_data+1632)
  TEST_VX_OP_RV( 180,  vnmsac.vx, rd_data_vx+1664, 0xfffffffffffffffe, rs1_data+1664)
  TEST_VX_OP_RV( 181,  vnmsac.vx, rd_data_vx+1696, 0xfffffffffffffffe, rs1_data+1696)
  TEST_VX_OP_RV( 182,  vnmsac.vx, rd_data_vx+1728, 0xfffffffffffffffe, rs1_data+1728)
  TEST_VX_OP_RV( 183,  vnmsac.vx, rd_data_vx+1760, 0xfffffffffffffffe, rs1_data+1760)
  TEST_VX_OP_RV( 184,  vnmsac.vx, rd_data_vx+1792, 0xfffffffffffffffe, rs1_data+1792)
  TEST_VX_OP_RV( 185,  vnmsac.vx, rd_data_vx+1824, 0xfffffffffffffffe, rs1_data+1824)
  TEST_VX_OP_RV( 186,  vnmsac.vx, rd_data_vx+1856, 0xfffffffffffffffe, rs1_data+1856)
  TEST_VX_OP_RV( 187,  vnmsac.vx, rd_data_vx+1888, 0xfffffffffffffffe, rs1_data+1888)
  TEST_VX_OP_RV( 188,  vnmsac.vx, rd_data_vx+1920, 0xfffffffffffffffe, rs1_data+1920)
  TEST_VX_OP_RV( 189,  vnmsac.vx, rd_data_vx+1952, 0xfffffffffffffffe, rs1_data+1952)
  TEST_VX_OP_RV( 190,  vnmsac.vx, rd_data_vx+1984, 0xfffffffffffffffe, rs1_data+1984)
  TEST_VX_OP_RV( 191,  vnmsac.vx, rd_data_vx+2016, 0xfffffffffffffffe, rs1_data+2016)
  TEST_VX_OP_RV( 192,  vnmsac.vx, rd_data_vx+2048, 0xfffffffffffffffe, rs1_data+2048)
  TEST_VX_OP_RV( 193,  vnmsac.vx, rd_data_vx+2080, 0xfffffffffffffffe, rs1_data+2080)
  TEST_VX_OP_RV( 194,  vnmsac.vx, rd_data_vx+2112, 0xfffffffffffffffe, rs1_data+2112)
  TEST_VX_OP_RV( 195,  vnmsac.vx, rd_data_vx+2144, 0xfffffffffffffffe, rs1_data+2144)
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
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3edc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d962a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x102e1ffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d864a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x110e3ffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x64da64a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf12e3ffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3efd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d964aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x102e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a664
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d8459e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc3032ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a661
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x223f510e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fba00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a663
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9fbdf2e3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x668358fc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x834c2bc6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66831ca5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112eb8ab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da6491
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112ab6e9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da6496
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x6683954f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x223f510e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe1bbac58
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55728441
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x14eedf8b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0ccb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a755ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3fff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66daad12
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22962066
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa08a68f3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1184d2fe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112df795
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11841dfa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112d4291
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dea2c2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912d9d11
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d6db96
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912f97ed
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d7909a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66831ca5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d9f80e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839553
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d97de
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d97e0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d8faa0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839559
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc30ab5a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2df6d672
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44617331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da6496
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112b6bed
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da649a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd40cb0e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a663
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x482212be
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d995
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7b5545f0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0cd1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a80ab0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66db6216
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a669
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x77eb75bc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06f0cf5a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11854bab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794eecb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x118600ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7795a3ce
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d62698
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912f97ee
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fb9fc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66831ca5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11850f52
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2da00719
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd40cb10
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4a11ce36
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x44b84288
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf4bc78e1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xef62ed33
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da2853
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3fdf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d62692
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3fe5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d993
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22962066
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x25a92145
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55c9539a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x58dc5479
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a73172
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfa7bf9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112dd361
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd40cb0e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a663
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8fd02739
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x668358fc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0073b5dc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x6682a3f9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x007300d9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11327e0f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6d90cb9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112ab6e4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6db0796
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112b6be9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3edc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3edc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d962a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x102e1ffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d962a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x102e1ffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d864a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x110e3ffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d864a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x110e3ffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x64da64a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf12e3ffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x64da64a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf12e3ffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3efd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3efd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d964aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x102e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d964aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x102e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a664
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a664
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d8459e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d8459e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc3032ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a661
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc3032ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a661
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x223f510e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x223f510e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fba00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a663
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fba00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a663
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9fbdf2e3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x668358fc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9fbdf2e3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x668358fc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x834c2bc6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66831ca5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112eb8ab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112eb8ab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da6491
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112ab6e9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da6491
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112ab6e9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da6496
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x6683954f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da6496
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x6683954f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x223f510e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x223f510e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe1bbac58
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55728441
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe1bbac58
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55728441
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x14eedf8b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0ccb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x14eedf8b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0ccb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a755ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3fff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22962066
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa08a68f3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22962066
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa08a68f3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1184d2fe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112df795
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1184d2fe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112df795
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11841dfa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112d4291
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11841dfa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112d4291
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dea2c2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912d9d11
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dea2c2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912d9d11
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d6db96
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912f97ed
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d6db96
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912f97ed
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d7909a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66831ca5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d7909a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66831ca5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d9f80e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839553
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d9f80e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839553
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d97de
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d97de
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e

rd_data_vx:
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3fdb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da62a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e1ffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d864a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x110e3ffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x64da64a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf12e3ffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e401d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da66aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e5ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dc64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x114e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x68da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x312e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fb9fe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11850f54
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11850f54
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fb9fe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839551
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fb9fe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839551
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fb9fe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839551
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4007
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a663
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd40cb10
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a663
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd40cb10
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a663
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd40cb10
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0cc9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a73176
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0cc9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a73176
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0cc9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d8faa2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112cd5f5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d8faa2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112cd5f5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d8faa2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112cd5f5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dbceb2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112faa05
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dbceb2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112faa05
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dbceb2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11850f52
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11850f52
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a661
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd40cb0e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a661
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd40cb0e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a661
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd40cb0e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0cc7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a73174
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0cc7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a73174
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0cc7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dbceb0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112faa03
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dbceb0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112faa03
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dbceb0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112faa03
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11850f56
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11850f56
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11850f56
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839553
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fba00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839553
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fba00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839553
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fba00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd40cb12
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd40cb12
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd40cb12
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a73178
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0ccb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a73178
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0ccb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a73178
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112cd5f7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d8faa4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112cd5f7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d8faa4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112cd5f7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d8faa4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112faa07
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dbceb4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112faa07
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e

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
    

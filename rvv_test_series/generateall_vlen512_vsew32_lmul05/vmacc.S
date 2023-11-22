#----------------------------------------------------------------------------- 
    # vmacc.S
    #-----------------------------------------------------------------------------
    #
    # Test vmacc instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmacc)
    
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
  TEST_VV_OP_WITH_INIT( 1,  vmacc.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_WITH_INIT( 2,  vmacc.vv, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_VV_OP_WITH_INIT( 3,  vmacc.vv, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_VV_OP_WITH_INIT( 4,  vmacc.vv, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_VV_OP_WITH_INIT( 5,  vmacc.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT( 6,  vmacc.vv, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_VV_OP_WITH_INIT( 7,  vmacc.vv, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_VV_OP_WITH_INIT( 8,  vmacc.vv, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_VV_OP_WITH_INIT( 9,  vmacc.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_WITH_INIT( 10,  vmacc.vv, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_VV_OP_WITH_INIT( 11,  vmacc.vv, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_VV_OP_WITH_INIT( 12,  vmacc.vv, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_VV_OP_WITH_INIT( 13,  vmacc.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT( 14,  vmacc.vv, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_VV_OP_WITH_INIT( 15,  vmacc.vv, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_VV_OP_WITH_INIT( 16,  vmacc.vv, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_VV_OP_WITH_INIT( 17,  vmacc.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_WITH_INIT( 18,  vmacc.vv, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_VV_OP_WITH_INIT( 19,  vmacc.vv, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_VV_OP_WITH_INIT( 20,  vmacc.vv, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_VV_OP_WITH_INIT( 21,  vmacc.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT( 22,  vmacc.vv, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_VV_OP_WITH_INIT( 23,  vmacc.vv, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_VV_OP_WITH_INIT( 24,  vmacc.vv, rd_data_vv+736, rs2_data+736, rs1_data+736)
  TEST_VV_OP_WITH_INIT( 25,  vmacc.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_WITH_INIT( 26,  vmacc.vv, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_VV_OP_WITH_INIT( 27,  vmacc.vv, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_VV_OP_WITH_INIT( 28,  vmacc.vv, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_VV_OP_WITH_INIT( 29,  vmacc.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT( 30,  vmacc.vv, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_VV_OP_WITH_INIT( 31,  vmacc.vv, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_VV_OP_WITH_INIT( 32,  vmacc.vv, rd_data_vv+992, rs2_data+992, rs1_data+992)
  TEST_VV_OP_WITH_INIT( 33,  vmacc.vv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_VV_OP_WITH_INIT( 34,  vmacc.vv, rd_data_vv+1056, rs2_data+1056, rs1_data+1056)
  TEST_VV_OP_WITH_INIT( 35,  vmacc.vv, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_VV_OP_WITH_INIT( 36,  vmacc.vv, rd_data_vv+1120, rs2_data+1120, rs1_data+1120)
  TEST_VV_OP_WITH_INIT( 37,  vmacc.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_WITH_INIT( 38,  vmacc.vv, rd_data_vv+1184, rs2_data+1184, rs1_data+1184)
  TEST_VV_OP_WITH_INIT( 39,  vmacc.vv, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_VV_OP_WITH_INIT( 40,  vmacc.vv, rd_data_vv+1248, rs2_data+1248, rs1_data+1248)
  TEST_VV_OP_WITH_INIT( 41,  vmacc.vv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_VV_OP_WITH_INIT( 42,  vmacc.vv, rd_data_vv+1312, rs2_data+1312, rs1_data+1312)
  TEST_VV_OP_WITH_INIT( 43,  vmacc.vv, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_VV_OP_WITH_INIT( 44,  vmacc.vv, rd_data_vv+1376, rs2_data+1376, rs1_data+1376)
  TEST_VV_OP_WITH_INIT( 45,  vmacc.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_WITH_INIT( 46,  vmacc.vv, rd_data_vv+1440, rs2_data+1440, rs1_data+1440)
  TEST_VV_OP_WITH_INIT( 47,  vmacc.vv, rd_data_vv+1472, rs2_data+1472, rs1_data+1472)
  TEST_VV_OP_WITH_INIT( 48,  vmacc.vv, rd_data_vv+1504, rs2_data+1504, rs1_data+1504)
  TEST_VV_OP_WITH_INIT( 49,  vmacc.vv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_VV_OP_WITH_INIT( 50,  vmacc.vv, rd_data_vv+1568, rs2_data+1568, rs1_data+1568)
  TEST_VV_OP_WITH_INIT( 51,  vmacc.vv, rd_data_vv+1600, rs2_data+1600, rs1_data+1600)
  TEST_VV_OP_WITH_INIT( 52,  vmacc.vv, rd_data_vv+1632, rs2_data+1632, rs1_data+1632)
  TEST_VV_OP_WITH_INIT( 53,  vmacc.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_WITH_INIT( 54,  vmacc.vv, rd_data_vv+1696, rs2_data+1696, rs1_data+1696)
  TEST_VV_OP_WITH_INIT( 55,  vmacc.vv, rd_data_vv+1728, rs2_data+1728, rs1_data+1728)
  TEST_VV_OP_WITH_INIT( 56,  vmacc.vv, rd_data_vv+1760, rs2_data+1760, rs1_data+1760)
  TEST_VV_OP_WITH_INIT( 57,  vmacc.vv, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_VV_OP_WITH_INIT( 58,  vmacc.vv, rd_data_vv+1824, rs2_data+1824, rs1_data+1824)
  TEST_VV_OP_WITH_INIT( 59,  vmacc.vv, rd_data_vv+1856, rs2_data+1856, rs1_data+1856)
  TEST_VV_OP_WITH_INIT( 60,  vmacc.vv, rd_data_vv+1888, rs2_data+1888, rs1_data+1888)
  TEST_VV_OP_WITH_INIT( 61,  vmacc.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_VV_OP_WITH_INIT( 62,  vmacc.vv, rd_data_vv+1952, rs2_data+1952, rs1_data+1952)
  TEST_VV_OP_WITH_INIT( 63,  vmacc.vv, rd_data_vv+1984, rs2_data+1984, rs1_data+1984)
  TEST_VV_OP_WITH_INIT( 64,  vmacc.vv, rd_data_vv+2016, rs2_data+2016, rs1_data+2016)
  TEST_VV_OP_WITH_INIT( 65,  vmacc.vv, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_VV_OP_WITH_INIT( 66,  vmacc.vv, rd_data_vv+2080, rs2_data+2080, rs1_data+2080)
  TEST_VV_OP_WITH_INIT( 67,  vmacc.vv, rd_data_vv+2112, rs2_data+2112, rs1_data+2112)
  TEST_VV_OP_WITH_INIT( 68,  vmacc.vv, rd_data_vv+2144, rs2_data+2144, rs1_data+2144)
  TEST_VV_OP_WITH_INIT_rd1( 69,  vmacc.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_WITH_INIT_12( 70,  vmacc.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_WITH_INIT_rd2( 71,  vmacc.vv, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_VV_OP_WITH_INIT_13( 72,  vmacc.vv, rd_data_vv+32, rs2_data+32, rs1_data+32)
  TEST_VV_OP_WITH_INIT_rd3( 73,  vmacc.vv, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_VV_OP_WITH_INIT_14( 74,  vmacc.vv, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_VV_OP_WITH_INIT_rd4( 75,  vmacc.vv, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_VV_OP_WITH_INIT_15( 76,  vmacc.vv, rd_data_vv+96, rs2_data+96, rs1_data+96)
  TEST_VV_OP_WITH_INIT_rd5( 77,  vmacc.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT_16( 78,  vmacc.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT_rd6( 79,  vmacc.vv, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_VV_OP_WITH_INIT_17( 80,  vmacc.vv, rd_data_vv+160, rs2_data+160, rs1_data+160)
  TEST_VV_OP_WITH_INIT_rd7( 81,  vmacc.vv, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_VV_OP_WITH_INIT_rd8( 82,  vmacc.vv, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_VV_OP_WITH_INIT_19( 83,  vmacc.vv, rd_data_vv+224, rs2_data+224, rs1_data+224)
  TEST_VV_OP_WITH_INIT_rd9( 84,  vmacc.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_WITH_INIT_110( 85,  vmacc.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_WITH_INIT_rd10( 86,  vmacc.vv, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_VV_OP_WITH_INIT_111( 87,  vmacc.vv, rd_data_vv+288, rs2_data+288, rs1_data+288)
  TEST_VV_OP_WITH_INIT_rd11( 88,  vmacc.vv, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_VV_OP_WITH_INIT_112( 89,  vmacc.vv, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_VV_OP_WITH_INIT_rd12( 90,  vmacc.vv, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_VV_OP_WITH_INIT_113( 91,  vmacc.vv, rd_data_vv+352, rs2_data+352, rs1_data+352)
  TEST_VV_OP_WITH_INIT_rd13( 92,  vmacc.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT_114( 93,  vmacc.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT_rd14( 94,  vmacc.vv, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_VV_OP_WITH_INIT_115( 95,  vmacc.vv, rd_data_vv+416, rs2_data+416, rs1_data+416)
  TEST_VV_OP_WITH_INIT_rd15( 96,  vmacc.vv, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_VV_OP_WITH_INIT_rd16( 97,  vmacc.vv, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_VV_OP_WITH_INIT_117( 98,  vmacc.vv, rd_data_vv+480, rs2_data+480, rs1_data+480)
  TEST_VV_OP_WITH_INIT_rd17( 99,  vmacc.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_WITH_INIT_118( 100,  vmacc.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_WITH_INIT_rd18( 101,  vmacc.vv, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_VV_OP_WITH_INIT_119( 102,  vmacc.vv, rd_data_vv+544, rs2_data+544, rs1_data+544)
  TEST_VV_OP_WITH_INIT_rd19( 103,  vmacc.vv, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_VV_OP_WITH_INIT_120( 104,  vmacc.vv, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_VV_OP_WITH_INIT_rd20( 105,  vmacc.vv, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_VV_OP_WITH_INIT_121( 106,  vmacc.vv, rd_data_vv+608, rs2_data+608, rs1_data+608)
  TEST_VV_OP_WITH_INIT_rd21( 107,  vmacc.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT_122( 108,  vmacc.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT_rd22( 109,  vmacc.vv, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_VV_OP_WITH_INIT_123( 110,  vmacc.vv, rd_data_vv+672, rs2_data+672, rs1_data+672)
  TEST_VV_OP_WITH_INIT_rd23( 111,  vmacc.vv, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_VV_OP_WITH_INIT_rd25( 112,  vmacc.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_WITH_INIT_126( 113,  vmacc.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_WITH_INIT_rd26( 114,  vmacc.vv, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_VV_OP_WITH_INIT_127( 115,  vmacc.vv, rd_data_vv+800, rs2_data+800, rs1_data+800)
  TEST_VV_OP_WITH_INIT_rd27( 116,  vmacc.vv, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_VV_OP_WITH_INIT_128( 117,  vmacc.vv, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_VV_OP_WITH_INIT_rd28( 118,  vmacc.vv, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_VV_OP_WITH_INIT_129( 119,  vmacc.vv, rd_data_vv+864, rs2_data+864, rs1_data+864)
  TEST_VV_OP_WITH_INIT_rd29( 120,  vmacc.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT_130( 121,  vmacc.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT_rd30( 122,  vmacc.vv, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_VV_OP_WITH_INIT_131( 123,  vmacc.vv, rd_data_vv+928, rs2_data+928, rs1_data+928)
  TEST_VV_OP_WITH_INIT_rd31( 124,  vmacc.vv, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_VV_OP_WITH_INIT_12( 125,  vmacc.vv, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_VV_OP_WITH_INIT_rd1( 126,  vmacc.vv, rd_data_vv+992, rs2_data+992, rs1_data+992)
  TEST_VV_OP_WITH_INIT_13( 127,  vmacc.vv, rd_data_vv+992, rs2_data+992, rs1_data+992)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VX_OP_RV( 128,  vmacc.vx, rd_data_vx+0, 0xfffffffffffffffe, rs1_data+0)
  TEST_VX_OP_RV( 129,  vmacc.vx, rd_data_vx+32, 0xfffffffffffffffe, rs1_data+32)
  TEST_VX_OP_RV( 130,  vmacc.vx, rd_data_vx+64, 0xfffffffffffffffe, rs1_data+64)
  TEST_VX_OP_RV( 131,  vmacc.vx, rd_data_vx+96, 0xfffffffffffffffe, rs1_data+96)
  TEST_VX_OP_RV( 132,  vmacc.vx, rd_data_vx+128, 0xfffffffffffffffe, rs1_data+128)
  TEST_VX_OP_RV( 133,  vmacc.vx, rd_data_vx+160, 0xfffffffffffffffe, rs1_data+160)
  TEST_VX_OP_RV( 134,  vmacc.vx, rd_data_vx+192, 0xfffffffffffffffe, rs1_data+192)
  TEST_VX_OP_RV( 135,  vmacc.vx, rd_data_vx+224, 0xfffffffffffffffe, rs1_data+224)
  TEST_VX_OP_RV( 136,  vmacc.vx, rd_data_vx+256, 0xfffffffffffffffe, rs1_data+256)
  TEST_VX_OP_RV( 137,  vmacc.vx, rd_data_vx+288, 0xfffffffffffffffe, rs1_data+288)
  TEST_VX_OP_RV( 138,  vmacc.vx, rd_data_vx+320, 0xfffffffffffffffe, rs1_data+320)
  TEST_VX_OP_RV( 139,  vmacc.vx, rd_data_vx+352, 0xfffffffffffffffe, rs1_data+352)
  TEST_VX_OP_RV( 140,  vmacc.vx, rd_data_vx+384, 0xfffffffffffffffe, rs1_data+384)
  TEST_VX_OP_RV( 141,  vmacc.vx, rd_data_vx+416, 0xfffffffffffffffe, rs1_data+416)
  TEST_VX_OP_RV( 142,  vmacc.vx, rd_data_vx+448, 0xfffffffffffffffe, rs1_data+448)
  TEST_VX_OP_RV( 143,  vmacc.vx, rd_data_vx+480, 0xfffffffffffffffe, rs1_data+480)
  TEST_VX_OP_RV( 144,  vmacc.vx, rd_data_vx+512, 0xfffffffffffffffe, rs1_data+512)
  TEST_VX_OP_RV( 145,  vmacc.vx, rd_data_vx+544, 0xfffffffffffffffe, rs1_data+544)
  TEST_VX_OP_RV( 146,  vmacc.vx, rd_data_vx+576, 0xfffffffffffffffe, rs1_data+576)
  TEST_VX_OP_RV( 147,  vmacc.vx, rd_data_vx+608, 0xfffffffffffffffe, rs1_data+608)
  TEST_VX_OP_RV( 148,  vmacc.vx, rd_data_vx+640, 0xfffffffffffffffe, rs1_data+640)
  TEST_VX_OP_RV( 149,  vmacc.vx, rd_data_vx+672, 0xfffffffffffffffe, rs1_data+672)
  TEST_VX_OP_RV( 150,  vmacc.vx, rd_data_vx+704, 0xfffffffffffffffe, rs1_data+704)
  TEST_VX_OP_RV( 151,  vmacc.vx, rd_data_vx+736, 0xfffffffffffffffe, rs1_data+736)
  TEST_VX_OP_RV( 152,  vmacc.vx, rd_data_vx+768, 0xfffffffffffffffe, rs1_data+768)
  TEST_VX_OP_RV( 153,  vmacc.vx, rd_data_vx+800, 0xfffffffffffffffe, rs1_data+800)
  TEST_VX_OP_RV( 154,  vmacc.vx, rd_data_vx+832, 0xfffffffffffffffe, rs1_data+832)
  TEST_VX_OP_RV( 155,  vmacc.vx, rd_data_vx+864, 0xfffffffffffffffe, rs1_data+864)
  TEST_VX_OP_RV( 156,  vmacc.vx, rd_data_vx+896, 0xfffffffffffffffe, rs1_data+896)
  TEST_VX_OP_RV( 157,  vmacc.vx, rd_data_vx+928, 0xfffffffffffffffe, rs1_data+928)
  TEST_VX_OP_RV( 158,  vmacc.vx, rd_data_vx+960, 0xfffffffffffffffe, rs1_data+960)
  TEST_VX_OP_RV( 159,  vmacc.vx, rd_data_vx+992, 0xfffffffffffffffe, rs1_data+992)
  TEST_VX_OP_RV( 160,  vmacc.vx, rd_data_vx+1024, 0xfffffffffffffffe, rs1_data+1024)
  TEST_VX_OP_RV( 161,  vmacc.vx, rd_data_vx+1056, 0xfffffffffffffffe, rs1_data+1056)
  TEST_VX_OP_RV( 162,  vmacc.vx, rd_data_vx+1088, 0xfffffffffffffffe, rs1_data+1088)
  TEST_VX_OP_RV( 163,  vmacc.vx, rd_data_vx+1120, 0xfffffffffffffffe, rs1_data+1120)
  TEST_VX_OP_RV( 164,  vmacc.vx, rd_data_vx+1152, 0xfffffffffffffffe, rs1_data+1152)
  TEST_VX_OP_RV( 165,  vmacc.vx, rd_data_vx+1184, 0xfffffffffffffffe, rs1_data+1184)
  TEST_VX_OP_RV( 166,  vmacc.vx, rd_data_vx+1216, 0xfffffffffffffffe, rs1_data+1216)
  TEST_VX_OP_RV( 167,  vmacc.vx, rd_data_vx+1248, 0xfffffffffffffffe, rs1_data+1248)
  TEST_VX_OP_RV( 168,  vmacc.vx, rd_data_vx+1280, 0xfffffffffffffffe, rs1_data+1280)
  TEST_VX_OP_RV( 169,  vmacc.vx, rd_data_vx+1312, 0xfffffffffffffffe, rs1_data+1312)
  TEST_VX_OP_RV( 170,  vmacc.vx, rd_data_vx+1344, 0xfffffffffffffffe, rs1_data+1344)
  TEST_VX_OP_RV( 171,  vmacc.vx, rd_data_vx+1376, 0xfffffffffffffffe, rs1_data+1376)
  TEST_VX_OP_RV( 172,  vmacc.vx, rd_data_vx+1408, 0xfffffffffffffffe, rs1_data+1408)
  TEST_VX_OP_RV( 173,  vmacc.vx, rd_data_vx+1440, 0xfffffffffffffffe, rs1_data+1440)
  TEST_VX_OP_RV( 174,  vmacc.vx, rd_data_vx+1472, 0xfffffffffffffffe, rs1_data+1472)
  TEST_VX_OP_RV( 175,  vmacc.vx, rd_data_vx+1504, 0xfffffffffffffffe, rs1_data+1504)
  TEST_VX_OP_RV( 176,  vmacc.vx, rd_data_vx+1536, 0xfffffffffffffffe, rs1_data+1536)
  TEST_VX_OP_RV( 177,  vmacc.vx, rd_data_vx+1568, 0xfffffffffffffffe, rs1_data+1568)
  TEST_VX_OP_RV( 178,  vmacc.vx, rd_data_vx+1600, 0xfffffffffffffffe, rs1_data+1600)
  TEST_VX_OP_RV( 179,  vmacc.vx, rd_data_vx+1632, 0xfffffffffffffffe, rs1_data+1632)
  TEST_VX_OP_RV( 180,  vmacc.vx, rd_data_vx+1664, 0xfffffffffffffffe, rs1_data+1664)
  TEST_VX_OP_RV( 181,  vmacc.vx, rd_data_vx+1696, 0xfffffffffffffffe, rs1_data+1696)
  TEST_VX_OP_RV( 182,  vmacc.vx, rd_data_vx+1728, 0xfffffffffffffffe, rs1_data+1728)
  TEST_VX_OP_RV( 183,  vmacc.vx, rd_data_vx+1760, 0xfffffffffffffffe, rs1_data+1760)
  TEST_VX_OP_RV( 184,  vmacc.vx, rd_data_vx+1792, 0xfffffffffffffffe, rs1_data+1792)
  TEST_VX_OP_RV( 185,  vmacc.vx, rd_data_vx+1824, 0xfffffffffffffffe, rs1_data+1824)
  TEST_VX_OP_RV( 186,  vmacc.vx, rd_data_vx+1856, 0xfffffffffffffffe, rs1_data+1856)
  TEST_VX_OP_RV( 187,  vmacc.vx, rd_data_vx+1888, 0xfffffffffffffffe, rs1_data+1888)
  TEST_VX_OP_RV( 188,  vmacc.vx, rd_data_vx+1920, 0xfffffffffffffffe, rs1_data+1920)
  TEST_VX_OP_RV( 189,  vmacc.vx, rd_data_vx+1952, 0xfffffffffffffffe, rs1_data+1952)
  TEST_VX_OP_RV( 190,  vmacc.vx, rd_data_vx+1984, 0xfffffffffffffffe, rs1_data+1984)
  TEST_VX_OP_RV( 191,  vmacc.vx, rd_data_vx+2016, 0xfffffffffffffffe, rs1_data+2016)
  TEST_VX_OP_RV( 192,  vmacc.vx, rd_data_vx+2048, 0xfffffffffffffffe, rs1_data+2048)
  TEST_VX_OP_RV( 193,  vmacc.vx, rd_data_vx+2080, 0xfffffffffffffffe, rs1_data+2080)
  TEST_VX_OP_RV( 194,  vmacc.vx, rd_data_vx+2112, 0xfffffffffffffffe, rs1_data+2112)
  TEST_VX_OP_RV( 195,  vmacc.vx, rd_data_vx+2144, 0xfffffffffffffffe, rs1_data+2144)
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
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e411e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66db66ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x122e5ffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dc64ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x114e3ffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x68da64ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x312e3ffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e40fd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66db64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x122e3ffd
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
.word	0x66da64b3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d996
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dc83b6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x118496a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x001d2eec
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11850f54
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d997
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2df6d671
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd926fe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4a689d8e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd96355
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
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112dc74f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64c3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1131c911
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64be
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x001d2eec
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xebf91cfc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcce9fbb9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb8c5e9c9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4461732f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d73a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da1c42
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d995
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xab1ea8ee
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x81d21707
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2ff656
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e8865
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc30ab5a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112f3d69
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d62692
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912ee2e9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66ddedbe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912ce80d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dd38ba
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd96355
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dad146
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a73176
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a73174
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dbceb4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11841dfa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x6683954d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9fbdf2e2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0cc9
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
.word	0x66da64be
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1131140d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ba
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0073fe46
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d997
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8592b696
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x525f8364
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44617329
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0cbea4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d9673e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d991
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55c95398
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1b6bb0a0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2f7da9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7912f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2ec8a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac6dc2c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dea2bc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912ce80c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11850f58
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd96355
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fba02
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf4bc78e1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0073fe44
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd84ab1c4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x88fc86cc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2da00719
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xde51dc21
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3fff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66daa101
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e401b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dea2c2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4015
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a667
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xab1ea8ee
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfcb35eb5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x77eb75ba
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc9802b81
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d97e2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44620401
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112eac99
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0073fe46
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d997
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x3de4a21b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd926fe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd411378
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd9dc01
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcd41c87b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112a01eb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6dbbc9b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1131c916
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe6d9c1be
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x11311411
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e411e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e411e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66db66ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x122e5ffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66db66ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x122e5ffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dc64ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x114e3ffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dc64ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x114e3ffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x68da64ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x312e3ffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x68da64ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x312e3ffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e40fd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e40fd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66db64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x122e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66db64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x122e3ffd
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
.word	0x66da64b3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d996
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d996
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dc83b6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dc83b6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x118496a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x118496a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x001d2eec
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64b3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x001d2eec
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11850f54
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d997
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11850f54
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d997
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2df6d671
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd926fe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x2df6d671
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd926fe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4a689d8e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd96355
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
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112dc74f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112dc74f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64c3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1131c911
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64c3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x1131c911
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64be
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64be
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x001d2eec
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x001d2eec
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xebf91cfc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcce9fbb9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xebf91cfc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcce9fbb9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb8c5e9c9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4461732f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb8c5e9c9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4461732f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d73a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xab1ea8ee
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x81d21707
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xab1ea8ee
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x81d21707
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2ff656
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e8865
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2ff656
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e8865
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc30ab5a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112f3d69
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc30ab5a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112f3d69
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d62692
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912ee2e9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d62692
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912ee2e9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66ddedbe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912ce80d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66ddedbe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912ce80d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dd38ba
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd96355
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dd38ba
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd96355
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dad146
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dad146
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a73176
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33a73176
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e

rd_data_vx:
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e401f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da66ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e5fff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66dc64ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x114e3fff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x68da64ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x312e3fff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3fdd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da62aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e1ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d864aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x110e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x64da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf12e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11850f56
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a4
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
.word	0xbbd8eaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d997
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0073fe44
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d997
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0073fe44
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d997
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0073fe44
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44617331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d97de
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44617331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d97de
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44617331
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
.word	0x112faa05
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
.word	0x112e3ff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fba02
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbc2fba02
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839555
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
.word	0x66da64a2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da64a2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0073fe46
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0073fe46
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0073fe46
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44617333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d97e0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44617333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d97e0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44617333
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
.word	0x112cd5f7
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
.word	0x11850f54
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da649e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66da649e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0073fe42
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d995
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0073fe42
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d995
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0073fe42
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d995
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d97dc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4461732f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d97dc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4461732f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9a0d97dc
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
.word	0x66dbceb0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112cd5f3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66d8faa0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112cd5f3
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
    

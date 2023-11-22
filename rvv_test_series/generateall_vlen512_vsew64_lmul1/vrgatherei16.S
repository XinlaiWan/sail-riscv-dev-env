#----------------------------------------------------------------------------- 
    # vrgatherei16.S
    #-----------------------------------------------------------------------------
    #
    # Test vrgatherei16 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vrgatherei16)
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_VV_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v8, (x7); \
            inst v24, v16, v8, v0.t; \
        )
#define TEST_VX_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            li x1, MASK_XLEN(val1); \
            inst v16, v8, x1, v0.t; ; \
        )
#define TEST_VI_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            inst v16, v8, SEXT_IMM(val1), v0.t; ; \
        )
#define TEST_VV_OP_12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v2, (x7); \
            inst v24, v16, v2, v0.t;  \
        )
#define TEST_VV_OP_13( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v3, (x7); \
            inst v24, v16, v3, v0.t;  \
        )
#define TEST_VV_OP_14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v4, (x7); \
            inst v24, v16, v4, v0.t;  \
        )
#define TEST_VV_OP_15( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v5, (x7); \
            inst v24, v16, v5, v0.t;  \
        )
#define TEST_VV_OP_16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v6, (x7); \
            inst v24, v16, v6, v0.t;  \
        )
#define TEST_VV_OP_17( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v7, (x7); \
            inst v24, v16, v7, v0.t;  \
        )
#define TEST_VV_OP_19( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v9, (x7); \
            inst v24, v16, v9, v0.t;  \
        )
#define TEST_VV_OP_110( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v10, (x7); \
            inst v24, v16, v10, v0.t;  \
        )
#define TEST_VV_OP_111( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v11, (x7); \
            inst v24, v16, v11, v0.t;  \
        )
#define TEST_VV_OP_112( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v12, (x7); \
            inst v24, v16, v12, v0.t;  \
        )
#define TEST_VV_OP_113( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v13, (x7); \
            inst v24, v16, v13, v0.t;  \
        )
#define TEST_VV_OP_114( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v14, (x7); \
            inst v24, v16, v14, v0.t;  \
        )
#define TEST_VV_OP_115( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v15, (x7); \
            inst v24, v16, v15, v0.t;  \
        )
#define TEST_VV_OP_117( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v17, (x7); \
            inst v24, v16, v17, v0.t;  \
        )
#define TEST_VV_OP_118( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v18, (x7); \
            inst v24, v16, v18, v0.t;  \
        )
#define TEST_VV_OP_119( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v19, (x7); \
            inst v24, v16, v19, v0.t;  \
        )
#define TEST_VV_OP_120( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v20, (x7); \
            inst v24, v16, v20, v0.t;  \
        )
#define TEST_VV_OP_121( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v21, (x7); \
            inst v24, v16, v21, v0.t;  \
        )
#define TEST_VV_OP_122( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v22, (x7); \
            inst v24, v16, v22, v0.t;  \
        )
#define TEST_VV_OP_123( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v23, (x7); \
            inst v24, v16, v23, v0.t;  \
        )
#define TEST_VV_OP_125( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v25, (x7); \
            inst v24, v16, v25, v0.t;  \
        )
#define TEST_VV_OP_126( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v26, (x7); \
            inst v24, v16, v26, v0.t;  \
        )
#define TEST_VV_OP_127( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v27, (x7); \
            inst v24, v16, v27, v0.t;  \
        )
#define TEST_VV_OP_128( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v28, (x7); \
            inst v24, v16, v28, v0.t;  \
        )
#define TEST_VV_OP_129( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v29, (x7); \
            inst v24, v16, v29, v0.t;  \
        )
#define TEST_VV_OP_130( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v30, (x7); \
            inst v24, v16, v30, v0.t;  \
        )
#define TEST_VV_OP_131( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle64.v v31, (x7); \
            inst v24, v16, v31, v0.t;  \
        )
#define TEST_VV_OP_rd1( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v1, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v1, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v1, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd2( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v2, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v2, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v2, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd3( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v3, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v3, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v3, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd4( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v4, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v4, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v4, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd5( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v5, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v5, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v5, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd6( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v6, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v6, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v6, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd7( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v7, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v7, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v7, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd9( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v9, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v9, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v9, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd10( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v10, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v10, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v10, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd11( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v11, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v11, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v11, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v12, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v12, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v12, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd13( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v13, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v13, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v13, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v14, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v14, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd15( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v15, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v15, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v15, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd17( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v17, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v17, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v17, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd18( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v18, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v18, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v18, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd19( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v19, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v19, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v19, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd20( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v20, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v20, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v20, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd21( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v21, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v21, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v21, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd22( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v22, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v22, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v22, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd23( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v23, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v23, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v23, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd25( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v25, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v25, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v25, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd26( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v26, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v26, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v26, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd27( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v27, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v27, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v27, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd28( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v28, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v28, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v28, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd29( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v29, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v29, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v29, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd30( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v30, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v30, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v30, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd31( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v31, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v31, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle64.v v8, (x7); \
                inst v31, v16, v8, v0.t; \
            ) 
#define TEST_VV_OP_rd8( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v8, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v24, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v8, v24, v16, v0.t; ; \
        )
#define TEST_VV_OP_rd16( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v24, (x7); \
            la x7, val1; \
            vle64.v v8, (x7); \
            inst v16, v24, v8, v0.t; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VV_OP( 1,  vrgatherei16.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP( 2,  vrgatherei16.vv, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_VV_OP( 3,  vrgatherei16.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP( 4,  vrgatherei16.vv, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_VV_OP( 5,  vrgatherei16.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP( 6,  vrgatherei16.vv, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_VV_OP( 7,  vrgatherei16.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP( 8,  vrgatherei16.vv, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_VV_OP( 9,  vrgatherei16.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP( 10,  vrgatherei16.vv, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_VV_OP( 11,  vrgatherei16.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP( 12,  vrgatherei16.vv, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_VV_OP( 13,  vrgatherei16.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP( 14,  vrgatherei16.vv, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_VV_OP( 15,  vrgatherei16.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP( 16,  vrgatherei16.vv, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_VV_OP( 17,  vrgatherei16.vv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_VV_OP( 18,  vrgatherei16.vv, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_VV_OP( 19,  vrgatherei16.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP( 20,  vrgatherei16.vv, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_VV_OP( 21,  vrgatherei16.vv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_VV_OP( 22,  vrgatherei16.vv, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_VV_OP( 23,  vrgatherei16.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP( 24,  vrgatherei16.vv, rd_data_vv+1472, rs2_data+1472, rs1_data+1472)
  TEST_VV_OP( 25,  vrgatherei16.vv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_VV_OP_rd1( 26,  vrgatherei16.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_12( 27,  vrgatherei16.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_rd2( 28,  vrgatherei16.vv, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_VV_OP_13( 29,  vrgatherei16.vv, rd_data_vv+64, rs2_data+64, rs1_data+64)
  TEST_VV_OP_rd3( 30,  vrgatherei16.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_14( 31,  vrgatherei16.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_rd4( 32,  vrgatherei16.vv, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_VV_OP_15( 33,  vrgatherei16.vv, rd_data_vv+192, rs2_data+192, rs1_data+192)
  TEST_VV_OP_rd5( 34,  vrgatherei16.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_16( 35,  vrgatherei16.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_rd6( 36,  vrgatherei16.vv, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_VV_OP_17( 37,  vrgatherei16.vv, rd_data_vv+320, rs2_data+320, rs1_data+320)
  TEST_VV_OP_rd7( 38,  vrgatherei16.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_19( 39,  vrgatherei16.vv, rd_data_vv+448, rs2_data+448, rs1_data+448)
  TEST_VV_OP_rd9( 40,  vrgatherei16.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_110( 41,  vrgatherei16.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_rd10( 42,  vrgatherei16.vv, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_VV_OP_111( 43,  vrgatherei16.vv, rd_data_vv+576, rs2_data+576, rs1_data+576)
  TEST_VV_OP_rd11( 44,  vrgatherei16.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_112( 45,  vrgatherei16.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_rd12( 46,  vrgatherei16.vv, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_VV_OP_113( 47,  vrgatherei16.vv, rd_data_vv+704, rs2_data+704, rs1_data+704)
  TEST_VV_OP_rd13( 48,  vrgatherei16.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_114( 49,  vrgatherei16.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_rd14( 50,  vrgatherei16.vv, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_VV_OP_115( 51,  vrgatherei16.vv, rd_data_vv+832, rs2_data+832, rs1_data+832)
  TEST_VV_OP_rd15( 52,  vrgatherei16.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_117( 53,  vrgatherei16.vv, rd_data_vv+960, rs2_data+960, rs1_data+960)
  TEST_VV_OP_rd17( 54,  vrgatherei16.vv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_VV_OP_118( 55,  vrgatherei16.vv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_VV_OP_rd18( 56,  vrgatherei16.vv, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_VV_OP_119( 57,  vrgatherei16.vv, rd_data_vv+1088, rs2_data+1088, rs1_data+1088)
  TEST_VV_OP_rd19( 58,  vrgatherei16.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_120( 59,  vrgatherei16.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_rd20( 60,  vrgatherei16.vv, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_VV_OP_121( 61,  vrgatherei16.vv, rd_data_vv+1216, rs2_data+1216, rs1_data+1216)
  TEST_VV_OP_rd21( 62,  vrgatherei16.vv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_VV_OP_122( 63,  vrgatherei16.vv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_VV_OP_rd22( 64,  vrgatherei16.vv, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_VV_OP_123( 65,  vrgatherei16.vv, rd_data_vv+1344, rs2_data+1344, rs1_data+1344)
  TEST_VV_OP_rd23( 66,  vrgatherei16.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_125( 67,  vrgatherei16.vv, rd_data_vv+1472, rs2_data+1472, rs1_data+1472)
  TEST_VV_OP_rd25( 68,  vrgatherei16.vv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_VV_OP_126( 69,  vrgatherei16.vv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
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
.dword	1
.dword	2
.dword	4
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	1431655765
.dword	2147483647
.dword	2147483648
.dword	2863311530
.dword	4294967294
.dword	4294967293
.dword	4294967291
.dword	4294967287
.dword	4294967279
.dword	4294967263
.dword	4294967231
.dword	4294967167
.dword	4294967039
.dword	4294966783
.dword	4294966271
.dword	4294965247
.dword	4294963199
.dword	4294959103
.dword	4294950911
.dword	4294934527
.dword	4294901759
.dword	4294836223
.dword	4294705151
.dword	4294443007
.dword	4293918719
.dword	4292870143
.dword	4290772991
.dword	4286578687
.dword	4278190079
.dword	4261412863
.dword	4227858431
.dword	4160749567
.dword	4026531839
.dword	3758096383
.dword	3221225471
.dword	-2147483648
.dword	-1431655766
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	1
.dword	2
.dword	4
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	1431655765
.dword	2147483647
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	4611686018427387904
.dword	-922337203685477580
.dword	-2147483649
.dword	-4294967297
.dword	-8589934593
.dword	-17179869185
.dword	-34359738369
.dword	-68719476737
.dword	-137438953473
.dword	-274877906945
.dword	-549755813889
.dword	-1099511627777
.dword	-2199023255553
.dword	-4398046511105
.dword	-8796093022209
.dword	-17592186044417
.dword	-35184372088833
.dword	-70368744177665
.dword	-140737488355329
.dword	-281474976710657
.dword	-562949953421313
.dword	-1125899906842625
.dword	-2251799813685249
.dword	-4503599627370497
.dword	-9007199254740993
.dword	-18014398509481985
.dword	-36028797018963969
.dword	-72057594037927937
.dword	-144115188075855873
.dword	-288230376151711745
.dword	-576460752303423489
.dword	-1152921504606846977
.dword	-2305843009213693953
.dword	-4611686018427387905
.dword	9223372036854775807
.dword	6148914691236517205
.dword	-6148914691236517206
.dword	-9223372036854775808

.align 8
rs2_data:
.dword	1
.dword	2
.dword	4
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	1431655765
.dword	2147483647
.dword	2147483648
.dword	2863311530
.dword	4294967294
.dword	4294967293
.dword	4294967291
.dword	4294967287
.dword	4294967279
.dword	4294967263
.dword	4294967231
.dword	4294967167
.dword	4294967039
.dword	4294966783
.dword	4294966271
.dword	4294965247
.dword	4294963199
.dword	4294959103
.dword	4294950911
.dword	4294934527
.dword	4294901759
.dword	4294836223
.dword	4294705151
.dword	4294443007
.dword	4293918719
.dword	4292870143
.dword	4290772991
.dword	4286578687
.dword	4278190079
.dword	4261412863
.dword	4227858431
.dword	4160749567
.dword	4026531839
.dword	3758096383
.dword	3221225471
.dword	-2147483648
.dword	-1431655766
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	1
.dword	2
.dword	4
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	1431655765
.dword	2147483647
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	4611686018427387904
.dword	-922337203685477580
.dword	-2147483649
.dword	-4294967297
.dword	-8589934593
.dword	-17179869185
.dword	-34359738369
.dword	-68719476737
.dword	-137438953473
.dword	-274877906945
.dword	-549755813889
.dword	-1099511627777
.dword	-2199023255553
.dword	-4398046511105
.dword	-8796093022209
.dword	-17592186044417
.dword	-35184372088833
.dword	-70368744177665
.dword	-140737488355329
.dword	-281474976710657
.dword	-562949953421313
.dword	-1125899906842625
.dword	-2251799813685249
.dword	-4503599627370497
.dword	-9007199254740993
.dword	-18014398509481985
.dword	-36028797018963969
.dword	-72057594037927937
.dword	-144115188075855873
.dword	-288230376151711745
.dword	-576460752303423489
.dword	-1152921504606846977
.dword	-2305843009213693953
.dword	-4611686018427387905
.dword	9223372036854775807
.dword	6148914691236517205
.dword	-6148914691236517206
.dword	-9223372036854775808

.align 8
rd_data_vv:
.dword	0x0000000000000002
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000010000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000010000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000001000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000001000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000007fffffff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000200000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000200000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000020000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000020000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000001000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000001000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000100000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000100000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0010000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0010000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x1000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x1000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000002
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000002
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000004
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000010000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000010000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000010000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000010000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000001000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000001000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000001000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000001000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000007fffffff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000007fffffff
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000200000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000200000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000020000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000020000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000020000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000020000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000001000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000001000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000001000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000001000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000100000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000100000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000100000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000100000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0010000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0010000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0010000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0010000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x1000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x1000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x1000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x1000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a

rd_data_vx:

rd_data_vi:
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
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
    

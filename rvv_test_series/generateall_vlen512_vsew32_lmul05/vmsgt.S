#----------------------------------------------------------------------------- 
    # vmsgt.S
    #-----------------------------------------------------------------------------
    #
    # Test vmsgt instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmsgt)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_VVM_OP 
#define TEST_VVM_OP( testnum, inst, result, val1, val2 ) \
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
                inst v24, v8, v16, v0.t;  \
            )
#define TEST_VVM_OP_11( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v1, (x7); \
                inst v24, v8, v1, v0.t;  \
            )
#define TEST_VVM_OP_12( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v2, (x7); \
                inst v24, v8, v2, v0.t;  \
            )
#define TEST_VVM_OP_13( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v3, (x7); \
                inst v24, v8, v3, v0.t;  \
            )
#define TEST_VVM_OP_14( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v4, (x7); \
                inst v24, v8, v4, v0.t;  \
            )
#define TEST_VVM_OP_15( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v5, (x7); \
                inst v24, v8, v5, v0.t;  \
            )
#define TEST_VVM_OP_16( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v6, (x7); \
                inst v24, v8, v6, v0.t;  \
            )
#define TEST_VVM_OP_17( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v7, (x7); \
                inst v24, v8, v7, v0.t;  \
            )
#define TEST_VVM_OP_19( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v9, (x7); \
                inst v24, v8, v9, v0.t;  \
            )
#define TEST_VVM_OP_110( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v10, (x7); \
                inst v24, v8, v10, v0.t;  \
            )
#define TEST_VVM_OP_111( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v11, (x7); \
                inst v24, v8, v11, v0.t;  \
            )
#define TEST_VVM_OP_112( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v12, (x7); \
                inst v24, v8, v12, v0.t;  \
            )
#define TEST_VVM_OP_113( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v13, (x7); \
                inst v24, v8, v13, v0.t;  \
            )
#define TEST_VVM_OP_114( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v14, (x7); \
                inst v24, v8, v14, v0.t;  \
            )
#define TEST_VVM_OP_115( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v15, (x7); \
                inst v24, v8, v15, v0.t;  \
            )
#define TEST_VVM_OP_117( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v17, (x7); \
                inst v24, v8, v17, v0.t;  \
            )
#define TEST_VVM_OP_118( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v18, (x7); \
                inst v24, v8, v18, v0.t;  \
            )
#define TEST_VVM_OP_119( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v19, (x7); \
                inst v24, v8, v19, v0.t;  \
            )
#define TEST_VVM_OP_120( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v20, (x7); \
                inst v24, v8, v20, v0.t;  \
            )
#define TEST_VVM_OP_121( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v21, (x7); \
                inst v24, v8, v21, v0.t;  \
            )
#define TEST_VVM_OP_122( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v22, (x7); \
                inst v24, v8, v22, v0.t;  \
            )
#define TEST_VVM_OP_123( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v23, (x7); \
                inst v24, v8, v23, v0.t;  \
            )
#define TEST_VVM_OP_125( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v25, (x7); \
                inst v24, v8, v25, v0.t;  \
            )
#define TEST_VVM_OP_126( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v26, (x7); \
                inst v24, v8, v26, v0.t;  \
            )
#define TEST_VVM_OP_127( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v27, (x7); \
                inst v24, v8, v27, v0.t;  \
            )
#define TEST_VVM_OP_128( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v28, (x7); \
                inst v24, v8, v28, v0.t;  \
            )
#define TEST_VVM_OP_129( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v29, (x7); \
                inst v24, v8, v29, v0.t;  \
            )
#define TEST_VVM_OP_130( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v30, (x7); \
                inst v24, v8, v30, v0.t;  \
            )
#define TEST_VVM_OP_131( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v31, (x7); \
                inst v24, v8, v31, v0.t;  \
            )
#define TEST_VVM_OP_rd1( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v1, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v1, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v1, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd2( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v2, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v2, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v2, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd3( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v3, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v3, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v3, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd4( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v4, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v4, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v4, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd5( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v5, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v5, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v5, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd6( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v6, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v6, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v6, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd7( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v7, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v7, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v7, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd9( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v9, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v9, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v9, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd10( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v10, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v10, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v10, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd11( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v11, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v11, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v11, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v12, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v12, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v12, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd13( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v13, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v13, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v13, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v14, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v14, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd15( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v15, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v15, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v15, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd17( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v17, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v17, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v17, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd18( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v18, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v18, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v18, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd19( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v19, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v19, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v19, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd20( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v20, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v20, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v20, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd21( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v21, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v21, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v21, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd22( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v22, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v22, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v22, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd23( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v23, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v23, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v23, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd25( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v25, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v25, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v25, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd26( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v26, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v26, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v26, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd27( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v27, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v27, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v27, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd28( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v28, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v28, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v28, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd29( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v29, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v29, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v29, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd30( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v30, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v30, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v30, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd31( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v31, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v31, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v31, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd8( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v8, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v16, (x7); \
                inst v8, v24, v16, v0.t;  \
            )
#define TEST_VVM_OP_rd16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v24, (x7); \
                la x7, val2; \
                vle32.v v8, (x7); \
                inst v16, v24, v8, v0.t;  \
            )
#undef TEST_VXM_OP 
#define TEST_VXM_OP( testnum, inst, result, val1, val2 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v24, v8, x1, v0.t;  \
            )
#define TEST_VXM_OP_11( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v24, v8, x1, v0.t;  \
            )
#define TEST_VXM_OP_12( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x2, MASK_XLEN(val2); \
                inst v24, v8, x2, v0.t;  \
            )
#define TEST_VXM_OP_13( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x3, MASK_XLEN(val2); \
                inst v24, v8, x3, v0.t;  \
            )
#define TEST_VXM_OP_14( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x4, MASK_XLEN(val2); \
                inst v24, v8, x4, v0.t;  \
            )
#define TEST_VXM_OP_15( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x5, MASK_XLEN(val2); \
                inst v24, v8, x5, v0.t;  \
            )
#define TEST_VXM_OP_16( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x6, MASK_XLEN(val2); \
                inst v24, v8, x6, v0.t;  \
            )
#define TEST_VXM_OP_17( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x7, MASK_XLEN(val2); \
                inst v24, v8, x7, v0.t;  \
            )
#define TEST_VXM_OP_18( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x8, MASK_XLEN(val2); \
                inst v24, v8, x8, v0.t;  \
            )
#define TEST_VXM_OP_19( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x9, MASK_XLEN(val2); \
                inst v24, v8, x9, v0.t;  \
            )
#define TEST_VXM_OP_110( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x10, MASK_XLEN(val2); \
                inst v24, v8, x10, v0.t;  \
            )
#define TEST_VXM_OP_111( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x11, MASK_XLEN(val2); \
                inst v24, v8, x11, v0.t;  \
            )
#define TEST_VXM_OP_112( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x12, MASK_XLEN(val2); \
                inst v24, v8, x12, v0.t;  \
            )
#define TEST_VXM_OP_113( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x13, MASK_XLEN(val2); \
                inst v24, v8, x13, v0.t;  \
            )
#define TEST_VXM_OP_114( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x14, MASK_XLEN(val2); \
                inst v24, v8, x14, v0.t;  \
            )
#define TEST_VXM_OP_115( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x15, MASK_XLEN(val2); \
                inst v24, v8, x15, v0.t;  \
            )
#define TEST_VXM_OP_116( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x16, MASK_XLEN(val2); \
                inst v24, v8, x16, v0.t;  \
            )
#define TEST_VXM_OP_117( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x17, MASK_XLEN(val2); \
                inst v24, v8, x17, v0.t;  \
            )
#define TEST_VXM_OP_118( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x18, MASK_XLEN(val2); \
                inst v24, v8, x18, v0.t;  \
            )
#define TEST_VXM_OP_119( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x19, MASK_XLEN(val2); \
                inst v24, v8, x19, v0.t;  \
            )
#define TEST_VXM_OP_120( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x20, MASK_XLEN(val2); \
                inst v24, v8, x20, v0.t;  \
            )
#define TEST_VXM_OP_121( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x21, MASK_XLEN(val2); \
                inst v24, v8, x21, v0.t;  \
            )
#define TEST_VXM_OP_122( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x22, MASK_XLEN(val2); \
                inst v24, v8, x22, v0.t;  \
            )
#define TEST_VXM_OP_123( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x23, MASK_XLEN(val2); \
                inst v24, v8, x23, v0.t;  \
            )
#define TEST_VXM_OP_124( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x24, MASK_XLEN(val2); \
                inst v24, v8, x24, v0.t;  \
            )
#define TEST_VXM_OP_125( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x25, MASK_XLEN(val2); \
                inst v24, v8, x25, v0.t;  \
            )
#define TEST_VXM_OP_126( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x26, MASK_XLEN(val2); \
                inst v24, v8, x26, v0.t;  \
            )
#define TEST_VXM_OP_127( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x27, MASK_XLEN(val2); \
                inst v24, v8, x27, v0.t;  \
            )
#define TEST_VXM_OP_128( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x28, MASK_XLEN(val2); \
                inst v24, v8, x28, v0.t;  \
            )
#define TEST_VXM_OP_129( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x29, MASK_XLEN(val2); \
                inst v24, v8, x29, v0.t;  \
            )
#define TEST_VXM_OP_130( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x30, MASK_XLEN(val2); \
                inst v24, v8, x30, v0.t;  \
            )
#define TEST_VXM_OP_131( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x31, MASK_XLEN(val2); \
                inst v24, v8, x31, v0.t;  \
            )
#define TEST_VXM_OP_rd1( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v1, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v1, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v1, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd2( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v2, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v2, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v2, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd3( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v3, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v3, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v3, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd4( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v4, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v4, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v4, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd5( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v5, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v5, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v5, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd6( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v6, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v6, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v6, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd7( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v7, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v7, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v7, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd8( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v8, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v8, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd9( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v9, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v9, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v9, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd10( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v10, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v10, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v10, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd11( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v11, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v11, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v11, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd12( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v12, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v12, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v12, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd13( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v13, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v13, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v13, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd14( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v14, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v14, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd15( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v15, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v15, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v15, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd16( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v16, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd17( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v17, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v17, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v17, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd18( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v18, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v18, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v18, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd19( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v19, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v19, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v19, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd20( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v20, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v20, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v20, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd21( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v21, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v21, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v21, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd22( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v22, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v22, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v22, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd23( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v23, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v23, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v23, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd24( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v24, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd25( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v25, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v25, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v25, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd26( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v26, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v26, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v26, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd27( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v27, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v27, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v27, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd28( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v28, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v28, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v28, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd29( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v29, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v29, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v29, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd30( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v30, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v30, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v30, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd31( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v31, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v31, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v31, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd8( testnum, inst, result, val1, val2 ) \
            TEST_CASE_MASK_4VL( testnum, v8, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v16, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v8, v16, x1, v0.t;  \
            )
#define TEST_VXM_OP_rd16( testnum, inst, result, val1, val2 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v24, v8, x1, v0.t;  \
            )
#undef TEST_VIM_OP 
#define TEST_VIM_OP( testnum, inst, result, val1, val2 )         TEST_CASE_MASK_4VL( testnum, v24, result,             VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            inst v24, v8, SEXT_IMM(val2), v0.t;  \
        )
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VXM_OP( 1,  vmsgt.vx, 0x0000000000000004, rs2_data+0, 0xfffffffffffffffe)
  TEST_VXM_OP( 2,  vmsgt.vx, 0x0000000000000004, rs2_data+32, 0xfffffffffffffffd)
  TEST_VXM_OP( 3,  vmsgt.vx, 0x0000000000000004, rs2_data+64, 0xfffffffffffffffb)
  TEST_VXM_OP( 4,  vmsgt.vx, 0x0000000000000004, rs2_data+96, 0xfffffffffffffff7)
  TEST_VXM_OP( 5,  vmsgt.vx, 0x0000000000000006, rs2_data+128, 0xffffffffffffffef)
  TEST_VXM_OP( 6,  vmsgt.vx, 0x0000000000000006, rs2_data+160, 0xffffffffffffffdf)
  TEST_VXM_OP( 7,  vmsgt.vx, 0x0000000000000006, rs2_data+192, 0xffffffffffffffbf)
  TEST_VXM_OP( 8,  vmsgt.vx, 0x0000000000000006, rs2_data+224, 0xffffffffffffff7f)
  TEST_VXM_OP( 9,  vmsgt.vx, 0x0000000000000006, rs2_data+256, 0xfffffffffffffeff)
  TEST_VXM_OP( 10,  vmsgt.vx, 0x0000000000000006, rs2_data+288, 0xfffffffffffffdff)
  TEST_VXM_OP( 11,  vmsgt.vx, 0x0000000000000006, rs2_data+320, 0xfffffffffffffbff)
  TEST_VXM_OP( 12,  vmsgt.vx, 0x0000000000000006, rs2_data+352, 0xfffffffffffff7ff)
  TEST_VXM_OP( 13,  vmsgt.vx, 0x0000000000000006, rs2_data+384, 0xffffffffffffefff)
  TEST_VXM_OP( 14,  vmsgt.vx, 0x0000000000000004, rs2_data+416, 0xffffffffffffdfff)
  TEST_VXM_OP( 15,  vmsgt.vx, 0x0000000000000004, rs2_data+448, 0xffffffffffffbfff)
  TEST_VXM_OP( 16,  vmsgt.vx, 0x0000000000000006, rs2_data+480, 0xffffffffffff7fff)
  TEST_VXM_OP( 17,  vmsgt.vx, 0x0000000000000006, rs2_data+512, 0xfffffffffffeffff)
  TEST_VXM_OP( 18,  vmsgt.vx, 0x0000000000000006, rs2_data+544, 0xfffffffffffdffff)
  TEST_VXM_OP( 19,  vmsgt.vx, 0x0000000000000006, rs2_data+576, 0xfffffffffffbffff)
  TEST_VXM_OP( 20,  vmsgt.vx, 0x0000000000000006, rs2_data+608, 0xfffffffffff7ffff)
  TEST_VXM_OP( 21,  vmsgt.vx, 0x0000000000000006, rs2_data+640, 0xffffffffffefffff)
  TEST_VXM_OP( 22,  vmsgt.vx, 0x0000000000000006, rs2_data+672, 0xffffffffffdfffff)
  TEST_VXM_OP( 23,  vmsgt.vx, 0x0000000000000006, rs2_data+704, 0xffffffffffbfffff)
  TEST_VXM_OP( 24,  vmsgt.vx, 0x0000000000000006, rs2_data+736, 0xffffffffff7fffff)
  TEST_VXM_OP( 25,  vmsgt.vx, 0x0000000000000006, rs2_data+768, 0xfffffffffeffffff)
  TEST_VXM_OP( 26,  vmsgt.vx, 0x0000000000000006, rs2_data+800, 0xfffffffffdffffff)
  TEST_VXM_OP( 27,  vmsgt.vx, 0x0000000000000006, rs2_data+832, 0xfffffffffbffffff)
  TEST_VXM_OP( 28,  vmsgt.vx, 0x0000000000000006, rs2_data+864, 0xfffffffff7ffffff)
  TEST_VXM_OP( 29,  vmsgt.vx, 0x0000000000000006, rs2_data+896, 0xffffffffefffffff)
  TEST_VXM_OP( 30,  vmsgt.vx, 0x0000000000000006, rs2_data+928, 0xffffffffdfffffff)
  TEST_VXM_OP( 31,  vmsgt.vx, 0x0000000000000006, rs2_data+960, 0xffffffffbfffffff)
  TEST_VXM_OP( 32,  vmsgt.vx, 0x0000000000000004, rs2_data+992, 0x0000007fffffff)
  TEST_VXM_OP( 33,  vmsgt.vx, 0x0000000000000006, rs2_data+1024, 0x00000000000001)
  TEST_VXM_OP( 34,  vmsgt.vx, 0x0000000000000006, rs2_data+1056, 0x00000000000002)
  TEST_VXM_OP( 35,  vmsgt.vx, 0x0000000000000005, rs2_data+1088, 0x00000000000004)
  TEST_VXM_OP( 36,  vmsgt.vx, 0x0000000000000006, rs2_data+1120, 0x00000000000008)
  TEST_VXM_OP( 37,  vmsgt.vx, 0x0000000000000006, rs2_data+1152, 0x00000000000010)
  TEST_VXM_OP( 38,  vmsgt.vx, 0x0000000000000006, rs2_data+1184, 0x00000000000020)
  TEST_VXM_OP( 39,  vmsgt.vx, 0x0000000000000005, rs2_data+1216, 0x00000000000040)
  TEST_VXM_OP( 40,  vmsgt.vx, 0x0000000000000005, rs2_data+1248, 0x00000000000080)
  TEST_VXM_OP( 41,  vmsgt.vx, 0x0000000000000005, rs2_data+1280, 0x00000000000100)
  TEST_VXM_OP( 42,  vmsgt.vx, 0x0000000000000006, rs2_data+1312, 0x00000000000200)
  TEST_VXM_OP( 43,  vmsgt.vx, 0x0000000000000006, rs2_data+1344, 0x00000000000400)
  TEST_VXM_OP( 44,  vmsgt.vx, 0x0000000000000005, rs2_data+1376, 0x00000000000800)
  TEST_VXM_OP( 45,  vmsgt.vx, 0x0000000000000005, rs2_data+1408, 0x00000000001000)
  TEST_VXM_OP( 46,  vmsgt.vx, 0x0000000000000005, rs2_data+1440, 0x00000000002000)
  TEST_VXM_OP( 47,  vmsgt.vx, 0x0000000000000006, rs2_data+1472, 0x00000000004000)
  TEST_VXM_OP( 48,  vmsgt.vx, 0x0000000000000006, rs2_data+1504, 0x00000000008000)
  TEST_VXM_OP( 49,  vmsgt.vx, 0x0000000000000006, rs2_data+1536, 0x00000000010000)
  TEST_VXM_OP( 50,  vmsgt.vx, 0x0000000000000004, rs2_data+1568, 0x00000000020000)
  TEST_VXM_OP( 51,  vmsgt.vx, 0x0000000000000004, rs2_data+1600, 0x00000000040000)
  TEST_VXM_OP( 52,  vmsgt.vx, 0x0000000000000005, rs2_data+1632, 0x00000000080000)
  TEST_VXM_OP( 53,  vmsgt.vx, 0x0000000000000006, rs2_data+1664, 0x00000000100000)
  TEST_VXM_OP( 54,  vmsgt.vx, 0x0000000000000006, rs2_data+1696, 0x00000000200000)
  TEST_VXM_OP( 55,  vmsgt.vx, 0x0000000000000005, rs2_data+1728, 0x00000000400000)
  TEST_VXM_OP( 56,  vmsgt.vx, 0x0000000000000004, rs2_data+1760, 0x00000000800000)
  TEST_VXM_OP( 57,  vmsgt.vx, 0x0000000000000004, rs2_data+1792, 0x00000001000000)
  TEST_VXM_OP( 58,  vmsgt.vx, 0x0000000000000006, rs2_data+1824, 0x00000002000000)
  TEST_VXM_OP( 59,  vmsgt.vx, 0x0000000000000006, rs2_data+1856, 0x00000004000000)
  TEST_VXM_OP( 60,  vmsgt.vx, 0x0000000000000006, rs2_data+1888, 0x00000008000000)
  TEST_VXM_OP( 61,  vmsgt.vx, 0x0000000000000004, rs2_data+1920, 0x00000010000000)
  TEST_VXM_OP( 62,  vmsgt.vx, 0x0000000000000004, rs2_data+1952, 0x00000020000000)
  TEST_VXM_OP( 63,  vmsgt.vx, 0x0000000000000005, rs2_data+1984, 0x00000040000000)
  TEST_VXM_OP( 64,  vmsgt.vx, 0x0000000000000006, rs2_data+2016, 0xffffffff80000000)
  TEST_VXM_OP( 65,  vmsgt.vx, 0x0000000000000006, rs2_data+2048, 0x00000000000003)
  TEST_VXM_OP( 66,  vmsgt.vx, 0x0000000000000006, rs2_data+2080, 0x00000000000003)
  TEST_VXM_OP( 67,  vmsgt.vx, 0x0000000000000006, rs2_data+2112, 0x00000000000003)
  TEST_VXM_OP( 68,  vmsgt.vx, 0x0000000000000006, rs2_data+2144, 0x00000000000003)
  TEST_VXM_OP_rd1( 69,  vmsgt.vx, 0x0000000000000004, rs2_data+0, 0xfffffffffffffffe)
  TEST_VXM_OP_12( 70,  vmsgt.vx, 0x0000000000000004, rs2_data+0, 0xfffffffffffffffe)
  TEST_VXM_OP_rd2( 71,  vmsgt.vx, 0x0000000000000004, rs2_data+32, 0xfffffffffffffffd)
  TEST_VXM_OP_13( 72,  vmsgt.vx, 0x0000000000000004, rs2_data+32, 0xfffffffffffffffd)
  TEST_VXM_OP_rd3( 73,  vmsgt.vx, 0x0000000000000004, rs2_data+64, 0xfffffffffffffffb)
  TEST_VXM_OP_14( 74,  vmsgt.vx, 0x0000000000000004, rs2_data+64, 0xfffffffffffffffb)
  TEST_VXM_OP_rd4( 75,  vmsgt.vx, 0x0000000000000004, rs2_data+96, 0xfffffffffffffff7)
  TEST_VXM_OP_15( 76,  vmsgt.vx, 0x0000000000000004, rs2_data+96, 0xfffffffffffffff7)
  TEST_VXM_OP_rd5( 77,  vmsgt.vx, 0x0000000000000006, rs2_data+128, 0xffffffffffffffef)
  TEST_VXM_OP_16( 78,  vmsgt.vx, 0x0000000000000006, rs2_data+128, 0xffffffffffffffef)
  TEST_VXM_OP_rd6( 79,  vmsgt.vx, 0x0000000000000006, rs2_data+160, 0xffffffffffffffdf)
  TEST_VXM_OP_17( 80,  vmsgt.vx, 0x0000000000000006, rs2_data+160, 0xffffffffffffffdf)
  TEST_VXM_OP_rd7( 81,  vmsgt.vx, 0x0000000000000006, rs2_data+192, 0xffffffffffffffbf)
  TEST_VXM_OP_rd8( 82,  vmsgt.vx, 0x0000000000000006, rs2_data+224, 0xffffffffffffff7f)
  TEST_VXM_OP_19( 83,  vmsgt.vx, 0x0000000000000006, rs2_data+224, 0xffffffffffffff7f)
  TEST_VXM_OP_rd9( 84,  vmsgt.vx, 0x0000000000000006, rs2_data+256, 0xfffffffffffffeff)
  TEST_VXM_OP_110( 85,  vmsgt.vx, 0x0000000000000006, rs2_data+256, 0xfffffffffffffeff)
  TEST_VXM_OP_rd10( 86,  vmsgt.vx, 0x0000000000000006, rs2_data+288, 0xfffffffffffffdff)
  TEST_VXM_OP_111( 87,  vmsgt.vx, 0x0000000000000006, rs2_data+288, 0xfffffffffffffdff)
  TEST_VXM_OP_rd11( 88,  vmsgt.vx, 0x0000000000000006, rs2_data+320, 0xfffffffffffffbff)
  TEST_VXM_OP_112( 89,  vmsgt.vx, 0x0000000000000006, rs2_data+320, 0xfffffffffffffbff)
  TEST_VXM_OP_rd12( 90,  vmsgt.vx, 0x0000000000000006, rs2_data+352, 0xfffffffffffff7ff)
  TEST_VXM_OP_113( 91,  vmsgt.vx, 0x0000000000000006, rs2_data+352, 0xfffffffffffff7ff)
  TEST_VXM_OP_rd13( 92,  vmsgt.vx, 0x0000000000000006, rs2_data+384, 0xffffffffffffefff)
  TEST_VXM_OP_114( 93,  vmsgt.vx, 0x0000000000000006, rs2_data+384, 0xffffffffffffefff)
  TEST_VXM_OP_rd14( 94,  vmsgt.vx, 0x0000000000000004, rs2_data+416, 0xffffffffffffdfff)
  TEST_VXM_OP_115( 95,  vmsgt.vx, 0x0000000000000004, rs2_data+416, 0xffffffffffffdfff)
  TEST_VXM_OP_rd15( 96,  vmsgt.vx, 0x0000000000000004, rs2_data+448, 0xffffffffffffbfff)
  TEST_VXM_OP_rd16( 97,  vmsgt.vx, 0x0000000000000006, rs2_data+480, 0xffffffffffff7fff)
  TEST_VXM_OP_117( 98,  vmsgt.vx, 0x0000000000000006, rs2_data+480, 0xffffffffffff7fff)
  TEST_VXM_OP_rd17( 99,  vmsgt.vx, 0x0000000000000006, rs2_data+512, 0xfffffffffffeffff)
  TEST_VXM_OP_118( 100,  vmsgt.vx, 0x0000000000000006, rs2_data+512, 0xfffffffffffeffff)
  TEST_VXM_OP_rd18( 101,  vmsgt.vx, 0x0000000000000006, rs2_data+544, 0xfffffffffffdffff)
  TEST_VXM_OP_119( 102,  vmsgt.vx, 0x0000000000000006, rs2_data+544, 0xfffffffffffdffff)
  TEST_VXM_OP_rd19( 103,  vmsgt.vx, 0x0000000000000006, rs2_data+576, 0xfffffffffffbffff)
  TEST_VXM_OP_120( 104,  vmsgt.vx, 0x0000000000000006, rs2_data+576, 0xfffffffffffbffff)
  TEST_VXM_OP_rd20( 105,  vmsgt.vx, 0x0000000000000006, rs2_data+608, 0xfffffffffff7ffff)
  TEST_VXM_OP_121( 106,  vmsgt.vx, 0x0000000000000006, rs2_data+608, 0xfffffffffff7ffff)
  TEST_VXM_OP_rd21( 107,  vmsgt.vx, 0x0000000000000006, rs2_data+640, 0xffffffffffefffff)
  TEST_VXM_OP_122( 108,  vmsgt.vx, 0x0000000000000006, rs2_data+640, 0xffffffffffefffff)
  TEST_VXM_OP_rd22( 109,  vmsgt.vx, 0x0000000000000006, rs2_data+672, 0xffffffffffdfffff)
  TEST_VXM_OP_123( 110,  vmsgt.vx, 0x0000000000000006, rs2_data+672, 0xffffffffffdfffff)
  TEST_VXM_OP_rd23( 111,  vmsgt.vx, 0x0000000000000006, rs2_data+704, 0xffffffffffbfffff)
  TEST_VXM_OP_rd25( 112,  vmsgt.vx, 0x0000000000000006, rs2_data+768, 0xfffffffffeffffff)
  TEST_VXM_OP_126( 113,  vmsgt.vx, 0x0000000000000006, rs2_data+768, 0xfffffffffeffffff)
  TEST_VXM_OP_rd26( 114,  vmsgt.vx, 0x0000000000000006, rs2_data+800, 0xfffffffffdffffff)
  TEST_VXM_OP_127( 115,  vmsgt.vx, 0x0000000000000006, rs2_data+800, 0xfffffffffdffffff)
  TEST_VXM_OP_rd27( 116,  vmsgt.vx, 0x0000000000000006, rs2_data+832, 0xfffffffffbffffff)
  TEST_VXM_OP_128( 117,  vmsgt.vx, 0x0000000000000006, rs2_data+832, 0xfffffffffbffffff)
  TEST_VXM_OP_rd28( 118,  vmsgt.vx, 0x0000000000000006, rs2_data+864, 0xfffffffff7ffffff)
  TEST_VXM_OP_129( 119,  vmsgt.vx, 0x0000000000000006, rs2_data+864, 0xfffffffff7ffffff)
  TEST_VXM_OP_rd29( 120,  vmsgt.vx, 0x0000000000000006, rs2_data+896, 0xffffffffefffffff)
  TEST_VXM_OP_130( 121,  vmsgt.vx, 0x0000000000000006, rs2_data+896, 0xffffffffefffffff)
  TEST_VXM_OP_rd30( 122,  vmsgt.vx, 0x0000000000000006, rs2_data+928, 0xffffffffdfffffff)
  TEST_VXM_OP_131( 123,  vmsgt.vx, 0x0000000000000006, rs2_data+928, 0xffffffffdfffffff)
  TEST_VXM_OP_rd31( 124,  vmsgt.vx, 0x0000000000000006, rs2_data+960, 0xffffffffbfffffff)
  TEST_VXM_OP_12( 125,  vmsgt.vx, 0x0000000000000006, rs2_data+960, 0xffffffffbfffffff)
  TEST_VXM_OP_rd1( 126,  vmsgt.vx, 0x0000000000000004, rs2_data+992, 0x0000007fffffff)
  TEST_VXM_OP_13( 127,  vmsgt.vx, 0x0000000000000004, rs2_data+992, 0x0000007fffffff)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VIM_OP( 128,  vmsgt.vi, 0x0000000000000004, rs2_data+0, 4)
  TEST_VIM_OP( 129,  vmsgt.vi, 0x0000000000000004, rs2_data+32, 4)
  TEST_VIM_OP( 130,  vmsgt.vi, 0x0000000000000004, rs2_data+64, 4)
  TEST_VIM_OP( 131,  vmsgt.vi, 0x0000000000000004, rs2_data+96, 4)
  TEST_VIM_OP( 132,  vmsgt.vi, 0x0000000000000005, rs2_data+128, 4)
  TEST_VIM_OP( 133,  vmsgt.vi, 0x0000000000000006, rs2_data+160, 4)
  TEST_VIM_OP( 134,  vmsgt.vi, 0x0000000000000006, rs2_data+192, 4)
  TEST_VIM_OP( 135,  vmsgt.vi, 0x0000000000000006, rs2_data+224, 4)
  TEST_VIM_OP( 136,  vmsgt.vi, 0x0000000000000005, rs2_data+256, 4)
  TEST_VIM_OP( 137,  vmsgt.vi, 0x0000000000000005, rs2_data+288, 4)
  TEST_VIM_OP( 138,  vmsgt.vi, 0x0000000000000006, rs2_data+320, 4)
  TEST_VIM_OP( 139,  vmsgt.vi, 0x0000000000000005, rs2_data+352, 4)
  TEST_VIM_OP( 140,  vmsgt.vi, 0x0000000000000005, rs2_data+384, 4)
  TEST_VIM_OP( 141,  vmsgt.vi, 0x0000000000000004, rs2_data+416, 4)
  TEST_VIM_OP( 142,  vmsgt.vi, 0x0000000000000004, rs2_data+448, 4)
  TEST_VIM_OP( 143,  vmsgt.vi, 0x0000000000000004, rs2_data+480, 4)
  TEST_VIM_OP( 144,  vmsgt.vi, 0x0000000000000006, rs2_data+512, 4)
  TEST_VIM_OP( 145,  vmsgt.vi, 0x0000000000000006, rs2_data+544, 4)
  TEST_VIM_OP( 146,  vmsgt.vi, 0x0000000000000005, rs2_data+576, 4)
  TEST_VIM_OP( 147,  vmsgt.vi, 0x0000000000000006, rs2_data+608, 4)
  TEST_VIM_OP( 148,  vmsgt.vi, 0x0000000000000006, rs2_data+640, 4)
  TEST_VIM_OP( 149,  vmsgt.vi, 0x0000000000000006, rs2_data+672, 4)
  TEST_VIM_OP( 150,  vmsgt.vi, 0x0000000000000006, rs2_data+704, 4)
  TEST_VIM_OP( 151,  vmsgt.vi, 0x0000000000000005, rs2_data+736, 4)
  TEST_VIM_OP( 152,  vmsgt.vi, 0x0000000000000006, rs2_data+768, 4)
  TEST_VIM_OP( 153,  vmsgt.vi, 0x0000000000000006, rs2_data+800, 4)
  TEST_VIM_OP( 154,  vmsgt.vi, 0x0000000000000006, rs2_data+832, 4)
  TEST_VIM_OP( 155,  vmsgt.vi, 0x0000000000000006, rs2_data+864, 4)
  TEST_VIM_OP( 156,  vmsgt.vi, 0x0000000000000006, rs2_data+896, 4)
  TEST_VIM_OP( 157,  vmsgt.vi, 0x0000000000000005, rs2_data+928, 4)
  TEST_VIM_OP( 158,  vmsgt.vi, 0x0000000000000006, rs2_data+960, 4)
  TEST_VIM_OP( 159,  vmsgt.vi, 0x0000000000000006, rs2_data+992, 4)
  TEST_VIM_OP( 160,  vmsgt.vi, 0x0000000000000006, rs2_data+1024, 4)
  TEST_VIM_OP( 161,  vmsgt.vi, 0x0000000000000006, rs2_data+1056, 4)
  TEST_VIM_OP( 162,  vmsgt.vi, 0x0000000000000005, rs2_data+1088, 4)
  TEST_VIM_OP( 163,  vmsgt.vi, 0x0000000000000006, rs2_data+1120, 4)
  TEST_VIM_OP( 164,  vmsgt.vi, 0x0000000000000006, rs2_data+1152, 4)
  TEST_VIM_OP( 165,  vmsgt.vi, 0x0000000000000006, rs2_data+1184, 4)
  TEST_VIM_OP( 166,  vmsgt.vi, 0x0000000000000006, rs2_data+1216, 4)
  TEST_VIM_OP( 167,  vmsgt.vi, 0x0000000000000006, rs2_data+1248, 4)
  TEST_VIM_OP( 168,  vmsgt.vi, 0x0000000000000005, rs2_data+1280, 4)
  TEST_VIM_OP( 169,  vmsgt.vi, 0x0000000000000006, rs2_data+1312, 4)
  TEST_VIM_OP( 170,  vmsgt.vi, 0x0000000000000006, rs2_data+1344, 4)
  TEST_VIM_OP( 171,  vmsgt.vi, 0x0000000000000006, rs2_data+1376, 4)
  TEST_VIM_OP( 172,  vmsgt.vi, 0x0000000000000006, rs2_data+1408, 4)
  TEST_VIM_OP( 173,  vmsgt.vi, 0x0000000000000005, rs2_data+1440, 4)
  TEST_VIM_OP( 174,  vmsgt.vi, 0x0000000000000006, rs2_data+1472, 4)
  TEST_VIM_OP( 175,  vmsgt.vi, 0x0000000000000006, rs2_data+1504, 4)
  TEST_VIM_OP( 176,  vmsgt.vi, 0x0000000000000006, rs2_data+1536, 4)
  TEST_VIM_OP( 177,  vmsgt.vi, 0x0000000000000006, rs2_data+1568, 4)
  TEST_VIM_OP( 178,  vmsgt.vi, 0x0000000000000006, rs2_data+1600, 4)
  TEST_VIM_OP( 179,  vmsgt.vi, 0x0000000000000005, rs2_data+1632, 4)
  TEST_VIM_OP( 180,  vmsgt.vi, 0x0000000000000006, rs2_data+1664, 4)
  TEST_VIM_OP( 181,  vmsgt.vi, 0x0000000000000006, rs2_data+1696, 4)
  TEST_VIM_OP( 182,  vmsgt.vi, 0x0000000000000006, rs2_data+1728, 4)
  TEST_VIM_OP( 183,  vmsgt.vi, 0x0000000000000006, rs2_data+1760, 4)
  TEST_VIM_OP( 184,  vmsgt.vi, 0x0000000000000005, rs2_data+1792, 4)
  TEST_VIM_OP( 185,  vmsgt.vi, 0x0000000000000006, rs2_data+1824, 4)
  TEST_VIM_OP( 186,  vmsgt.vi, 0x0000000000000006, rs2_data+1856, 4)
  TEST_VIM_OP( 187,  vmsgt.vi, 0x0000000000000006, rs2_data+1888, 4)
  TEST_VIM_OP( 188,  vmsgt.vi, 0x0000000000000006, rs2_data+1920, 4)
  TEST_VIM_OP( 189,  vmsgt.vi, 0x0000000000000006, rs2_data+1952, 4)
  TEST_VIM_OP( 190,  vmsgt.vi, 0x0000000000000005, rs2_data+1984, 4)
  TEST_VIM_OP( 191,  vmsgt.vi, 0x0000000000000006, rs2_data+2016, 4)
  TEST_VIM_OP( 192,  vmsgt.vi, 0x0000000000000006, rs2_data+2048, 4)
  TEST_VIM_OP( 193,  vmsgt.vi, 0x0000000000000006, rs2_data+2080, 4)
  TEST_VIM_OP( 194,  vmsgt.vi, 0x0000000000000006, rs2_data+2112, 4)
  TEST_VIM_OP( 195,  vmsgt.vi, 0x0000000000000005, rs2_data+2144, 4)
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

rd_data_vx:
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314

rd_data_vi:
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
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
    

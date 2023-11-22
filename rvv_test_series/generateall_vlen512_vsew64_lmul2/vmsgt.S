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
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v24, v8, v16, v0.t;  \
            )
#define TEST_VVM_OP_12( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v2, (x7); \
                inst v24, v8, v2, v0.t;  \
            )
#define TEST_VVM_OP_14( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v4, (x7); \
                inst v24, v8, v4, v0.t;  \
            )
#define TEST_VVM_OP_16( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v6, (x7); \
                inst v24, v8, v6, v0.t;  \
            )
#define TEST_VVM_OP_110( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v10, (x7); \
                inst v24, v8, v10, v0.t;  \
            )
#define TEST_VVM_OP_112( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v12, (x7); \
                inst v24, v8, v12, v0.t;  \
            )
#define TEST_VVM_OP_114( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v14, (x7); \
                inst v24, v8, v14, v0.t;  \
            )
#define TEST_VVM_OP_118( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v18, (x7); \
                inst v24, v8, v18, v0.t;  \
            )
#define TEST_VVM_OP_120( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v20, (x7); \
                inst v24, v8, v20, v0.t;  \
            )
#define TEST_VVM_OP_122( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v22, (x7); \
                inst v24, v8, v22, v0.t;  \
            )
#define TEST_VVM_OP_126( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v26, (x7); \
                inst v24, v8, v26, v0.t;  \
            )
#define TEST_VVM_OP_128( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v28, (x7); \
                inst v24, v8, v28, v0.t;  \
            )
#define TEST_VVM_OP_130( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v30, (x7); \
                inst v24, v8, v30, v0.t;  \
            )
#define TEST_VVM_OP_rd4( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v4, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v4, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v4, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v12, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v12, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v12, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd20( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v20, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v20, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v20, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd28( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v28, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v28, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v28, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd8( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v8, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v8, v24, v16, v0.t;  \
            )
#define TEST_VVM_OP_rd16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                inst v16, v24, v8, v0.t;  \
            )
#undef TEST_VXM_OP 
#define TEST_VXM_OP( testnum, inst, result, val1, val2 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v24, v8, x1, v0.t;  \
            )
#define TEST_VXM_OP_11( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v24, v8, x1, v0.t;  \
            )
#define TEST_VXM_OP_12( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x2, MASK_XLEN(val2); \
                inst v24, v8, x2, v0.t;  \
            )
#define TEST_VXM_OP_13( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x3, MASK_XLEN(val2); \
                inst v24, v8, x3, v0.t;  \
            )
#define TEST_VXM_OP_14( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x4, MASK_XLEN(val2); \
                inst v24, v8, x4, v0.t;  \
            )
#define TEST_VXM_OP_15( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x5, MASK_XLEN(val2); \
                inst v24, v8, x5, v0.t;  \
            )
#define TEST_VXM_OP_16( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x6, MASK_XLEN(val2); \
                inst v24, v8, x6, v0.t;  \
            )
#define TEST_VXM_OP_17( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x7, MASK_XLEN(val2); \
                inst v24, v8, x7, v0.t;  \
            )
#define TEST_VXM_OP_18( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x8, MASK_XLEN(val2); \
                inst v24, v8, x8, v0.t;  \
            )
#define TEST_VXM_OP_19( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x9, MASK_XLEN(val2); \
                inst v24, v8, x9, v0.t;  \
            )
#define TEST_VXM_OP_110( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x10, MASK_XLEN(val2); \
                inst v24, v8, x10, v0.t;  \
            )
#define TEST_VXM_OP_111( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x11, MASK_XLEN(val2); \
                inst v24, v8, x11, v0.t;  \
            )
#define TEST_VXM_OP_112( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x12, MASK_XLEN(val2); \
                inst v24, v8, x12, v0.t;  \
            )
#define TEST_VXM_OP_113( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x13, MASK_XLEN(val2); \
                inst v24, v8, x13, v0.t;  \
            )
#define TEST_VXM_OP_114( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x14, MASK_XLEN(val2); \
                inst v24, v8, x14, v0.t;  \
            )
#define TEST_VXM_OP_115( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x15, MASK_XLEN(val2); \
                inst v24, v8, x15, v0.t;  \
            )
#define TEST_VXM_OP_116( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x16, MASK_XLEN(val2); \
                inst v24, v8, x16, v0.t;  \
            )
#define TEST_VXM_OP_117( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x17, MASK_XLEN(val2); \
                inst v24, v8, x17, v0.t;  \
            )
#define TEST_VXM_OP_118( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x18, MASK_XLEN(val2); \
                inst v24, v8, x18, v0.t;  \
            )
#define TEST_VXM_OP_119( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x19, MASK_XLEN(val2); \
                inst v24, v8, x19, v0.t;  \
            )
#define TEST_VXM_OP_120( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x20, MASK_XLEN(val2); \
                inst v24, v8, x20, v0.t;  \
            )
#define TEST_VXM_OP_121( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x21, MASK_XLEN(val2); \
                inst v24, v8, x21, v0.t;  \
            )
#define TEST_VXM_OP_122( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x22, MASK_XLEN(val2); \
                inst v24, v8, x22, v0.t;  \
            )
#define TEST_VXM_OP_123( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x23, MASK_XLEN(val2); \
                inst v24, v8, x23, v0.t;  \
            )
#define TEST_VXM_OP_124( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x24, MASK_XLEN(val2); \
                inst v24, v8, x24, v0.t;  \
            )
#define TEST_VXM_OP_125( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x25, MASK_XLEN(val2); \
                inst v24, v8, x25, v0.t;  \
            )
#define TEST_VXM_OP_126( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x26, MASK_XLEN(val2); \
                inst v24, v8, x26, v0.t;  \
            )
#define TEST_VXM_OP_127( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x27, MASK_XLEN(val2); \
                inst v24, v8, x27, v0.t;  \
            )
#define TEST_VXM_OP_128( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x28, MASK_XLEN(val2); \
                inst v24, v8, x28, v0.t;  \
            )
#define TEST_VXM_OP_129( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x29, MASK_XLEN(val2); \
                inst v24, v8, x29, v0.t;  \
            )
#define TEST_VXM_OP_130( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x30, MASK_XLEN(val2); \
                inst v24, v8, x30, v0.t;  \
            )
#define TEST_VXM_OP_131( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x31, MASK_XLEN(val2); \
                inst v24, v8, x31, v0.t;  \
            )
#define TEST_VXM_OP_rd1( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v1, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v1, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v1, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd2( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v2, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v2, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v2, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd3( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v3, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v3, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v3, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd4( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v4, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v4, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v4, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd5( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v5, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v5, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v5, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd6( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v6, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v6, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v6, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd7( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v7, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v7, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v7, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd8( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v8, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v8, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd9( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v9, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v9, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v9, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd10( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v10, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v10, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v10, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd11( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v11, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v11, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v11, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd12( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v12, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v12, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v12, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd13( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v13, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v13, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v13, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd14( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v14, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v14, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd15( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v15, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v15, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v15, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd16( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v16, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd17( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v17, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v17, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v17, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd18( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v18, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v18, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v18, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd19( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v19, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v19, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v19, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd20( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v20, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v20, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v20, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd21( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v21, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v21, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v21, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd22( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v22, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v22, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v22, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd23( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v23, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v23, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v23, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd24( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v24, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd25( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v25, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v25, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v25, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd26( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v26, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v26, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v26, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd27( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v27, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v27, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v27, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd28( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v28, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v28, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v28, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd29( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v29, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v29, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v29, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd30( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v30, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v30, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v30, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd31( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v31, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v31, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v31, v8, x1, v0.t;  \
            ) 
#define TEST_VXM_OP_rd8( testnum, inst, result, val1, val2 ) \
            TEST_CASE_MASK_4VL( testnum, v8, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v16, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v8, v16, x1, v0.t;  \
            )
#define TEST_VXM_OP_rd16( testnum, inst, result, val1, val2 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v24, v8, x1, v0.t;  \
            )
#undef TEST_VIM_OP 
#define TEST_VIM_OP( testnum, inst, result, val1, val2 )         TEST_CASE_MASK_4VL( testnum, v24, result,             VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            inst v24, v8, SEXT_IMM(val2), v0.t;  \
        )
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VXM_OP( 1,  vmsgt.vx, 0x0000000000000007, rs2_data+0, 0xfffffffffffffffe)
  TEST_VXM_OP( 2,  vmsgt.vx, 0x0000000000000007, rs2_data+128, 0xfffffffffffffffd)
  TEST_VXM_OP( 3,  vmsgt.vx, 0x0000000000000007, rs2_data+256, 0xfffffffffffffffb)
  TEST_VXM_OP( 4,  vmsgt.vx, 0x0000000000000007, rs2_data+384, 0xfffffffffffffff7)
  TEST_VXM_OP( 5,  vmsgt.vx, 0x000000000000000b, rs2_data+512, 0xffffffffffffffef)
  TEST_VXM_OP( 6,  vmsgt.vx, 0x000000000000000b, rs2_data+640, 0xffffffffffffffdf)
  TEST_VXM_OP( 7,  vmsgt.vx, 0x000000000000000b, rs2_data+768, 0xffffffffffffffbf)
  TEST_VXM_OP( 8,  vmsgt.vx, 0x000000000000000b, rs2_data+896, 0xffffffffffffff7f)
  TEST_VXM_OP( 9,  vmsgt.vx, 0x000000000000000b, rs2_data+1024, 0xfffffffffffffeff)
  TEST_VXM_OP( 10,  vmsgt.vx, 0x000000000000000b, rs2_data+1152, 0xfffffffffffffdff)
  TEST_VXM_OP( 11,  vmsgt.vx, 0x0000000000000009, rs2_data+1280, 0xfffffffffffffbff)
  TEST_VXM_OP( 12,  vmsgt.vx, 0x0000000000000009, rs2_data+1408, 0xfffffffffffff7ff)
  TEST_VXM_OP( 13,  vmsgt.vx, 0x000000000000000b, rs2_data+1536, 0xffffffffffffefff)
  TEST_VXM_OP( 14,  vmsgt.vx, 0x000000000000000b, rs2_data+1664, 0xffffffffffffdfff)
  TEST_VXM_OP( 15,  vmsgt.vx, 0x000000000000000b, rs2_data+1792, 0xffffffffffffbfff)
  TEST_VXM_OP( 16,  vmsgt.vx, 0x000000000000000b, rs2_data+1920, 0xffffffffffff7fff)
  TEST_VXM_OP( 17,  vmsgt.vx, 0x000000000000000b, rs2_data+2048, 0xfffffffffffeffff)
  TEST_VXM_OP( 18,  vmsgt.vx, 0x000000000000000b, rs2_data+2176, 0xfffffffffffdffff)
  TEST_VXM_OP( 19,  vmsgt.vx, 0x000000000000000b, rs2_data+2304, 0xfffffffffffbffff)
  TEST_VXM_OP( 20,  vmsgt.vx, 0x000000000000000b, rs2_data+2432, 0xfffffffffff7ffff)
  TEST_VXM_OP( 21,  vmsgt.vx, 0x000000000000000b, rs2_data+2560, 0xffffffffffefffff)
  TEST_VXM_OP( 22,  vmsgt.vx, 0x000000000000000b, rs2_data+2688, 0xffffffffffdfffff)
  TEST_VXM_OP( 23,  vmsgt.vx, 0x000000000000000b, rs2_data+2816, 0xffffffffffbfffff)
  TEST_VXM_OP( 24,  vmsgt.vx, 0x000000000000000b, rs2_data+2944, 0xffffffffff7fffff)
  TEST_VXM_OP( 25,  vmsgt.vx, 0x000000000000000b, rs2_data+3072, 0xfffffffffeffffff)
  TEST_VXM_OP( 26,  vmsgt.vx, 0x000000000000000b, rs2_data+3200, 0xfffffffffdffffff)
  TEST_VXM_OP( 27,  vmsgt.vx, 0x000000000000000b, rs2_data+3328, 0xfffffffffbffffff)
  TEST_VXM_OP( 28,  vmsgt.vx, 0x000000000000000b, rs2_data+3456, 0xfffffffff7ffffff)
  TEST_VXM_OP( 29,  vmsgt.vx, 0x000000000000000b, rs2_data+3584, 0xffffffffefffffff)
  TEST_VXM_OP( 30,  vmsgt.vx, 0x000000000000000b, rs2_data+3712, 0xffffffffdfffffff)
  TEST_VXM_OP( 31,  vmsgt.vx, 0x000000000000000b, rs2_data+3840, 0xffffffffbfffffff)
  TEST_VXM_OP( 32,  vmsgt.vx, 0x000000000000000b, rs2_data+3968, 0xffffffff7fffffff)
  TEST_VXM_OP( 33,  vmsgt.vx, 0x000000000000000b, rs2_data+4096, 0xfffffffeffffffff)
  TEST_VXM_OP( 34,  vmsgt.vx, 0x000000000000000b, rs2_data+4224, 0xfffffffdffffffff)
  TEST_VXM_OP( 35,  vmsgt.vx, 0x000000000000000b, rs2_data+4352, 0xfffffffbffffffff)
  TEST_VXM_OP( 36,  vmsgt.vx, 0x000000000000000b, rs2_data+4480, 0xfffffff7ffffffff)
  TEST_VXM_OP( 37,  vmsgt.vx, 0x000000000000000b, rs2_data+4608, 0xffffffefffffffff)
  TEST_VXM_OP( 38,  vmsgt.vx, 0x000000000000000b, rs2_data+4736, 0xffffffdfffffffff)
  TEST_VXM_OP_rd4( 39,  vmsgt.vx, 0x0000000000000007, rs2_data+384, 0xfffffffffffffff7)
  TEST_VXM_OP_rd8( 40,  vmsgt.vx, 0x000000000000000b, rs2_data+896, 0xffffffffffffff7f)
  TEST_VXM_OP_rd12( 41,  vmsgt.vx, 0x0000000000000009, rs2_data+1408, 0xfffffffffffff7ff)
  TEST_VXM_OP_rd16( 42,  vmsgt.vx, 0x000000000000000b, rs2_data+1920, 0xffffffffffff7fff)
  TEST_VXM_OP_rd20( 43,  vmsgt.vx, 0x000000000000000b, rs2_data+2432, 0xfffffffffff7ffff)
  TEST_VXM_OP_rd28( 44,  vmsgt.vx, 0x000000000000000b, rs2_data+3456, 0xfffffffff7ffffff)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VIM_OP( 45,  vmsgt.vi, 0x0000000000000007, rs2_data+0, 4)
  TEST_VIM_OP( 46,  vmsgt.vi, 0x0000000000000007, rs2_data+128, 4)
  TEST_VIM_OP( 47,  vmsgt.vi, 0x0000000000000007, rs2_data+256, 4)
  TEST_VIM_OP( 48,  vmsgt.vi, 0x0000000000000007, rs2_data+384, 4)
  TEST_VIM_OP( 49,  vmsgt.vi, 0x000000000000000a, rs2_data+512, 4)
  TEST_VIM_OP( 50,  vmsgt.vi, 0x000000000000000b, rs2_data+640, 4)
  TEST_VIM_OP( 51,  vmsgt.vi, 0x000000000000000b, rs2_data+768, 4)
  TEST_VIM_OP( 52,  vmsgt.vi, 0x000000000000000b, rs2_data+896, 4)
  TEST_VIM_OP( 53,  vmsgt.vi, 0x0000000000000009, rs2_data+1024, 4)
  TEST_VIM_OP( 54,  vmsgt.vi, 0x000000000000000a, rs2_data+1152, 4)
  TEST_VIM_OP( 55,  vmsgt.vi, 0x0000000000000008, rs2_data+1280, 4)
  TEST_VIM_OP( 56,  vmsgt.vi, 0x0000000000000007, rs2_data+1408, 4)
  TEST_VIM_OP( 57,  vmsgt.vi, 0x000000000000000b, rs2_data+1536, 4)
  TEST_VIM_OP( 58,  vmsgt.vi, 0x000000000000000a, rs2_data+1664, 4)
  TEST_VIM_OP( 59,  vmsgt.vi, 0x000000000000000b, rs2_data+1792, 4)
  TEST_VIM_OP( 60,  vmsgt.vi, 0x000000000000000a, rs2_data+1920, 4)
  TEST_VIM_OP( 61,  vmsgt.vi, 0x000000000000000b, rs2_data+2048, 4)
  TEST_VIM_OP( 62,  vmsgt.vi, 0x000000000000000b, rs2_data+2176, 4)
  TEST_VIM_OP( 63,  vmsgt.vi, 0x000000000000000a, rs2_data+2304, 4)
  TEST_VIM_OP( 64,  vmsgt.vi, 0x000000000000000b, rs2_data+2432, 4)
  TEST_VIM_OP( 65,  vmsgt.vi, 0x000000000000000b, rs2_data+2560, 4)
  TEST_VIM_OP( 66,  vmsgt.vi, 0x000000000000000a, rs2_data+2688, 4)
  TEST_VIM_OP( 67,  vmsgt.vi, 0x000000000000000b, rs2_data+2816, 4)
  TEST_VIM_OP( 68,  vmsgt.vi, 0x000000000000000b, rs2_data+2944, 4)
  TEST_VIM_OP( 69,  vmsgt.vi, 0x000000000000000a, rs2_data+3072, 4)
  TEST_VIM_OP( 70,  vmsgt.vi, 0x000000000000000b, rs2_data+3200, 4)
  TEST_VIM_OP( 71,  vmsgt.vi, 0x000000000000000a, rs2_data+3328, 4)
  TEST_VIM_OP( 72,  vmsgt.vi, 0x000000000000000b, rs2_data+3456, 4)
  TEST_VIM_OP( 73,  vmsgt.vi, 0x000000000000000b, rs2_data+3584, 4)
  TEST_VIM_OP( 74,  vmsgt.vi, 0x000000000000000a, rs2_data+3712, 4)
  TEST_VIM_OP( 75,  vmsgt.vi, 0x000000000000000b, rs2_data+3840, 4)
  TEST_VIM_OP( 76,  vmsgt.vi, 0x000000000000000b, rs2_data+3968, 4)
  TEST_VIM_OP( 77,  vmsgt.vi, 0x000000000000000a, rs2_data+4096, 4)
  TEST_VIM_OP( 78,  vmsgt.vi, 0x000000000000000b, rs2_data+4224, 4)
  TEST_VIM_OP( 79,  vmsgt.vi, 0x000000000000000b, rs2_data+4352, 4)
  TEST_VIM_OP( 80,  vmsgt.vi, 0x000000000000000a, rs2_data+4480, 4)
  TEST_VIM_OP( 81,  vmsgt.vi, 0x000000000000000b, rs2_data+4608, 4)
  TEST_VIM_OP( 82,  vmsgt.vi, 0x000000000000000a, rs2_data+4736, 4)
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

rd_data_vx:
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314

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
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
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
    

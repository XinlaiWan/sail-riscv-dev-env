#----------------------------------------------------------------------------- 
    # vrsub.S
    #-----------------------------------------------------------------------------
    #
    # Test vrsub instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vrsub)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
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
            inst v16, v8, x1, v0.t; \
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
            inst v16, v8, SEXT_IMM(val1), v0.t; \
        )
#define TEST_VX_OP_12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x2, MASK_XLEN(val1); \
                inst v16, v8, x2, v0.t;  \
        )
#define TEST_VX_OP_13( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x3, MASK_XLEN(val1); \
                inst v16, v8, x3, v0.t;  \
        )
#define TEST_VX_OP_14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x4, MASK_XLEN(val1); \
                inst v16, v8, x4, v0.t;  \
        )
#define TEST_VX_OP_15( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x5, MASK_XLEN(val1); \
                inst v16, v8, x5, v0.t;  \
        )
#define TEST_VX_OP_16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x6, MASK_XLEN(val1); \
                inst v16, v8, x6, v0.t;  \
        )
#define TEST_VX_OP_17( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x7, MASK_XLEN(val1); \
                inst v16, v8, x7, v0.t;  \
        )
#define TEST_VX_OP_18( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x8, MASK_XLEN(val1); \
                inst v16, v8, x8, v0.t;  \
        )
#define TEST_VX_OP_19( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x9, MASK_XLEN(val1); \
                inst v16, v8, x9, v0.t;  \
        )
#define TEST_VX_OP_110( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x10, MASK_XLEN(val1); \
                inst v16, v8, x10, v0.t;  \
        )
#define TEST_VX_OP_111( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x11, MASK_XLEN(val1); \
                inst v16, v8, x11, v0.t;  \
        )
#define TEST_VX_OP_112( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x12, MASK_XLEN(val1); \
                inst v16, v8, x12, v0.t;  \
        )
#define TEST_VX_OP_113( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x13, MASK_XLEN(val1); \
                inst v16, v8, x13, v0.t;  \
        )
#define TEST_VX_OP_114( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x14, MASK_XLEN(val1); \
                inst v16, v8, x14, v0.t;  \
        )
#define TEST_VX_OP_115( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x15, MASK_XLEN(val1); \
                inst v16, v8, x15, v0.t;  \
        )
#define TEST_VX_OP_116( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x16, MASK_XLEN(val1); \
                inst v16, v8, x16, v0.t;  \
        )
#define TEST_VX_OP_117( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x17, MASK_XLEN(val1); \
                inst v16, v8, x17, v0.t;  \
        )
#define TEST_VX_OP_118( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x18, MASK_XLEN(val1); \
                inst v16, v8, x18, v0.t;  \
        )
#define TEST_VX_OP_119( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x19, MASK_XLEN(val1); \
                inst v16, v8, x19, v0.t;  \
        )
#define TEST_VX_OP_120( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x20, MASK_XLEN(val1); \
                inst v16, v8, x20, v0.t;  \
        )
#define TEST_VX_OP_121( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x21, MASK_XLEN(val1); \
                inst v16, v8, x21, v0.t;  \
        )
#define TEST_VX_OP_122( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x22, MASK_XLEN(val1); \
                inst v16, v8, x22, v0.t;  \
        )
#define TEST_VX_OP_123( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x23, MASK_XLEN(val1); \
                inst v16, v8, x23, v0.t;  \
        )
#define TEST_VX_OP_124( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x24, MASK_XLEN(val1); \
                inst v16, v8, x24, v0.t;  \
        )
#define TEST_VX_OP_125( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x25, MASK_XLEN(val1); \
                inst v16, v8, x25, v0.t;  \
        )
#define TEST_VX_OP_126( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x26, MASK_XLEN(val1); \
                inst v16, v8, x26, v0.t;  \
        )
#define TEST_VX_OP_127( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x27, MASK_XLEN(val1); \
                inst v16, v8, x27, v0.t;  \
        )
#define TEST_VX_OP_128( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x28, MASK_XLEN(val1); \
                inst v16, v8, x28, v0.t;  \
        )
#define TEST_VX_OP_129( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x29, MASK_XLEN(val1); \
                inst v16, v8, x29, v0.t;  \
        )
#define TEST_VX_OP_130( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x30, MASK_XLEN(val1); \
                inst v16, v8, x30, v0.t;  \
        )
#define TEST_VX_OP_131( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x31, MASK_XLEN(val1); \
                inst v16, v8, x31, v0.t;  \
        )
#define TEST_VX_OP_rd1( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v1, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v1, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v1, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd2( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v2, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v2, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v2, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd3( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v3, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v3, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v3, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd4( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v4, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v4, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v4, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd5( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v5, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v5, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v5, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd6( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v6, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v6, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v6, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd7( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v7, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v7, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v7, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd8( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v8, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v8, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd9( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v9, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v9, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v9, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd10( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v10, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v10, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v10, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd11( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v11, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v11, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v11, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v12, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v12, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v12, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd13( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v13, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v13, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v13, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v14, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v14, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd15( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v15, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v15, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v15, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v16, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd17( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v17, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v17, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v17, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd18( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v18, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v18, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v18, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd19( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v19, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v19, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v19, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd20( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v20, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v20, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v20, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd21( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v21, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v21, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v21, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd22( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v22, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v22, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v22, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd23( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v23, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v23, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v23, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd24( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v24, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd25( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v25, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v25, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v25, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd26( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v26, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v26, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v26, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd27( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v27, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v27, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v27, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd28( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v28, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v28, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v28, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd29( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v29, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v29, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v29, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd30( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v30, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v30, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v30, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd31( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v31, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v31, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v31, v8, x1, v0.t;  \
        ) 
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VX_OP( 1,  vrsub.vx, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_VX_OP( 2,  vrsub.vx, rd_data_vx+256, rs2_data+256, 0xfffffffffffffffd)
  TEST_VX_OP( 3,  vrsub.vx, rd_data_vx+512, rs2_data+512, 0xfffffffffffffffb)
  TEST_VX_OP( 4,  vrsub.vx, rd_data_vx+768, rs2_data+768, 0xfffffffffffffff7)
  TEST_VX_OP( 5,  vrsub.vx, rd_data_vx+1024, rs2_data+1024, 0xffffffffffffffef)
  TEST_VX_OP( 6,  vrsub.vx, rd_data_vx+1280, rs2_data+1280, 0xffffffffffffffdf)
  TEST_VX_OP( 7,  vrsub.vx, rd_data_vx+1536, rs2_data+1536, 0xffffffffffffffbf)
  TEST_VX_OP( 8,  vrsub.vx, rd_data_vx+1792, rs2_data+1792, 0xffffffffffffff7f)
  TEST_VX_OP( 9,  vrsub.vx, rd_data_vx+2048, rs2_data+2048, 0xfffffffffffffeff)
  TEST_VX_OP( 10,  vrsub.vx, rd_data_vx+2304, rs2_data+2304, 0xfffffffffffffdff)
  TEST_VX_OP( 11,  vrsub.vx, rd_data_vx+2560, rs2_data+2560, 0xfffffffffffffbff)
  TEST_VX_OP( 12,  vrsub.vx, rd_data_vx+2816, rs2_data+2816, 0xfffffffffffff7ff)
  TEST_VX_OP( 13,  vrsub.vx, rd_data_vx+3072, rs2_data+3072, 0xffffffffffffefff)
  TEST_VX_OP( 14,  vrsub.vx, rd_data_vx+3328, rs2_data+3328, 0xffffffffffffdfff)
  TEST_VX_OP( 15,  vrsub.vx, rd_data_vx+3584, rs2_data+3584, 0xffffffffffffbfff)
  TEST_VX_OP( 16,  vrsub.vx, rd_data_vx+3840, rs2_data+3840, 0xffffffffffff7fff)
  TEST_VX_OP( 17,  vrsub.vx, rd_data_vx+4096, rs2_data+4096, 0xfffffffffffeffff)
  TEST_VX_OP( 18,  vrsub.vx, rd_data_vx+4352, rs2_data+4352, 0xfffffffffffdffff)
  TEST_VX_OP( 19,  vrsub.vx, rd_data_vx+4608, rs2_data+4608, 0xfffffffffffbffff)
  TEST_VX_OP_12( 20,  vrsub.vx, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_VX_OP_13( 21,  vrsub.vx, rd_data_vx+256, rs2_data+256, 0xfffffffffffffffd)
  TEST_VX_OP_14( 22,  vrsub.vx, rd_data_vx+512, rs2_data+512, 0xfffffffffffffffb)
  TEST_VX_OP_rd4( 23,  vrsub.vx, rd_data_vx+768, rs2_data+768, 0xfffffffffffffff7)
  TEST_VX_OP_15( 24,  vrsub.vx, rd_data_vx+768, rs2_data+768, 0xfffffffffffffff7)
  TEST_VX_OP_16( 25,  vrsub.vx, rd_data_vx+1024, rs2_data+1024, 0xffffffffffffffef)
  TEST_VX_OP_17( 26,  vrsub.vx, rd_data_vx+1280, rs2_data+1280, 0xffffffffffffffdf)
  TEST_VX_OP_18( 27,  vrsub.vx, rd_data_vx+1536, rs2_data+1536, 0xffffffffffffffbf)
  TEST_VX_OP_19( 28,  vrsub.vx, rd_data_vx+1792, rs2_data+1792, 0xffffffffffffff7f)
  TEST_VX_OP_110( 29,  vrsub.vx, rd_data_vx+2048, rs2_data+2048, 0xfffffffffffffeff)
  TEST_VX_OP_111( 30,  vrsub.vx, rd_data_vx+2304, rs2_data+2304, 0xfffffffffffffdff)
  TEST_VX_OP_112( 31,  vrsub.vx, rd_data_vx+2560, rs2_data+2560, 0xfffffffffffffbff)
  TEST_VX_OP_rd12( 32,  vrsub.vx, rd_data_vx+2816, rs2_data+2816, 0xfffffffffffff7ff)
  TEST_VX_OP_113( 33,  vrsub.vx, rd_data_vx+2816, rs2_data+2816, 0xfffffffffffff7ff)
  TEST_VX_OP_114( 34,  vrsub.vx, rd_data_vx+3072, rs2_data+3072, 0xffffffffffffefff)
  TEST_VX_OP_115( 35,  vrsub.vx, rd_data_vx+3328, rs2_data+3328, 0xffffffffffffdfff)
  TEST_VX_OP_116( 36,  vrsub.vx, rd_data_vx+3584, rs2_data+3584, 0xffffffffffffbfff)
  TEST_VX_OP_117( 37,  vrsub.vx, rd_data_vx+3840, rs2_data+3840, 0xffffffffffff7fff)
  TEST_VX_OP_118( 38,  vrsub.vx, rd_data_vx+4096, rs2_data+4096, 0xfffffffffffeffff)
  TEST_VX_OP_119( 39,  vrsub.vx, rd_data_vx+4352, rs2_data+4352, 0xfffffffffffdffff)
  TEST_VX_OP_120( 40,  vrsub.vx, rd_data_vx+4608, rs2_data+4608, 0xfffffffffffbffff)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VI_OP( 41,  vrsub.vi, rd_data_vi+0, rs2_data+0, 16)
  TEST_VI_OP( 42,  vrsub.vi, rd_data_vi+256, rs2_data+256, 16)
  TEST_VI_OP( 43,  vrsub.vi, rd_data_vi+512, rs2_data+512, 16)
  TEST_VI_OP( 44,  vrsub.vi, rd_data_vi+768, rs2_data+768, 16)
  TEST_VI_OP( 45,  vrsub.vi, rd_data_vi+1024, rs2_data+1024, 16)
  TEST_VI_OP( 46,  vrsub.vi, rd_data_vi+1280, rs2_data+1280, 16)
  TEST_VI_OP( 47,  vrsub.vi, rd_data_vi+1536, rs2_data+1536, 16)
  TEST_VI_OP( 48,  vrsub.vi, rd_data_vi+1792, rs2_data+1792, 16)
  TEST_VI_OP( 49,  vrsub.vi, rd_data_vi+2048, rs2_data+2048, 16)
  TEST_VI_OP( 50,  vrsub.vi, rd_data_vi+2304, rs2_data+2304, 16)
  TEST_VI_OP( 51,  vrsub.vi, rd_data_vi+2560, rs2_data+2560, 16)
  TEST_VI_OP( 52,  vrsub.vi, rd_data_vi+2816, rs2_data+2816, 16)
  TEST_VI_OP( 53,  vrsub.vi, rd_data_vi+3072, rs2_data+3072, 16)
  TEST_VI_OP( 54,  vrsub.vi, rd_data_vi+3328, rs2_data+3328, 16)
  TEST_VI_OP( 55,  vrsub.vi, rd_data_vi+3584, rs2_data+3584, 16)
  TEST_VI_OP( 56,  vrsub.vi, rd_data_vi+3840, rs2_data+3840, 16)
  TEST_VI_OP( 57,  vrsub.vi, rd_data_vi+4096, rs2_data+4096, 16)
  TEST_VI_OP( 58,  vrsub.vi, rd_data_vi+4352, rs2_data+4352, 16)
  TEST_VI_OP( 59,  vrsub.vi, rd_data_vi+4608, rs2_data+4608, 16)
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
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000000f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000000000ff
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x0000000000000fff
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x000000000000ffff
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x00000000000fffff
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x0000000000ffffff
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x000000000fffffff
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x00000000fffffffe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000ffffffffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000fffffffffe
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x00000ffffffffffe
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x0000fffffffffffe
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x000ffffffffffffe
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x00fffffffffffffe
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x0ffffffffffffffe
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffffffa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffffffeb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffffffffefb
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffeffb
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfffffffffffefffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffeffffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffefffffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffeffffffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffefffffff7
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffeffffffff7
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffefffffffff7
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffeffffffffff7
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfffefffffffffff7
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffeffffffffffff7
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfefffffffffffff7
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xeffffffffffffff7
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffec
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xccccccccccccccbc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff4afb0cbc
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffffeb
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffff4afb0cbd
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xccccccccccccccbb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffec
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xccccccccccccccbc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffdd
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xccccccccccccccad
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x5555555555555534
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x00000000b504f311
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x5555555555555535
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x00000000b504f312
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffdf
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffdf
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffb9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff4afb0c8b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffba
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffff4afb0c8c
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffffffffffbb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa69
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999999958
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa6a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999999919
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaaaaaaaaaaaaaa2b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x999999999999991a
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffff79
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffff4afb0c4b
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffff7a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb0c4c
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffff7b
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaa9a9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x9999999999999898
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xaaaaaaaaaaaaa9aa
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x9999999999999899
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xaaaaaaaaaaaaa9ab
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999989a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffffef9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb0bcb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffffdfa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff4afb0acc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffffffffdfb
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaaaaaaaaaaaaa8a9
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x9999999999999798
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaa8aa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999999799
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaa8ab
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999959a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffffbf9
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff4afb08cb
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xfffffffffffffbfa
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffff4afb08cc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffffbfb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaa6a9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999999598
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaa2aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x9999999999999199
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xaaaaaaaaaaaaa2ab
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x999999999999919a
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfffffffffffff7f9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb04cb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffff7fa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb04cc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffeffb
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaaaaaaaaaaaa9aa9
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x9999999999998998
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaaaaaaaaaaaa9aaa
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x9999999999998999
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaa9aab
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999899a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffeff9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afaeccb
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffffdffa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff4afaeccc
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffdffb
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xaaaaaaaaaaaa8aa9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999997998
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaa8aaa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999997999
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaa6aab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x999999999999599a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffbff9
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffff4afacccb
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffffffffbffa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afacccc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffbffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaa6aa9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999991998
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaaaaaaaaaaaa2aaa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x9999999999991999
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaaaaaaaaaaaa2aab
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x999999999999199a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffff7ff9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afa8ccb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffff7ffa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afa0ccc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffefffb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xaaaaaaaaaaa9aaa9
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x9999999999989998
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xaaaaaaaaaaa9aaaa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999989999
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaa9aaab
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999998999a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffdfff9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff4af90ccb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffffffdfffa
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffff4af90ccc
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfffffffffffdfffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaa8aaa9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999979998
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaa8aaaa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999959999
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaaaaaaaaaaa6aaab
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x999999999995999a
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xfffffffffffbfff9
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffff4af70ccb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffbfffa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4af70ccc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffbfffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x0000000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x000000000000000f
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000000000ff
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x0000000000000fff
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x000000000000ffff
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x00000000000fffff
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x0000000000ffffff
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x000000000fffffff
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x00000000fffffffe
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000ffffffffe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000fffffffffe
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x00000ffffffffffe
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x0000fffffffffffe
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x000ffffffffffffe
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x00fffffffffffffe
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x0ffffffffffffffe
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffffffa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffffffeb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffffffffefb
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffeffb
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfffffffffffefffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffeffffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffefffffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffeffffffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffefffffff7
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffeffffffff7
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffefffffffff7
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffeffffffffff7
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfffefffffffffff7
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffeffffffffffff7
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfefffffffffffff7
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xeffffffffffffff7
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffefffffff7
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffeffffffff7
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffefffffffff7
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffeffffffffff7
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfffefffffffffff7
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffeffffffffffff7
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfefffffffffffff7
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xeffffffffffffff7
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffec
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xccccccccccccccbc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff4afb0cbc
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffffeb
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffff4afb0cbd
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xccccccccccccccbb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffec
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xccccccccccccccbc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffdd
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xccccccccccccccad
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x5555555555555534
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x00000000b504f311
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x5555555555555535
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x00000000b504f312
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffdf
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffdf
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffb9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff4afb0c8b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffba
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffff4afb0c8c
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffffffffffbb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa69
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999999958
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa6a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999999919
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaaaaaaaaaaaaaa2b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x999999999999991a
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffff79
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffff4afb0c4b
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffff7a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb0c4c
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffff7b
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaa9a9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x9999999999999898
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xaaaaaaaaaaaaa9aa
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x9999999999999899
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xaaaaaaaaaaaaa9ab
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999989a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffffef9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb0bcb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffffdfa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff4afb0acc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffffffffdfb
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaaaaaaaaaaaaa8a9
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x9999999999999798
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaa8aa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999999799
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaa8ab
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999959a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffffbf9
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff4afb08cb
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xfffffffffffffbfa
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffff4afb08cc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffffbfb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaa6a9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999999598
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaa2aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x9999999999999199
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xaaaaaaaaaaaaa2ab
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x999999999999919a
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfffffffffffff7f9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb04cb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffff7fa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb04cc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaa2aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x9999999999999199
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xaaaaaaaaaaaaa2ab
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x999999999999919a
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfffffffffffff7f9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb04cb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffff7fa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb04cc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffeffb
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaaaaaaaaaaaa9aa9
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x9999999999998998
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaaaaaaaaaaaa9aaa
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x9999999999998999
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaa9aab
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999899a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffeff9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afaeccb
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffffdffa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff4afaeccc
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffdffb
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xaaaaaaaaaaaa8aa9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999997998
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaa8aaa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999997999
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaa6aab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x999999999999599a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffbff9
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffff4afacccb
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffffffffbffa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afacccc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffbffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaa6aa9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999991998
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaaaaaaaaaaaa2aaa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x9999999999991999
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaaaaaaaaaaaa2aab
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x999999999999199a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffff7ff9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afa8ccb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffff7ffa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afa0ccc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xfffffffffffefffb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xaaaaaaaaaaa9aaa9
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x9999999999989998
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xaaaaaaaaaaa9aaaa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999989999
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaa9aaab
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999998999a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffdfff9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff4af90ccb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffffffdfffa
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffff4af90ccc
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfffffffffffdfffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaa8aaa9
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999979998
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaa8aaaa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999959999
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaaaaaaaaaaa6aaab
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x999999999995999a
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xfffffffffffbfff9
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffff4af70ccb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffbfffa
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4af70ccc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffbfffb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef

rd_data_vi:
.dword	0xfffffffffffffff2
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000000000001
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x00000000000000f1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x0000000000000ff1
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x000000000000fff1
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x00000000000ffff1
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x0000000000fffff1
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x000000000ffffff1
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x00000000fffffff1
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x0000000ffffffff1
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x000000fffffffff1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x00000ffffffffff1
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x0000fffffffffff1
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x000ffffffffffff1
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x00fffffffffffff1
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x0ffffffffffffff1
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffef
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffffffe0
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffffffffffef0
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffeff0
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfffffffffffefff0
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffeffff0
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffefffff0
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffeffffff0
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffefffffff0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffeffffffff0
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfffffefffffffff0
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffeffffffffff0
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfffefffffffffff0
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffeffffffffffff0
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfefffffffffffff0
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xeffffffffffffff0
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffed
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xccccccccccccccbd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff4afb0cbd
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffffec
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffff4afb0cbe
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xccccccccccccccbc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffed
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xccccccccccccccbd
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffee
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xccccccccccccccbe
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x5555555555555545
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x00000000b504f322
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x5555555555555546
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x00000000b504f323
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffffff0
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xfffffffffffffff0
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffea
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff4afb0cbc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffeb
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffff4afb0cbd
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffffffffffec
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999999989
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9b
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999998a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaaaaaaaaaaaaaa9c
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x999999999999998b
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffffea
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffff4afb0cbc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffeb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb0cbd
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffec
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x9999999999999989
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xaaaaaaaaaaaaaa9b
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x999999999999998a
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xaaaaaaaaaaaaaa9c
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999998b
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffea
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb0cbc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffeb
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff4afb0cbd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffec
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaaaaaaaaaaaaaa9a
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x9999999999999989
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9b
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999998a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9c
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999998b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffffffea
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff4afb0cbc
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffffeb
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffff4afb0cbd
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffec
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999999989
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9b
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x999999999999998a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xaaaaaaaaaaaaaa9c
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x999999999999998b
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffffffffffea
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb0cbc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffeb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb0cbd
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffec
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaaaaaaaaaaaaaa9a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x9999999999999989
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaaaaaaaaaaaaaa9b
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x999999999999998a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9c
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999998b
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffea
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb0cbc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffffffeb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffff4afb0cbd
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffffec
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xaaaaaaaaaaaaaa9a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999999989
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9b
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999998a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9c
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x999999999999998b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffea
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffff4afb0cbc
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffffffffffeb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb0cbd
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffec
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999999989
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaaaaaaaaaaaaaa9b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x999999999999998a
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaaaaaaaaaaaaaa9c
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x999999999999998b
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffea
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb0cbc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffeb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb0cbd
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffffffffffec
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xaaaaaaaaaaaaaa9a
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x9999999999999989
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xaaaaaaaaaaaaaa9b
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999998a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9c
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999998b
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffea
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xffffffff4afb0cbc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xffffffffffffffeb
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffff4afb0cbd
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffffffffffec
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9a
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x9999999999999989
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xaaaaaaaaaaaaaa9b
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0x999999999999998a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaaaaaaaaaaaaaa9c
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x999999999999998b
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xffffffffffffffea
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xffffffff4afb0cbc
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffeb
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffff4afb0cbd
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xffffffffffffffec
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef
.dword	0xdeadbeefdeadbeef

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
    

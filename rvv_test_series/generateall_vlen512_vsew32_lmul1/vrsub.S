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
            vle32.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            li x1, MASK_XLEN(val1); \
            inst v16, v8, x1, v0.t; \
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
            inst v16, v8, SEXT_IMM(val1), v0.t; \
        )
#define TEST_VX_OP_12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x2, MASK_XLEN(val1); \
                inst v16, v8, x2, v0.t;  \
        )
#define TEST_VX_OP_13( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x3, MASK_XLEN(val1); \
                inst v16, v8, x3, v0.t;  \
        )
#define TEST_VX_OP_14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x4, MASK_XLEN(val1); \
                inst v16, v8, x4, v0.t;  \
        )
#define TEST_VX_OP_15( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x5, MASK_XLEN(val1); \
                inst v16, v8, x5, v0.t;  \
        )
#define TEST_VX_OP_16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x6, MASK_XLEN(val1); \
                inst v16, v8, x6, v0.t;  \
        )
#define TEST_VX_OP_17( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x7, MASK_XLEN(val1); \
                inst v16, v8, x7, v0.t;  \
        )
#define TEST_VX_OP_18( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x8, MASK_XLEN(val1); \
                inst v16, v8, x8, v0.t;  \
        )
#define TEST_VX_OP_19( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x9, MASK_XLEN(val1); \
                inst v16, v8, x9, v0.t;  \
        )
#define TEST_VX_OP_110( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x10, MASK_XLEN(val1); \
                inst v16, v8, x10, v0.t;  \
        )
#define TEST_VX_OP_111( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x11, MASK_XLEN(val1); \
                inst v16, v8, x11, v0.t;  \
        )
#define TEST_VX_OP_112( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x12, MASK_XLEN(val1); \
                inst v16, v8, x12, v0.t;  \
        )
#define TEST_VX_OP_113( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x13, MASK_XLEN(val1); \
                inst v16, v8, x13, v0.t;  \
        )
#define TEST_VX_OP_114( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x14, MASK_XLEN(val1); \
                inst v16, v8, x14, v0.t;  \
        )
#define TEST_VX_OP_115( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x15, MASK_XLEN(val1); \
                inst v16, v8, x15, v0.t;  \
        )
#define TEST_VX_OP_116( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x16, MASK_XLEN(val1); \
                inst v16, v8, x16, v0.t;  \
        )
#define TEST_VX_OP_117( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x17, MASK_XLEN(val1); \
                inst v16, v8, x17, v0.t;  \
        )
#define TEST_VX_OP_118( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x18, MASK_XLEN(val1); \
                inst v16, v8, x18, v0.t;  \
        )
#define TEST_VX_OP_119( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x19, MASK_XLEN(val1); \
                inst v16, v8, x19, v0.t;  \
        )
#define TEST_VX_OP_120( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x20, MASK_XLEN(val1); \
                inst v16, v8, x20, v0.t;  \
        )
#define TEST_VX_OP_121( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x21, MASK_XLEN(val1); \
                inst v16, v8, x21, v0.t;  \
        )
#define TEST_VX_OP_122( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x22, MASK_XLEN(val1); \
                inst v16, v8, x22, v0.t;  \
        )
#define TEST_VX_OP_123( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x23, MASK_XLEN(val1); \
                inst v16, v8, x23, v0.t;  \
        )
#define TEST_VX_OP_124( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x24, MASK_XLEN(val1); \
                inst v16, v8, x24, v0.t;  \
        )
#define TEST_VX_OP_125( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x25, MASK_XLEN(val1); \
                inst v16, v8, x25, v0.t;  \
        )
#define TEST_VX_OP_126( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x26, MASK_XLEN(val1); \
                inst v16, v8, x26, v0.t;  \
        )
#define TEST_VX_OP_127( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x27, MASK_XLEN(val1); \
                inst v16, v8, x27, v0.t;  \
        )
#define TEST_VX_OP_128( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x28, MASK_XLEN(val1); \
                inst v16, v8, x28, v0.t;  \
        )
#define TEST_VX_OP_129( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x29, MASK_XLEN(val1); \
                inst v16, v8, x29, v0.t;  \
        )
#define TEST_VX_OP_130( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x30, MASK_XLEN(val1); \
                inst v16, v8, x30, v0.t;  \
        )
#define TEST_VX_OP_131( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x31, MASK_XLEN(val1); \
                inst v16, v8, x31, v0.t;  \
        )
#define TEST_VX_OP_rd1( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v1, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v1, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v1, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd2( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v2, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v2, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v2, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd3( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v3, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v3, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v3, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd4( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v4, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v4, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v4, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd5( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v5, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v5, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v5, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd6( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v6, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v6, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v6, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd7( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v7, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v7, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v7, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd8( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v8, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v8, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd9( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v9, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v9, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v9, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd10( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v10, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v10, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v10, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd11( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v11, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v11, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v11, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v12, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v12, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v12, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd13( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v13, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v13, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v13, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v14, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v14, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd15( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v15, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v15, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v15, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v16, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd17( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v17, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v17, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v17, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd18( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v18, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v18, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v18, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd19( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v19, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v19, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v19, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd20( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v20, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v20, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v20, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd21( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v21, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v21, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v21, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd22( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v22, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v22, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v22, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd23( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v23, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v23, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v23, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd24( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v24, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd25( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v25, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v25, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v25, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd26( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v26, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v26, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v26, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd27( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v27, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v27, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v27, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd28( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v28, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v28, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v28, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd29( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v29, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v29, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v29, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd30( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v30, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v30, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v30, v8, x1, v0.t;  \
        ) 
#define TEST_VX_OP_rd31( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v31, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v31, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle32.v v8, (x7); \
                li x1, MASK_XLEN(val1); \
                inst v31, v8, x1, v0.t;  \
        ) 
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VX_OP( 1,  vrsub.vx, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_VX_OP( 2,  vrsub.vx, rd_data_vx+64, rs2_data+64, 0xfffffffffffffffd)
  TEST_VX_OP( 3,  vrsub.vx, rd_data_vx+128, rs2_data+128, 0xfffffffffffffffb)
  TEST_VX_OP( 4,  vrsub.vx, rd_data_vx+192, rs2_data+192, 0xfffffffffffffff7)
  TEST_VX_OP( 5,  vrsub.vx, rd_data_vx+256, rs2_data+256, 0xffffffffffffffef)
  TEST_VX_OP( 6,  vrsub.vx, rd_data_vx+320, rs2_data+320, 0xffffffffffffffdf)
  TEST_VX_OP( 7,  vrsub.vx, rd_data_vx+384, rs2_data+384, 0xffffffffffffffbf)
  TEST_VX_OP( 8,  vrsub.vx, rd_data_vx+448, rs2_data+448, 0xffffffffffffff7f)
  TEST_VX_OP( 9,  vrsub.vx, rd_data_vx+512, rs2_data+512, 0xfffffffffffffeff)
  TEST_VX_OP( 10,  vrsub.vx, rd_data_vx+576, rs2_data+576, 0xfffffffffffffdff)
  TEST_VX_OP( 11,  vrsub.vx, rd_data_vx+640, rs2_data+640, 0xfffffffffffffbff)
  TEST_VX_OP( 12,  vrsub.vx, rd_data_vx+704, rs2_data+704, 0xfffffffffffff7ff)
  TEST_VX_OP( 13,  vrsub.vx, rd_data_vx+768, rs2_data+768, 0xffffffffffffefff)
  TEST_VX_OP( 14,  vrsub.vx, rd_data_vx+832, rs2_data+832, 0xffffffffffffdfff)
  TEST_VX_OP( 15,  vrsub.vx, rd_data_vx+896, rs2_data+896, 0xffffffffffffbfff)
  TEST_VX_OP( 16,  vrsub.vx, rd_data_vx+960, rs2_data+960, 0xffffffffffff7fff)
  TEST_VX_OP( 17,  vrsub.vx, rd_data_vx+1024, rs2_data+1024, 0xfffffffffffeffff)
  TEST_VX_OP( 18,  vrsub.vx, rd_data_vx+1088, rs2_data+1088, 0xfffffffffffdffff)
  TEST_VX_OP( 19,  vrsub.vx, rd_data_vx+1152, rs2_data+1152, 0xfffffffffffbffff)
  TEST_VX_OP( 20,  vrsub.vx, rd_data_vx+1216, rs2_data+1216, 0xfffffffffff7ffff)
  TEST_VX_OP( 21,  vrsub.vx, rd_data_vx+1280, rs2_data+1280, 0xffffffffffefffff)
  TEST_VX_OP( 22,  vrsub.vx, rd_data_vx+1344, rs2_data+1344, 0xffffffffffdfffff)
  TEST_VX_OP( 23,  vrsub.vx, rd_data_vx+1408, rs2_data+1408, 0xffffffffffbfffff)
  TEST_VX_OP( 24,  vrsub.vx, rd_data_vx+1472, rs2_data+1472, 0xffffffffff7fffff)
  TEST_VX_OP( 25,  vrsub.vx, rd_data_vx+1536, rs2_data+1536, 0xfffffffffeffffff)
  TEST_VX_OP( 26,  vrsub.vx, rd_data_vx+1600, rs2_data+1600, 0xfffffffffdffffff)
  TEST_VX_OP( 27,  vrsub.vx, rd_data_vx+1664, rs2_data+1664, 0xfffffffffbffffff)
  TEST_VX_OP( 28,  vrsub.vx, rd_data_vx+1728, rs2_data+1728, 0xfffffffff7ffffff)
  TEST_VX_OP( 29,  vrsub.vx, rd_data_vx+1792, rs2_data+1792, 0xffffffffefffffff)
  TEST_VX_OP( 30,  vrsub.vx, rd_data_vx+1856, rs2_data+1856, 0xffffffffdfffffff)
  TEST_VX_OP( 31,  vrsub.vx, rd_data_vx+1920, rs2_data+1920, 0xffffffffbfffffff)
  TEST_VX_OP( 32,  vrsub.vx, rd_data_vx+1984, rs2_data+1984, 0x0000007fffffff)
  TEST_VX_OP( 33,  vrsub.vx, rd_data_vx+2048, rs2_data+2048, 0x00000000000001)
  TEST_VX_OP( 34,  vrsub.vx, rd_data_vx+2112, rs2_data+2112, 0x00000000000002)
  TEST_VX_OP_rd1( 35,  vrsub.vx, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_VX_OP_12( 36,  vrsub.vx, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_VX_OP_rd2( 37,  vrsub.vx, rd_data_vx+64, rs2_data+64, 0xfffffffffffffffd)
  TEST_VX_OP_13( 38,  vrsub.vx, rd_data_vx+64, rs2_data+64, 0xfffffffffffffffd)
  TEST_VX_OP_rd3( 39,  vrsub.vx, rd_data_vx+128, rs2_data+128, 0xfffffffffffffffb)
  TEST_VX_OP_14( 40,  vrsub.vx, rd_data_vx+128, rs2_data+128, 0xfffffffffffffffb)
  TEST_VX_OP_rd4( 41,  vrsub.vx, rd_data_vx+192, rs2_data+192, 0xfffffffffffffff7)
  TEST_VX_OP_15( 42,  vrsub.vx, rd_data_vx+192, rs2_data+192, 0xfffffffffffffff7)
  TEST_VX_OP_rd5( 43,  vrsub.vx, rd_data_vx+256, rs2_data+256, 0xffffffffffffffef)
  TEST_VX_OP_16( 44,  vrsub.vx, rd_data_vx+256, rs2_data+256, 0xffffffffffffffef)
  TEST_VX_OP_rd6( 45,  vrsub.vx, rd_data_vx+320, rs2_data+320, 0xffffffffffffffdf)
  TEST_VX_OP_17( 46,  vrsub.vx, rd_data_vx+320, rs2_data+320, 0xffffffffffffffdf)
  TEST_VX_OP_rd7( 47,  vrsub.vx, rd_data_vx+384, rs2_data+384, 0xffffffffffffffbf)
  TEST_VX_OP_18( 48,  vrsub.vx, rd_data_vx+384, rs2_data+384, 0xffffffffffffffbf)
  TEST_VX_OP_19( 49,  vrsub.vx, rd_data_vx+448, rs2_data+448, 0xffffffffffffff7f)
  TEST_VX_OP_rd9( 50,  vrsub.vx, rd_data_vx+512, rs2_data+512, 0xfffffffffffffeff)
  TEST_VX_OP_110( 51,  vrsub.vx, rd_data_vx+512, rs2_data+512, 0xfffffffffffffeff)
  TEST_VX_OP_rd10( 52,  vrsub.vx, rd_data_vx+576, rs2_data+576, 0xfffffffffffffdff)
  TEST_VX_OP_111( 53,  vrsub.vx, rd_data_vx+576, rs2_data+576, 0xfffffffffffffdff)
  TEST_VX_OP_rd11( 54,  vrsub.vx, rd_data_vx+640, rs2_data+640, 0xfffffffffffffbff)
  TEST_VX_OP_112( 55,  vrsub.vx, rd_data_vx+640, rs2_data+640, 0xfffffffffffffbff)
  TEST_VX_OP_rd12( 56,  vrsub.vx, rd_data_vx+704, rs2_data+704, 0xfffffffffffff7ff)
  TEST_VX_OP_113( 57,  vrsub.vx, rd_data_vx+704, rs2_data+704, 0xfffffffffffff7ff)
  TEST_VX_OP_rd13( 58,  vrsub.vx, rd_data_vx+768, rs2_data+768, 0xffffffffffffefff)
  TEST_VX_OP_114( 59,  vrsub.vx, rd_data_vx+768, rs2_data+768, 0xffffffffffffefff)
  TEST_VX_OP_rd14( 60,  vrsub.vx, rd_data_vx+832, rs2_data+832, 0xffffffffffffdfff)
  TEST_VX_OP_115( 61,  vrsub.vx, rd_data_vx+832, rs2_data+832, 0xffffffffffffdfff)
  TEST_VX_OP_rd15( 62,  vrsub.vx, rd_data_vx+896, rs2_data+896, 0xffffffffffffbfff)
  TEST_VX_OP_116( 63,  vrsub.vx, rd_data_vx+896, rs2_data+896, 0xffffffffffffbfff)
  TEST_VX_OP_117( 64,  vrsub.vx, rd_data_vx+960, rs2_data+960, 0xffffffffffff7fff)
  TEST_VX_OP_rd17( 65,  vrsub.vx, rd_data_vx+1024, rs2_data+1024, 0xfffffffffffeffff)
  TEST_VX_OP_118( 66,  vrsub.vx, rd_data_vx+1024, rs2_data+1024, 0xfffffffffffeffff)
  TEST_VX_OP_rd18( 67,  vrsub.vx, rd_data_vx+1088, rs2_data+1088, 0xfffffffffffdffff)
  TEST_VX_OP_119( 68,  vrsub.vx, rd_data_vx+1088, rs2_data+1088, 0xfffffffffffdffff)
  TEST_VX_OP_rd19( 69,  vrsub.vx, rd_data_vx+1152, rs2_data+1152, 0xfffffffffffbffff)
  TEST_VX_OP_120( 70,  vrsub.vx, rd_data_vx+1152, rs2_data+1152, 0xfffffffffffbffff)
  TEST_VX_OP_rd20( 71,  vrsub.vx, rd_data_vx+1216, rs2_data+1216, 0xfffffffffff7ffff)
  TEST_VX_OP_121( 72,  vrsub.vx, rd_data_vx+1216, rs2_data+1216, 0xfffffffffff7ffff)
  TEST_VX_OP_rd21( 73,  vrsub.vx, rd_data_vx+1280, rs2_data+1280, 0xffffffffffefffff)
  TEST_VX_OP_122( 74,  vrsub.vx, rd_data_vx+1280, rs2_data+1280, 0xffffffffffefffff)
  TEST_VX_OP_rd22( 75,  vrsub.vx, rd_data_vx+1344, rs2_data+1344, 0xffffffffffdfffff)
  TEST_VX_OP_123( 76,  vrsub.vx, rd_data_vx+1344, rs2_data+1344, 0xffffffffffdfffff)
  TEST_VX_OP_rd23( 77,  vrsub.vx, rd_data_vx+1408, rs2_data+1408, 0xffffffffffbfffff)
  TEST_VX_OP_124( 78,  vrsub.vx, rd_data_vx+1408, rs2_data+1408, 0xffffffffffbfffff)
  TEST_VX_OP_125( 79,  vrsub.vx, rd_data_vx+1472, rs2_data+1472, 0xffffffffff7fffff)
  TEST_VX_OP_rd25( 80,  vrsub.vx, rd_data_vx+1536, rs2_data+1536, 0xfffffffffeffffff)
  TEST_VX_OP_126( 81,  vrsub.vx, rd_data_vx+1536, rs2_data+1536, 0xfffffffffeffffff)
  TEST_VX_OP_rd26( 82,  vrsub.vx, rd_data_vx+1600, rs2_data+1600, 0xfffffffffdffffff)
  TEST_VX_OP_127( 83,  vrsub.vx, rd_data_vx+1600, rs2_data+1600, 0xfffffffffdffffff)
  TEST_VX_OP_rd27( 84,  vrsub.vx, rd_data_vx+1664, rs2_data+1664, 0xfffffffffbffffff)
  TEST_VX_OP_128( 85,  vrsub.vx, rd_data_vx+1664, rs2_data+1664, 0xfffffffffbffffff)
  TEST_VX_OP_rd28( 86,  vrsub.vx, rd_data_vx+1728, rs2_data+1728, 0xfffffffff7ffffff)
  TEST_VX_OP_129( 87,  vrsub.vx, rd_data_vx+1728, rs2_data+1728, 0xfffffffff7ffffff)
  TEST_VX_OP_rd29( 88,  vrsub.vx, rd_data_vx+1792, rs2_data+1792, 0xffffffffefffffff)
  TEST_VX_OP_130( 89,  vrsub.vx, rd_data_vx+1792, rs2_data+1792, 0xffffffffefffffff)
  TEST_VX_OP_rd30( 90,  vrsub.vx, rd_data_vx+1856, rs2_data+1856, 0xffffffffdfffffff)
  TEST_VX_OP_131( 91,  vrsub.vx, rd_data_vx+1856, rs2_data+1856, 0xffffffffdfffffff)
  TEST_VX_OP_rd31( 92,  vrsub.vx, rd_data_vx+1920, rs2_data+1920, 0xffffffffbfffffff)
  TEST_VX_OP_12( 93,  vrsub.vx, rd_data_vx+1920, rs2_data+1920, 0xffffffffbfffffff)
  TEST_VX_OP_rd1( 94,  vrsub.vx, rd_data_vx+1984, rs2_data+1984, 0x0000007fffffff)
  TEST_VX_OP_13( 95,  vrsub.vx, rd_data_vx+1984, rs2_data+1984, 0x0000007fffffff)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VI_OP( 96,  vrsub.vi, rd_data_vi+0, rs2_data+0, 16)
  TEST_VI_OP( 97,  vrsub.vi, rd_data_vi+64, rs2_data+64, 16)
  TEST_VI_OP( 98,  vrsub.vi, rd_data_vi+128, rs2_data+128, 16)
  TEST_VI_OP( 99,  vrsub.vi, rd_data_vi+192, rs2_data+192, 16)
  TEST_VI_OP( 100,  vrsub.vi, rd_data_vi+256, rs2_data+256, 16)
  TEST_VI_OP( 101,  vrsub.vi, rd_data_vi+320, rs2_data+320, 16)
  TEST_VI_OP( 102,  vrsub.vi, rd_data_vi+384, rs2_data+384, 16)
  TEST_VI_OP( 103,  vrsub.vi, rd_data_vi+448, rs2_data+448, 16)
  TEST_VI_OP( 104,  vrsub.vi, rd_data_vi+512, rs2_data+512, 16)
  TEST_VI_OP( 105,  vrsub.vi, rd_data_vi+576, rs2_data+576, 16)
  TEST_VI_OP( 106,  vrsub.vi, rd_data_vi+640, rs2_data+640, 16)
  TEST_VI_OP( 107,  vrsub.vi, rd_data_vi+704, rs2_data+704, 16)
  TEST_VI_OP( 108,  vrsub.vi, rd_data_vi+768, rs2_data+768, 16)
  TEST_VI_OP( 109,  vrsub.vi, rd_data_vi+832, rs2_data+832, 16)
  TEST_VI_OP( 110,  vrsub.vi, rd_data_vi+896, rs2_data+896, 16)
  TEST_VI_OP( 111,  vrsub.vi, rd_data_vi+960, rs2_data+960, 16)
  TEST_VI_OP( 112,  vrsub.vi, rd_data_vi+1024, rs2_data+1024, 16)
  TEST_VI_OP( 113,  vrsub.vi, rd_data_vi+1088, rs2_data+1088, 16)
  TEST_VI_OP( 114,  vrsub.vi, rd_data_vi+1152, rs2_data+1152, 16)
  TEST_VI_OP( 115,  vrsub.vi, rd_data_vi+1216, rs2_data+1216, 16)
  TEST_VI_OP( 116,  vrsub.vi, rd_data_vi+1280, rs2_data+1280, 16)
  TEST_VI_OP( 117,  vrsub.vi, rd_data_vi+1344, rs2_data+1344, 16)
  TEST_VI_OP( 118,  vrsub.vi, rd_data_vi+1408, rs2_data+1408, 16)
  TEST_VI_OP( 119,  vrsub.vi, rd_data_vi+1472, rs2_data+1472, 16)
  TEST_VI_OP( 120,  vrsub.vi, rd_data_vi+1536, rs2_data+1536, 16)
  TEST_VI_OP( 121,  vrsub.vi, rd_data_vi+1600, rs2_data+1600, 16)
  TEST_VI_OP( 122,  vrsub.vi, rd_data_vi+1664, rs2_data+1664, 16)
  TEST_VI_OP( 123,  vrsub.vi, rd_data_vi+1728, rs2_data+1728, 16)
  TEST_VI_OP( 124,  vrsub.vi, rd_data_vi+1792, rs2_data+1792, 16)
  TEST_VI_OP( 125,  vrsub.vi, rd_data_vi+1856, rs2_data+1856, 16)
  TEST_VI_OP( 126,  vrsub.vi, rd_data_vi+1920, rs2_data+1920, 16)
  TEST_VI_OP( 127,  vrsub.vi, rd_data_vi+1984, rs2_data+1984, 16)
  TEST_VI_OP( 128,  vrsub.vi, rd_data_vi+2048, rs2_data+2048, 16)
  TEST_VI_OP( 129,  vrsub.vi, rd_data_vi+2112, rs2_data+2112, 16)
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
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000000ff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000fff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000fffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000ffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00fffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffeb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffefb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffeffb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffefff7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffeffff7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfefffff7
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xeffffff7
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffec
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccbc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff4aeb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffeb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff4adc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffdc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xccccccac
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccc8d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555514
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b4c2
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x555554d5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b483
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff7f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffff7f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffef9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff49fa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffefa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff49fb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffdfb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaa8a9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99999798
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaa8aa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x99999599
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaa6ab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9999959a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffbf9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff42fa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff7fa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff42fb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffff7fb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa9aa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99998998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa9aaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99998999
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa8aab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999799a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffdff9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff2afa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffbffa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff0afb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffbffb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa6aa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x99991998
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa2aaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99991999
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa2aab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9998999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffefff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffe4afa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffefffa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffd4afb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffdfffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaa8aaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99979998
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaa6aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99959999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaa6aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x9995999a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfff7fff9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff74afa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfff7fffa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfff74afb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffeffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaa9aaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99899998
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaa9aaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x99799999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaa8aaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9979999a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffdffff9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffbf4afa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffbffffa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffbf4afb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffbffffb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaa2aaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99199998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaa2aaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99199999
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xa9aaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9899999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfefffff9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfeff4afa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfdfffffa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfdff4afb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfdfffffb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xa8aaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x95999998
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa6aaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x95999999
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xa6aaaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9199999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7fffff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7ff4afa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf7fffffa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xefff4afb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeffffffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9aaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x89999998
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x79999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7999999a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbffffff9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbfff4afa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbffffffa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xbfff4afb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7ffffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999998
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9999999b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaaad
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9999999c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff4afd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff4afe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000000ff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000fff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000000ff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000fff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000fffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000ffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00fffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000fffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000ffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00fffffe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ffffffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffeb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffefb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffeffb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffffa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffeb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffefb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffeffb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffefff7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffeffff7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfefffff7
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xeffffff7
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffefff7
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffeffff7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfefffff7
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xeffffff7
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffec
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccbc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff4aeb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffeb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffec
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccbc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff4aeb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffeb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff4adc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffdc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xccccccac
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff4adc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffdc
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xccccccac
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccc8d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555514
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b4c2
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccc8d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555514
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b4c2
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x555554d5
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b483
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff7f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffff7f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffef9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff49fa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffefa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff49fb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffef9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff49fa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffefa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff49fb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffdfb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaa8a9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99999798
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaa8aa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffdfb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaa8a9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99999798
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaa8aa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x99999599
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaa6ab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9999959a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffbf9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x99999599
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaa6ab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9999959a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffbf9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff42fa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff7fa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff42fb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffff7fb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff42fa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffff7fa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff42fb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffff7fb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa9aa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99998998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa9aaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99998999
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa9aa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99998998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa9aaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99998999
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa8aab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999799a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffdff9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff2afa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa8aab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999799a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffdff9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff2afa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffbffa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff0afb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffbffb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa6aa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffbffa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff0afb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffbffb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa6aa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x99991998
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa2aaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99991999
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa2aab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9998999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffefff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffe4afa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffefffa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9998999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffefff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffe4afa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffefffa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffd4afb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffdfffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaa8aaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99979998
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffd4afb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffdfffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaa8aaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99979998
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaa6aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99959999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaa6aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x9995999a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaa6aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99959999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaa6aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x9995999a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfff7fff9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff74afa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfff7fffa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfff74afb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfff7fff9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff74afa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfff7fffa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfff74afb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffeffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaa9aaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99899998
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaa9aaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffeffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaa9aaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99899998
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaa9aaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x99799999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaa8aaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9979999a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffdffff9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x99799999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaa8aaaab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9979999a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffdffff9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffbf4afa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffbffffa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffbf4afb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffbffffb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffbf4afa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffbffffa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffbf4afb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffbffffb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaa2aaaa9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99199998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaa2aaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99199999
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xa9aaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9899999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfefffff9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfeff4afa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xa9aaaaab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9899999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfefffff9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfeff4afa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfdfffffa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfdff4afb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfdfffffb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xa8aaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfdfffffa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfdff4afb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfdfffffb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xa8aaaaa9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x95999998
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa6aaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x95999999
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xa6aaaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x95999998
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa6aaaaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x95999999
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xa6aaaaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9199999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7fffff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7ff4afa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf7fffffa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9199999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7fffff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf7ff4afa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf7fffffa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xefff4afb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeffffffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9aaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x89999998
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xefff4afb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xeffffffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9aaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x89999998
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x79999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7999999a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x79999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8aaaaaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7999999a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbffffff9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbfff4afa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbffffffa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xbfff4afb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbffffff9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbfff4afa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbffffffa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xbfff4afb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7ffffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999998
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7ffffffb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2aaaaaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x19999998
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2aaaaaaa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf

rd_data_vi:
.word	0xfffffff2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000000f1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000ff1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000fff1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000ffff1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00fffff1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ffffff1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffef
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffe0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffef0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffeff0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffefff0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffeffff0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfefffff0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xeffffff0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffed
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccbd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff4aec
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffec
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff4aed
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccbc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffed
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xccccccbd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffee
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xccccccbe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555545
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b4f3
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555546
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b4f4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffff0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffff0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffea
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff4aeb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffeb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff4aec
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffec
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaa9a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99999989
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaa9b
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9999998a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaa9c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9999998b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffea
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff4aeb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffeb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff4aec
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffec
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaa9a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999989
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaa9b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x9999998a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaa9c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999998b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffea
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff4aeb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffeb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff4aec
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffec
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaa9a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x99999989
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaa9b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9999998a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaa9c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9999998b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffea
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff4aeb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffeb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff4aec
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffec
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaa9a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99999989
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaa9b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999998a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaa9c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x9999998b
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffea
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff4aeb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffeb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff4aec
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffec
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaa9a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99999989
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaa9b
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9999998a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaa9c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9999998b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffea
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff4aeb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffeb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff4aec
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffec
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaa9a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999989
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaa9b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x9999998a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaa9c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999998b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffea
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff4aeb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffeb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff4aec
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffec
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaa9a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x99999989
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaa9b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9999998a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaa9c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9999998b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffea
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff4aeb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffeb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff4aec
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffec
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaa9a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99999989
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaa9b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999998a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaa9c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x9999998b
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffea
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff4aeb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffeb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff4aec
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffec
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaa9a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99999989
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaa9b
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9999998a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaaa9c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9999998b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffea
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff4aeb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffeb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff4aec
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffec
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf

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
    

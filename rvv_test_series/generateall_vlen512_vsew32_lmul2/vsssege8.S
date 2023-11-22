#----------------------------------------------------------------------------- 
    # vsssege8.S
    #-----------------------------------------------------------------------------
    #
    # Test vsssege8 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vsssege8)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_CASE_VLSEG3
#define TEST_CASE_VLSEG3( testnum, testreg, eew, correctval1, correctval2, correctval3, code... ) \
            test_ ## testnum: \
                code; \
                li x7, MASK_EEW(correctval1, eew); \
                li x8, MASK_EEW(correctval2, eew); \
                li x9, MASK_EEW(correctval3, eew); \
                li TESTNUM, testnum; \
                vsetivli x31, 1, MK_EEW(eew), tu, mu; \
                VMVXS_AND_MASK_EEW( x14, testreg, eew ) \
                VMVXS_AND_MASK_EEW( x15, v9, eew ) \
                VMVXS_AND_MASK_EEW( x16, v10, eew )\
                VSET_VSEW \
                bne x14, x7, fail; \
                bne x15, x8, fail; \
                bne x16, x9, fail; \
        
#define TEST_VSSSEG3_OP( testnum, load_inst, store_inst, eew, result1, result2, result3, stride, base ) \
        TEST_CASE_VLSEG3( testnum, v8, eew, result1, result2, result3,  \
            la  x1, base; \
            li  x2, stride; \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            li x9, MASK_EEW(result3, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x7; \
            vmv.v.x v9, x8; \
            vmv.v.x v10, x9; \
            VSET_VSEW \
            store_inst v8, (x1), x2; \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.i v8, 0; \
            vmv.v.i v9, 0; \
            vmv.v.i v10, 0; \
            VSET_VSEW \
            load_inst v8, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_11( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x1), x29; \
            load_inst v16, (x1), x29;  \
        )
#define TEST_VSSSEG1_OP_12( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x2, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x2), x29; \
            load_inst v16, (x2), x29;  \
        )
#define TEST_VSSSEG1_OP_13( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x3, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x3), x29; \
            load_inst v16, (x3), x29;  \
        )
#define TEST_VSSSEG1_OP_14( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x4, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x4), x29; \
            load_inst v16, (x4), x29;  \
        )
#define TEST_VSSSEG1_OP_15( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x5, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x5), x29; \
            load_inst v16, (x5), x29;  \
        )
#define TEST_VSSSEG1_OP_16( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x6, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x6), x29; \
            load_inst v16, (x6), x29;  \
        )
#define TEST_VSSSEG1_OP_17( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x7, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x7), x29; \
            load_inst v16, (x7), x29;  \
        )
#define TEST_VSSSEG1_OP_18( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x8, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x8), x29; \
            load_inst v16, (x8), x29;  \
        )
#define TEST_VSSSEG1_OP_19( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x9, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x9), x29; \
            load_inst v16, (x9), x29;  \
        )
#define TEST_VSSSEG1_OP_110( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x10, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x10), x29; \
            load_inst v16, (x10), x29;  \
        )
#define TEST_VSSSEG1_OP_111( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x11, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x11), x29; \
            load_inst v16, (x11), x29;  \
        )
#define TEST_VSSSEG1_OP_112( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x12, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x12), x29; \
            load_inst v16, (x12), x29;  \
        )
#define TEST_VSSSEG1_OP_113( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x13, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x13), x29; \
            load_inst v16, (x13), x29;  \
        )
#define TEST_VSSSEG1_OP_114( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x14, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x14), x29; \
            load_inst v16, (x14), x29;  \
        )
#define TEST_VSSSEG1_OP_115( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x15, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x15), x29; \
            load_inst v16, (x15), x29;  \
        )
#define TEST_VSSSEG1_OP_116( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x16, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x16), x29; \
            load_inst v16, (x16), x29;  \
        )
#define TEST_VSSSEG1_OP_117( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x17, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x17), x29; \
            load_inst v16, (x17), x29;  \
        )
#define TEST_VSSSEG1_OP_118( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x18, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x18), x29; \
            load_inst v16, (x18), x29;  \
        )
#define TEST_VSSSEG1_OP_119( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x19, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x19), x29; \
            load_inst v16, (x19), x29;  \
        )
#define TEST_VSSSEG1_OP_120( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x20, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x20), x29; \
            load_inst v16, (x20), x29;  \
        )
#define TEST_VSSSEG1_OP_121( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x21, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x21), x29; \
            load_inst v16, (x21), x29;  \
        )
#define TEST_VSSSEG1_OP_122( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x22, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x22), x29; \
            load_inst v16, (x22), x29;  \
        )
#define TEST_VSSSEG1_OP_123( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x23, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x23), x29; \
            load_inst v16, (x23), x29;  \
        )
#define TEST_VSSSEG1_OP_124( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x24, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x24), x29; \
            load_inst v16, (x24), x29;  \
        )
#define TEST_VSSSEG1_OP_125( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x25, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x25), x29; \
            load_inst v16, (x25), x29;  \
        )
#define TEST_VSSSEG1_OP_126( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x26, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x26), x29; \
            load_inst v16, (x26), x29;  \
        )
#define TEST_VSSSEG1_OP_127( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x27, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x27), x29; \
            load_inst v16, (x27), x29;  \
        )
#define TEST_VSSSEG1_OP_128( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x28, base;  \
            li  x29, stride; \
            li  x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x28), x29; \
            load_inst v16, (x28), x29;  \
        )
#define TEST_VSSSEG1_OP_rd1( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v1, x7;  \
            VSET_VSEW \
            store_inst v1, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd2( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v2, x7;  \
            VSET_VSEW \
            store_inst v2, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd3( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v3, x7;  \
            VSET_VSEW \
            store_inst v3, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd4( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v4, x7;  \
            VSET_VSEW \
            store_inst v4, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd5( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v5, x7;  \
            VSET_VSEW \
            store_inst v5, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd6( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v6, x7;  \
            VSET_VSEW \
            store_inst v6, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd7( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v7, x7;  \
            VSET_VSEW \
            store_inst v7, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd8( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x7;  \
            VSET_VSEW \
            store_inst v8, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd9( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v9, x7;  \
            VSET_VSEW \
            store_inst v9, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd10( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v10, x7;  \
            VSET_VSEW \
            store_inst v10, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd11( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v11, x7;  \
            VSET_VSEW \
            store_inst v11, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd12( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v12, x7;  \
            VSET_VSEW \
            store_inst v12, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd13( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v13, x7;  \
            VSET_VSEW \
            store_inst v13, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd14( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v14, x7;  \
            VSET_VSEW \
            store_inst v14, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd15( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v15, x7;  \
            VSET_VSEW \
            store_inst v15, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd16( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v16, x7;  \
            VSET_VSEW \
            store_inst v16, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd17( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v17, x7;  \
            VSET_VSEW \
            store_inst v17, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd18( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v18, x7;  \
            VSET_VSEW \
            store_inst v18, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd19( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v19, x7;  \
            VSET_VSEW \
            store_inst v19, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd20( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v20, x7;  \
            VSET_VSEW \
            store_inst v20, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd21( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v21, x7;  \
            VSET_VSEW \
            store_inst v21, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd22( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v22, x7;  \
            VSET_VSEW \
            store_inst v22, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd23( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v23, x7;  \
            VSET_VSEW \
            store_inst v23, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd24( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v24, x7;  \
            VSET_VSEW \
            store_inst v24, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd25( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v25, x7;  \
            VSET_VSEW \
            store_inst v25, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd26( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v26, x7;  \
            VSET_VSEW \
            store_inst v26, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd27( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v27, x7;  \
            VSET_VSEW \
            store_inst v27, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd28( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v28, x7;  \
            VSET_VSEW \
            store_inst v28, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd29( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v29, x7;  \
            VSET_VSEW \
            store_inst v29, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_rd30( testnum, load_inst, store_inst, eew, result, stride, base  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v30, x7;  \
            VSET_VSEW \
            store_inst v30, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSSEG1_OP_130( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x30, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x7; \
            VSET_VSEW \
            store_inst v8, (x30), x2; \
            load_inst v16, (x30), x2;  \
        )
#define TEST_VSSSEG1_OP_129( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x29, base;  \
            li  x2, stride; \
            li  x7, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x7; \
            VSET_VSEW \
            store_inst v8, (x29), x2; \
            load_inst v16, (x29), x2;  \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
   TEST_VSSSEG1_OP( 2, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 4100, 0 + tdat);
   TEST_VSSSEG1_OP( 3, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, -4100, 0 + tdat15);
   TEST_VSSSEG1_OP( 4, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0, 0 + tdat);
   TEST_VSSSEG1_OP( 5, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 1, 0 + tdat);
   TEST_VSSSEG1_OP( 6, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 2, 0 + tdat);
   TEST_VSSSEG1_OP( 7, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 3, 0 + tdat);
   TEST_VSSSEG1_OP( 8, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0, 1 + tdat);
   TEST_VSSSEG1_OP( 9, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 1, 1 + tdat);
   TEST_VSSSEG1_OP( 10, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 2, 1 + tdat);
   TEST_VSSSEG1_OP( 11, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 3, 1 + tdat);
   TEST_VSSSEG1_OP( 12, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0, 2 + tdat);
   TEST_VSSSEG1_OP( 13, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 1, 2 + tdat);
   TEST_VSSSEG1_OP( 14, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 2, 2 + tdat);
   TEST_VSSSEG1_OP( 15, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 3, 2 + tdat);
   TEST_VSSSEG1_OP( 16, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0, 3 + tdat);
   TEST_VSSSEG1_OP( 17, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 1, 3 + tdat);
   TEST_VSSSEG1_OP( 18, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 2, 3 + tdat);
   TEST_VSSSEG1_OP( 19, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 3, 3 + tdat);
   TEST_VSSSEG3_OP( 20, vlsseg3e8.v, vssseg3e8.v, 8, 0xa0,  0xa0,  0xa0, 0, 0 + tdat);
   TEST_VSSSEG3_OP( 21, vlsseg4e8.v, vssseg4e8.v, 8, 0xa0,  0xa0,  0xa0, 0, 0 + tdat);
   TEST_VSSSEG3_OP( 22, vlsseg5e8.v, vssseg5e8.v, 8, 0xa0,  0xa0,  0xa0, 0, 0 + tdat);
   TEST_VSSSEG3_OP( 23, vlsseg6e8.v, vssseg6e8.v, 8, 0xa0,  0xa0,  0xa0, 0, 0 + tdat);
   TEST_VSSSEG3_OP( 24, vlsseg7e8.v, vssseg7e8.v, 8, 0xa0,  0xa0,  0xa0, 0, 0 + tdat);
   TEST_VSSSEG3_OP( 25, vlsseg8e8.v, vssseg8e8.v, 8, 0xa0,  0xa0,  0xa0, 0, 0 + tdat);
   TEST_VSSSEG1_OP( 26, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 4100, 0 + tdat);
   TEST_VSSSEG1_OP( 27, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, -4100, 0 + tdat15);
   TEST_VSSSEG1_OP( 28, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0, 0 + tdat);
   TEST_VSSSEG1_OP( 29, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 1, 0 + tdat);
   TEST_VSSSEG1_OP( 30, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 2, 0 + tdat);
   TEST_VSSSEG1_OP( 31, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 3, 0 + tdat);
   TEST_VSSSEG1_OP( 32, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0, 1 + tdat);
   TEST_VSSSEG1_OP( 33, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 1, 1 + tdat);
   TEST_VSSSEG1_OP( 34, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 2, 1 + tdat);
   TEST_VSSSEG1_OP( 35, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 3, 1 + tdat);
   TEST_VSSSEG1_OP( 36, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0, 2 + tdat);
   TEST_VSSSEG1_OP( 37, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 1, 2 + tdat);
   TEST_VSSSEG1_OP( 38, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 2, 2 + tdat);
   TEST_VSSSEG1_OP( 39, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 3, 2 + tdat);
   TEST_VSSSEG1_OP( 40, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0, 3 + tdat);
   TEST_VSSSEG1_OP( 41, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 1, 3 + tdat);
   TEST_VSSSEG1_OP( 42, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 2, 3 + tdat);
   TEST_VSSSEG1_OP( 43, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 3, 3 + tdat);
   TEST_VSSSEG3_OP( 44, vlsseg3e8.v, vssseg3e8.v, 8, 0xa0,  0xa0,  0xa0, 0, 0 + tdat);
   TEST_VSSSEG3_OP( 45, vlsseg4e8.v, vssseg4e8.v, 8, 0xa0,  0xa0,  0xa0, 0, 0 + tdat);
   TEST_VSSSEG3_OP( 46, vlsseg5e8.v, vssseg5e8.v, 8, 0xa0,  0xa0,  0xa0, 0, 0 + tdat);
   TEST_VSSSEG3_OP( 47, vlsseg6e8.v, vssseg6e8.v, 8, 0xa0,  0xa0,  0xa0, 0, 0 + tdat);
   TEST_VSSSEG3_OP( 48, vlsseg7e8.v, vssseg7e8.v, 8, 0xa0,  0xa0,  0xa0, 0, 0 + tdat);
   TEST_VSSSEG3_OP( 49, vlsseg8e8.v, vssseg8e8.v, 8, 0xa0,  0xa0,  0xa0, 0, 0 + tdat);
    TEST_VSSSEG1_OP_12( 50, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd2( 51, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_13( 52, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_14( 53, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd4( 54, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_15( 55, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_16( 56, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd6( 57, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_17( 58, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_18( 59, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_19( 60, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_110( 61, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd10( 62, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_111( 63, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_112( 64, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd12( 65, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_113( 66, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_114( 67, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd14( 68, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_115( 69, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_116( 70, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_117( 71, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_118( 72, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd18( 73, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_119( 74, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_120( 75, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd20( 76, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_121( 77, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_122( 78, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd22( 79, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_123( 80, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_124( 81, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd24( 82, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_125( 83, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_126( 84, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd26( 85, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_127( 86, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_128( 87, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd28( 88, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_129( 89, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_130( 90, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd30( 91, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_12( 92, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd2( 93, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_13( 94, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_14( 95, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd4( 96, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_15( 97, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_16( 98, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd6( 99, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_17( 100, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_18( 101, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_19( 102, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_110( 103, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd10( 104, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_111( 105, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_112( 106, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd12( 107, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_113( 108, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_114( 109, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd14( 110, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_115( 111, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_116( 112, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_117( 113, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_118( 114, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd18( 115, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_119( 116, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_120( 117, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd20( 118, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_121( 119, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_122( 120, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd22( 121, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_123( 122, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_124( 123, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd24( 124, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_125( 125, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_126( 126, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd26( 127, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_127( 128, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_128( 129, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd28( 130, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_129( 131, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_130( 132, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd30( 133, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_12( 134, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd2( 135, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_13( 136, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_14( 137, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd4( 138, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_15( 139, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_16( 140, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd6( 141, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_17( 142, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_18( 143, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_19( 144, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_110( 145, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd10( 146, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_111( 147, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_112( 148, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd12( 149, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_113( 150, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_114( 151, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd14( 152, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_115( 153, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_116( 154, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_117( 155, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_118( 156, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd18( 157, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_119( 158, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_120( 159, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd20( 160, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_121( 161, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_122( 162, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd22( 163, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_123( 164, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_124( 165, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd24( 166, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_125( 167, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_126( 168, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd26( 169, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_127( 170, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_128( 171, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd28( 172, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_129( 173, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_130( 174, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd30( 175, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_12( 176, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd2( 177, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_13( 178, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_14( 179, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd4( 180, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_15( 181, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_16( 182, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd6( 183, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_17( 184, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_18( 185, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_19( 186, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
    TEST_VSSSEG1_OP_110( 187, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
   TEST_VSSSEG1_OP_rd10( 188, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_111( 189, vlsseg2e8.v, vssseg2e8.v, 8, 0xa0, 8,  0 + tdat);
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    .type tdat, @object
    .size tdat, 4128
    tdat:
    tdat1:  .word 0x00ff00ff
    tdat2:  .word 0xff00ff00
    tdat3:  .word 0x0ff00ff0
    tdat4:  .word 0xf00ff00f
    tdat5:  .word 0x00ff00ff
    tdat6:  .word 0xff00ff00
    tdat7:  .word 0x0ff00ff0
    tdat8:  .word 0xf00ff00f
    tdat9:  .zero 4064
    tdat10:  .word 0x00ff00ff
    tdat11:  .word 0xff00ff00
    tdat12:  .word 0x0ff00ff0
    tdat13:  .word 0xf00ff00f
    tdat14:  .word 0x00ff00ff
    tdat15:  .word 0xff00ff00
    tdat16:  .word 0x0ff00ff0
    tdat17:  .word 0xf00ff00f
    
    idx8dat:
    idx8dat1:  .byte 0
    idx8dat2:  .byte 4
    idx8dat3:  .byte 8
    idx8dat4:  .byte 12
    idx8dat5:  .word 0x00000000
    idx8dat6:  .word 0x00000000
    idx8dat7:  .word 0x00000000
    idx8dat8:  .zero 5201314
    
    idx16dat:
    idx16dat1:  .word 0x00040000
    idx16dat2:  .word 0x000c0008
    idx16dat3:  .word 0x00140010
    idx16dat4:  .word 0x001c0018
    idx16dat5:  .zero 5201314
    
    idx32dat:
    idx32dat1:  .word 0x00000000
    idx32dat2:  .word 0x00000004
    idx32dat3:  .word 0x00000008
    idx32dat4:  .word 0x0000000c
    idx32dat5:  .zero 5201314
    
    idx64dat:
    idx64dat1:  .word 0x00000000
    idx64dat2:  .word 0x00000000
    idx64dat3:  .word 0x00000004
    idx64dat4:  .word 0x00000000
    idx64dat5:  .word 0x00000008
    idx64dat6:  .word 0x00000000
    idx64dat7:  .word 0x0000000c
    idx64dat8:  .word 0x00000000
    idx64dat9:  .zero 5201314
    
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
    

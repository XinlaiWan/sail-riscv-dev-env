#----------------------------------------------------------------------------- 
    # vsssege16.S
    #-----------------------------------------------------------------------------
    #
    # Test vsssege16 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vsssege16)
    
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
                VMVXS_AND_MASK_EEW( x15, v10, eew ) \
                VMVXS_AND_MASK_EEW( x16, v12, eew )\
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
            vmv.v.x v10, x8; \
            vmv.v.x v12, x9; \
            VSET_VSEW \
            store_inst v8, (x1), x2; \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.i v8, 0; \
            vmv.v.i v10, 0; \
            vmv.v.i v12, 0; \
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
   TEST_VSSSEG1_OP( 2, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 4100, 0 + tdat);
   TEST_VSSSEG1_OP( 3, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, -4100, 0 + tdat15);
   TEST_VSSSEG1_OP( 4, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0, 0 + tdat);
   TEST_VSSSEG1_OP( 5, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0, 2 + tdat);
   TEST_VSSSEG1_OP( 6, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 2, 0 + tdat);
   TEST_VSSSEG1_OP( 7, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 2, 2 + tdat);
   TEST_VSSSEG3_OP( 8, vlsseg3e16.v, vssseg3e16.v, 16, 0xa0a0,  0xa0a0,  0xa0a0, 0, 0 + tdat);
   TEST_VSSSEG3_OP( 9, vlsseg4e16.v, vssseg4e16.v, 16, 0xa0a0,  0xa0a0,  0xa0a0, 0, 0 + tdat);
   TEST_VSSSEG1_OP( 10, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 4100, 0 + tdat);
   TEST_VSSSEG1_OP( 11, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, -4100, 0 + tdat15);
   TEST_VSSSEG1_OP( 12, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0, 0 + tdat);
   TEST_VSSSEG1_OP( 13, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0, 2 + tdat);
   TEST_VSSSEG1_OP( 14, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 2, 0 + tdat);
   TEST_VSSSEG1_OP( 15, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 2, 2 + tdat);
   TEST_VSSSEG3_OP( 16, vlsseg3e16.v, vssseg3e16.v, 16, 0xa0a0,  0xa0a0,  0xa0a0, 0, 0 + tdat);
   TEST_VSSSEG3_OP( 17, vlsseg4e16.v, vssseg4e16.v, 16, 0xa0a0,  0xa0a0,  0xa0a0, 0, 0 + tdat);
    TEST_VSSSEG1_OP_12( 18, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_13( 19, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_14( 20, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd4( 21, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_15( 22, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_16( 23, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_17( 24, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_18( 25, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_19( 26, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_110( 27, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_111( 28, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_112( 29, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd12( 30, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_113( 31, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_114( 32, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_115( 33, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_116( 34, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_117( 35, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_118( 36, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_119( 37, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_120( 38, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd20( 39, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_121( 40, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_122( 41, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_123( 42, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_124( 43, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd24( 44, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_125( 45, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_126( 46, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_127( 47, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_128( 48, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd28( 49, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_129( 50, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_130( 51, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_12( 52, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_13( 53, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_14( 54, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd4( 55, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_15( 56, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_16( 57, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_17( 58, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_18( 59, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_19( 60, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_110( 61, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_111( 62, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_112( 63, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd12( 64, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_113( 65, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_114( 66, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_115( 67, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_116( 68, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_117( 69, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_118( 70, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_119( 71, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_120( 72, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd20( 73, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_121( 74, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_122( 75, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_123( 76, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_124( 77, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd24( 78, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_125( 79, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_126( 80, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_127( 81, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_128( 82, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd28( 83, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_129( 84, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_130( 85, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_12( 86, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_13( 87, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_14( 88, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd4( 89, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_15( 90, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_16( 91, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_17( 92, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_18( 93, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_19( 94, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_110( 95, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_111( 96, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_112( 97, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd12( 98, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_113( 99, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_114( 100, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_115( 101, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_116( 102, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_117( 103, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_118( 104, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_119( 105, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_120( 106, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd20( 107, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_121( 108, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_122( 109, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_123( 110, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_124( 111, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd24( 112, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_125( 113, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_126( 114, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_127( 115, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_128( 116, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd28( 117, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_129( 118, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_130( 119, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_12( 120, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_13( 121, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_14( 122, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
   TEST_VSSSEG1_OP_rd4( 123, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 0,  0 + tdat);
    TEST_VSSSEG1_OP_15( 124, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_16( 125, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_17( 126, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_18( 127, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_19( 128, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_110( 129, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
    TEST_VSSSEG1_OP_111( 130, vlsseg2e16.v, vssseg2e16.v, 16, 0xa0a0, 16,  0 + tdat);
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
    

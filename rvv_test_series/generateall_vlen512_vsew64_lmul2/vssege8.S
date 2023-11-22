#----------------------------------------------------------------------------- 
    # vssege8.S
    #-----------------------------------------------------------------------------
    #
    # Test vssege8 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vssege8)
    
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
        
#undef TEST_VSSEG3_OP
#define TEST_VSSEG3_OP( testnum, load_inst, store_inst, eew, result1, result2, result3, base ) \
        TEST_CASE_VLSEG3( testnum, v8, eew, result1, result2, result3,  \
            la  x1, base; \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            li x9, MASK_EEW(result3, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x7; \
            vmv.v.x v9, x8;  \
            vmv.v.x v10, x9;  \
            VSET_VSEW \
            store_inst v8, (x1); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.i v8, 0; \
            vmv.v.i v9, 0;  \
            vmv.v.i v10, 0;  \
            VSET_VSEW \
            load_inst v8, (x1); \
        )
#define TEST_VSSEG1_OP_11( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSSEG1_OP_12( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x2, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x2); \
            load_inst v16, (x2);  \
        )
#define TEST_VSSEG1_OP_13( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x3, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x3); \
            load_inst v16, (x3);  \
        )
#define TEST_VSSEG1_OP_14( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x4, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x4); \
            load_inst v16, (x4);  \
        )
#define TEST_VSSEG1_OP_15( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x5, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x5); \
            load_inst v16, (x5);  \
        )
#define TEST_VSSEG1_OP_16( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x6, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x6); \
            load_inst v16, (x6);  \
        )
#define TEST_VSSEG1_OP_17( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x7, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x7); \
            load_inst v16, (x7);  \
        )
#define TEST_VSSEG1_OP_18( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x8, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x8); \
            load_inst v16, (x8);  \
        )
#define TEST_VSSEG1_OP_19( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x9, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x9); \
            load_inst v16, (x9);  \
        )
#define TEST_VSSEG1_OP_110( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x10, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x10); \
            load_inst v16, (x10);  \
        )
#define TEST_VSSEG1_OP_111( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x11, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x11); \
            load_inst v16, (x11);  \
        )
#define TEST_VSSEG1_OP_112( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x12, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x12); \
            load_inst v16, (x12);  \
        )
#define TEST_VSSEG1_OP_113( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x13, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x13); \
            load_inst v16, (x13);  \
        )
#define TEST_VSSEG1_OP_114( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x14, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x14); \
            load_inst v16, (x14);  \
        )
#define TEST_VSSEG1_OP_115( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x15, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x15); \
            load_inst v16, (x15);  \
        )
#define TEST_VSSEG1_OP_116( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x16, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x16); \
            load_inst v16, (x16);  \
        )
#define TEST_VSSEG1_OP_117( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x17, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x17); \
            load_inst v16, (x17);  \
        )
#define TEST_VSSEG1_OP_118( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x18, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x18); \
            load_inst v16, (x18);  \
        )
#define TEST_VSSEG1_OP_119( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x19, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x19); \
            load_inst v16, (x19);  \
        )
#define TEST_VSSEG1_OP_120( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x20, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x20); \
            load_inst v16, (x20);  \
        )
#define TEST_VSSEG1_OP_121( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x21, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x21); \
            load_inst v16, (x21);  \
        )
#define TEST_VSSEG1_OP_122( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x22, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x22); \
            load_inst v16, (x22);  \
        )
#define TEST_VSSEG1_OP_123( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x23, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x23); \
            load_inst v16, (x23);  \
        )
#define TEST_VSSEG1_OP_124( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x24, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x24); \
            load_inst v16, (x24);  \
        )
#define TEST_VSSEG1_OP_125( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x25, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x25); \
            load_inst v16, (x25);  \
        )
#define TEST_VSSEG1_OP_126( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x26, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x26); \
            load_inst v16, (x26);  \
        )
#define TEST_VSSEG1_OP_127( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x27, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x27); \
            load_inst v16, (x27);  \
        )
#define TEST_VSSEG1_OP_128( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x28, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x28); \
            load_inst v16, (x28);  \
        )
#define TEST_VSSEG1_OP_129( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x29, base;  \
            li x30, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x29); \
            load_inst v16, (x29);  \
        )
#define TEST_VSSEG1_OP_rd1( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v1, x7;  \
            VSET_VSEW \
            store_inst v1, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd2( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v2, x7;  \
            VSET_VSEW \
            store_inst v2, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd3( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v3, x7;  \
            VSET_VSEW \
            store_inst v3, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd4( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v4, x7;  \
            VSET_VSEW \
            store_inst v4, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd5( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v5, x7;  \
            VSET_VSEW \
            store_inst v5, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd6( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v6, x7;  \
            VSET_VSEW \
            store_inst v6, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd7( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v7, x7;  \
            VSET_VSEW \
            store_inst v7, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd8( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x7;  \
            VSET_VSEW \
            store_inst v8, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd9( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v9, x7;  \
            VSET_VSEW \
            store_inst v9, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd10( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v10, x7;  \
            VSET_VSEW \
            store_inst v10, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd11( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v11, x7;  \
            VSET_VSEW \
            store_inst v11, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd12( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v12, x7;  \
            VSET_VSEW \
            store_inst v12, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd13( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v13, x7;  \
            VSET_VSEW \
            store_inst v13, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd14( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v14, x7;  \
            VSET_VSEW \
            store_inst v14, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd15( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v15, x7;  \
            VSET_VSEW \
            store_inst v15, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd16( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v16, x7;  \
            VSET_VSEW \
            store_inst v16, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd17( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v17, x7;  \
            VSET_VSEW \
            store_inst v17, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd18( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v18, x7;  \
            VSET_VSEW \
            store_inst v18, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd19( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v19, x7;  \
            VSET_VSEW \
            store_inst v19, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd20( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v20, x7;  \
            VSET_VSEW \
            store_inst v20, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd21( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v21, x7;  \
            VSET_VSEW \
            store_inst v21, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd22( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v22, x7;  \
            VSET_VSEW \
            store_inst v22, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd23( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v23, x7;  \
            VSET_VSEW \
            store_inst v23, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd24( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v24, x7;  \
            VSET_VSEW \
            store_inst v24, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd25( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v25, x7;  \
            VSET_VSEW \
            store_inst v25, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd26( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v26, x7;  \
            VSET_VSEW \
            store_inst v26, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd27( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v27, x7;  \
            VSET_VSEW \
            store_inst v27, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd28( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v28, x7;  \
            VSET_VSEW \
            store_inst v28, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd29( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v29, x7;  \
            VSET_VSEW \
            store_inst v29, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_rd30( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li x7, MASK_EEW(result, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v30, x7;  \
            VSET_VSEW \
            store_inst v30, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSSEG1_OP_130( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x30, base;  \
            li x7, MASK_EEW(result, eew);  \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x7; \
            VSET_VSEW \
            store_inst v8, (x30); \
            load_inst v16, (x30);  \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
   TEST_VSSEG1_OP( 2, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat);
   TEST_VSSEG1_OP( 3, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  1 + tdat);
   TEST_VSSEG1_OP( 4, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  2 + tdat);
   TEST_VSSEG1_OP( 5, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  3 + tdat);
   TEST_VSSEG3_OP( 6, vlseg3e8.v, vsseg3e8.v, 8, 0xa0,  0xa0,  0xa0,  0 + tdat);
   TEST_VSSEG3_OP( 7, vlseg4e8.v, vsseg4e8.v, 8, 0xa0,  0xa0,  0xa0,  0 + tdat);
   TEST_VSSEG3_OP( 8, vlseg5e8.v, vsseg5e8.v, 8, 0xa0,  0xa0,  0xa0,  0 + tdat);
   TEST_VSSEG3_OP( 9, vlseg6e8.v, vsseg6e8.v, 8, 0xa0,  0xa0,  0xa0,  0 + tdat);
   TEST_VSSEG3_OP( 10, vlseg7e8.v, vsseg7e8.v, 8, 0xa0,  0xa0,  0xa0,  0 + tdat);
   TEST_VSSEG3_OP( 11, vlseg8e8.v, vsseg8e8.v, 8, 0xa0,  0xa0,  0xa0,  0 + tdat);
   TEST_VSSEG1_OP( 12, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat);
   TEST_VSSEG1_OP( 13, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  1 + tdat);
   TEST_VSSEG1_OP( 14, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  2 + tdat);
   TEST_VSSEG1_OP( 15, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  3 + tdat);
   TEST_VSSEG3_OP( 16, vlseg3e8.v, vsseg3e8.v, 8, 0xa0,  0xa0,  0xa0,  0 + tdat);
   TEST_VSSEG3_OP( 17, vlseg4e8.v, vsseg4e8.v, 8, 0xa0,  0xa0,  0xa0,  0 + tdat);
   TEST_VSSEG3_OP( 18, vlseg5e8.v, vsseg5e8.v, 8, 0xa0,  0xa0,  0xa0,  0 + tdat);
   TEST_VSSEG3_OP( 19, vlseg6e8.v, vsseg6e8.v, 8, 0xa0,  0xa0,  0xa0,  0 + tdat);
   TEST_VSSEG3_OP( 20, vlseg7e8.v, vsseg7e8.v, 8, 0xa0,  0xa0,  0xa0,  0 + tdat);
   TEST_VSSEG3_OP( 21, vlseg8e8.v, vsseg8e8.v, 8, 0xa0,  0xa0,  0xa0,  0 + tdat);
   TEST_VSSEG1_OP_12( 22, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd2( 23, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_13( 24, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_14( 25, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd4( 26, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_15( 27, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_16( 28, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd6( 29, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_17( 30, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_18( 31, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_19( 32, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_110( 33, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd10( 34, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_111( 35, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_112( 36, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd12( 37, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_113( 38, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_114( 39, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd14( 40, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_115( 41, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_116( 42, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_117( 43, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_118( 44, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd18( 45, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_119( 46, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_120( 47, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd20( 48, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_121( 49, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_122( 50, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd22( 51, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_123( 52, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_124( 53, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd24( 54, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_125( 55, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_126( 56, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd26( 57, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_127( 58, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_128( 59, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd28( 60, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_129( 61, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_130( 62, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd30( 63, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_12( 64, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd2( 65, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_13( 66, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_14( 67, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd4( 68, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_15( 69, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_16( 70, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd6( 71, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_17( 72, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_18( 73, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_19( 74, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_110( 75, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd10( 76, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_111( 77, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_112( 78, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd12( 79, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_113( 80, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_114( 81, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd14( 82, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_115( 83, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_116( 84, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_117( 85, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_118( 86, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd18( 87, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_119( 88, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_120( 89, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd20( 90, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_121( 91, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_122( 92, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd22( 93, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_123( 94, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_124( 95, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd24( 96, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_125( 97, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_126( 98, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd26( 99, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_127( 100, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_128( 101, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd28( 102, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_129( 103, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_130( 104, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd30( 105, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_12( 106, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd2( 107, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_13( 108, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_14( 109, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd4( 110, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_15( 111, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_16( 112, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd6( 113, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_17( 114, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_18( 115, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_19( 116, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_110( 117, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd10( 118, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_111( 119, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_112( 120, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd12( 121, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_113( 122, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_114( 123, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd14( 124, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_115( 125, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_116( 126, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_117( 127, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_118( 128, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd18( 129, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_119( 130, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_120( 131, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd20( 132, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_121( 133, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_122( 134, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd22( 135, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_123( 136, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_124( 137, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd24( 138, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_125( 139, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_126( 140, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd26( 141, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_127( 142, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_128( 143, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd28( 144, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_129( 145, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_130( 146, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd30( 147, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_12( 148, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd2( 149, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_13( 150, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_14( 151, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd4( 152, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_15( 153, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_16( 154, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd6( 155, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_17( 156, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_18( 157, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_19( 158, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
   TEST_VSSEG1_OP_110( 159, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
  TEST_VSSEG1_OP_rd10( 160, vlseg2e8.v, vsseg2e8.v, 8, 0xa0,  0 + tdat );
   TEST_VSSEG1_OP_111( 161, vlseg2e8.v, vsseg2e8.v, 8, 0xa0, -8 + tdat8 );
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
    

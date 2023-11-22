#----------------------------------------------------------------------------- 
    # vs2r.S
    #-----------------------------------------------------------------------------
    #
    # Test vs2r instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vs2r)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_VSRE2_OP_11(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_12(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x2, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x2); \
            load_inst v16, (x2);  \
        )
#define TEST_VSRE2_OP_13(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x3, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x3); \
            load_inst v16, (x3);  \
        )
#define TEST_VSRE2_OP_14(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x4, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x4); \
            load_inst v16, (x4);  \
        )
#define TEST_VSRE2_OP_15(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x5, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x5); \
            load_inst v16, (x5);  \
        )
#define TEST_VSRE2_OP_16(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x6, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x6); \
            load_inst v16, (x6);  \
        )
#define TEST_VSRE2_OP_17(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x7, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x7); \
            load_inst v16, (x7);  \
        )
#define TEST_VSRE2_OP_18(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x8, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x8); \
            load_inst v16, (x8);  \
        )
#define TEST_VSRE2_OP_19(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x9, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x9); \
            load_inst v16, (x9);  \
        )
#define TEST_VSRE2_OP_110(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x10, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x10); \
            load_inst v16, (x10);  \
        )
#define TEST_VSRE2_OP_111(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x11, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x11); \
            load_inst v16, (x11);  \
        )
#define TEST_VSRE2_OP_112(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x12, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x12); \
            load_inst v16, (x12);  \
        )
#define TEST_VSRE2_OP_113(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x13, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x13); \
            load_inst v16, (x13);  \
        )
#define TEST_VSRE2_OP_114(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x14, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x14); \
            load_inst v16, (x14);  \
        )
#define TEST_VSRE2_OP_115(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x15, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x15); \
            load_inst v16, (x15);  \
        )
#define TEST_VSRE2_OP_116(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x16, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x16); \
            load_inst v16, (x16);  \
        )
#define TEST_VSRE2_OP_117(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x17, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x17); \
            load_inst v16, (x17);  \
        )
#define TEST_VSRE2_OP_118(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x18, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x18); \
            load_inst v16, (x18);  \
        )
#define TEST_VSRE2_OP_119(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x19, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x19); \
            load_inst v16, (x19);  \
        )
#define TEST_VSRE2_OP_120(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x20, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x20); \
            load_inst v16, (x20);  \
        )
#define TEST_VSRE2_OP_121(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x21, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x21); \
            load_inst v16, (x21);  \
        )
#define TEST_VSRE2_OP_122(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x22, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x22); \
            load_inst v16, (x22);  \
        )
#define TEST_VSRE2_OP_123(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x23, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x23); \
            load_inst v16, (x23);  \
        )
#define TEST_VSRE2_OP_124(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x24, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x24); \
            load_inst v16, (x24);  \
        )
#define TEST_VSRE2_OP_125(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x25, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x25); \
            load_inst v16, (x25);  \
        )
#define TEST_VSRE2_OP_126(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x26, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x26); \
            load_inst v16, (x26);  \
        )
#define TEST_VSRE2_OP_127(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x27, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x27); \
            load_inst v16, (x27);  \
        )
#define TEST_VSRE2_OP_128(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x28, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x28); \
            load_inst v16, (x28);  \
        )
#define TEST_VSRE2_OP_129(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x29, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x29); \
            load_inst v16, (x29);  \
        )
#define TEST_VSRE2_OP_130(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x30, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x30); \
            load_inst v16, (x30);  \
        )
#define TEST_VSRE2_OP_131(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x31, base;  \
            li x29, MASK_EEW(result1, eew); \
            li x30, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x29; \
            vmv.v.x v9, x30; \
            VSET_VSEW \
            store_inst v8, (x31); \
            load_inst v16, (x31);  \
        )
#define TEST_VSRE2_OP_rd1(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v1, x7; \
            vmv.v.x v2, x8; \
            VSET_VSEW \
            store_inst v1, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd2(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v2, x7; \
            vmv.v.x v3, x8; \
            VSET_VSEW \
            store_inst v2, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd3(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v3, x7; \
            vmv.v.x v4, x8; \
            VSET_VSEW \
            store_inst v3, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd4(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v4, x7; \
            vmv.v.x v5, x8; \
            VSET_VSEW \
            store_inst v4, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd5(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v5, x7; \
            vmv.v.x v6, x8; \
            VSET_VSEW \
            store_inst v5, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd6(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v6, x7; \
            vmv.v.x v7, x8; \
            VSET_VSEW \
            store_inst v6, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd7(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v7, x7; \
            vmv.v.x v8, x8; \
            VSET_VSEW \
            store_inst v7, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd8(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v8, x7; \
            vmv.v.x v9, x8; \
            VSET_VSEW \
            store_inst v8, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd9(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v9, x7; \
            vmv.v.x v10, x8; \
            VSET_VSEW \
            store_inst v9, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd10(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v10, x7; \
            vmv.v.x v11, x8; \
            VSET_VSEW \
            store_inst v10, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd11(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v11, x7; \
            vmv.v.x v12, x8; \
            VSET_VSEW \
            store_inst v11, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd12(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v12, x7; \
            vmv.v.x v13, x8; \
            VSET_VSEW \
            store_inst v12, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd13(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v13, x7; \
            vmv.v.x v14, x8; \
            VSET_VSEW \
            store_inst v13, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd14(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v14, x7; \
            vmv.v.x v15, x8; \
            VSET_VSEW \
            store_inst v14, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd15(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v15, x7; \
            vmv.v.x v16, x8; \
            VSET_VSEW \
            store_inst v15, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd16(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v16, x7; \
            vmv.v.x v17, x8; \
            VSET_VSEW \
            store_inst v16, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd17(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v17, x7; \
            vmv.v.x v18, x8; \
            VSET_VSEW \
            store_inst v17, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd18(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v18, x7; \
            vmv.v.x v19, x8; \
            VSET_VSEW \
            store_inst v18, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd19(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v19, x7; \
            vmv.v.x v20, x8; \
            VSET_VSEW \
            store_inst v19, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd20(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v20, x7; \
            vmv.v.x v21, x8; \
            VSET_VSEW \
            store_inst v20, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd21(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v21, x7; \
            vmv.v.x v22, x8; \
            VSET_VSEW \
            store_inst v21, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd22(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v22, x7; \
            vmv.v.x v23, x8; \
            VSET_VSEW \
            store_inst v22, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd23(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v23, x7; \
            vmv.v.x v24, x8; \
            VSET_VSEW \
            store_inst v23, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd24(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v24, x7; \
            vmv.v.x v25, x8; \
            VSET_VSEW \
            store_inst v24, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd25(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v25, x7; \
            vmv.v.x v26, x8; \
            VSET_VSEW \
            store_inst v25, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd26(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v26, x7; \
            vmv.v.x v27, x8; \
            VSET_VSEW \
            store_inst v26, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd27(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v27, x7; \
            vmv.v.x v28, x8; \
            VSET_VSEW \
            store_inst v27, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd28(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v28, x7; \
            vmv.v.x v29, x8; \
            VSET_VSEW \
            store_inst v28, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd29(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v29, x7; \
            vmv.v.x v30, x8; \
            VSET_VSEW \
            store_inst v29, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE2_OP_rd30(  testnum, load_inst, store_inst, eew, result1, result2, base ) \
        TEST_CASE_VLRE( testnum, eew, result1, result2, \
            la  x1, base;  \
            li x7, MASK_EEW(result1, eew); \
            li x8, MASK_EEW(result2, eew); \
            vsetivli x31, 1, MK_EEW(eew), m1, tu, mu; \
            vmv.v.x v30, x7; \
            vmv.v.x v31, x8; \
            VSET_VSEW \
            store_inst v30, (x1); \
            load_inst v16, (x1);  \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VSRE2_OP( 2,  vl2re8.v, vs2r.v,  8 , 0xff, 0xff, 0 + tdat );
  TEST_VSRE2_OP( 3,  vl2re16.v, vs2r.v,  16 , 0xff00, 0xff00,  0 + tdat );
  TEST_VSRE2_OP( 4,  vl2re32.v, vs2r.v,  32 , 0xff0000ff, 0xff0000ff,  0 + tdat );
  TEST_VSRE2_OP_12( 5, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_13( 6, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_14( 7, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd4( 8, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_15( 9, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_16( 10, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_17( 11, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_18( 12, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_19( 13, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_110( 14, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_111( 15, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_112( 16, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd12( 17, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_113( 18, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_114( 19, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_115( 20, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_116( 21, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_117( 22, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_118( 23, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_119( 24, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_120( 25, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd20( 26, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_121( 27, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_122( 28, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_123( 29, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_124( 30, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd24( 31, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_125( 32, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_126( 33, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_127( 34, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_128( 35, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd28( 36, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_129( 37, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_12( 38, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_13( 39, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_14( 40, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd4( 41, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_15( 42, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_16( 43, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_17( 44, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_18( 45, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_19( 46, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_110( 47, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_111( 48, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_112( 49, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd12( 50, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_113( 51, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_114( 52, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_115( 53, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_116( 54, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_117( 55, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_118( 56, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_119( 57, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_120( 58, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd20( 59, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_121( 60, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_122( 61, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_123( 62, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_124( 63, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd24( 64, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_125( 65, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_126( 66, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_127( 67, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_128( 68, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd28( 69, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_129( 70, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_12( 71, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_13( 72, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_14( 73, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd4( 74, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_15( 75, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_16( 76, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_17( 77, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_18( 78, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_19( 79, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_110( 80, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_111( 81, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_112( 82, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd12( 83, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_113( 84, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_114( 85, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_115( 86, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_116( 87, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_117( 88, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_118( 89, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_119( 90, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_120( 91, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd20( 92, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_121( 93, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_122( 94, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_123( 95, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_124( 96, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd24( 97, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_125( 98, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_126( 99, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_127( 100, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_128( 101, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd28( 102, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_129( 103, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_12( 104, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_13( 105, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_14( 106, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd4( 107, vl2re32.v, vs2r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_15( 108, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_16( 109, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_17( 110, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_18( 111, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_19( 112, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_110( 113, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_111( 114, vl2re32.v, vs2r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
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
    

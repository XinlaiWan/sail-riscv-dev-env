#----------------------------------------------------------------------------- 
    # vs8r.S
    #-----------------------------------------------------------------------------
    #
    # Test vs8r instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vs8r)
    
    RVTEST_RV64UV(64,1)
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
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VSRE2_OP( 2,  vl8re8.v, vs8r.v,  8 , 0xff, 0xff, 0 + tdat );
  TEST_VSRE2_OP( 3,  vl8re16.v, vs8r.v,  16 , 0xff00, 0xff00,  0 + tdat );
  TEST_VSRE2_OP( 4,  vl8re32.v, vs8r.v,  32 , 0xff0000ff, 0xff0000ff,  0 + tdat );
  TEST_VSRE2_OP_12( 5, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_13( 6, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_14( 7, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_15( 8, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_16( 9, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_17( 10, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_18( 11, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_19( 12, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_110( 13, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_111( 14, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_112( 15, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_113( 16, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_114( 17, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_115( 18, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_116( 19, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_117( 20, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_118( 21, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_119( 22, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_120( 23, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_121( 24, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_122( 25, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_123( 26, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_124( 27, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd24( 28, vl8re32.v, vs8r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_125( 29, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_126( 30, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_127( 31, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_128( 32, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_129( 33, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_12( 34, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_13( 35, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_14( 36, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_15( 37, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_16( 38, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_17( 39, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_18( 40, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_19( 41, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_110( 42, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_111( 43, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_112( 44, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_113( 45, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_114( 46, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_115( 47, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_116( 48, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_117( 49, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_118( 50, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_119( 51, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_120( 52, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_121( 53, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_122( 54, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_123( 55, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_124( 56, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd24( 57, vl8re32.v, vs8r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_125( 58, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_126( 59, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_127( 60, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_128( 61, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_129( 62, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_12( 63, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_13( 64, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_14( 65, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_15( 66, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_16( 67, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_17( 68, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_18( 69, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_19( 70, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_110( 71, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_111( 72, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_112( 73, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_113( 74, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_114( 75, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_115( 76, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_116( 77, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_117( 78, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_118( 79, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_119( 80, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_120( 81, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_121( 82, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_122( 83, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_123( 84, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_124( 85, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_rd24( 86, vl8re32.v, vs8r.v, 32, 0xf00f00ff, 0xf00f00ff, 0 + tdat );
  TEST_VSRE2_OP_125( 87, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_126( 88, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_127( 89, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_128( 90, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_129( 91, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_12( 92, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_13( 93, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_14( 94, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_15( 95, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_16( 96, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_17( 97, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_18( 98, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_19( 99, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_110( 100, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
  TEST_VSRE2_OP_111( 101, vl8re32.v, vs8r.v, 32, 0xf00fff00, 0xf00f00ff, -8 + tdat4 );
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
    

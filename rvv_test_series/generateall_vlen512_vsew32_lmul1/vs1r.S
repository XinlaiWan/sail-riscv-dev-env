#----------------------------------------------------------------------------- 
    # vs1r.S
    #-----------------------------------------------------------------------------
    #
    # Test vs1r instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vs1r)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_VSRE1_OP_11(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x1); \
            load_inst v16, (x1);  \
        )
#define TEST_VSRE1_OP_12(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x2, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x2); \
            load_inst v16, (x2);  \
        )
#define TEST_VSRE1_OP_13(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x3, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x3); \
            load_inst v16, (x3);  \
        )
#define TEST_VSRE1_OP_14(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x4, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x4); \
            load_inst v16, (x4);  \
        )
#define TEST_VSRE1_OP_15(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x5, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x5); \
            load_inst v16, (x5);  \
        )
#define TEST_VSRE1_OP_16(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x6, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x6); \
            load_inst v16, (x6);  \
        )
#define TEST_VSRE1_OP_17(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x7, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x7); \
            load_inst v16, (x7);  \
        )
#define TEST_VSRE1_OP_18(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x8, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x8); \
            load_inst v16, (x8);  \
        )
#define TEST_VSRE1_OP_19(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x9, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x9); \
            load_inst v16, (x9);  \
        )
#define TEST_VSRE1_OP_110(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x10, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x10); \
            load_inst v16, (x10);  \
        )
#define TEST_VSRE1_OP_111(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x11, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x11); \
            load_inst v16, (x11);  \
        )
#define TEST_VSRE1_OP_112(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x12, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x12); \
            load_inst v16, (x12);  \
        )
#define TEST_VSRE1_OP_113(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x13, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x13); \
            load_inst v16, (x13);  \
        )
#define TEST_VSRE1_OP_114(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x14, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x14); \
            load_inst v16, (x14);  \
        )
#define TEST_VSRE1_OP_115(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x15, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x15); \
            load_inst v16, (x15);  \
        )
#define TEST_VSRE1_OP_116(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x16, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x16); \
            load_inst v16, (x16);  \
        )
#define TEST_VSRE1_OP_117(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x17, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x17); \
            load_inst v16, (x17);  \
        )
#define TEST_VSRE1_OP_118(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x18, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x18); \
            load_inst v16, (x18);  \
        )
#define TEST_VSRE1_OP_119(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x19, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x19); \
            load_inst v16, (x19);  \
        )
#define TEST_VSRE1_OP_120(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x20, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x20); \
            load_inst v16, (x20);  \
        )
#define TEST_VSRE1_OP_121(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x21, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x21); \
            load_inst v16, (x21);  \
        )
#define TEST_VSRE1_OP_122(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x22, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x22); \
            load_inst v16, (x22);  \
        )
#define TEST_VSRE1_OP_123(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x23, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x23); \
            load_inst v16, (x23);  \
        )
#define TEST_VSRE1_OP_124(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x24, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x24); \
            load_inst v16, (x24);  \
        )
#define TEST_VSRE1_OP_125(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x25, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x25); \
            load_inst v16, (x25);  \
        )
#define TEST_VSRE1_OP_126(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x26, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x26); \
            load_inst v16, (x26);  \
        )
#define TEST_VSRE1_OP_127(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x27, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x27); \
            load_inst v16, (x27);  \
        )
#define TEST_VSRE1_OP_128(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x28, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x28); \
            load_inst v16, (x28);  \
        )
#define TEST_VSRE1_OP_129(  testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x29, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x29); \
            load_inst v16, (x29);  \
        )
#define TEST_VSRE1_OP_rd1( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v1, x3;  \
            VSET_VSEW \
            store_inst v1, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd2( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v2, x3;  \
            VSET_VSEW \
            store_inst v2, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd3( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v3, x3;  \
            VSET_VSEW \
            store_inst v3, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd4( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v4, x3;  \
            VSET_VSEW \
            store_inst v4, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd5( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v5, x3;  \
            VSET_VSEW \
            store_inst v5, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd6( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v6, x3;  \
            VSET_VSEW \
            store_inst v6, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd7( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v7, x3;  \
            VSET_VSEW \
            store_inst v7, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd8( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x3;  \
            VSET_VSEW \
            store_inst v8, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd9( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v9, x3;  \
            VSET_VSEW \
            store_inst v9, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd10( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v10, x3;  \
            VSET_VSEW \
            store_inst v10, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd11( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v11, x3;  \
            VSET_VSEW \
            store_inst v11, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd12( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v12, x3;  \
            VSET_VSEW \
            store_inst v12, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd13( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v13, x3;  \
            VSET_VSEW \
            store_inst v13, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd14( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v14, x3;  \
            VSET_VSEW \
            store_inst v14, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd15( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v15, x3;  \
            VSET_VSEW \
            store_inst v15, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd16( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v16, x3;  \
            VSET_VSEW \
            store_inst v16, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd17( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v17, x3;  \
            VSET_VSEW \
            store_inst v17, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd18( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v18, x3;  \
            VSET_VSEW \
            store_inst v18, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd19( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v19, x3;  \
            VSET_VSEW \
            store_inst v19, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd20( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v20, x3;  \
            VSET_VSEW \
            store_inst v20, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd21( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v21, x3;  \
            VSET_VSEW \
            store_inst v21, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd22( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v22, x3;  \
            VSET_VSEW \
            store_inst v22, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd23( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v23, x3;  \
            VSET_VSEW \
            store_inst v23, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd24( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v24, x3;  \
            VSET_VSEW \
            store_inst v24, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd25( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v25, x3;  \
            VSET_VSEW \
            store_inst v25, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd26( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v26, x3;  \
            VSET_VSEW \
            store_inst v26, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd27( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v27, x3;  \
            VSET_VSEW \
            store_inst v27, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd28( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v28, x3;  \
            VSET_VSEW \
            store_inst v28, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd29( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v29, x3;  \
            VSET_VSEW \
            store_inst v29, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_rd30( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v30, x3;  \
            VSET_VSEW \
            store_inst v30, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSRE1_OP_130( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x30, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x3; \
            VSET_VSEW \
            store_inst v8, (x30); \
            load_inst v16, (x30) ;  \
        )
#define TEST_VSRE1_OP_rd31( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v31, x3; \
            VSET_VSEW \
            store_inst v31, (x1); \
            load_inst v16, (x1);  \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VSRE1_OP( 2,  vl1re8.v, vs1r.v,  8 , 0xff, 0 + tdat );
  TEST_VSRE1_OP( 3,  vl1re16.v, vs1r.v,  16 , 0xff00,  0 + tdat );
  TEST_VSRE1_OP( 4,  vl1re32.v, vs1r.v,  32 , 0xff0000ff,  0 + tdat );
  TEST_VSRE1_OP_rd1( 5, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_12( 6, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd2( 7, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_13( 8, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd3( 9, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_14( 10, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd4( 11, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_15( 12, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd5( 13, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_16( 14, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd6( 15, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_17( 16, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd7( 17, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_18( 18, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_19( 19, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd9( 20, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_110( 21, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd10( 22, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_111( 23, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd11( 24, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_112( 25, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd12( 26, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_113( 27, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd13( 28, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_114( 29, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd14( 30, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_115( 31, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd15( 32, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_116( 33, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_117( 34, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd17( 35, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_118( 36, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd18( 37, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_119( 38, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd19( 39, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_120( 40, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd20( 41, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_121( 42, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd21( 43, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_122( 44, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd22( 45, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_123( 46, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd23( 47, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_124( 48, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd24( 49, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_125( 50, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd25( 51, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_126( 52, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd26( 53, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_127( 54, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd27( 55, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_128( 56, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd28( 57, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_129( 58, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd29( 59, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_130( 60, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd30( 61, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_rd1( 62, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_12( 63, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd2( 64, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_13( 65, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd3( 66, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_14( 67, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd4( 68, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_15( 69, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd5( 70, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_16( 71, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd6( 72, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_17( 73, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd7( 74, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_18( 75, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_19( 76, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd9( 77, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_110( 78, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd10( 79, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_111( 80, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd11( 81, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_112( 82, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd12( 83, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_113( 84, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd13( 85, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_114( 86, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd14( 87, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_115( 88, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd15( 89, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_116( 90, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_117( 91, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd17( 92, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_118( 93, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd18( 94, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_119( 95, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd19( 96, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_120( 97, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd20( 98, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_121( 99, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd21( 100, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_122( 101, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd22( 102, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_123( 103, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd23( 104, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_124( 105, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd24( 106, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_125( 107, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd25( 108, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_126( 109, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd26( 110, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_127( 111, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd27( 112, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_128( 113, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd28( 114, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_129( 115, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd29( 116, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_130( 117, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd30( 118, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_rd1( 119, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_12( 120, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd2( 121, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_13( 122, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd3( 123, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_14( 124, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd4( 125, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_15( 126, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd5( 127, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_16( 128, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd6( 129, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_17( 130, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd7( 131, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_18( 132, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_19( 133, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd9( 134, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_110( 135, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd10( 136, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_111( 137, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd11( 138, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_112( 139, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd12( 140, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_113( 141, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd13( 142, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_114( 143, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd14( 144, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_115( 145, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd15( 146, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_116( 147, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_117( 148, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd17( 149, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_118( 150, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd18( 151, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_119( 152, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd19( 153, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_120( 154, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd20( 155, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_121( 156, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd21( 157, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_122( 158, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd22( 159, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_123( 160, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd23( 161, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_124( 162, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd24( 163, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_125( 164, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd25( 165, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_126( 166, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd26( 167, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_127( 168, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd27( 169, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_128( 170, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd28( 171, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_129( 172, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd29( 173, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_130( 174, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd30( 175, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_rd1( 176, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_12( 177, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd2( 178, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_13( 179, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd3( 180, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_14( 181, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd4( 182, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_15( 183, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd5( 184, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_16( 185, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd6( 186, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_17( 187, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd7( 188, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_18( 189, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_19( 190, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd9( 191, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_110( 192, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
  TEST_VSRE1_OP_rd10( 193, vl1re32.v, vs1r.v, 32, 0xf00f00ff, 0 + tdat );
  TEST_VSRE1_OP_111( 194, vl1re32.v, vs1r.v, 32, 0xf00fff00, -8 + tdat4 );
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
    

#----------------------------------------------------------------------------- 
    # vse8.S
    #-----------------------------------------------------------------------------
    #
    # Test vse8 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vse8)
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_VSE_OP_11( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x1); \
            load_inst v16, (x1) ;  \
        )
#define TEST_VSE_OP_12( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x2, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x2); \
            load_inst v16, (x2) ;  \
        )
#define TEST_VSE_OP_13( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x3, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x3); \
            load_inst v16, (x3) ;  \
        )
#define TEST_VSE_OP_14( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x4, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x4); \
            load_inst v16, (x4) ;  \
        )
#define TEST_VSE_OP_15( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x5, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x5); \
            load_inst v16, (x5) ;  \
        )
#define TEST_VSE_OP_16( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x6, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x6); \
            load_inst v16, (x6) ;  \
        )
#define TEST_VSE_OP_17( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x7, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x7); \
            load_inst v16, (x7) ;  \
        )
#define TEST_VSE_OP_18( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x8, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x8); \
            load_inst v16, (x8) ;  \
        )
#define TEST_VSE_OP_19( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x9, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x9); \
            load_inst v16, (x9) ;  \
        )
#define TEST_VSE_OP_110( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x10, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x10); \
            load_inst v16, (x10) ;  \
        )
#define TEST_VSE_OP_111( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x11, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x11); \
            load_inst v16, (x11) ;  \
        )
#define TEST_VSE_OP_112( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x12, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x12); \
            load_inst v16, (x12) ;  \
        )
#define TEST_VSE_OP_113( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x13, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x13); \
            load_inst v16, (x13) ;  \
        )
#define TEST_VSE_OP_114( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x14, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x14); \
            load_inst v16, (x14) ;  \
        )
#define TEST_VSE_OP_115( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x15, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x15); \
            load_inst v16, (x15) ;  \
        )
#define TEST_VSE_OP_116( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x16, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x16); \
            load_inst v16, (x16) ;  \
        )
#define TEST_VSE_OP_117( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x17, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x17); \
            load_inst v16, (x17) ;  \
        )
#define TEST_VSE_OP_118( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x18, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x18); \
            load_inst v16, (x18) ;  \
        )
#define TEST_VSE_OP_119( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x19, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x19); \
            load_inst v16, (x19) ;  \
        )
#define TEST_VSE_OP_120( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x20, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x20); \
            load_inst v16, (x20) ;  \
        )
#define TEST_VSE_OP_121( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x21, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x21); \
            load_inst v16, (x21) ;  \
        )
#define TEST_VSE_OP_122( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x22, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x22); \
            load_inst v16, (x22) ;  \
        )
#define TEST_VSE_OP_123( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x23, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x23); \
            load_inst v16, (x23) ;  \
        )
#define TEST_VSE_OP_124( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x24, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x24); \
            load_inst v16, (x24) ;  \
        )
#define TEST_VSE_OP_125( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x25, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x25); \
            load_inst v16, (x25) ;  \
        )
#define TEST_VSE_OP_126( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x26, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x26); \
            load_inst v16, (x26) ;  \
        )
#define TEST_VSE_OP_127( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x27, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x27); \
            load_inst v16, (x27) ;  \
        )
#define TEST_VSE_OP_128( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x28, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x28); \
            load_inst v16, (x28) ;  \
        )
#define TEST_VSE_OP_129( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x29, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x29); \
            load_inst v16, (x29) ;  \
        )
#define TEST_VSE_OP_rd1( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v1, x30;  \
            VSET_VSEW \
            store_inst v1, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd2( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v2, x30;  \
            VSET_VSEW \
            store_inst v2, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd3( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v3, x30;  \
            VSET_VSEW \
            store_inst v3, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd4( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v4, x30;  \
            VSET_VSEW \
            store_inst v4, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd5( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v5, x30;  \
            VSET_VSEW \
            store_inst v5, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd6( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v6, x30;  \
            VSET_VSEW \
            store_inst v6, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd7( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v7, x30;  \
            VSET_VSEW \
            store_inst v7, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd9( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v9, x30;  \
            VSET_VSEW \
            store_inst v9, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd10( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v10, x30;  \
            VSET_VSEW \
            store_inst v10, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd11( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v11, x30;  \
            VSET_VSEW \
            store_inst v11, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd12( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v12, x30;  \
            VSET_VSEW \
            store_inst v12, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd13( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v13, x30;  \
            VSET_VSEW \
            store_inst v13, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd14( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v14, x30;  \
            VSET_VSEW \
            store_inst v14, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd15( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v15, x30;  \
            VSET_VSEW \
            store_inst v15, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd17( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v17, x30;  \
            VSET_VSEW \
            store_inst v17, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd18( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v18, x30;  \
            VSET_VSEW \
            store_inst v18, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd19( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v19, x30;  \
            VSET_VSEW \
            store_inst v19, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd20( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v20, x30;  \
            VSET_VSEW \
            store_inst v20, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd21( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v21, x30;  \
            VSET_VSEW \
            store_inst v21, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd22( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v22, x30;  \
            VSET_VSEW \
            store_inst v22, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd23( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v23, x30;  \
            VSET_VSEW \
            store_inst v23, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd24( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v24, x30;  \
            VSET_VSEW \
            store_inst v24, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd25( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v25, x30;  \
            VSET_VSEW \
            store_inst v25, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd26( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v26, x30;  \
            VSET_VSEW \
            store_inst v26, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd27( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v27, x30;  \
            VSET_VSEW \
            store_inst v27, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd28( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v28, x30;  \
            VSET_VSEW \
            store_inst v28, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd29( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v29, x30;  \
            VSET_VSEW \
            store_inst v29, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_rd30( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v30, x30;  \
            VSET_VSEW \
            store_inst v30, (x1);  \
            load_inst v16, (x1); \
        )
#define TEST_VSE_OP_130( testnum, load_inst, store_inst, eew, result, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x30, base;  \
            li  x2, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x2; \
            VSET_VSEW \
            store_inst v8, (x30); \
            load_inst v16, (x30) ;  \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VSE_OP( 2, vle8.v, vse8.v,  8 , 0xff,  0 + tdat );
  TEST_VSE_OP( 3, vle8.v, vse8.v,  8 , 0xff,  1 + tdat );
  TEST_VSE_OP( 4, vle8.v, vse8.v,  8 , 0xff,  2 + tdat );
  TEST_VSE_OP( 5, vle8.v, vse8.v,  8 , 0xff,  3 + tdat );
  TEST_VSE_OP( 6, vle8.v, vse8.v,  8 , 0xff,  0 + tdat );
  TEST_VSE_OP( 7, vle8.v, vse8.v,  8 , 0xff,  1 + tdat );
  TEST_VSE_OP( 8, vle8.v, vse8.v,  8 , 0xff,  2 + tdat );
  TEST_VSE_OP( 9, vle8.v, vse8.v,  8 , 0xff,  3 + tdat );
  TEST_VSE_OP_rd1( 10, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_12( 11, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd2( 12, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_13( 13, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd3( 14, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_14( 15, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 16, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 17, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd5( 18, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_16( 19, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd6( 20, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_17( 21, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd7( 22, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_18( 23, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 24, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd9( 25, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_110( 26, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd10( 27, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_111( 28, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd11( 29, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_112( 30, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 31, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 32, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd13( 33, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_114( 34, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd14( 35, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_115( 36, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd15( 37, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_116( 38, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 39, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd17( 40, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_118( 41, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd18( 42, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_119( 43, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd19( 44, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_120( 45, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 46, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 47, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd21( 48, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_122( 49, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd22( 50, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_123( 51, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd23( 52, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_124( 53, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 54, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 55, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd25( 56, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_126( 57, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd26( 58, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_127( 59, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd27( 60, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_128( 61, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 62, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 63, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd29( 64, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_130( 65, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd30( 66, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_rd1( 67, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_12( 68, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd2( 69, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_13( 70, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd3( 71, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_14( 72, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 73, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 74, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd5( 75, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_16( 76, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd6( 77, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_17( 78, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd7( 79, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_18( 80, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 81, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd9( 82, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_110( 83, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd10( 84, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_111( 85, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd11( 86, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_112( 87, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 88, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 89, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd13( 90, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_114( 91, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd14( 92, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_115( 93, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd15( 94, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_116( 95, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 96, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd17( 97, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_118( 98, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd18( 99, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_119( 100, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd19( 101, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_120( 102, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 103, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 104, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd21( 105, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_122( 106, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd22( 107, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_123( 108, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd23( 109, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_124( 110, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 111, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 112, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd25( 113, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_126( 114, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd26( 115, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_127( 116, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd27( 117, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_128( 118, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 119, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 120, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd29( 121, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_130( 122, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd30( 123, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_rd1( 124, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_12( 125, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd2( 126, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_13( 127, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd3( 128, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_14( 129, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 130, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 131, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd5( 132, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_16( 133, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd6( 134, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_17( 135, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd7( 136, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_18( 137, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 138, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd9( 139, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_110( 140, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd10( 141, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_111( 142, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd11( 143, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_112( 144, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 145, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 146, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd13( 147, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_114( 148, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd14( 149, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_115( 150, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd15( 151, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_116( 152, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 153, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd17( 154, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_118( 155, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd18( 156, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_119( 157, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd19( 158, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_120( 159, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 160, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 161, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd21( 162, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_122( 163, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd22( 164, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_123( 165, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd23( 166, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_124( 167, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 168, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 169, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd25( 170, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_126( 171, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd26( 172, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_127( 173, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd27( 174, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_128( 175, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 176, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 177, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd29( 178, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_130( 179, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd30( 180, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_rd1( 181, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_12( 182, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd2( 183, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_13( 184, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd3( 185, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_14( 186, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 187, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 188, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd5( 189, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_16( 190, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd6( 191, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_17( 192, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd7( 193, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_18( 194, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 195, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd9( 196, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_110( 197, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd10( 198, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_111( 199, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
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
    

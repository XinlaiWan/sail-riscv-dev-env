#----------------------------------------------------------------------------- 
    # vse32.S
    #-----------------------------------------------------------------------------
    #
    # Test vse32 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vse32)
    
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
  TEST_VSE_OP( 2, vle32.v, vse32.v,  8 , 0xff,  0 + tdat );
  TEST_VSE_OP( 3, vle32.v, vse32.v,  8 , 0xff,  0 + tdat );
  TEST_VSE_OP_rd1( 4, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_12( 5, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd2( 6, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_13( 7, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd3( 8, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_14( 9, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 10, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 11, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd5( 12, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_16( 13, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd6( 14, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_17( 15, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd7( 16, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_18( 17, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 18, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd9( 19, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_110( 20, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd10( 21, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_111( 22, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd11( 23, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_112( 24, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 25, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 26, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd13( 27, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_114( 28, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd14( 29, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_115( 30, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd15( 31, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_116( 32, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 33, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd17( 34, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_118( 35, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd18( 36, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_119( 37, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd19( 38, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_120( 39, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 40, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 41, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd21( 42, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_122( 43, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd22( 44, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_123( 45, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd23( 46, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_124( 47, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 48, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 49, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd25( 50, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_126( 51, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd26( 52, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_127( 53, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd27( 54, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_128( 55, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 56, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 57, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd29( 58, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_130( 59, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd30( 60, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_rd1( 61, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_12( 62, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd2( 63, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_13( 64, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd3( 65, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_14( 66, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 67, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 68, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd5( 69, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_16( 70, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd6( 71, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_17( 72, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd7( 73, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_18( 74, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 75, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd9( 76, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_110( 77, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd10( 78, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_111( 79, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd11( 80, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_112( 81, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 82, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 83, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd13( 84, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_114( 85, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd14( 86, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_115( 87, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd15( 88, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_116( 89, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 90, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd17( 91, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_118( 92, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd18( 93, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_119( 94, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd19( 95, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_120( 96, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 97, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 98, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd21( 99, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_122( 100, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd22( 101, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_123( 102, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd23( 103, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_124( 104, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 105, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 106, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd25( 107, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_126( 108, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd26( 109, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_127( 110, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd27( 111, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_128( 112, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 113, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 114, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd29( 115, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_130( 116, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd30( 117, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_rd1( 118, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_12( 119, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd2( 120, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_13( 121, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd3( 122, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_14( 123, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 124, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 125, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd5( 126, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_16( 127, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd6( 128, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_17( 129, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd7( 130, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_18( 131, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 132, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd9( 133, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_110( 134, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd10( 135, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_111( 136, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd11( 137, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_112( 138, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 139, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 140, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd13( 141, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_114( 142, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd14( 143, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_115( 144, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd15( 145, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_116( 146, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 147, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd17( 148, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_118( 149, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd18( 150, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_119( 151, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd19( 152, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_120( 153, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 154, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 155, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd21( 156, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_122( 157, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd22( 158, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_123( 159, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd23( 160, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_124( 161, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 162, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 163, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd25( 164, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_126( 165, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd26( 166, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_127( 167, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd27( 168, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_128( 169, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 170, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 171, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd29( 172, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_130( 173, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd30( 174, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_rd1( 175, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_12( 176, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd2( 177, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_13( 178, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd3( 179, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_14( 180, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 181, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 182, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd5( 183, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_16( 184, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd6( 185, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_17( 186, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd7( 187, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_18( 188, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 189, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd9( 190, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_110( 191, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd10( 192, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_111( 193, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
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
    

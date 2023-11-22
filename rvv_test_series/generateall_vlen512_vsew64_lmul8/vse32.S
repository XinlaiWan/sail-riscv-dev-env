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
    
    RVTEST_RV64UV
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
  TEST_VSE_OP_12( 4, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_13( 5, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_14( 6, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 7, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 8, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_16( 9, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_17( 10, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_18( 11, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 12, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_110( 13, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_111( 14, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_112( 15, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 16, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 17, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_114( 18, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_115( 19, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_116( 20, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 21, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_118( 22, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_119( 23, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_120( 24, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 25, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 26, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_122( 27, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_123( 28, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_124( 29, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 30, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 31, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_126( 32, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_127( 33, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_128( 34, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 35, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 36, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_130( 37, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_12( 38, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_13( 39, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_14( 40, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 41, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 42, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_16( 43, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_17( 44, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_18( 45, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 46, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_110( 47, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_111( 48, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_112( 49, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 50, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 51, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_114( 52, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_115( 53, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_116( 54, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 55, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_118( 56, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_119( 57, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_120( 58, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 59, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 60, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_122( 61, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_123( 62, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_124( 63, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 64, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 65, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_126( 66, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_127( 67, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_128( 68, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 69, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 70, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_130( 71, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_12( 72, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_13( 73, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_14( 74, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 75, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 76, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_16( 77, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_17( 78, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_18( 79, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 80, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_110( 81, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_111( 82, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_112( 83, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 84, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 85, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_114( 86, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_115( 87, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_116( 88, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 89, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_118( 90, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_119( 91, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_120( 92, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 93, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 94, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_122( 95, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_123( 96, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_124( 97, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 98, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 99, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_126( 100, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_127( 101, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_128( 102, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 103, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 104, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_130( 105, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_12( 106, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_13( 107, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_14( 108, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 109, vle32.v, vse32.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 110, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_16( 111, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_17( 112, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_18( 113, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 114, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_110( 115, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_111( 116, vle32.v, vse32.v, 8, 0x00,  -8 + tdat8 );
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
    

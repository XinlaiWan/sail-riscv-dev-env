#----------------------------------------------------------------------------- 
    # vse16.S
    #-----------------------------------------------------------------------------
    #
    # Test vse16 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vse16)
    
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
  TEST_VSE_OP( 2, vle16.v, vse16.v,  8 , 0xff,  0 + tdat );
  TEST_VSE_OP( 3, vle16.v, vse16.v,  8 , 0xff,  2 + tdat );
  TEST_VSE_OP( 4, vle16.v, vse16.v,  8 , 0xff,  0 + tdat );
  TEST_VSE_OP( 5, vle16.v, vse16.v,  8 , 0xff,  2 + tdat );
  TEST_VSE_OP_12( 6, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_13( 7, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_14( 8, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 9, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 10, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_16( 11, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_17( 12, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_18( 13, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 14, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_110( 15, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_111( 16, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_112( 17, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 18, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 19, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_114( 20, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_115( 21, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_116( 22, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 23, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_118( 24, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_119( 25, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_120( 26, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 27, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 28, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_122( 29, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_123( 30, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_124( 31, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 32, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 33, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_126( 34, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_127( 35, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_128( 36, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 37, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 38, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_130( 39, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_12( 40, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_13( 41, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_14( 42, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 43, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 44, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_16( 45, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_17( 46, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_18( 47, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 48, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_110( 49, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_111( 50, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_112( 51, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 52, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 53, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_114( 54, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_115( 55, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_116( 56, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 57, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_118( 58, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_119( 59, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_120( 60, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 61, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 62, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_122( 63, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_123( 64, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_124( 65, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 66, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 67, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_126( 68, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_127( 69, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_128( 70, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 71, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 72, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_130( 73, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_12( 74, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_13( 75, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_14( 76, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 77, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 78, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_16( 79, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_17( 80, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_18( 81, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 82, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_110( 83, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_111( 84, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_112( 85, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 86, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 87, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_114( 88, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_115( 89, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_116( 90, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 91, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_118( 92, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_119( 93, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_120( 94, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 95, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 96, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_122( 97, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_123( 98, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_124( 99, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 100, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 101, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_126( 102, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_127( 103, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_128( 104, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 105, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 106, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_130( 107, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_12( 108, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_13( 109, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_14( 110, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 111, vle16.v, vse16.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 112, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_16( 113, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_17( 114, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_18( 115, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 116, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_110( 117, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_111( 118, vle16.v, vse16.v, 8, 0x00,  -8 + tdat8 );
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
    

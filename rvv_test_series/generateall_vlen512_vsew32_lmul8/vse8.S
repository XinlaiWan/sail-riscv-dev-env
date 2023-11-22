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
  TEST_VSE_OP( 2, vle8.v, vse8.v,  8 , 0xff,  0 + tdat );
  TEST_VSE_OP( 3, vle8.v, vse8.v,  8 , 0xff,  1 + tdat );
  TEST_VSE_OP( 4, vle8.v, vse8.v,  8 , 0xff,  2 + tdat );
  TEST_VSE_OP( 5, vle8.v, vse8.v,  8 , 0xff,  3 + tdat );
  TEST_VSE_OP( 6, vle8.v, vse8.v,  8 , 0xff,  0 + tdat );
  TEST_VSE_OP( 7, vle8.v, vse8.v,  8 , 0xff,  1 + tdat );
  TEST_VSE_OP( 8, vle8.v, vse8.v,  8 , 0xff,  2 + tdat );
  TEST_VSE_OP( 9, vle8.v, vse8.v,  8 , 0xff,  3 + tdat );
  TEST_VSE_OP_12( 10, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd2( 11, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_13( 12, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_14( 13, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 14, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 15, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_16( 16, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd6( 17, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_17( 18, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_18( 19, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 20, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_110( 21, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd10( 22, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_111( 23, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_112( 24, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 25, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 26, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_114( 27, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd14( 28, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_115( 29, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_116( 30, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 31, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_118( 32, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd18( 33, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_119( 34, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_120( 35, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 36, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 37, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_122( 38, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd22( 39, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_123( 40, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_124( 41, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 42, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 43, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_126( 44, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd26( 45, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_127( 46, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_128( 47, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 48, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 49, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_130( 50, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd30( 51, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_12( 52, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd2( 53, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_13( 54, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_14( 55, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 56, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 57, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_16( 58, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd6( 59, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_17( 60, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_18( 61, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 62, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_110( 63, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd10( 64, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_111( 65, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_112( 66, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 67, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 68, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_114( 69, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd14( 70, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_115( 71, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_116( 72, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 73, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_118( 74, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd18( 75, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_119( 76, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_120( 77, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 78, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 79, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_122( 80, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd22( 81, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_123( 82, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_124( 83, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 84, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 85, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_126( 86, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd26( 87, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_127( 88, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_128( 89, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 90, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 91, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_130( 92, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd30( 93, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_12( 94, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd2( 95, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_13( 96, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_14( 97, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 98, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 99, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_16( 100, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd6( 101, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_17( 102, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_18( 103, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 104, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_110( 105, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd10( 106, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_111( 107, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_112( 108, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd12( 109, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_113( 110, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_114( 111, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd14( 112, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_115( 113, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_116( 114, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_117( 115, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_118( 116, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd18( 117, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_119( 118, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_120( 119, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd20( 120, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_121( 121, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_122( 122, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd22( 123, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_123( 124, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_124( 125, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd24( 126, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_125( 127, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_126( 128, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd26( 129, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_127( 130, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_128( 131, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd28( 132, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_129( 133, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_130( 134, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd30( 135, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_12( 136, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd2( 137, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_13( 138, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_14( 139, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd4( 140, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_15( 141, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_16( 142, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd6( 143, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_17( 144, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_18( 145, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_19( 146, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_110( 147, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
  TEST_VSE_OP_rd10( 148, vle8.v, vse8.v, 8, 0xaa,  0 + tdat );
  TEST_VSE_OP_111( 149, vle8.v, vse8.v, 8, 0x00,  -8 + tdat8 );
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
    

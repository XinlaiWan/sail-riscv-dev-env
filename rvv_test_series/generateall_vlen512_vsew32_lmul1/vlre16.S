#----------------------------------------------------------------------------- 
    # vlre16.S
    #-----------------------------------------------------------------------------
    #
    # Test vlre16 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vlre16)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_VLRE1_OP_11( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x1, base; \
                inst v16, (x1); \
        )
#define TEST_VLRE1_OP_12( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x2, base; \
                inst v16, (x2); \
        )
#define TEST_VLRE1_OP_13( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x3, base; \
                inst v16, (x3); \
        )
#define TEST_VLRE1_OP_14( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x4, base; \
                inst v16, (x4); \
        )
#define TEST_VLRE1_OP_15( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x5, base; \
                inst v16, (x5); \
        )
#define TEST_VLRE1_OP_16( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x6, base; \
                inst v16, (x6); \
        )
#define TEST_VLRE1_OP_17( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x7, base; \
                inst v16, (x7); \
        )
#define TEST_VLRE1_OP_18( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x8, base; \
                inst v16, (x8); \
        )
#define TEST_VLRE1_OP_19( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x9, base; \
                inst v16, (x9); \
        )
#define TEST_VLRE1_OP_110( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x10, base; \
                inst v16, (x10); \
        )
#define TEST_VLRE1_OP_111( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x11, base; \
                inst v16, (x11); \
        )
#define TEST_VLRE1_OP_112( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x12, base; \
                inst v16, (x12); \
        )
#define TEST_VLRE1_OP_113( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x13, base; \
                inst v16, (x13); \
        )
#define TEST_VLRE1_OP_114( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x14, base; \
                inst v16, (x14); \
        )
#define TEST_VLRE1_OP_115( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x15, base; \
                inst v16, (x15); \
        )
#define TEST_VLRE1_OP_116( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x16, base; \
                inst v16, (x16); \
        )
#define TEST_VLRE1_OP_117( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x17, base; \
                inst v16, (x17); \
        )
#define TEST_VLRE1_OP_118( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x18, base; \
                inst v16, (x18); \
        )
#define TEST_VLRE1_OP_119( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x19, base; \
                inst v16, (x19); \
        )
#define TEST_VLRE1_OP_120( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x20, base; \
                inst v16, (x20); \
        )
#define TEST_VLRE1_OP_121( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x21, base; \
                inst v16, (x21); \
        )
#define TEST_VLRE1_OP_122( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x22, base; \
                inst v16, (x22); \
        )
#define TEST_VLRE1_OP_123( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x23, base; \
                inst v16, (x23); \
        )
#define TEST_VLRE1_OP_124( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x24, base; \
                inst v16, (x24); \
        )
#define TEST_VLRE1_OP_125( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x25, base; \
                inst v16, (x25); \
        )
#define TEST_VLRE1_OP_126( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x26, base; \
                inst v16, (x26); \
        )
#define TEST_VLRE1_OP_127( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x27, base; \
                inst v16, (x27); \
        )
#define TEST_VLRE1_OP_128( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x28, base; \
                inst v16, (x28); \
        )
#define TEST_VLRE1_OP_129( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x29, base; \
                inst v16, (x29); \
        )
#define TEST_VLRE1_OP_130( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x30, base; \
                inst v16, (x30); \
        )
#define TEST_VLRE1_OP_131( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x31, base; \
                inst v16, (x31); \
        )
#define TEST_VLRE1_OP_rd1( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v1, result, \
                la  x2, base; \
                inst v1, (x2); \
        ) 
#define TEST_VLRE1_OP_rd2( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v2, result, \
                la  x2, base; \
                inst v2, (x2); \
        ) 
#define TEST_VLRE1_OP_rd3( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v3, result, \
                la  x2, base; \
                inst v3, (x2); \
        ) 
#define TEST_VLRE1_OP_rd4( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v4, result, \
                la  x2, base; \
                inst v4, (x2); \
        ) 
#define TEST_VLRE1_OP_rd5( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v5, result, \
                la  x2, base; \
                inst v5, (x2); \
        ) 
#define TEST_VLRE1_OP_rd6( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v6, result, \
                la  x2, base; \
                inst v6, (x2); \
        ) 
#define TEST_VLRE1_OP_rd7( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v7, result, \
                la  x2, base; \
                inst v7, (x2); \
        ) 
#define TEST_VLRE1_OP_rd8( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x2, base; \
                inst v8, (x2); \
        ) 
#define TEST_VLRE1_OP_rd9( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v9, result, \
                la  x2, base; \
                inst v9, (x2); \
        ) 
#define TEST_VLRE1_OP_rd10( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v10, result, \
                la  x2, base; \
                inst v10, (x2); \
        ) 
#define TEST_VLRE1_OP_rd11( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v11, result, \
                la  x2, base; \
                inst v11, (x2); \
        ) 
#define TEST_VLRE1_OP_rd12( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v12, result, \
                la  x2, base; \
                inst v12, (x2); \
        ) 
#define TEST_VLRE1_OP_rd13( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v13, result, \
                la  x2, base; \
                inst v13, (x2); \
        ) 
#define TEST_VLRE1_OP_rd14( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v14, result, \
                la  x2, base; \
                inst v14, (x2); \
        ) 
#define TEST_VLRE1_OP_rd15( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v15, result, \
                la  x2, base; \
                inst v15, (x2); \
        ) 
#define TEST_VLRE1_OP_rd16( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x2, base; \
                inst v16, (x2); \
        ) 
#define TEST_VLRE1_OP_rd17( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v17, result, \
                la  x2, base; \
                inst v17, (x2); \
        ) 
#define TEST_VLRE1_OP_rd18( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v18, result, \
                la  x2, base; \
                inst v18, (x2); \
        ) 
#define TEST_VLRE1_OP_rd19( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v19, result, \
                la  x2, base; \
                inst v19, (x2); \
        ) 
#define TEST_VLRE1_OP_rd20( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v20, result, \
                la  x2, base; \
                inst v20, (x2); \
        ) 
#define TEST_VLRE1_OP_rd21( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v21, result, \
                la  x2, base; \
                inst v21, (x2); \
        ) 
#define TEST_VLRE1_OP_rd22( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v22, result, \
                la  x2, base; \
                inst v22, (x2); \
        ) 
#define TEST_VLRE1_OP_rd23( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v23, result, \
                la  x2, base; \
                inst v23, (x2); \
        ) 
#define TEST_VLRE1_OP_rd24( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v24, result, \
                la  x2, base; \
                inst v24, (x2); \
        ) 
#define TEST_VLRE1_OP_rd25( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v25, result, \
                la  x2, base; \
                inst v25, (x2); \
        ) 
#define TEST_VLRE1_OP_rd26( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v26, result, \
                la  x2, base; \
                inst v26, (x2); \
        ) 
#define TEST_VLRE1_OP_rd27( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v27, result, \
                la  x2, base; \
                inst v27, (x2); \
        ) 
#define TEST_VLRE1_OP_rd28( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v28, result, \
                la  x2, base; \
                inst v28, (x2); \
        ) 
#define TEST_VLRE1_OP_rd29( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v29, result, \
                la  x2, base; \
                inst v29, (x2); \
        ) 
#define TEST_VLRE1_OP_rd30( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v30, result, \
                la  x2, base; \
                inst v30, (x2); \
        ) 
#define TEST_VLRE1_OP_rd31( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v31, result, \
                la  x2, base; \
                inst v31, (x2); \
        ) 
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VLRE1_OP( 2,  vl1re16.v,  16 , 0xff0000ff, 2 + tdat );
  TEST_VLRE1_OP( 3,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE2_OP( 4,  vl2re16.v,  16 , 0x0ff0, 0x0ff0, 8 + tdat );
  TEST_VLRE2_OP( 5,  vl4re16.v,  16 , 0x00ff, 0x00ff,  -12 + tdat4 );
  TEST_VLRE2_OP( 6,  vl8re16.v,  16 , 0x0ff0, 0x0ff0,  -4 + tdat4 );
  TEST_VLRE1_OP( 7,  vl1re16.v,  16 , 0xff0000ff, 2 + tdat );
  TEST_VLRE1_OP( 8,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE2_OP( 9,  vl2re16.v,  16 , 0x0ff0, 0x0ff0, 8 + tdat );
  TEST_VLRE2_OP( 10,  vl4re16.v,  16 , 0x00ff, 0x00ff,  -12 + tdat4 );
  TEST_VLRE2_OP( 11,  vl8re16.v,  16 , 0x0ff0, 0x0ff0,  -4 + tdat4 );
  TEST_VLRE1_OP_rd1( 12,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_12( 13,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd2( 14,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_13( 15,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd3( 16,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_14( 17,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd4( 18,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_15( 19,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd5( 20,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_16( 21,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd6( 22,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_17( 23,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd7( 24,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_18( 25,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd8( 26,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_19( 27,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd9( 28,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_110( 29,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd10( 30,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_111( 31,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd11( 32,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_112( 33,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd12( 34,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_113( 35,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd13( 36,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_114( 37,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd14( 38,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_115( 39,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd15( 40,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_116( 41,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd16( 42,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_117( 43,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd17( 44,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_118( 45,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd18( 46,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_119( 47,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd19( 48,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_120( 49,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd20( 50,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_121( 51,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd21( 52,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_122( 53,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd22( 54,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_123( 55,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd23( 56,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_124( 57,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd24( 58,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_125( 59,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd25( 60,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_126( 61,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd26( 62,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_127( 63,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd27( 64,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_128( 65,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd28( 66,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_129( 67,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd29( 68,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_130( 69,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd30( 70,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd31( 71,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_12( 72,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd1( 73,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_13( 74,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd2( 75,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_14( 76,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd3( 77,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_15( 78,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd4( 79,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_16( 80,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd5( 81,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_17( 82,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd6( 83,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_18( 84,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd7( 85,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_19( 86,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd8( 87,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_110( 88,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd9( 89,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_111( 90,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd10( 91,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_112( 92,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd11( 93,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_113( 94,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd12( 95,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_114( 96,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd13( 97,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_115( 98,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd14( 99,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_116( 100,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd15( 101,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_117( 102,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd16( 103,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_118( 104,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd17( 105,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_119( 106,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd18( 107,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_120( 108,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd19( 109,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_121( 110,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd20( 111,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_122( 112,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd21( 113,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_123( 114,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd22( 115,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_124( 116,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd23( 117,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_125( 118,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd24( 119,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_126( 120,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd25( 121,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_127( 122,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd26( 123,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_128( 124,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd27( 125,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_129( 126,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd28( 127,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_130( 128,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd29( 129,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd30( 130,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_12( 131,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd31( 132,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_13( 133,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd1( 134,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_14( 135,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd2( 136,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_15( 137,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd3( 138,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_16( 139,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd4( 140,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_17( 141,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd5( 142,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_18( 143,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd6( 144,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_19( 145,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd7( 146,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_110( 147,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd8( 148,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_111( 149,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd9( 150,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_112( 151,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd10( 152,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_113( 153,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd11( 154,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_114( 155,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd12( 156,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_115( 157,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd13( 158,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_116( 159,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd14( 160,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_117( 161,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd15( 162,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_118( 163,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd16( 164,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_119( 165,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd17( 166,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_120( 167,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd18( 168,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_121( 169,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd19( 170,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_122( 171,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd20( 172,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_123( 173,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd21( 174,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_124( 175,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd22( 176,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_125( 177,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd23( 178,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_126( 179,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd24( 180,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_127( 181,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd25( 182,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_128( 183,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd26( 184,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_129( 185,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd27( 186,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_130( 187,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd28( 188,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd29( 189,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_12( 190,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd30( 191,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_13( 192,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd31( 193,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_14( 194,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd1( 195,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_15( 196,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd2( 197,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_16( 198,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd3( 199,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_17( 200,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd4( 201,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_18( 202,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd5( 203,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_19( 204,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd6( 205,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_110( 206,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd7( 207,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_111( 208,  vl1re16.v,  16 , 0x00ff00ff, 0 + tdat );
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
    .size tdat, 8448
    tdat:
    tdat1:  .word 0x00ff00ff
    tdat2:  .word 0xff00ff00
    tdat3:  .word 0x0ff00ff0
    tdat4:  .word 0xf00ff00f
    tdat5:  .word 0x00ff00ff
    tdat6:  .word 0xff00ff00
    tdat7:  .word 0x0ff00ff0
    tdat8:  .word 0xf00ff00f
    tdat9:  .zero 32
    tdat10:  .word 0x00ff00ff
    tdat11:  .word 0xff00ff00
    tdat12:  .word 0x0ff00ff0
    tdat13:  .word 0xf00ff00f
    tdat14:  .word 0x00ff00ff
    tdat15:  .word 0xff00ff00
    tdat16:  .word 0x0ff00ff0
    tdat17:  .word 0xf00ff00f
    tdta18:  .zero 32
    tdat19:  .word 0x00ff00ff
    tdat20:  .word 0xff00ff00
    tdat21:  .word 0x0ff00ff0
    tdat22:  .word 0xf00ff00f
    tdat23:  .word 0x00ff00ff
    tdat24:  .word 0xff00ff00
    tdat25:  .word 0x0ff00ff0
    tdat26:  .word 0xf00ff00f
    tdta27:  .zero 32
    tdta28:  .zero 7584
    
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
    

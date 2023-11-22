#----------------------------------------------------------------------------- 
    # vlre8.S
    #-----------------------------------------------------------------------------
    #
    # Test vlre8 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vlre8)
    
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
  TEST_VLRE1_OP( 2,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP( 3,  vl1re8.v,  8 , 0x0000ff00, 1 + tdat );
  TEST_VLRE1_OP( 4,  vl1re8.v,  8 , 0xff0000ff, 2 + tdat );
  TEST_VLRE1_OP( 5,  vl1re8.v,  8 , 0x00ff0000, 3 + tdat );
  TEST_VLRE2_OP( 6,  vl2re8.v,  8 , 0x0f, 0x0f, 12 + tdat );
  TEST_VLRE2_OP( 7,  vl4re8.v,  8 , 0xff, 0xff,  -12 + tdat4 );
  TEST_VLRE2_OP( 8,  vl8re8.v,  8 , 0x0f, 0x0f,  0 + tdat4 );
  TEST_VLRE2_OP( 9,  vl2r.v,  8 , 0xff, 0xff,  0 + tdat );
  TEST_VLRE1_OP( 10,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP( 11,  vl1re8.v,  8 , 0x0000ff00, 1 + tdat );
  TEST_VLRE1_OP( 12,  vl1re8.v,  8 , 0xff0000ff, 2 + tdat );
  TEST_VLRE1_OP( 13,  vl1re8.v,  8 , 0x00ff0000, 3 + tdat );
  TEST_VLRE2_OP( 14,  vl2re8.v,  8 , 0x0f, 0x0f, 12 + tdat );
  TEST_VLRE2_OP( 15,  vl4re8.v,  8 , 0xff, 0xff,  -12 + tdat4 );
  TEST_VLRE2_OP( 16,  vl8re8.v,  8 , 0x0f, 0x0f,  0 + tdat4 );
  TEST_VLRE2_OP( 17,  vl2r.v,  8 , 0xff, 0xff,  0 + tdat );
  TEST_VLRE1_OP_rd1( 18,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_12( 19,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd2( 20,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_13( 21,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd3( 22,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_14( 23,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd4( 24,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_15( 25,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd5( 26,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_16( 27,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd6( 28,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_17( 29,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd7( 30,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_18( 31,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd8( 32,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_19( 33,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd9( 34,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_110( 35,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd10( 36,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_111( 37,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd11( 38,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_112( 39,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd12( 40,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_113( 41,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd13( 42,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_114( 43,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd14( 44,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_115( 45,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd15( 46,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_116( 47,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd16( 48,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_117( 49,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd17( 50,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_118( 51,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd18( 52,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_119( 53,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd19( 54,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_120( 55,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd20( 56,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_121( 57,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd21( 58,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_122( 59,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd22( 60,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_123( 61,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd23( 62,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_124( 63,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd24( 64,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_125( 65,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd25( 66,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_126( 67,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd26( 68,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_127( 69,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd27( 70,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_128( 71,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd28( 72,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_129( 73,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd29( 74,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_130( 75,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd30( 76,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd31( 77,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_12( 78,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd1( 79,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_13( 80,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd2( 81,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_14( 82,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd3( 83,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_15( 84,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd4( 85,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_16( 86,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd5( 87,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_17( 88,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd6( 89,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_18( 90,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd7( 91,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_19( 92,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd8( 93,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_110( 94,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd9( 95,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_111( 96,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd10( 97,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_112( 98,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd11( 99,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_113( 100,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd12( 101,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_114( 102,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd13( 103,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_115( 104,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd14( 105,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_116( 106,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd15( 107,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_117( 108,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd16( 109,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_118( 110,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd17( 111,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_119( 112,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd18( 113,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_120( 114,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd19( 115,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_121( 116,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd20( 117,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_122( 118,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd21( 119,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_123( 120,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd22( 121,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_124( 122,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd23( 123,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_125( 124,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd24( 125,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_126( 126,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd25( 127,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_127( 128,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd26( 129,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_128( 130,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd27( 131,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_129( 132,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd28( 133,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_130( 134,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd29( 135,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd30( 136,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_12( 137,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd31( 138,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_13( 139,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd1( 140,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_14( 141,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd2( 142,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_15( 143,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd3( 144,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_16( 145,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd4( 146,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_17( 147,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd5( 148,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_18( 149,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd6( 150,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_19( 151,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd7( 152,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_110( 153,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd8( 154,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_111( 155,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd9( 156,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_112( 157,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd10( 158,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_113( 159,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd11( 160,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_114( 161,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd12( 162,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_115( 163,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd13( 164,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_116( 165,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd14( 166,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_117( 167,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd15( 168,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_118( 169,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd16( 170,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_119( 171,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd17( 172,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_120( 173,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd18( 174,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_121( 175,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd19( 176,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_122( 177,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd20( 178,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_123( 179,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd21( 180,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_124( 181,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd22( 182,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_125( 183,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd23( 184,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_126( 185,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd24( 186,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_127( 187,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd25( 188,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_128( 189,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd26( 190,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_129( 191,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd27( 192,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_130( 193,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd28( 194,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd29( 195,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_12( 196,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd30( 197,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_13( 198,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd31( 199,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_14( 200,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd1( 201,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_15( 202,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd2( 203,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_16( 204,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd3( 205,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_17( 206,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd4( 207,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_18( 208,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd5( 209,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_19( 210,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd6( 211,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_110( 212,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd7( 213,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_111( 214,  vl1re8.v,  8 , 0x00ff00ff, 0 + tdat );
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
    

#----------------------------------------------------------------------------- 
    # vlre32.S
    #-----------------------------------------------------------------------------
    #
    # Test vlre32 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vlre32)
    
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
  TEST_VLRE1_OP( 2,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE2_OP( 3,  vl2re32.v,  32 , 0x00ff00ff, 0x00ff00ff, -12 + tdat4 );
  TEST_VLRE2_OP( 4,  vl4re32.v,  32 , 0x00ff00ff, 0x00ff00ff,  -12 + tdat4 );
  TEST_VLRE2_OP( 5,  vl8re32.v,  32 , 0x00ff00ff, 0x00ff00ff,  -12 + tdat4 );
  TEST_VLRE1_OP( 6,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE2_OP( 7,  vl2re32.v,  32 , 0x00ff00ff, 0x00ff00ff, -12 + tdat4 );
  TEST_VLRE2_OP( 8,  vl4re32.v,  32 , 0x00ff00ff, 0x00ff00ff,  -12 + tdat4 );
  TEST_VLRE2_OP( 9,  vl8re32.v,  32 , 0x00ff00ff, 0x00ff00ff,  -12 + tdat4 );
  TEST_VLRE1_OP_rd1( 10,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_12( 11,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd2( 12,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_13( 13,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd3( 14,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_14( 15,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd4( 16,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_15( 17,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd5( 18,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_16( 19,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd6( 20,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_17( 21,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd7( 22,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_18( 23,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd8( 24,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_19( 25,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd9( 26,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_110( 27,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd10( 28,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_111( 29,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd11( 30,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_112( 31,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd12( 32,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_113( 33,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd13( 34,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_114( 35,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd14( 36,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_115( 37,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd15( 38,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_116( 39,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd16( 40,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_117( 41,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd17( 42,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_118( 43,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd18( 44,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_119( 45,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd19( 46,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_120( 47,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd20( 48,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_121( 49,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd21( 50,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_122( 51,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd22( 52,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_123( 53,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd23( 54,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_124( 55,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd24( 56,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_125( 57,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd25( 58,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_126( 59,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd26( 60,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_127( 61,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd27( 62,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_128( 63,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd28( 64,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_129( 65,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd29( 66,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_130( 67,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd30( 68,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd31( 69,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_12( 70,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd1( 71,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_13( 72,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd2( 73,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_14( 74,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd3( 75,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_15( 76,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd4( 77,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_16( 78,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd5( 79,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_17( 80,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd6( 81,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_18( 82,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd7( 83,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_19( 84,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd8( 85,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_110( 86,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd9( 87,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_111( 88,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd10( 89,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_112( 90,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd11( 91,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_113( 92,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd12( 93,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_114( 94,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd13( 95,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_115( 96,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd14( 97,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_116( 98,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd15( 99,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_117( 100,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd16( 101,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_118( 102,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd17( 103,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_119( 104,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd18( 105,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_120( 106,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd19( 107,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_121( 108,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd20( 109,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_122( 110,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd21( 111,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_123( 112,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd22( 113,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_124( 114,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd23( 115,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_125( 116,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd24( 117,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_126( 118,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd25( 119,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_127( 120,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd26( 121,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_128( 122,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd27( 123,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_129( 124,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd28( 125,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_130( 126,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd29( 127,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd30( 128,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_12( 129,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd31( 130,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_13( 131,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd1( 132,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_14( 133,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd2( 134,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_15( 135,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd3( 136,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_16( 137,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd4( 138,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_17( 139,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd5( 140,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_18( 141,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd6( 142,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_19( 143,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd7( 144,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_110( 145,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd8( 146,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_111( 147,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd9( 148,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_112( 149,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd10( 150,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_113( 151,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd11( 152,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_114( 153,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd12( 154,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_115( 155,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd13( 156,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_116( 157,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd14( 158,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_117( 159,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd15( 160,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_118( 161,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd16( 162,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_119( 163,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd17( 164,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_120( 165,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd18( 166,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_121( 167,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd19( 168,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_122( 169,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd20( 170,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_123( 171,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd21( 172,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_124( 173,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd22( 174,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_125( 175,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd23( 176,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_126( 177,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd24( 178,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_127( 179,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd25( 180,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_128( 181,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd26( 182,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_129( 183,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd27( 184,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_130( 185,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd28( 186,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd29( 187,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_12( 188,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd30( 189,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_13( 190,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd31( 191,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_14( 192,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd1( 193,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_15( 194,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd2( 195,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_16( 196,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd3( 197,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_17( 198,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd4( 199,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_18( 200,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd5( 201,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_19( 202,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd6( 203,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_110( 204,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_rd7( 205,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLRE1_OP_111( 206,  vl1re32.v,  32 , 0x00ff00ff, 0 + tdat );
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
    

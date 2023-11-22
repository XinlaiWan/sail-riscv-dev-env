#----------------------------------------------------------------------------- 
    # vlsege32.S
    #-----------------------------------------------------------------------------
    #
    # Test vlsege32 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vlsege32)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_CASE_VLSEG3
#define TEST_CASE_VLSEG3( testnum, testreg, eew, correctval1, correctval2, correctval3, code... ) \
            test_ ## testnum: \
                code; \
                li x7, MASK_EEW(correctval1, eew); \
                li x8, MASK_EEW(correctval2, eew); \
                li x9, MASK_EEW(correctval3, eew); \
                li TESTNUM, testnum; \
                vsetivli x31, 1, MK_EEW(eew), tu, mu; \
                VMVXS_AND_MASK_EEW( x14, testreg, eew ) \
                VMVXS_AND_MASK_EEW( x15, v9, eew ) \
                VMVXS_AND_MASK_EEW( x16, v10, eew )\
                VSET_VSEW \
                bne x14, x7, fail; \
                bne x15, x8, fail; \
                bne x16, x9, fail; \
        
#define TEST_VLSEG1_OP_11( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x1, base; \
                inst v8, (x1); \
        )
#define TEST_VLSEG1_OP_12( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x2, base; \
                inst v8, (x2); \
        )
#define TEST_VLSEG1_OP_13( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x3, base; \
                inst v8, (x3); \
        )
#define TEST_VLSEG1_OP_14( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x4, base; \
                inst v8, (x4); \
        )
#define TEST_VLSEG1_OP_15( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x5, base; \
                inst v8, (x5); \
        )
#define TEST_VLSEG1_OP_16( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x6, base; \
                inst v8, (x6); \
        )
#define TEST_VLSEG1_OP_17( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x7, base; \
                inst v8, (x7); \
        )
#define TEST_VLSEG1_OP_18( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x8, base; \
                inst v8, (x8); \
        )
#define TEST_VLSEG1_OP_19( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x9, base; \
                inst v8, (x9); \
        )
#define TEST_VLSEG1_OP_110( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x10, base; \
                inst v8, (x10); \
        )
#define TEST_VLSEG1_OP_111( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x11, base; \
                inst v8, (x11); \
        )
#define TEST_VLSEG1_OP_112( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x12, base; \
                inst v8, (x12); \
        )
#define TEST_VLSEG1_OP_113( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x13, base; \
                inst v8, (x13); \
        )
#define TEST_VLSEG1_OP_114( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x14, base; \
                inst v8, (x14); \
        )
#define TEST_VLSEG1_OP_115( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x15, base; \
                inst v8, (x15); \
        )
#define TEST_VLSEG1_OP_116( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x16, base; \
                inst v8, (x16); \
        )
#define TEST_VLSEG1_OP_117( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x17, base; \
                inst v8, (x17); \
        )
#define TEST_VLSEG1_OP_118( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x18, base; \
                inst v8, (x18); \
        )
#define TEST_VLSEG1_OP_119( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x19, base; \
                inst v8, (x19); \
        )
#define TEST_VLSEG1_OP_120( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x20, base; \
                inst v8, (x20); \
        )
#define TEST_VLSEG1_OP_121( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x21, base; \
                inst v8, (x21); \
        )
#define TEST_VLSEG1_OP_122( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x22, base; \
                inst v8, (x22); \
        )
#define TEST_VLSEG1_OP_123( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x23, base; \
                inst v8, (x23); \
        )
#define TEST_VLSEG1_OP_124( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x24, base; \
                inst v8, (x24); \
        )
#define TEST_VLSEG1_OP_125( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x25, base; \
                inst v8, (x25); \
        )
#define TEST_VLSEG1_OP_126( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x26, base; \
                inst v8, (x26); \
        )
#define TEST_VLSEG1_OP_127( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x27, base; \
                inst v8, (x27); \
        )
#define TEST_VLSEG1_OP_128( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x28, base; \
                inst v8, (x28); \
        )
#define TEST_VLSEG1_OP_129( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x29, base; \
                inst v8, (x29); \
        )
#define TEST_VLSEG1_OP_130( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x30, base; \
                inst v8, (x30); \
        )
#define TEST_VLSEG1_OP_131( testnum, inst, eew, result, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x31, base; \
                inst v8, (x31); \
        )
#define TEST_VLSEG1_OP_rd1( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v1, result, \
                    la  x2, base; \
                    inst v1, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd2( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v2, result, \
                    la  x2, base; \
                    inst v2, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd3( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v3, result, \
                    la  x2, base; \
                    inst v3, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd4( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v4, result, \
                    la  x2, base; \
                    inst v4, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd5( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v5, result, \
                    la  x2, base; \
                    inst v5, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd6( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v6, result, \
                    la  x2, base; \
                    inst v6, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd7( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v7, result, \
                    la  x2, base; \
                    inst v7, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd8( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v8, result, \
                    la  x2, base; \
                    inst v8, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd9( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v9, result, \
                    la  x2, base; \
                    inst v9, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd10( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v10, result, \
                    la  x2, base; \
                    inst v10, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd11( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v11, result, \
                    la  x2, base; \
                    inst v11, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd12( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v12, result, \
                    la  x2, base; \
                    inst v12, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd13( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v13, result, \
                    la  x2, base; \
                    inst v13, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd14( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v14, result, \
                    la  x2, base; \
                    inst v14, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd15( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v15, result, \
                    la  x2, base; \
                    inst v15, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd16( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v16, result, \
                    la  x2, base; \
                    inst v16, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd17( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v17, result, \
                    la  x2, base; \
                    inst v17, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd18( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v18, result, \
                    la  x2, base; \
                    inst v18, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd19( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v19, result, \
                    la  x2, base; \
                    inst v19, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd20( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v20, result, \
                    la  x2, base; \
                    inst v20, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd21( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v21, result, \
                    la  x2, base; \
                    inst v21, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd22( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v22, result, \
                    la  x2, base; \
                    inst v22, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd23( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v23, result, \
                    la  x2, base; \
                    inst v23, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd24( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v24, result, \
                    la  x2, base; \
                    inst v24, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd25( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v25, result, \
                    la  x2, base; \
                    inst v25, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd26( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v26, result, \
                    la  x2, base; \
                    inst v26, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd27( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v27, result, \
                    la  x2, base; \
                    inst v27, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd28( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v28, result, \
                    la  x2, base; \
                    inst v28, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd29( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v29, result, \
                    la  x2, base; \
                    inst v29, (x2); \
            ) 
#define TEST_VLSEG1_OP_rd30( testnum, inst, eew, result, base ) \
                TEST_CASE( testnum, v30, result, \
                    la  x2, base; \
                    inst v30, (x2); \
            ) 
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VLSEG1_OP( 2,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP( 3,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG3_OP( 4,  vlseg3e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat );
  TEST_VLSEG3_OP( 5,  vlseg4e32.v,  32 , 0x0ff00ff0, 0xf00ff00f, 0x00ff00ff, 8 + tdat );
  TEST_VLSEG3_OP( 6,  vlseg5e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, -12 + tdat4 );
  TEST_VLSEG3_OP( 7,  vlseg6e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat );
  TEST_VLSEG3_OP( 8,  vlseg7e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat );
  TEST_VLSEG3_OP( 9,  vlseg8e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat );
  TEST_VLSEG1_OP( 10,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP( 11,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG3_OP( 12,  vlseg3e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat );
  TEST_VLSEG3_OP( 13,  vlseg4e32.v,  32 , 0x0ff00ff0, 0xf00ff00f, 0x00ff00ff, 8 + tdat );
  TEST_VLSEG3_OP( 14,  vlseg5e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, -12 + tdat4 );
  TEST_VLSEG3_OP( 15,  vlseg6e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat );
  TEST_VLSEG3_OP( 16,  vlseg7e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat );
  TEST_VLSEG3_OP( 17,  vlseg8e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat );
  TEST_VLSEG1_OP_rd1( 18,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_12( 19,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd2( 20,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_13( 21,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd3( 22,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_14( 23,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd4( 24,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_15( 25,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd5( 26,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_16( 27,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd6( 28,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_17( 29,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd7( 30,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_18( 31,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_19( 32,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd9( 33,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_110( 34,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd10( 35,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_111( 36,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd11( 37,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_112( 38,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd12( 39,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_113( 40,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd13( 41,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_114( 42,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd14( 43,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_115( 44,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd15( 45,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_116( 46,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_117( 47,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd17( 48,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_118( 49,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd18( 50,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_119( 51,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd19( 52,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_120( 53,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd20( 54,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_121( 55,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd21( 56,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_122( 57,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd22( 58,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_123( 59,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd23( 60,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_124( 61,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd24( 62,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_125( 63,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd25( 64,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_126( 65,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd26( 66,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_127( 67,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd27( 68,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_128( 69,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd28( 70,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_129( 71,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd29( 72,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_130( 73,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd30( 74,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_rd1( 75,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_12( 76,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd2( 77,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_13( 78,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd3( 79,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_14( 80,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd4( 81,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_15( 82,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd5( 83,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_16( 84,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd6( 85,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_17( 86,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd7( 87,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_18( 88,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_19( 89,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd9( 90,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_110( 91,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd10( 92,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_111( 93,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd11( 94,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_112( 95,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd12( 96,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_113( 97,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd13( 98,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_114( 99,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd14( 100,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_115( 101,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd15( 102,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_116( 103,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_117( 104,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd17( 105,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_118( 106,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd18( 107,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_119( 108,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd19( 109,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_120( 110,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd20( 111,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_121( 112,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd21( 113,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_122( 114,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd22( 115,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_123( 116,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd23( 117,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_124( 118,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd24( 119,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_125( 120,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd25( 121,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_126( 122,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd26( 123,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_127( 124,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd27( 125,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_128( 126,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd28( 127,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_129( 128,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd29( 129,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_130( 130,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd30( 131,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_rd1( 132,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_12( 133,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd2( 134,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_13( 135,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd3( 136,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_14( 137,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd4( 138,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_15( 139,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd5( 140,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_16( 141,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd6( 142,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_17( 143,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd7( 144,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_18( 145,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_19( 146,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd9( 147,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_110( 148,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd10( 149,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_111( 150,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd11( 151,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_112( 152,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd12( 153,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_113( 154,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd13( 155,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_114( 156,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd14( 157,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_115( 158,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd15( 159,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_116( 160,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_117( 161,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd17( 162,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_118( 163,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd18( 164,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_119( 165,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd19( 166,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_120( 167,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd20( 168,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_121( 169,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd21( 170,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_122( 171,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd22( 172,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_123( 173,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd23( 174,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_124( 175,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd24( 176,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_125( 177,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd25( 178,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_126( 179,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd26( 180,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_127( 181,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd27( 182,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_128( 183,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd28( 184,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_129( 185,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd29( 186,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_130( 187,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd30( 188,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_rd1( 189,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_12( 190,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd2( 191,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_13( 192,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd3( 193,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_14( 194,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd4( 195,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_15( 196,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd5( 197,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_16( 198,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd6( 199,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_17( 200,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd7( 201,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_18( 202,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_19( 203,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd9( 204,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_110( 205,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
  TEST_VLSEG1_OP_rd10( 206,  vlseg2e32.v,  32 , 0x00ff00ff, 0 + tdat );
  TEST_VLSEG1_OP_111( 207,  vlseg2e32.v,  32 , 0xff00ff00, 4 + tdat );
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
    

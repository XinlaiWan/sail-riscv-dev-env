#----------------------------------------------------------------------------- 
    # vlsege8.S
    #-----------------------------------------------------------------------------
    #
    # Test vlsege8 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vlsege8)
    
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
  TEST_VLSEG1_OP( 2,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP( 3,  vlseg2e8.v,  8 , 0x00, 1 + tdat );
  TEST_VLSEG1_OP( 4,  vlseg2e8.v,  8 , 0xff, 2 + tdat );
  TEST_VLSEG1_OP( 5,  vlseg2e8.v,  8 , 0x00, 3 + tdat );
  TEST_VLSEG3_OP( 6,  vlseg3e8.v,  8 , 0xff, 0x00, 0xff, 0 + tdat );
  TEST_VLSEG3_OP( 7,  vlseg4e8.v,  8 , 0x0f, 0xf0, 0x0f, 12 + tdat );
  TEST_VLSEG3_OP( 8,  vlseg5e8.v,  8 , 0xff, 0x00, 0xff, -12 + tdat4 );
  TEST_VLSEG3_OP( 9,  vlseg6e8.v,  8 , 0xff, 0x00, 0xff, 0 + tdat );
  TEST_VLSEG3_OP( 10,  vlseg7e8.v,  8 , 0xff, 0x00, 0xff, 0 + tdat );
  TEST_VLSEG3_OP( 11,  vlseg8e8.v,  8 , 0xff, 0x00, 0xff, 0 + tdat );
  TEST_VLSEG1_OP( 12,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP( 13,  vlseg2e8.v,  8 , 0x00, 1 + tdat );
  TEST_VLSEG1_OP( 14,  vlseg2e8.v,  8 , 0xff, 2 + tdat );
  TEST_VLSEG1_OP( 15,  vlseg2e8.v,  8 , 0x00, 3 + tdat );
  TEST_VLSEG3_OP( 16,  vlseg3e8.v,  8 , 0xff, 0x00, 0xff, 0 + tdat );
  TEST_VLSEG3_OP( 17,  vlseg4e8.v,  8 , 0x0f, 0xf0, 0x0f, 12 + tdat );
  TEST_VLSEG3_OP( 18,  vlseg5e8.v,  8 , 0xff, 0x00, 0xff, -12 + tdat4 );
  TEST_VLSEG3_OP( 19,  vlseg6e8.v,  8 , 0xff, 0x00, 0xff, 0 + tdat );
  TEST_VLSEG3_OP( 20,  vlseg7e8.v,  8 , 0xff, 0x00, 0xff, 0 + tdat );
  TEST_VLSEG3_OP( 21,  vlseg8e8.v,  8 , 0xff, 0x00, 0xff, 0 + tdat );
  TEST_VLSEG1_OP_rd1( 22,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_12( 23,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd2( 24,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_13( 25,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd3( 26,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_14( 27,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd4( 28,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_15( 29,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd5( 30,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_16( 31,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd6( 32,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_17( 33,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd7( 34,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_18( 35,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_19( 36,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd9( 37,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_110( 38,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd10( 39,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_111( 40,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd11( 41,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_112( 42,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd12( 43,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_113( 44,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd13( 45,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_114( 46,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd14( 47,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_115( 48,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd15( 49,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_116( 50,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_117( 51,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd17( 52,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_118( 53,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd18( 54,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_119( 55,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd19( 56,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_120( 57,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd20( 58,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_121( 59,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd21( 60,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_122( 61,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd22( 62,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_123( 63,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd23( 64,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_124( 65,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd24( 66,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_125( 67,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd25( 68,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_126( 69,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd26( 70,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_127( 71,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd27( 72,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_128( 73,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd28( 74,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_129( 75,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd29( 76,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_130( 77,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd30( 78,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_rd1( 79,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_12( 80,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd2( 81,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_13( 82,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd3( 83,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_14( 84,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd4( 85,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_15( 86,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd5( 87,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_16( 88,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd6( 89,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_17( 90,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd7( 91,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_18( 92,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_19( 93,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd9( 94,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_110( 95,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd10( 96,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_111( 97,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd11( 98,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_112( 99,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd12( 100,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_113( 101,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd13( 102,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_114( 103,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd14( 104,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_115( 105,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd15( 106,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_116( 107,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_117( 108,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd17( 109,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_118( 110,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd18( 111,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_119( 112,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd19( 113,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_120( 114,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd20( 115,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_121( 116,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd21( 117,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_122( 118,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd22( 119,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_123( 120,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd23( 121,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_124( 122,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd24( 123,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_125( 124,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd25( 125,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_126( 126,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd26( 127,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_127( 128,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd27( 129,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_128( 130,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd28( 131,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_129( 132,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd29( 133,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_130( 134,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd30( 135,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_rd1( 136,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_12( 137,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd2( 138,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_13( 139,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd3( 140,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_14( 141,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd4( 142,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_15( 143,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd5( 144,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_16( 145,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd6( 146,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_17( 147,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd7( 148,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_18( 149,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_19( 150,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd9( 151,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_110( 152,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd10( 153,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_111( 154,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd11( 155,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_112( 156,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd12( 157,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_113( 158,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd13( 159,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_114( 160,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd14( 161,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_115( 162,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd15( 163,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_116( 164,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_117( 165,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd17( 166,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_118( 167,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd18( 168,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_119( 169,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd19( 170,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_120( 171,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd20( 172,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_121( 173,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd21( 174,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_122( 175,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd22( 176,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_123( 177,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd23( 178,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_124( 179,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd24( 180,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_125( 181,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd25( 182,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_126( 183,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd26( 184,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_127( 185,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd27( 186,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_128( 187,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd28( 188,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_129( 189,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd29( 190,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_130( 191,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd30( 192,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_rd1( 193,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_12( 194,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd2( 195,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_13( 196,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd3( 197,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_14( 198,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd4( 199,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_15( 200,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd5( 201,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_16( 202,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd6( 203,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_17( 204,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd7( 205,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_18( 206,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_19( 207,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd9( 208,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_110( 209,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
  TEST_VLSEG1_OP_rd10( 210,  vlseg2e8.v,  8 , 0xff, 0 + tdat );
  TEST_VLSEG1_OP_111( 211,  vlseg2e8.v,  8 , 0x00, 4 + tdat );
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
    

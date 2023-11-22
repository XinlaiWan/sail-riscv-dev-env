#----------------------------------------------------------------------------- 
    # vlssege16.S
    #-----------------------------------------------------------------------------
    #
    # Test vlssege16 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vlssege16)
    
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
        
#define TEST_VLSSEG1_OP_11(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x1, base; \
                li  x30, stride; \
                inst v8, (x1), x30 ; \
        )
#define TEST_VLSSEG1_OP_12(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x2, base; \
                li  x30, stride; \
                inst v8, (x2), x30 ; \
        )
#define TEST_VLSSEG1_OP_13(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x3, base; \
                li  x30, stride; \
                inst v8, (x3), x30 ; \
        )
#define TEST_VLSSEG1_OP_14(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x4, base; \
                li  x30, stride; \
                inst v8, (x4), x30 ; \
        )
#define TEST_VLSSEG1_OP_15(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x5, base; \
                li  x30, stride; \
                inst v8, (x5), x30 ; \
        )
#define TEST_VLSSEG1_OP_16(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x6, base; \
                li  x30, stride; \
                inst v8, (x6), x30 ; \
        )
#define TEST_VLSSEG1_OP_17(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x7, base; \
                li  x30, stride; \
                inst v8, (x7), x30 ; \
        )
#define TEST_VLSSEG1_OP_18(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x8, base; \
                li  x30, stride; \
                inst v8, (x8), x30 ; \
        )
#define TEST_VLSSEG1_OP_19(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x9, base; \
                li  x30, stride; \
                inst v8, (x9), x30 ; \
        )
#define TEST_VLSSEG1_OP_110(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x10, base; \
                li  x30, stride; \
                inst v8, (x10), x30 ; \
        )
#define TEST_VLSSEG1_OP_111(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x11, base; \
                li  x30, stride; \
                inst v8, (x11), x30 ; \
        )
#define TEST_VLSSEG1_OP_112(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x12, base; \
                li  x30, stride; \
                inst v8, (x12), x30 ; \
        )
#define TEST_VLSSEG1_OP_113(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x13, base; \
                li  x30, stride; \
                inst v8, (x13), x30 ; \
        )
#define TEST_VLSSEG1_OP_114(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x14, base; \
                li  x30, stride; \
                inst v8, (x14), x30 ; \
        )
#define TEST_VLSSEG1_OP_115(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x15, base; \
                li  x30, stride; \
                inst v8, (x15), x30 ; \
        )
#define TEST_VLSSEG1_OP_116(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x16, base; \
                li  x30, stride; \
                inst v8, (x16), x30 ; \
        )
#define TEST_VLSSEG1_OP_117(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x17, base; \
                li  x30, stride; \
                inst v8, (x17), x30 ; \
        )
#define TEST_VLSSEG1_OP_118(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x18, base; \
                li  x30, stride; \
                inst v8, (x18), x30 ; \
        )
#define TEST_VLSSEG1_OP_119(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x19, base; \
                li  x30, stride; \
                inst v8, (x19), x30 ; \
        )
#define TEST_VLSSEG1_OP_120(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x20, base; \
                li  x30, stride; \
                inst v8, (x20), x30 ; \
        )
#define TEST_VLSSEG1_OP_121(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x21, base; \
                li  x30, stride; \
                inst v8, (x21), x30 ; \
        )
#define TEST_VLSSEG1_OP_122(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x22, base; \
                li  x30, stride; \
                inst v8, (x22), x30 ; \
        )
#define TEST_VLSSEG1_OP_123(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x23, base; \
                li  x30, stride; \
                inst v8, (x23), x30 ; \
        )
#define TEST_VLSSEG1_OP_124(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x24, base; \
                li  x30, stride; \
                inst v8, (x24), x30 ; \
        )
#define TEST_VLSSEG1_OP_125(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x25, base; \
                li  x30, stride; \
                inst v8, (x25), x30 ; \
        )
#define TEST_VLSSEG1_OP_126(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x26, base; \
                li  x30, stride; \
                inst v8, (x26), x30 ; \
        )
#define TEST_VLSSEG1_OP_127(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x27, base; \
                li  x30, stride; \
                inst v8, (x27), x30 ; \
        )
#define TEST_VLSSEG1_OP_128(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x28, base; \
                li  x30, stride; \
                inst v8, (x28), x30 ; \
        )
#define TEST_VLSSEG1_OP_129(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x29, base; \
                li  x30, stride; \
                inst v8, (x29), x30 ; \
        )
#define TEST_VLSSEG1_OP_130(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x30, base; \
                li  x30, stride; \
                inst v8, (x30), x30 ; \
        )
#define TEST_VLSSEG1_OP_131(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v8, result, \
                la  x31, base; \
                li  x30, stride; \
                inst v8, (x31), x30 ; \
        )
#define TEST_VLSSEG1_OP_rd1(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v1, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v1, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd2(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v2, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v2, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd3(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v3, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v3, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd4(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v4, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v4, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd5(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v5, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v5, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd6(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v6, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v6, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd7(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v7, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v7, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd8(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v8, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v8, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd9(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v9, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v9, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd10(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v10, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v10, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd11(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v11, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v11, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd12(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v12, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v12, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd13(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v13, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v13, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd14(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v14, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v14, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd15(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v15, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v15, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd16(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v16, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v16, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd17(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v17, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v17, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd18(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v18, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v18, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd19(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v19, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v19, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd20(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v20, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v20, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd21(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v21, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v21, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd22(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v22, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v22, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd23(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v23, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v23, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd24(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v24, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v24, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd25(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v25, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v25, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd26(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v26, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v26, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd27(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v27, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v27, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd28(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v28, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v28, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd29(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v29, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v29, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd30(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v30, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v30, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_rd31(  testnum, inst, eew, result, stride, base ) \
                TEST_CASE( testnum, v31, result, \
                    la  x1, base; \
                    li  x2, stride; \
                    inst v31, (x1), x2; \
            ) 
#define TEST_VLSSEG1_OP_130(  testnum, inst, eew, result, stride, base ) \
            TEST_CASE( testnum, v16, result, \
                la  x30, base; \
                li  x3, stride; \
                inst v16, (x30), x3 ; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VLSSEG1_OP( 2,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
  TEST_VLSSEG1_OP( 3,  vlsseg2e16.v,  16 , 0x00ff,  0 , 0 + tdat );
  TEST_VLSSEG1_OP( 4,  vlsseg2e16.v,  16 , 0x00ff,  2 , 2 + tdat );
  TEST_VLSSEG1_OP( 5,  vlsseg2e16.v,  16 , 0x00ff,  0 , 2 + tdat );
  TEST_VLSSEG1_OP( 6,  vlsseg2e16.v,  16 , 0x00ff,  4100 , 2 + tdat );
  TEST_VLSSEG1_OP( 7,  vlsseg2e16.v,  16 , 0x00ff,  -4100 , 2 + tdat14 );
  TEST_VLSSEG3_OP( 8,  vlsseg3e16.v,  16 , 0x00ff, 0x00ff, 0xff00,  2 , 0 + tdat );
  TEST_VLSSEG3_OP( 9,  vlsseg4e16.v,  16 , 0x0ff0, 0x0ff0, 0xf00f,  2 , 8 + tdat );
  TEST_VLSSEG3_OP( 10,  vlsseg5e16.v,  16 , 0x00ff, 0x00ff, 0xff00,  2 , -12 + tdat4 );
  TEST_VLSSEG3_OP( 11,  vlsseg6e16.v,  16 , 0x00ff, 0x00ff, 0xff00,  2 , 0 + tdat );
  TEST_VLSSEG3_OP( 12,  vlsseg7e16.v,  16 , 0x00ff, 0x00ff, 0xff00,  2 , 0 + tdat );
  TEST_VLSSEG3_OP( 13,  vlsseg8e16.v,  16 , 0x00ff, 0x00ff, 0xff00,  2 , 0 + tdat );
  TEST_VLSSEG1_OP( 14,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
  TEST_VLSSEG1_OP( 15,  vlsseg2e16.v,  16 , 0x00ff,  0 , 0 + tdat );
  TEST_VLSSEG1_OP( 16,  vlsseg2e16.v,  16 , 0x00ff,  2 , 2 + tdat );
  TEST_VLSSEG1_OP( 17,  vlsseg2e16.v,  16 , 0x00ff,  0 , 2 + tdat );
  TEST_VLSSEG1_OP( 18,  vlsseg2e16.v,  16 , 0x00ff,  4100 , 2 + tdat );
  TEST_VLSSEG1_OP( 19,  vlsseg2e16.v,  16 , 0x00ff,  -4100 , 2 + tdat14 );
  TEST_VLSSEG3_OP( 20,  vlsseg3e16.v,  16 , 0x00ff, 0x00ff, 0xff00,  2 , 0 + tdat );
  TEST_VLSSEG3_OP( 21,  vlsseg4e16.v,  16 , 0x0ff0, 0x0ff0, 0xf00f,  2 , 8 + tdat );
  TEST_VLSSEG3_OP( 22,  vlsseg5e16.v,  16 , 0x00ff, 0x00ff, 0xff00,  2 , -12 + tdat4 );
  TEST_VLSSEG3_OP( 23,  vlsseg6e16.v,  16 , 0x00ff, 0x00ff, 0xff00,  2 , 0 + tdat );
  TEST_VLSSEG3_OP( 24,  vlsseg7e16.v,  16 , 0x00ff, 0x00ff, 0xff00,  2 , 0 + tdat );
  TEST_VLSSEG3_OP( 25,  vlsseg8e16.v,  16 , 0x00ff, 0x00ff, 0xff00,  2 , 0 + tdat );
  TEST_VLSSEG1_OP_rd1( 26,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_12( 27,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd2( 28,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_13( 29,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd3( 30,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_14( 31,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd4( 32,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_15( 33,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd5( 34,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_16( 35,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd6( 36,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_17( 37,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd7( 38,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_18( 39,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
   TEST_VLSSEG1_OP_19( 40,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd9( 41,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_110( 42,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd10( 43,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_111( 44,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd11( 45,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_112( 46,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd12( 47,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_113( 48,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd13( 49,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_114( 50,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd14( 51,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_115( 52,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd15( 53,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_116( 54,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
   TEST_VLSSEG1_OP_117( 55,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd17( 56,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_118( 57,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd18( 58,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_119( 59,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd19( 60,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_120( 61,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd20( 62,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_121( 63,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd21( 64,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_122( 65,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd22( 66,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_123( 67,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd23( 68,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_124( 69,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd24( 70,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_125( 71,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd25( 72,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_126( 73,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd26( 74,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_127( 75,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd27( 76,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_128( 77,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd28( 78,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_129( 79,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd29( 80,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_130( 81,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd30( 82,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
  TEST_VLSSEG1_OP_rd1( 83,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_12( 84,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd2( 85,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_13( 86,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd3( 87,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_14( 88,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd4( 89,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_15( 90,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd5( 91,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_16( 92,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd6( 93,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_17( 94,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd7( 95,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_18( 96,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
   TEST_VLSSEG1_OP_19( 97,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd9( 98,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_110( 99,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd10( 100,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_111( 101,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd11( 102,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_112( 103,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd12( 104,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_113( 105,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd13( 106,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_114( 107,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd14( 108,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_115( 109,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd15( 110,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_116( 111,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
   TEST_VLSSEG1_OP_117( 112,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd17( 113,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_118( 114,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd18( 115,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_119( 116,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd19( 117,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_120( 118,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd20( 119,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_121( 120,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd21( 121,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_122( 122,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd22( 123,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_123( 124,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd23( 125,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_124( 126,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd24( 127,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_125( 128,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd25( 129,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_126( 130,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd26( 131,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_127( 132,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd27( 133,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_128( 134,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd28( 135,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_129( 136,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd29( 137,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_130( 138,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd30( 139,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
  TEST_VLSSEG1_OP_rd1( 140,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_12( 141,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd2( 142,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_13( 143,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd3( 144,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_14( 145,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd4( 146,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_15( 147,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd5( 148,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_16( 149,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd6( 150,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_17( 151,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd7( 152,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_18( 153,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
   TEST_VLSSEG1_OP_19( 154,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd9( 155,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_110( 156,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd10( 157,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_111( 158,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd11( 159,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_112( 160,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd12( 161,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_113( 162,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd13( 163,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_114( 164,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd14( 165,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_115( 166,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd15( 167,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_116( 168,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
   TEST_VLSSEG1_OP_117( 169,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd17( 170,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_118( 171,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd18( 172,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_119( 173,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd19( 174,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_120( 175,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd20( 176,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_121( 177,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd21( 178,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_122( 179,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd22( 180,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_123( 181,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd23( 182,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_124( 183,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd24( 184,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_125( 185,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd25( 186,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_126( 187,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd26( 188,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_127( 189,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd27( 190,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_128( 191,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd28( 192,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_129( 193,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd29( 194,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_130( 195,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd30( 196,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
  TEST_VLSSEG1_OP_rd1( 197,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_12( 198,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd2( 199,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_13( 200,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd3( 201,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_14( 202,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd4( 203,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_15( 204,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd5( 205,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_16( 206,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd6( 207,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_17( 208,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd7( 209,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_18( 210,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
   TEST_VLSSEG1_OP_19( 211,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd9( 212,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_110( 213,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
  TEST_VLSSEG1_OP_rd10( 214,  vlsseg2e16.v,  16 , 0x00ff,  2 , 0 + tdat );
   TEST_VLSSEG1_OP_111( 215,  vlsseg2e16.v,  16 , 0xff00,  2 , 4 + tdat );
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
    

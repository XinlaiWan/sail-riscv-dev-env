#----------------------------------------------------------------------------- 
    # vlssege32.S
    #-----------------------------------------------------------------------------
    #
    # Test vlssege32 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vlssege32)
    
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
  TEST_VLSSEG1_OP( 2,  vlsseg2e32.v,  32 , 0x00ff00ff,  0 , 0 + tdat );
  TEST_VLSSEG1_OP( 3,  vlsseg2e32.v,  32 , 0xff00ff00,  4100 , 4 + tdat );
  TEST_VLSSEG1_OP( 4,  vlsseg2e32.v,  32 , 0xff00ff00,  -4100 , 4 + tdat14 );
  TEST_VLSSEG3_OP( 5,  vlsseg3e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0,  4 , 0 + tdat );
  TEST_VLSSEG3_OP( 6,  vlsseg4e32.v,  32 , 0x0ff00ff0, 0xf00ff00f, 0x00ff00ff,  4 , 8 + tdat );
  TEST_VLSSEG3_OP( 7,  vlsseg5e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0,  4 , -12 + tdat4 );
  TEST_VLSSEG3_OP( 8,  vlsseg6e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0,  4 , 0 + tdat );
  TEST_VLSSEG3_OP( 9,  vlsseg7e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0,  4 , 0 + tdat );
  TEST_VLSSEG3_OP( 10,  vlsseg8e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0,  4 , 0 + tdat );
  TEST_VLSSEG1_OP( 11,  vlsseg2e32.v,  32 , 0x00ff00ff,  0 , 0 + tdat );
  TEST_VLSSEG1_OP( 12,  vlsseg2e32.v,  32 , 0xff00ff00,  4100 , 4 + tdat );
  TEST_VLSSEG1_OP( 13,  vlsseg2e32.v,  32 , 0xff00ff00,  -4100 , 4 + tdat14 );
  TEST_VLSSEG3_OP( 14,  vlsseg3e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0,  4 , 0 + tdat );
  TEST_VLSSEG3_OP( 15,  vlsseg4e32.v,  32 , 0x0ff00ff0, 0xf00ff00f, 0x00ff00ff,  4 , 8 + tdat );
  TEST_VLSSEG3_OP( 16,  vlsseg5e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0,  4 , -12 + tdat4 );
  TEST_VLSSEG3_OP( 17,  vlsseg6e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0,  4 , 0 + tdat );
  TEST_VLSSEG3_OP( 18,  vlsseg7e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0,  4 , 0 + tdat );
  TEST_VLSSEG3_OP( 19,  vlsseg8e32.v,  32 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0,  4 , 0 + tdat );
  TEST_VLSSEG1_OP_rd1( 20,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_12( 21,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd2( 22,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_13( 23,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd3( 24,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_14( 25,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd4( 26,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_15( 27,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd5( 28,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_16( 29,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd6( 30,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_17( 31,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd7( 32,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_18( 33,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_19( 34,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd9( 35,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_110( 36,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd10( 37,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_111( 38,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd11( 39,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_112( 40,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd12( 41,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_113( 42,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd13( 43,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_114( 44,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd14( 45,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_115( 46,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd15( 47,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_116( 48,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_117( 49,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd17( 50,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_118( 51,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd18( 52,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_119( 53,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd19( 54,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_120( 55,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd20( 56,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_121( 57,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd21( 58,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_122( 59,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd22( 60,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_123( 61,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd23( 62,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_124( 63,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd24( 64,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_125( 65,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd25( 66,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_126( 67,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd26( 68,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_127( 69,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd27( 70,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_128( 71,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd28( 72,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_129( 73,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd29( 74,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_130( 75,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd30( 76,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_rd1( 77,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_12( 78,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd2( 79,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_13( 80,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd3( 81,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_14( 82,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd4( 83,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_15( 84,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd5( 85,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_16( 86,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd6( 87,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_17( 88,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd7( 89,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_18( 90,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_19( 91,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd9( 92,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_110( 93,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd10( 94,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_111( 95,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd11( 96,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_112( 97,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd12( 98,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_113( 99,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd13( 100,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_114( 101,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd14( 102,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_115( 103,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd15( 104,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_116( 105,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_117( 106,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd17( 107,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_118( 108,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd18( 109,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_119( 110,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd19( 111,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_120( 112,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd20( 113,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_121( 114,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd21( 115,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_122( 116,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd22( 117,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_123( 118,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd23( 119,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_124( 120,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd24( 121,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_125( 122,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd25( 123,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_126( 124,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd26( 125,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_127( 126,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd27( 127,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_128( 128,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd28( 129,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_129( 130,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd29( 131,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_130( 132,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd30( 133,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_rd1( 134,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_12( 135,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd2( 136,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_13( 137,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd3( 138,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_14( 139,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd4( 140,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_15( 141,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd5( 142,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_16( 143,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd6( 144,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_17( 145,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd7( 146,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_18( 147,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_19( 148,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd9( 149,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_110( 150,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd10( 151,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_111( 152,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd11( 153,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_112( 154,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd12( 155,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_113( 156,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd13( 157,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_114( 158,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd14( 159,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_115( 160,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd15( 161,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_116( 162,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_117( 163,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd17( 164,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_118( 165,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd18( 166,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_119( 167,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd19( 168,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_120( 169,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd20( 170,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_121( 171,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd21( 172,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_122( 173,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd22( 174,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_123( 175,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd23( 176,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_124( 177,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd24( 178,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_125( 179,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd25( 180,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_126( 181,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd26( 182,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_127( 183,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd27( 184,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_128( 185,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd28( 186,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_129( 187,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd29( 188,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_130( 189,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd30( 190,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_rd1( 191,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_12( 192,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd2( 193,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_13( 194,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd3( 195,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_14( 196,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd4( 197,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_15( 198,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd5( 199,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_16( 200,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd6( 201,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_17( 202,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd7( 203,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_18( 204,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_19( 205,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd9( 206,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_110( 207,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
  TEST_VLSSEG1_OP_rd10( 208,  vlsseg2e32.v,  32 , 0x00ff00ff,  4 ,0 + tdat );
  TEST_VLSSEG1_OP_111( 209,  vlsseg2e32.v,  32 , 0xff00ff00,  4 ,4 + tdat );
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
    

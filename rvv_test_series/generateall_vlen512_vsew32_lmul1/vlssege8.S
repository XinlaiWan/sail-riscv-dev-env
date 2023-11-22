#----------------------------------------------------------------------------- 
    # vlssege8.S
    #-----------------------------------------------------------------------------
    #
    # Test vlssege8 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vlssege8)
    
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
  TEST_VLSSEG1_OP( 2,  vlsseg2e8.v,  8 , 0xff, 0, 0 + tdat );
  TEST_VLSSEG1_OP( 3,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP( 4,  vlsseg2e8.v,  8 , 0xff, 2, 0 + tdat );
  TEST_VLSSEG1_OP( 5,  vlsseg2e8.v,  8 , 0xff, 3, 0 + tdat );
  TEST_VLSSEG1_OP( 6,  vlsseg2e8.v,  8 , 0x00, 0, 1 + tdat );
  TEST_VLSSEG1_OP( 7,  vlsseg2e8.v,  8 , 0x00, 1, 1 + tdat );
  TEST_VLSSEG1_OP( 8,  vlsseg2e8.v,  8 , 0x00, 2, 1 + tdat );
  TEST_VLSSEG1_OP( 9,  vlsseg2e8.v,  8 , 0x00, 3, 1 + tdat );
  TEST_VLSSEG1_OP( 10,  vlsseg2e8.v,  8 , 0xff, 0, 2 + tdat );
  TEST_VLSSEG1_OP( 11,  vlsseg2e8.v,  8 , 0xff, 1, 2 + tdat );
  TEST_VLSSEG1_OP( 12,  vlsseg2e8.v,  8 , 0xff, 2, 2 + tdat );
  TEST_VLSSEG1_OP( 13,  vlsseg2e8.v,  8 , 0xff, 3, 2 + tdat );
  TEST_VLSSEG1_OP( 14,  vlsseg2e8.v,  8 , 0x00, 0, 3 + tdat );
  TEST_VLSSEG1_OP( 15,  vlsseg2e8.v,  8 , 0x00, 1, 3 + tdat );
  TEST_VLSSEG1_OP( 16,  vlsseg2e8.v,  8 , 0x00, 2, 3 + tdat );
  TEST_VLSSEG1_OP( 17,  vlsseg2e8.v,  8 , 0x00, 3, 3 + tdat );
  TEST_VLSSEG1_OP( 18,  vlsseg2e8.v,  8 , 0x00, 4100, 3 + tdat );
  TEST_VLSSEG1_OP( 19,  vlsseg2e8.v,  8 , 0x00, -4100, 3 + tdat );
  TEST_VLSSEG3_OP( 20,  vlsseg3e8.v,  8 , 0xff, 0x00, 0xff, 1, 0 + tdat );
  TEST_VLSSEG3_OP( 21,  vlsseg4e8.v,  8 , 0x0f, 0xf0, 0x0f, 1, 12 + tdat );
  TEST_VLSSEG3_OP( 22,  vlsseg5e8.v,  8 , 0xff, 0x00, 0xff, 1, -12 + tdat4 );
  TEST_VLSSEG3_OP( 23,  vlsseg6e8.v,  8 , 0xff, 0x00, 0xff, 1, 0 + tdat );
  TEST_VLSSEG3_OP( 24,  vlsseg7e8.v,  8 , 0xff, 0x00, 0xff, 1, 0 + tdat );
  TEST_VLSSEG3_OP( 25,  vlsseg8e8.v,  8 , 0xff, 0x00, 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP( 26,  vlsseg2e8.v,  8 , 0xff, 0, 0 + tdat );
  TEST_VLSSEG1_OP( 27,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP( 28,  vlsseg2e8.v,  8 , 0xff, 2, 0 + tdat );
  TEST_VLSSEG1_OP( 29,  vlsseg2e8.v,  8 , 0xff, 3, 0 + tdat );
  TEST_VLSSEG1_OP( 30,  vlsseg2e8.v,  8 , 0x00, 0, 1 + tdat );
  TEST_VLSSEG1_OP( 31,  vlsseg2e8.v,  8 , 0x00, 1, 1 + tdat );
  TEST_VLSSEG1_OP( 32,  vlsseg2e8.v,  8 , 0x00, 2, 1 + tdat );
  TEST_VLSSEG1_OP( 33,  vlsseg2e8.v,  8 , 0x00, 3, 1 + tdat );
  TEST_VLSSEG1_OP( 34,  vlsseg2e8.v,  8 , 0xff, 0, 2 + tdat );
  TEST_VLSSEG1_OP( 35,  vlsseg2e8.v,  8 , 0xff, 1, 2 + tdat );
  TEST_VLSSEG1_OP( 36,  vlsseg2e8.v,  8 , 0xff, 2, 2 + tdat );
  TEST_VLSSEG1_OP( 37,  vlsseg2e8.v,  8 , 0xff, 3, 2 + tdat );
  TEST_VLSSEG1_OP( 38,  vlsseg2e8.v,  8 , 0x00, 0, 3 + tdat );
  TEST_VLSSEG1_OP( 39,  vlsseg2e8.v,  8 , 0x00, 1, 3 + tdat );
  TEST_VLSSEG1_OP( 40,  vlsseg2e8.v,  8 , 0x00, 2, 3 + tdat );
  TEST_VLSSEG1_OP( 41,  vlsseg2e8.v,  8 , 0x00, 3, 3 + tdat );
  TEST_VLSSEG1_OP( 42,  vlsseg2e8.v,  8 , 0x00, 4100, 3 + tdat );
  TEST_VLSSEG1_OP( 43,  vlsseg2e8.v,  8 , 0x00, -4100, 3 + tdat );
  TEST_VLSSEG3_OP( 44,  vlsseg3e8.v,  8 , 0xff, 0x00, 0xff, 1, 0 + tdat );
  TEST_VLSSEG3_OP( 45,  vlsseg4e8.v,  8 , 0x0f, 0xf0, 0x0f, 1, 12 + tdat );
  TEST_VLSSEG3_OP( 46,  vlsseg5e8.v,  8 , 0xff, 0x00, 0xff, 1, -12 + tdat4 );
  TEST_VLSSEG3_OP( 47,  vlsseg6e8.v,  8 , 0xff, 0x00, 0xff, 1, 0 + tdat );
  TEST_VLSSEG3_OP( 48,  vlsseg7e8.v,  8 , 0xff, 0x00, 0xff, 1, 0 + tdat );
  TEST_VLSSEG3_OP( 49,  vlsseg8e8.v,  8 , 0xff, 0x00, 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_rd1( 50,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_12( 51,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd2( 52,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_13( 53,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd3( 54,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_14( 55,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd4( 56,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_15( 57,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd5( 58,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_16( 59,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd6( 60,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_17( 61,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd7( 62,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_18( 63,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_19( 64,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd9( 65,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_110( 66,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd10( 67,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_111( 68,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd11( 69,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_112( 70,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd12( 71,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_113( 72,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd13( 73,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_114( 74,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd14( 75,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_115( 76,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd15( 77,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_116( 78,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_117( 79,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd17( 80,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_118( 81,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd18( 82,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_119( 83,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd19( 84,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_120( 85,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd20( 86,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_121( 87,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd21( 88,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_122( 89,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd22( 90,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_123( 91,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd23( 92,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_124( 93,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd24( 94,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_125( 95,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd25( 96,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_126( 97,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd26( 98,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_127( 99,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd27( 100,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_128( 101,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd28( 102,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_129( 103,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd29( 104,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_130( 105,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd30( 106,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_rd1( 107,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_12( 108,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd2( 109,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_13( 110,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd3( 111,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_14( 112,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd4( 113,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_15( 114,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd5( 115,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_16( 116,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd6( 117,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_17( 118,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd7( 119,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_18( 120,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_19( 121,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd9( 122,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_110( 123,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd10( 124,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_111( 125,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd11( 126,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_112( 127,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd12( 128,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_113( 129,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd13( 130,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_114( 131,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd14( 132,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_115( 133,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd15( 134,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_116( 135,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_117( 136,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd17( 137,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_118( 138,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd18( 139,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_119( 140,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd19( 141,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_120( 142,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd20( 143,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_121( 144,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd21( 145,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_122( 146,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd22( 147,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_123( 148,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd23( 149,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_124( 150,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd24( 151,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_125( 152,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd25( 153,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_126( 154,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd26( 155,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_127( 156,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd27( 157,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_128( 158,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd28( 159,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_129( 160,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd29( 161,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_130( 162,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd30( 163,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_rd1( 164,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_12( 165,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd2( 166,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_13( 167,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd3( 168,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_14( 169,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd4( 170,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_15( 171,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd5( 172,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_16( 173,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd6( 174,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_17( 175,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd7( 176,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_18( 177,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_19( 178,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd9( 179,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_110( 180,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd10( 181,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_111( 182,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd11( 183,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_112( 184,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd12( 185,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_113( 186,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd13( 187,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_114( 188,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd14( 189,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_115( 190,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd15( 191,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_116( 192,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_117( 193,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd17( 194,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_118( 195,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd18( 196,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_119( 197,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd19( 198,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_120( 199,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd20( 200,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_121( 201,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd21( 202,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_122( 203,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd22( 204,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_123( 205,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd23( 206,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_124( 207,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd24( 208,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_125( 209,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd25( 210,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_126( 211,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd26( 212,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_127( 213,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd27( 214,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_128( 215,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd28( 216,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_129( 217,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd29( 218,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_130( 219,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd30( 220,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_rd1( 221,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_12( 222,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd2( 223,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_13( 224,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd3( 225,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_14( 226,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd4( 227,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_15( 228,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd5( 229,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_16( 230,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd6( 231,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_17( 232,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd7( 233,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_18( 234,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_19( 235,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd9( 236,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_110( 237,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
  TEST_VLSSEG1_OP_rd10( 238,  vlsseg2e8.v,  8 , 0xff, 1, 0 + tdat );
  TEST_VLSSEG1_OP_111( 239,  vlsseg2e8.v,  8 , 0x00, 1, 4 + tdat );
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
    

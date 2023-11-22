#----------------------------------------------------------------------------- 
    # vfwredsum.S
    #-----------------------------------------------------------------------------
    #
    # Test vfwredsum instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vfwredsum)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_W_FP_WV_OP_DS_12( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v2, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v2; \
        )
#define TEST_W_FP_WV_OP_DS_14( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v4, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v4; \
        )
#define TEST_W_FP_WV_OP_DS_16( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v6, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v6; \
        )
#define TEST_W_FP_WV_OP_DS_18( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v24, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v24, v16, v8; \
        )
#define TEST_W_FP_WV_OP_DS_110( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v24, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v10, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v24, v16, v10; \
        )
#define TEST_W_FP_WV_OP_DS_112( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v24, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v12, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v24, v16, v12; \
        )
#define TEST_W_FP_WV_OP_DS_114( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v24, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v14, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v24, v16, v14; \
        )
#define TEST_W_FP_WV_OP_DS_116( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v8, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v16, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v8, v24, v16; \
        )
#define TEST_W_FP_WV_OP_DS_118( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v8, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v18, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v8, v24, v18; \
        )
#define TEST_W_FP_WV_OP_DS_120( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v8, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v20, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v8, v24, v20; \
        )
#define TEST_W_FP_WV_OP_DS_122( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v8, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v22, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v8, v24, v22; \
        )
#define TEST_W_FP_WV_OP_DS_124( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v24, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v24; \
        )
#define TEST_W_FP_WV_OP_DS_126( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v26, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v26; \
        )
#define TEST_W_FP_WV_OP_DS_128( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v28, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v28; \
        )
#define TEST_W_FP_WV_OP_DS_130( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v30, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v30; \
        )
#define TEST_W_FP_WV_OP_DS_rd4( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v4, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v4, v16, v8; \
        )
#define TEST_W_FP_WV_OP_DS_rd8( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v8, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v16, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v8, v24, v16; \
        )
#define TEST_W_FP_WV_OP_DS_rd12( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v12, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v16, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v12, v24, v16; \
        )
#define TEST_W_FP_WV_OP_DS_rd16( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v24, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v24; \
        )
#define TEST_W_FP_WV_OP_DS_rd20( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v20, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v24, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v20, v8, v24; \
        )
#define TEST_W_FP_WV_OP_DS_rd24( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v24, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v24, v16, v8; \
        )
#define TEST_W_FP_WV_OP_DS_rd28( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v28, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v28, v16, v8; \
        )
  #-------------------------------------------------------------
  # vfwredosum Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_W_FP_WV_OP_DS( 2,  vfwredosum.vs, fadd.d, 0x0000000000000000, 0x00000000, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 3,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 4,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 5,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 6,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 7,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 8,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 9,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 10,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 11,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 12,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 13,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 14,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 15,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 16,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 17,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 18,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS( 19,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 20,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 21,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 22,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 23,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 24,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 25,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 26,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 27,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 28,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 29,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 30,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 31,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 32,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 33,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 34,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS( 35,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 36,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 37,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 38,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 39,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 40,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 41,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 42,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 43,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 44,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 45,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 46,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 47,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 48,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 49,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 50,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS( 51,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 52,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 53,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 54,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 55,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 56,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 57,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 58,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 59,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 60,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 61,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 62,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 63,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 64,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 65,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 66,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS( 67,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 68,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 69,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 70,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 71,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 72,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 73,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 74,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 75,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 76,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 77,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 78,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 79,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 80,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 81,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 82,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80855555 );
  TEST_W_FP_WV_OP_DS( 83,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 84,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 85,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 86,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 87,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 88,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 89,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 90,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 91,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 92,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 93,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 94,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 95,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 96,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 97,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 98,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00800001 );
  TEST_W_FP_WV_OP_DS( 99,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 100,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 101,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 102,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 103,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 104,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 105,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 106,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 107,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 108,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 109,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 110,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 111,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 112,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 113,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 114,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80800000 );
  TEST_W_FP_WV_OP_DS( 115,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 116,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 117,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 118,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 119,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 120,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 121,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 122,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 123,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 124,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 125,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 126,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 127,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 128,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 129,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 130,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00800000 );
  TEST_W_FP_WV_OP_DS( 131,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 132,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 133,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 134,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 135,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 136,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 137,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 138,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 139,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 140,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 141,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 142,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 143,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 144,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 145,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 146,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS( 147,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 148,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 149,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 150,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 151,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 152,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 153,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 154,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 155,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 156,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 157,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 158,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 159,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 160,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 161,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 162,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS( 163,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 164,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 165,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 166,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 167,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 168,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 169,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 170,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 171,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 172,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 173,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 174,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 175,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 176,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 177,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 178,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS( 179,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 180,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 181,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 182,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 183,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 184,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 185,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 186,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 187,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 188,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 189,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 190,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 191,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 192,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 193,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 194,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00000002 );
  TEST_W_FP_WV_OP_DS( 195,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 196,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 197,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 198,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 199,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 200,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 201,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 202,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 203,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 204,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 205,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 206,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 207,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 208,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 209,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 210,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80000001 );
  TEST_W_FP_WV_OP_DS( 211,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 212,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 213,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 214,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 215,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 216,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 217,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 218,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 219,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 220,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 221,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 222,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 223,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 224,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 225,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 226,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00000001 );
  TEST_W_FP_WV_OP_DS( 227,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 228,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 229,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 230,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 231,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 232,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 233,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 234,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 235,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 236,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 237,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 238,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 239,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 240,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 241,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 242,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80000000 );
  TEST_W_FP_WV_OP_DS( 243,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 244,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 245,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 246,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 247,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 248,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 249,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 250,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 251,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 252,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 253,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 254,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 255,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 256,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000000 );
  TEST_W_FP_WV_OP_DS( 257,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000000 );
  #-------------------------------------------------------------
  # vfwredosum Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_W_FP_WV_OP_DS_12( 258,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_14( 259,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd4( 260,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_16( 261,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_18( 262,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd8( 263,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_110( 264,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_112( 265,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd12( 266,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_114( 267,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_116( 268,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd16( 269,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_118( 270,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_120( 271,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd20( 272,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_122( 273,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_124( 274,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd24( 275,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_126( 276,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_128( 277,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd28( 278,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_130( 279,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_12( 280,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_14( 281,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd4( 282,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_16( 283,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_18( 284,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd8( 285,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_110( 286,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_112( 287,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd12( 288,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_114( 289,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_116( 290,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd16( 291,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_118( 292,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_120( 293,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd20( 294,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_122( 295,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_124( 296,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd24( 297,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_126( 298,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_128( 299,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd28( 300,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_130( 301,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_12( 302,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_14( 303,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd4( 304,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_16( 305,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_18( 306,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd8( 307,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80855555 );
  TEST_W_FP_WV_OP_DS_110( 308,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_112( 309,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd12( 310,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_114( 311,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80855555 );
  TEST_W_FP_WV_OP_DS_116( 312,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd16( 313,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80855555 );
  TEST_W_FP_WV_OP_DS_118( 314,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_120( 315,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd20( 316,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_122( 317,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_124( 318,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd24( 319,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00800001 );
  TEST_W_FP_WV_OP_DS_126( 320,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_128( 321,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd28( 322,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_130( 323,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00800001 );
  TEST_W_FP_WV_OP_DS_12( 324,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00800001 );
  TEST_W_FP_WV_OP_DS_14( 325,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd4( 326,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_16( 327,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_18( 328,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd8( 329,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_110( 330,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80800000 );
  TEST_W_FP_WV_OP_DS_112( 331,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd12( 332,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_114( 333,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_116( 334,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd16( 335,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80800000 );
  TEST_W_FP_WV_OP_DS_118( 336,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80800000 );
  TEST_W_FP_WV_OP_DS_120( 337,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd20( 338,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_122( 339,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_124( 340,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd24( 341,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_126( 342,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00800000 );
  TEST_W_FP_WV_OP_DS_128( 343,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd28( 344,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_130( 345,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_12( 346,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00800000 );
  TEST_W_FP_WV_OP_DS_14( 347,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd4( 348,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_16( 349,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_18( 350,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd8( 351,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_110( 352,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_112( 353,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd12( 354,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_114( 355,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_116( 356,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd16( 357,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_118( 358,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_120( 359,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd20( 360,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_122( 361,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_124( 362,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd24( 363,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_126( 364,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_128( 365,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd28( 366,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_130( 367,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_12( 368,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_14( 369,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd4( 370,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_16( 371,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_18( 372,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd8( 373,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_110( 374,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_112( 375,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd12( 376,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_114( 377,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_116( 378,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd16( 379,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_118( 380,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_120( 381,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd20( 382,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_122( 383,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_124( 384,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd24( 385,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_126( 386,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_128( 387,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd28( 388,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_130( 389,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_12( 390,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000002 );
  TEST_W_FP_WV_OP_DS_14( 391,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd4( 392,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_16( 393,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_18( 394,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd8( 395,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_110( 396,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_112( 397,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd12( 398,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80000001 );
  TEST_W_FP_WV_OP_DS_114( 399,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_116( 400,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd16( 401,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_118( 402,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80000001 );
  TEST_W_FP_WV_OP_DS_120( 403,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd20( 404,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80000001 );
  TEST_W_FP_WV_OP_DS_122( 405,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_124( 406,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd24( 407,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_126( 408,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_128( 409,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd28( 410,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000001 );
  TEST_W_FP_WV_OP_DS_130( 411,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_12( 412,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_14( 413,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd4( 414,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000001 );
  TEST_W_FP_WV_OP_DS_16( 415,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000001 );
  TEST_W_FP_WV_OP_DS_18( 416,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd8( 417,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_110( 418,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_112( 419,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd12( 420,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_114( 421,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80000000 );
  TEST_W_FP_WV_OP_DS_116( 422,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd16( 423,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_118( 424,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_120( 425,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd20( 426,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80000000 );
  TEST_W_FP_WV_OP_DS_122( 427,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80000000 );
  TEST_W_FP_WV_OP_DS_124( 428,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd24( 429,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_126( 430,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_128( 431,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd28( 432,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_130( 433,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000000 );
  TEST_W_FP_WV_OP_DS_12( 434,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_14( 435,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd4( 436,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000000 );
  TEST_W_FP_WV_OP_DS_16( 437,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000000 );
  TEST_W_FP_WV_OP_DS_18( 438,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd8( 439,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000000 );
  RVTEST_SIGBASE( x20,signature_x20_2)
    
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    
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
    

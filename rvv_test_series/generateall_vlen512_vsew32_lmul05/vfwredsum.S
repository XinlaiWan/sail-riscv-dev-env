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
    
#define TEST_W_FP_WV_OP_DS_11( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v1, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v1; \
        )
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
#define TEST_W_FP_WV_OP_DS_13( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v3, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v3; \
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
#define TEST_W_FP_WV_OP_DS_15( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v5, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v5; \
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
#define TEST_W_FP_WV_OP_DS_17( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v7, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v7; \
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
#define TEST_W_FP_WV_OP_DS_19( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v24, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v9, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v24, v16, v9; \
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
#define TEST_W_FP_WV_OP_DS_111( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v24, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v11, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v24, v16, v11; \
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
#define TEST_W_FP_WV_OP_DS_113( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v24, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v13, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v24, v16, v13; \
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
#define TEST_W_FP_WV_OP_DS_115( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v24, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v15, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v24, v16, v15; \
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
#define TEST_W_FP_WV_OP_DS_117( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v8, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v17, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v8, v24, v17; \
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
#define TEST_W_FP_WV_OP_DS_119( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v8, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v19, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v8, v24, v19; \
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
#define TEST_W_FP_WV_OP_DS_121( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v8, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v21, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v8, v24, v21; \
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
#define TEST_W_FP_WV_OP_DS_123( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v8, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v23, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v8, v24, v23; \
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
#define TEST_W_FP_WV_OP_DS_125( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v25, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v25; \
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
#define TEST_W_FP_WV_OP_DS_127( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v27, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v27; \
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
#define TEST_W_FP_WV_OP_DS_129( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v29, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v29; \
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
#define TEST_W_FP_WV_OP_DS_131( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v16, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v31, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v16, v8, v31; \
        )
#define TEST_W_FP_WV_OP_DS_rd1( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v1, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v1, v16, v8; \
        )
#define TEST_W_FP_WV_OP_DS_rd2( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v2, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v2, v16, v8; \
        )
#define TEST_W_FP_WV_OP_DS_rd3( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v3, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v3, v16, v8; \
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
#define TEST_W_FP_WV_OP_DS_rd5( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v5, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v5, v16, v8; \
        )
#define TEST_W_FP_WV_OP_DS_rd6( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v6, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v6, v16, v8; \
        )
#define TEST_W_FP_WV_OP_DS_rd7( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v7, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v7, v16, v8; \
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
#define TEST_W_FP_WV_OP_DS_rd9( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v9, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v16, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v9, v24, v16; \
        )
#define TEST_W_FP_WV_OP_DS_rd10( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v10, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v16, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v10, v24, v16; \
        )
#define TEST_W_FP_WV_OP_DS_rd11( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v11, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v16, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v11, v24, v16; \
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
#define TEST_W_FP_WV_OP_DS_rd13( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v13, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v16, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v13, v24, v16; \
        )
#define TEST_W_FP_WV_OP_DS_rd14( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v14, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v16, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v14, v24, v16; \
        )
#define TEST_W_FP_WV_OP_DS_rd15( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v15, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v16, f0; \
            VSET_VSEW \
            vfmv.s.f v24, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v15, v24, v16; \
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
#define TEST_W_FP_WV_OP_DS_rd17( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v17, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v24, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v17, v8, v24; \
        )
#define TEST_W_FP_WV_OP_DS_rd18( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v18, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v24, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v18, v8, v24; \
        )
#define TEST_W_FP_WV_OP_DS_rd19( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v19, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v24, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v19, v8, v24; \
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
#define TEST_W_FP_WV_OP_DS_rd21( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v21, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v24, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v21, v8, v24; \
        )
#define TEST_W_FP_WV_OP_DS_rd22( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v22, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v24, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v22, v8, v24; \
        )
#define TEST_W_FP_WV_OP_DS_rd23( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v23, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v24, f0; \
            VSET_VSEW \
            vfmv.s.f v8, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v23, v8, v24; \
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
#define TEST_W_FP_WV_OP_DS_rd25( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v25, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v25, v16, v8; \
        )
#define TEST_W_FP_WV_OP_DS_rd26( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v26, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v26, v16, v8; \
        )
#define TEST_W_FP_WV_OP_DS_rd27( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v27, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v27, v16, v8; \
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
#define TEST_W_FP_WV_OP_DS_rd29( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v29, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v29, v16, v8; \
        )
#define TEST_W_FP_WV_OP_DS_rd30( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v30, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v30, v16, v8; \
        )
#define TEST_W_FP_WV_OP_DS_rd31( testnum, inst, finst, flags, val1, val2 ) \
        TEST_CASE_WVWF_FP( testnum, v31, flags, val1, val2, \
            fld f0, 0(a0); \
            flw f1, 8(a0); \
            flw f4, 8(a0); \
            VSET_DOUBLE_VSEW \
            vfmv.s.f v8, f0; \
            VSET_VSEW \
            vfmv.s.f v16, f1; \
            fcvt.d.s f4, f4; \
            finst f2, f0, f4; \
            inst v31, v16, v8; \
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
  TEST_W_FP_WV_OP_DS_11( 258,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd1( 259,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_12( 260,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd2( 261,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_13( 262,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd3( 263,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_14( 264,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd4( 265,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_15( 266,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd5( 267,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_16( 268,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd6( 269,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_17( 270,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd7( 271,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_18( 272,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd8( 273,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_19( 274,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd9( 275,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_110( 276,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd10( 277,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_111( 278,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd11( 279,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_112( 280,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd12( 281,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_113( 282,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd13( 283,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_114( 284,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd14( 285,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_115( 286,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd15( 287,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_116( 288,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd16( 289,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_117( 290,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd17( 291,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_118( 292,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd18( 293,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_119( 294,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd19( 295,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_120( 296,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd20( 297,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_121( 298,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd21( 299,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_122( 300,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd22( 301,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_123( 302,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd23( 303,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_124( 304,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd24( 305,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_125( 306,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd25( 307,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_126( 308,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd26( 309,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_127( 310,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd27( 311,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_128( 312,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd28( 313,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_129( 314,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd29( 315,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_130( 316,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd30( 317,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_131( 318,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd31( 319,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_11( 320,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd1( 321,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_12( 322,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd2( 323,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_13( 324,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd3( 325,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_14( 326,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd4( 327,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_15( 328,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd5( 329,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_16( 330,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd6( 331,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_17( 332,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd7( 333,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_18( 334,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd8( 335,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_19( 336,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd9( 337,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_110( 338,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd10( 339,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_111( 340,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd11( 341,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_112( 342,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd12( 343,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_113( 344,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd13( 345,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_114( 346,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd14( 347,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_115( 348,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd15( 349,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_116( 350,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd16( 351,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_117( 352,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd17( 353,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_118( 354,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd18( 355,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_119( 356,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd19( 357,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_120( 358,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd20( 359,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_121( 360,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd21( 361,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_122( 362,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd22( 363,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_123( 364,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd23( 365,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_124( 366,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd24( 367,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_125( 368,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd25( 369,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_126( 370,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd26( 371,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_127( 372,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd27( 373,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_128( 374,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd28( 375,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_129( 376,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd29( 377,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_130( 378,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd30( 379,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_131( 380,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd31( 381,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_11( 382,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd1( 383,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_12( 384,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd2( 385,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_13( 386,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd3( 387,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_14( 388,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd4( 389,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_15( 390,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd5( 391,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_16( 392,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd6( 393,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_17( 394,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd7( 395,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_18( 396,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd8( 397,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80855555 );
  TEST_W_FP_WV_OP_DS_19( 398,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd9( 399,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80855555 );
  TEST_W_FP_WV_OP_DS_110( 400,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd10( 401,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_111( 402,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd11( 403,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_112( 404,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd12( 405,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_113( 406,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd13( 407,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_114( 408,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd14( 409,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80855555 );
  TEST_W_FP_WV_OP_DS_115( 410,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd15( 411,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80855555 );
  TEST_W_FP_WV_OP_DS_116( 412,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd16( 413,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80855555 );
  TEST_W_FP_WV_OP_DS_117( 414,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd17( 415,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80855555 );
  TEST_W_FP_WV_OP_DS_118( 416,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd18( 417,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_119( 418,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd19( 419,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_120( 420,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd20( 421,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_121( 422,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd21( 423,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_122( 424,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd22( 425,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_123( 426,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd23( 427,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_124( 428,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd24( 429,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00800001 );
  TEST_W_FP_WV_OP_DS_125( 430,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd25( 431,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00800001 );
  TEST_W_FP_WV_OP_DS_126( 432,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd26( 433,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_127( 434,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd27( 435,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_128( 436,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd28( 437,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_129( 438,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd29( 439,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_130( 440,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd30( 441,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00800001 );
  TEST_W_FP_WV_OP_DS_131( 442,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd31( 443,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00800001 );
  TEST_W_FP_WV_OP_DS_11( 444,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd1( 445,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00800001 );
  TEST_W_FP_WV_OP_DS_12( 446,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd2( 447,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00800001 );
  TEST_W_FP_WV_OP_DS_13( 448,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd3( 449,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_14( 450,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd4( 451,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_15( 452,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd5( 453,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_16( 454,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd6( 455,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_17( 456,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd7( 457,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_18( 458,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd8( 459,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_19( 460,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd9( 461,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80800000 );
  TEST_W_FP_WV_OP_DS_110( 462,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd10( 463,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80800000 );
  TEST_W_FP_WV_OP_DS_111( 464,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd11( 465,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_112( 466,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd12( 467,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_113( 468,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd13( 469,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_114( 470,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd14( 471,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_115( 472,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd15( 473,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80800000 );
  TEST_W_FP_WV_OP_DS_116( 474,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd16( 475,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80800000 );
  TEST_W_FP_WV_OP_DS_117( 476,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd17( 477,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80800000 );
  TEST_W_FP_WV_OP_DS_118( 478,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd18( 479,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80800000 );
  TEST_W_FP_WV_OP_DS_119( 480,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd19( 481,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_120( 482,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd20( 483,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_121( 484,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd21( 485,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_122( 486,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd22( 487,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_123( 488,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd23( 489,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_124( 490,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd24( 491,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_125( 492,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd25( 493,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00800000 );
  TEST_W_FP_WV_OP_DS_126( 494,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd26( 495,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00800000 );
  TEST_W_FP_WV_OP_DS_127( 496,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd27( 497,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_128( 498,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd28( 499,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_129( 500,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd29( 501,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_130( 502,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd30( 503,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_131( 504,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd31( 505,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00800000 );
  TEST_W_FP_WV_OP_DS_11( 506,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd1( 507,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00800000 );
  TEST_W_FP_WV_OP_DS_12( 508,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd2( 509,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00800000 );
  TEST_W_FP_WV_OP_DS_13( 510,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd3( 511,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00800000 );
  TEST_W_FP_WV_OP_DS_14( 512,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd4( 513,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_15( 514,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd5( 515,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_16( 516,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd6( 517,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_17( 518,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd7( 519,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_18( 520,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd8( 521,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_19( 522,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd9( 523,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_110( 524,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd10( 525,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_111( 526,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd11( 527,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_112( 528,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd12( 529,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_113( 530,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd13( 531,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_114( 532,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd14( 533,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_115( 534,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd15( 535,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_116( 536,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd16( 537,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_117( 538,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd17( 539,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_118( 540,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd18( 541,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_119( 542,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd19( 543,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_120( 544,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd20( 545,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_121( 546,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd21( 547,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_122( 548,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd22( 549,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_123( 550,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd23( 551,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_124( 552,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd24( 553,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_125( 554,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd25( 555,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_126( 556,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd26( 557,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_127( 558,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd27( 559,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_128( 560,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd28( 561,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_129( 562,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd29( 563,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_130( 564,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd30( 565,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_131( 566,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd31( 567,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_11( 568,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd1( 569,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_12( 570,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd2( 571,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_13( 572,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd3( 573,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_14( 574,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd4( 575,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_15( 576,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd5( 577,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_16( 578,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd6( 579,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_17( 580,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd7( 581,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_18( 582,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd8( 583,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_19( 584,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd9( 585,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_110( 586,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd10( 587,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_111( 588,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd11( 589,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_112( 590,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd12( 591,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_113( 592,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd13( 593,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_114( 594,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd14( 595,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_115( 596,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd15( 597,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_116( 598,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd16( 599,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_117( 600,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd17( 601,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_118( 602,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd18( 603,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_119( 604,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd19( 605,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_120( 606,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd20( 607,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_121( 608,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd21( 609,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_122( 610,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd22( 611,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_123( 612,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd23( 613,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_124( 614,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd24( 615,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_125( 616,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd25( 617,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_126( 618,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd26( 619,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_127( 620,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd27( 621,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000002 );
  TEST_W_FP_WV_OP_DS_128( 622,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd28( 623,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_129( 624,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd29( 625,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_130( 626,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd30( 627,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_131( 628,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd31( 629,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_11( 630,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd1( 631,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_12( 632,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd2( 633,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000002 );
  TEST_W_FP_WV_OP_DS_13( 634,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd3( 635,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000002 );
  TEST_W_FP_WV_OP_DS_14( 636,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd4( 637,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_15( 638,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd5( 639,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_16( 640,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd6( 641,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_17( 642,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd7( 643,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_18( 644,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd8( 645,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_19( 646,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd9( 647,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_110( 648,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd10( 649,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_111( 650,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd11( 651,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_112( 652,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd12( 653,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80000001 );
  TEST_W_FP_WV_OP_DS_113( 654,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd13( 655,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80000001 );
  TEST_W_FP_WV_OP_DS_114( 656,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd14( 657,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_115( 658,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd15( 659,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_116( 660,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd16( 661,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_117( 662,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd17( 663,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_118( 664,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd18( 665,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80000001 );
  TEST_W_FP_WV_OP_DS_119( 666,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd19( 667,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80000001 );
  TEST_W_FP_WV_OP_DS_120( 668,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd20( 669,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80000001 );
  TEST_W_FP_WV_OP_DS_121( 670,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd21( 671,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80000001 );
  TEST_W_FP_WV_OP_DS_122( 672,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd22( 673,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_123( 674,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd23( 675,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_124( 676,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd24( 677,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_125( 678,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd25( 679,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_126( 680,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd26( 681,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_127( 682,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd27( 683,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_128( 684,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd28( 685,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000001 );
  TEST_W_FP_WV_OP_DS_129( 686,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd29( 687,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000001 );
  TEST_W_FP_WV_OP_DS_130( 688,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd30( 689,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_131( 690,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd31( 691,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_11( 692,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd1( 693,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_12( 694,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd2( 695,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_13( 696,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd3( 697,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000001 );
  TEST_W_FP_WV_OP_DS_14( 698,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd4( 699,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000001 );
  TEST_W_FP_WV_OP_DS_15( 700,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd5( 701,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000001 );
  TEST_W_FP_WV_OP_DS_16( 702,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd6( 703,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000001 );
  TEST_W_FP_WV_OP_DS_17( 704,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd7( 705,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_18( 706,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd8( 707,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_19( 708,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd9( 709,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_110( 710,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd10( 711,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_111( 712,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd11( 713,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_112( 714,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd12( 715,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_113( 716,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd13( 717,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80000000 );
  TEST_W_FP_WV_OP_DS_114( 718,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd14( 719,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80000000 );
  TEST_W_FP_WV_OP_DS_115( 720,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd15( 721,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_116( 722,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd16( 723,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_117( 724,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd17( 725,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_118( 726,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd18( 727,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_119( 728,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd19( 729,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80000000 );
  TEST_W_FP_WV_OP_DS_120( 730,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd20( 731,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80000000 );
  TEST_W_FP_WV_OP_DS_121( 732,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd21( 733,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80000000 );
  TEST_W_FP_WV_OP_DS_122( 734,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd22( 735,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80000000 );
  TEST_W_FP_WV_OP_DS_123( 736,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd23( 737,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_124( 738,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd24( 739,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_125( 740,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd25( 741,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_126( 742,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd26( 743,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_127( 744,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd27( 745,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_128( 746,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd28( 747,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_129( 748,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd29( 749,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000000 );
  TEST_W_FP_WV_OP_DS_130( 750,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd30( 751,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000000 );
  TEST_W_FP_WV_OP_DS_131( 752,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd31( 753,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_11( 754,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd1( 755,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_12( 756,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd2( 757,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_13( 758,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd3( 759,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_14( 760,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd4( 761,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000000 );
  TEST_W_FP_WV_OP_DS_15( 762,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd5( 763,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000000 );
  TEST_W_FP_WV_OP_DS_16( 764,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd6( 765,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000000 );
  TEST_W_FP_WV_OP_DS_17( 766,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd7( 767,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000000 );
  TEST_W_FP_WV_OP_DS_18( 768,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd8( 769,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000000 );
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
    

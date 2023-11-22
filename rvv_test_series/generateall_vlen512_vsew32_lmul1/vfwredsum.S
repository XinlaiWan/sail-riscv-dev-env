#----------------------------------------------------------------------------- 
    # vfwredosum.S
    #-----------------------------------------------------------------------------
    #
    # Test vfwredosum instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vfwredosum)
    
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
  TEST_W_FP_WV_OP_DS_12( 259,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd2( 260,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_13( 261,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_14( 262,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd4( 263,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_15( 264,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_16( 265,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd6( 266,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_17( 267,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_18( 268,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd8( 269,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_19( 270,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_110( 271,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd10( 272,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_111( 273,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_112( 274,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd12( 275,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_113( 276,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_114( 277,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd14( 278,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_115( 279,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_116( 280,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_rd16( 281,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_117( 282,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0xBF800000 );
  TEST_W_FP_WV_OP_DS_118( 283,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd18( 284,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_119( 285,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_120( 286,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd20( 287,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_121( 288,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_122( 289,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd22( 290,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_123( 291,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_124( 292,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd24( 293,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_125( 294,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_126( 295,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd26( 296,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_127( 297,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_128( 298,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd28( 299,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_129( 300,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_130( 301,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd30( 302,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_131( 303,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_11( 304,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_12( 305,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_rd2( 306,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x3F800000 );
  TEST_W_FP_WV_OP_DS_13( 307,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_14( 308,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd4( 309,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_15( 310,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_16( 311,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd6( 312,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_17( 313,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_18( 314,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd8( 315,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_19( 316,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_110( 317,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd10( 318,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_111( 319,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_112( 320,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd12( 321,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_113( 322,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_114( 323,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd14( 324,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_115( 325,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_116( 326,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd16( 327,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_117( 328,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_118( 329,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_rd18( 330,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0xFF7FFFFF );
  TEST_W_FP_WV_OP_DS_119( 331,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_120( 332,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd20( 333,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_121( 334,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_122( 335,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd22( 336,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_123( 337,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_124( 338,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd24( 339,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_125( 340,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_126( 341,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd26( 342,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_127( 343,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_128( 344,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd28( 345,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_129( 346,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_130( 347,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd30( 348,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_131( 349,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_11( 350,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_12( 351,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_rd2( 352,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_13( 353,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x7F7FFFFF );
  TEST_W_FP_WV_OP_DS_14( 354,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd4( 355,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_15( 356,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_16( 357,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd6( 358,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_17( 359,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_18( 360,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd8( 361,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80855555 );
  TEST_W_FP_WV_OP_DS_19( 362,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80855555 );
  TEST_W_FP_WV_OP_DS_110( 363,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd10( 364,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_111( 365,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_112( 366,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd12( 367,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_113( 368,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80855555 );
  TEST_W_FP_WV_OP_DS_114( 369,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd14( 370,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80855555 );
  TEST_W_FP_WV_OP_DS_115( 371,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80855555 );
  TEST_W_FP_WV_OP_DS_116( 372,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd16( 373,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80855555 );
  TEST_W_FP_WV_OP_DS_117( 374,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80855555 );
  TEST_W_FP_WV_OP_DS_118( 375,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_rd18( 376,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_119( 377,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80855555 );
  TEST_W_FP_WV_OP_DS_120( 378,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd20( 379,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_121( 380,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_122( 381,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd22( 382,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_123( 383,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_124( 384,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd24( 385,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00800001 );
  TEST_W_FP_WV_OP_DS_125( 386,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00800001 );
  TEST_W_FP_WV_OP_DS_126( 387,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd26( 388,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_127( 389,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_128( 390,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd28( 391,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_129( 392,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00800001 );
  TEST_W_FP_WV_OP_DS_130( 393,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd30( 394,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00800001 );
  TEST_W_FP_WV_OP_DS_131( 395,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00800001 );
  TEST_W_FP_WV_OP_DS_11( 396,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00800001 );
  TEST_W_FP_WV_OP_DS_12( 397,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd2( 398,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00800001 );
  TEST_W_FP_WV_OP_DS_13( 399,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_14( 400,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_rd4( 401,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00800001 );
  TEST_W_FP_WV_OP_DS_15( 402,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_16( 403,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd6( 404,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_17( 405,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_18( 406,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd8( 407,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_19( 408,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80800000 );
  TEST_W_FP_WV_OP_DS_110( 409,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd10( 410,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80800000 );
  TEST_W_FP_WV_OP_DS_111( 411,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_112( 412,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd12( 413,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_113( 414,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_114( 415,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd14( 416,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80800000 );
  TEST_W_FP_WV_OP_DS_115( 417,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80800000 );
  TEST_W_FP_WV_OP_DS_116( 418,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd16( 419,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80800000 );
  TEST_W_FP_WV_OP_DS_117( 420,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80800000 );
  TEST_W_FP_WV_OP_DS_118( 421,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd18( 422,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80800000 );
  TEST_W_FP_WV_OP_DS_119( 423,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_120( 424,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_rd20( 425,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80800000 );
  TEST_W_FP_WV_OP_DS_121( 426,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_122( 427,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd22( 428,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_123( 429,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_124( 430,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd24( 431,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_125( 432,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00800000 );
  TEST_W_FP_WV_OP_DS_126( 433,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd26( 434,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00800000 );
  TEST_W_FP_WV_OP_DS_127( 435,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_128( 436,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd28( 437,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_129( 438,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_130( 439,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd30( 440,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00800000 );
  TEST_W_FP_WV_OP_DS_131( 441,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00800000 );
  TEST_W_FP_WV_OP_DS_11( 442,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00800000 );
  TEST_W_FP_WV_OP_DS_12( 443,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd2( 444,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00800000 );
  TEST_W_FP_WV_OP_DS_13( 445,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00800000 );
  TEST_W_FP_WV_OP_DS_14( 446,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_rd4( 447,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_15( 448,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00800000 );
  TEST_W_FP_WV_OP_DS_16( 449,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd6( 450,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_17( 451,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_18( 452,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd8( 453,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_19( 454,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_110( 455,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd10( 456,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_111( 457,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_112( 458,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd12( 459,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_113( 460,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_114( 461,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd14( 462,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_115( 463,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_116( 464,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd16( 465,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_117( 466,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_118( 467,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd18( 468,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_119( 469,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_120( 470,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_rd20( 471,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_121( 472,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x807FFFFF );
  TEST_W_FP_WV_OP_DS_122( 473,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd22( 474,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_123( 475,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_124( 476,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd24( 477,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_125( 478,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_126( 479,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd26( 480,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_127( 481,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_128( 482,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd28( 483,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_129( 484,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_130( 485,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd30( 486,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_131( 487,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_11( 488,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_12( 489,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd2( 490,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_13( 491,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_14( 492,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd4( 493,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_15( 494,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_16( 495,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_rd6( 496,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x007FFFFF );
  TEST_W_FP_WV_OP_DS_17( 497,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_18( 498,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd8( 499,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_19( 500,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_110( 501,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd10( 502,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_111( 503,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_112( 504,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd12( 505,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_113( 506,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_114( 507,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd14( 508,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_115( 509,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_116( 510,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd16( 511,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_117( 512,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_118( 513,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd18( 514,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_119( 515,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_120( 516,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd20( 517,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_121( 518,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_122( 519,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_rd22( 520,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x807FFFFE );
  TEST_W_FP_WV_OP_DS_123( 521,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_124( 522,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd24( 523,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_125( 524,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_126( 525,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd26( 526,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_127( 527,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000002 );
  TEST_W_FP_WV_OP_DS_128( 528,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd28( 529,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_129( 530,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_130( 531,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd30( 532,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_131( 533,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_11( 534,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000002 );
  TEST_W_FP_WV_OP_DS_12( 535,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd2( 536,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000002 );
  TEST_W_FP_WV_OP_DS_13( 537,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000002 );
  TEST_W_FP_WV_OP_DS_14( 538,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd4( 539,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_15( 540,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000002 );
  TEST_W_FP_WV_OP_DS_16( 541,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_rd6( 542,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_17( 543,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00000002 );
  TEST_W_FP_WV_OP_DS_18( 544,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd8( 545,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_19( 546,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_110( 547,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd10( 548,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_111( 549,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_112( 550,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd12( 551,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80000001 );
  TEST_W_FP_WV_OP_DS_113( 552,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80000001 );
  TEST_W_FP_WV_OP_DS_114( 553,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd14( 554,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_115( 555,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_116( 556,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd16( 557,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_117( 558,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80000001 );
  TEST_W_FP_WV_OP_DS_118( 559,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd18( 560,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80000001 );
  TEST_W_FP_WV_OP_DS_119( 561,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80000001 );
  TEST_W_FP_WV_OP_DS_120( 562,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd20( 563,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80000001 );
  TEST_W_FP_WV_OP_DS_121( 564,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80000001 );
  TEST_W_FP_WV_OP_DS_122( 565,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_rd22( 566,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_123( 567,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80000001 );
  TEST_W_FP_WV_OP_DS_124( 568,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd24( 569,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_125( 570,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_126( 571,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd26( 572,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_127( 573,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_128( 574,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd28( 575,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000001 );
  TEST_W_FP_WV_OP_DS_129( 576,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000001 );
  TEST_W_FP_WV_OP_DS_130( 577,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd30( 578,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_131( 579,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_11( 580,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_12( 581,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd2( 582,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000001 );
  TEST_W_FP_WV_OP_DS_13( 583,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000001 );
  TEST_W_FP_WV_OP_DS_14( 584,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd4( 585,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000001 );
  TEST_W_FP_WV_OP_DS_15( 586,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000001 );
  TEST_W_FP_WV_OP_DS_16( 587,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd6( 588,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000001 );
  TEST_W_FP_WV_OP_DS_17( 589,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_18( 590,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_rd8( 591,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x00000001 );
  TEST_W_FP_WV_OP_DS_19( 592,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_110( 593,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd10( 594,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_111( 595,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_112( 596,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd12( 597,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_113( 598,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x80000000 );
  TEST_W_FP_WV_OP_DS_114( 599,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd14( 600,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x80000000 );
  TEST_W_FP_WV_OP_DS_115( 601,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_116( 602,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd16( 603,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_117( 604,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_118( 605,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd18( 606,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x80000000 );
  TEST_W_FP_WV_OP_DS_119( 607,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x80000000 );
  TEST_W_FP_WV_OP_DS_120( 608,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd20( 609,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x80000000 );
  TEST_W_FP_WV_OP_DS_121( 610,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x80000000 );
  TEST_W_FP_WV_OP_DS_122( 611,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd22( 612,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x80000000 );
  TEST_W_FP_WV_OP_DS_123( 613,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_124( 614,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_rd24( 615,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000000, 0x80000000 );
  TEST_W_FP_WV_OP_DS_125( 616,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xBF800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_126( 617,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd26( 618,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x3F800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_127( 619,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0xFF7FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_128( 620,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd28( 621,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x7F7FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_129( 622,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80855555, 0x00000000 );
  TEST_W_FP_WV_OP_DS_130( 623,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd30( 624,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800001, 0x00000000 );
  TEST_W_FP_WV_OP_DS_131( 625,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_11( 626,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00800000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_12( 627,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd2( 628,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_13( 629,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x007FFFFF, 0x00000000 );
  TEST_W_FP_WV_OP_DS_14( 630,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd4( 631,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x807FFFFE, 0x00000000 );
  TEST_W_FP_WV_OP_DS_15( 632,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000002, 0x00000000 );
  TEST_W_FP_WV_OP_DS_16( 633,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd6( 634,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000001, 0x00000000 );
  TEST_W_FP_WV_OP_DS_17( 635,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x00000001, 0x00000000 );
  TEST_W_FP_WV_OP_DS_18( 636,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000000 );
  TEST_W_FP_WV_OP_DS_rd8( 637,  vfwredosum.vs, fadd.d, 0x0000000000000001, 0x80000000, 0x00000000 );
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
    

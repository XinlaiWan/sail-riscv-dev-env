#----------------------------------------------------------------------------- 
    # vwredsum.S
    #-----------------------------------------------------------------------------
    #
    # Test vwredsum instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vwredsum)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_W_VV_OP_WITH_INIT_12( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v2, x7;  \
                inst v24, v8, v2;  \
                )
#define TEST_W_VV_OP_WITH_INIT_13( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v3, x7;  \
                inst v24, v8, v3;  \
                )
#define TEST_W_VV_OP_WITH_INIT_14( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v4, x7;  \
                inst v24, v8, v4;  \
                )
#define TEST_W_VV_OP_WITH_INIT_15( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v5, x7;  \
                inst v24, v8, v5;  \
                )
#define TEST_W_VV_OP_WITH_INIT_16( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v6, x7;  \
                inst v24, v8, v6;  \
                )
#define TEST_W_VV_OP_WITH_INIT_17( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v7, x7;  \
                inst v24, v8, v7;  \
                )
#define TEST_W_VV_OP_WITH_INIT_19( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v9, x7;  \
                inst v24, v8, v9;  \
                )
#define TEST_W_VV_OP_WITH_INIT_110( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v10, x7;  \
                inst v24, v8, v10;  \
                )
#define TEST_W_VV_OP_WITH_INIT_111( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v11, x7;  \
                inst v24, v8, v11;  \
                )
#define TEST_W_VV_OP_WITH_INIT_112( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v12, x7;  \
                inst v24, v8, v12;  \
                )
#define TEST_W_VV_OP_WITH_INIT_113( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v13, x7;  \
                inst v24, v8, v13;  \
                )
#define TEST_W_VV_OP_WITH_INIT_114( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v14, x7;  \
                inst v24, v8, v14;  \
                )
#define TEST_W_VV_OP_WITH_INIT_115( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v15, x7;  \
                inst v24, v8, v15;  \
                )
#define TEST_W_VV_OP_WITH_INIT_117( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v17, x7;  \
                inst v24, v8, v17;  \
                )
#define TEST_W_VV_OP_WITH_INIT_118( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v18, x7;  \
                inst v24, v8, v18;  \
                )
#define TEST_W_VV_OP_WITH_INIT_119( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v19, x7;  \
                inst v24, v8, v19;  \
                )
#define TEST_W_VV_OP_WITH_INIT_120( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v20, x7;  \
                inst v24, v8, v20;  \
                )
#define TEST_W_VV_OP_WITH_INIT_121( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v21, x7;  \
                inst v24, v8, v21;  \
                )
#define TEST_W_VV_OP_WITH_INIT_122( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v22, x7;  \
                inst v24, v8, v22;  \
                )
#define TEST_W_VV_OP_WITH_INIT_123( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v23, x7;  \
                inst v24, v8, v23;  \
                )
#define TEST_W_VV_OP_WITH_INIT_125( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v25, x7;  \
                inst v24, v8, v25;  \
                )
#define TEST_W_VV_OP_WITH_INIT_126( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v26, x7;  \
                inst v24, v8, v26;  \
                )
#define TEST_W_VV_OP_WITH_INIT_127( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v27, x7;  \
                inst v24, v8, v27;  \
                )
#define TEST_W_VV_OP_WITH_INIT_128( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v28, x7;  \
                inst v24, v8, v28;  \
                )
#define TEST_W_VV_OP_WITH_INIT_129( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v29, x7;  \
                inst v24, v8, v29;  \
                )
#define TEST_W_VV_OP_WITH_INIT_130( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v30, x7;  \
                inst v24, v8, v30;  \
                )
#define TEST_W_VV_OP_WITH_INIT_131( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v24, result,  \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v24, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v31, x7;  \
                inst v24, v8, v31;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd2( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v2, result, \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v2, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v16, x7;  \
                inst v2, v8, v16;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd4( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v4, result, \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v4, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v16, x7;  \
                inst v4, v8, v16;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd6( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v6, result, \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v6, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v16, x7;  \
                inst v6, v8, v16;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd10( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v10, result, \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v10, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v16, x7;  \
                inst v10, v8, v16;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd12( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v12, result, \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v12, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v16, x7;  \
                inst v12, v8, v16;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd14( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v14, result, \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v14, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v16, x7;  \
                inst v14, v8, v16;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd18( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v18, result, \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v18, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v16, x7;  \
                inst v18, v8, v16;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd20( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v20, result, \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v20, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v16, x7;  \
                inst v20, v8, v16;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd22( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v22, result, \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v22, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v16, x7;  \
                inst v22, v8, v16;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd26( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v26, result, \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v26, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v16, x7;  \
                inst v26, v8, v16;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd28( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v28, result, \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v28, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v16, x7;  \
                inst v28, v8, v16;  \
                )
#define TEST_W_VV_OP_WITH_INIT_rd30( testnum, inst, result, val1, val2 )  \
                TEST_CASE_W( testnum, v30, result, \
                li x7, 0; \
                VSET_DOUBLE_VSEW \
                vmv.v.x v30, x7; \
                VSET_VSEW \
                li x7, MASK_VSEW(val1); \
                vmv.v.x v8, x7; \
                li x7, MASK_VSEW(val2); \
                vmv.v.x v16, x7;  \
                inst v30, v8, v16;  \
                )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_W_VV_OP_WITH_INIT( 2,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffc, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_W_VV_OP_WITH_INIT( 3,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffa, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_W_VV_OP_WITH_INIT( 4,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffff6, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_W_VV_OP_WITH_INIT( 5,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffee, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_W_VV_OP_WITH_INIT( 6,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffde, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_W_VV_OP_WITH_INIT( 7,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffbe, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_W_VV_OP_WITH_INIT( 8,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffff7e, 0xffffffffffffffbf, 0xffffffffffffffbf );
  TEST_W_VV_OP_WITH_INIT( 9,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffefe, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_W_VV_OP_WITH_INIT( 10,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffdfe, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_W_VV_OP_WITH_INIT( 11,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffbfe, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_W_VV_OP_WITH_INIT( 12,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffff7fe, 0xfffffffffffffbff, 0xfffffffffffffbff );
  TEST_W_VV_OP_WITH_INIT( 13,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffeffe, 0xfffffffffffff7ff, 0xfffffffffffff7ff );
  TEST_W_VV_OP_WITH_INIT( 14,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffdffe, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_W_VV_OP_WITH_INIT( 15,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffbffe, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_W_VV_OP_WITH_INIT( 16,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff7ffe, 0xffffffffffffbfff, 0xffffffffffffbfff );
  TEST_W_VV_OP_WITH_INIT( 17,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffefffe, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_W_VV_OP_WITH_INIT( 18,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffdfffe, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_W_VV_OP_WITH_INIT( 19,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffbfffe, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_W_VV_OP_WITH_INIT( 20,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fff7fffe, 0xfffffffffffbffff, 0xfffffffffffbffff );
  TEST_W_VV_OP_WITH_INIT( 21,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffeffffe, 0xfffffffffff7ffff, 0xfffffffffff7ffff );
  TEST_W_VV_OP_WITH_INIT( 22,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffdffffe, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_W_VV_OP_WITH_INIT( 23,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffbffffe, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_W_VV_OP_WITH_INIT( 24,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7ffffe, 0xffffffffffbfffff, 0xffffffffffbfffff );
  TEST_W_VV_OP_WITH_INIT( 25,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fefffffe, 0xffffffffff7fffff, 0xffffffffff7fffff );
  TEST_W_VV_OP_WITH_INIT( 26,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fdfffffe, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_W_VV_OP_WITH_INIT( 27,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fbfffffe, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_W_VV_OP_WITH_INIT( 28,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7fffffe, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_W_VV_OP_WITH_INIT( 29,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000effffffe, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_W_VV_OP_WITH_INIT( 30,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dffffffe, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_W_VV_OP_WITH_INIT( 31,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bffffffe, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_W_VV_OP_WITH_INIT( 32,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ffffffe, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_W_VV_OP_WITH_INIT( 33,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffe, 0x0000007fffffff, 0x0000007fffffff );
  TEST_W_VV_OP_WITH_INIT( 34,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000001, 0x00000000000001 );
  TEST_W_VV_OP_WITH_INIT( 35,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000002, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 36,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000004, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 37,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010, 0x00000000000008, 0x00000000000008 );
  TEST_W_VV_OP_WITH_INIT( 38,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020, 0x00000000000010, 0x00000000000010 );
  TEST_W_VV_OP_WITH_INIT( 39,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040, 0x00000000000020, 0x00000000000020 );
  TEST_W_VV_OP_WITH_INIT( 40,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080, 0x00000000000040, 0x00000000000040 );
  TEST_W_VV_OP_WITH_INIT( 41,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100, 0x00000000000080, 0x00000000000080 );
  TEST_W_VV_OP_WITH_INIT( 42,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200, 0x00000000000100, 0x00000000000100 );
  TEST_W_VV_OP_WITH_INIT( 43,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400, 0x00000000000200, 0x00000000000200 );
  TEST_W_VV_OP_WITH_INIT( 44,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800, 0x00000000000400, 0x00000000000400 );
  TEST_W_VV_OP_WITH_INIT( 45,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000, 0x00000000000800, 0x00000000000800 );
  TEST_W_VV_OP_WITH_INIT( 46,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000, 0x00000000001000, 0x00000000001000 );
  TEST_W_VV_OP_WITH_INIT( 47,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000, 0x00000000002000, 0x00000000002000 );
  TEST_W_VV_OP_WITH_INIT( 48,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000, 0x00000000004000, 0x00000000004000 );
  TEST_W_VV_OP_WITH_INIT( 49,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000, 0x00000000008000, 0x00000000008000 );
  TEST_W_VV_OP_WITH_INIT( 50,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000, 0x00000000010000, 0x00000000010000 );
  TEST_W_VV_OP_WITH_INIT( 51,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000, 0x00000000020000, 0x00000000020000 );
  TEST_W_VV_OP_WITH_INIT( 52,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000, 0x00000000040000, 0x00000000040000 );
  TEST_W_VV_OP_WITH_INIT( 53,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000, 0x00000000080000, 0x00000000080000 );
  TEST_W_VV_OP_WITH_INIT( 54,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000, 0x00000000100000, 0x00000000100000 );
  TEST_W_VV_OP_WITH_INIT( 55,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000, 0x00000000200000, 0x00000000200000 );
  TEST_W_VV_OP_WITH_INIT( 56,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x00000000400000, 0x00000000400000 );
  TEST_W_VV_OP_WITH_INIT( 57,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000, 0x00000000800000, 0x00000000800000 );
  TEST_W_VV_OP_WITH_INIT( 58,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000, 0x00000001000000, 0x00000001000000 );
  TEST_W_VV_OP_WITH_INIT( 59,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000, 0x00000002000000, 0x00000002000000 );
  TEST_W_VV_OP_WITH_INIT( 60,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000, 0x00000004000000, 0x00000004000000 );
  TEST_W_VV_OP_WITH_INIT( 61,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000, 0x00000008000000, 0x00000008000000 );
  TEST_W_VV_OP_WITH_INIT( 62,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000, 0x00000010000000, 0x00000010000000 );
  TEST_W_VV_OP_WITH_INIT( 63,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000, 0x00000020000000, 0x00000020000000 );
  TEST_W_VV_OP_WITH_INIT( 64,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x00000040000000, 0x00000040000000 );
  TEST_W_VV_OP_WITH_INIT( 65,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xffffffff80000000, 0xffffffff80000000 );
  TEST_W_VV_OP_WITH_INIT( 66,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000003, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 67,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555558, 0x00000055555555, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 68,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaaad, 0xffffffffaaaaaaaa, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 69,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000005, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 70,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333336, 0x00000033333333, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 71,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666669, 0x00000066666666, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 72,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4aff, 0xffffffffffff4afc, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 73,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555558, 0x00000055555555, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 74,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b507, 0x0000000000b504, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 75,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000002, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 76,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555557, 0x00000055555554, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 77,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000000, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 78,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000004, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 79,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333335, 0x00000033333332, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 80,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbba, 0x00000066666665, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 81,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaaad, 0xffffffffaaaaaaaa, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 82,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaab5fad, 0x0000000000b503, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 83,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555559, 0x00000055555556, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 84,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaaae, 0xffffffffaaaaaaab, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 85,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009, 0x00000000000006, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 86,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333337, 0x00000033333334, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 87,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666a, 0x00000066666667, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 88,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4b00, 0xffffffffffff4afd, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 89,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 90,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000003, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT( 91,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0x00000055555555, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 92,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0xffffffffaaaaaaaa, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 93,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555a, 0x00000000000005, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 94,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888888, 0x00000033333333, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 95,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbb, 0x00000066666666, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 96,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005554a051, 0xffffffffffff4afc, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 97,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a59, 0x0000000000b504, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 98,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555557, 0x00000000000002, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 99,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaa9, 0x00000055555554, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 100,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000000000000, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 101,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555559, 0x00000000000004, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 102,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888887, 0x00000033333332, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 103,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbba, 0x00000066666665, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 104,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a58, 0x0000000000b503, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 105,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaab, 0x00000055555556, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 106,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xffffffffaaaaaaab, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 107,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555b, 0x00000000000006, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 108,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888889, 0x00000033333334, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 109,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbc, 0x00000066666667, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 110,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005554a052, 0xffffffffffff4afd, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 111,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a5a, 0x0000000000b505, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 112,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555558, 0x00000000000003, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT( 113,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff, 0x00000055555555, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 114,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0xffffffffaaaaaaaa, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 115,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaf, 0x00000000000005, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 116,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dddddddd, 0x00000033333333, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 117,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111110, 0x00000066666666, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 118,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaa9f5a6, 0xffffffffffff4afc, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 119,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaab5fae, 0x0000000000b504, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 120,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaac, 0x00000000000002, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 121,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffe, 0x00000055555554, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 122,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0x00000000000000, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 123,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaae, 0x00000000000004, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 124,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dddddddc, 0x00000033333332, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 125,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111110f, 0x00000066666665, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 126,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0x00000000000000, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 127,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaab5fad, 0x0000000000b503, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 128,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000, 0x00000055555556, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 129,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0xffffffffaaaaaaab, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 130,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaab0, 0x00000000000006, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 131,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ddddddde, 0x00000033333334, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 132,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111, 0x00000066666667, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 133,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaa9f5a7, 0xffffffffffff4afd, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 134,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaab5faf, 0x0000000000b505, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT( 135,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000003, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 136,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555a, 0x00000055555555, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 137,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaaaf, 0xffffffffaaaaaaaa, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 138,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a, 0x00000000000005, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 139,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333338, 0x00000033333333, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 140,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666b, 0x00000066666666, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 141,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4b01, 0xffffffffffff4afc, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 142,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b509, 0x0000000000b504, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 143,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000002, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 144,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555559, 0x00000055555554, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 145,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000000, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 146,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009, 0x00000000000004, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 147,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333337, 0x00000033333332, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 148,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666a, 0x00000066666665, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 149,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b508, 0x0000000000b503, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 150,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555b, 0x00000055555556, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 151,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaab0, 0xffffffffaaaaaaab, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 152,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b, 0x00000000000006, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 153,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333339, 0x00000033333334, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 154,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666c, 0x00000066666667, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 155,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4b02, 0xffffffffffff4afd, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 156,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b50a, 0x0000000000b505, 0x00000000000005 );
  TEST_W_VV_OP_WITH_INIT( 157,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333336, 0x00000000000003, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 158,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888888, 0x00000055555555, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 159,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffdddddddd, 0xffffffffaaaaaaaa, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 160,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333338, 0x00000000000005, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 161,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0x00000033333333, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 162,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099999999, 0x00000066666666, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 163,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033327e2f, 0xffffffffffff4afc, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 164,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e837, 0x0000000000b504, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 165,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333335, 0x00000000000002, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 166,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888887, 0x00000055555554, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 167,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000000000000, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 168,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333337, 0x00000000000004, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 169,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0x00000033333332, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 170,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099999998, 0x00000066666665, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 171,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e836, 0x0000000000b503, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 172,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888889, 0x00000055555556, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 173,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffddddddde, 0xffffffffaaaaaaab, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 174,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333339, 0x00000000000006, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 175,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0x00000033333334, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 176,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009999999a, 0x00000066666667, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 177,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033327e30, 0xffffffffffff4afd, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 178,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e838, 0x0000000000b505, 0x00000033333333 );
  TEST_W_VV_OP_WITH_INIT( 179,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666669, 0x00000000000003, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 180,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbb, 0x00000055555555, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 181,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111110, 0xffffffffaaaaaaaa, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 182,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666b, 0x00000000000005, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 183,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099999999, 0x00000033333333, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 184,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cccccccc, 0x00000066666666, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 185,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006665b162, 0xffffffffffff4afc, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 186,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b6a, 0x0000000000b504, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 187,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666668, 0x00000000000002, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 188,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbba, 0x00000055555554, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 189,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0x00000000000000, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 190,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666a, 0x00000000000004, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 191,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099999998, 0x00000033333332, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 192,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cccccccb, 0x00000066666665, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 193,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b69, 0x0000000000b503, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 194,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbc, 0x00000055555556, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 195,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111, 0xffffffffaaaaaaab, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 196,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666c, 0x00000000000006, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 197,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009999999a, 0x00000033333334, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 198,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cccccccd, 0x00000066666667, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 199,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006665b163, 0xffffffffffff4afd, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 200,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b6b, 0x0000000000b505, 0x00000066666666 );
  TEST_W_VV_OP_WITH_INIT( 201,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4aff, 0x00000000000003, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 202,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015554a051, 0x00000055555555, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 203,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaa9f5a6, 0xffffffffaaaaaaaa, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 204,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4b01, 0x00000000000005, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 205,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000133327e2f, 0x00000033333333, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 206,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016665b162, 0x00000066666666, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 207,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffe95f8, 0xffffffffffff4afc, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 208,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000, 0x0000000000b504, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 209,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4afe, 0x00000000000002, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 210,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015554a050, 0x00000055555554, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 211,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4afc, 0x00000000000000, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 212,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4b00, 0x00000000000004, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 213,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000133327e2e, 0x00000033333332, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 214,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016665b161, 0x00000066666665, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 215,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff, 0x0000000000b503, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 216,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015554a052, 0x00000055555556, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 217,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaa9f5a7, 0xffffffffaaaaaaab, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 218,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4b02, 0x00000000000006, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 219,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000133327e30, 0x00000033333334, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 220,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016665b163, 0x00000066666667, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 221,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffe95f9, 0xffffffffffff4afd, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 222,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000001, 0x0000000000b505, 0xffffffffffff4afc );
  TEST_W_VV_OP_WITH_INIT( 223,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b507, 0x00000000000003, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 224,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a59, 0x00000055555555, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 225,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaab5fae, 0xffffffffaaaaaaaa, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 226,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b509, 0x00000000000005, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 227,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e837, 0x00000033333333, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 228,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b6a, 0x00000066666666, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 229,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xffffffffffff4afc, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 230,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016a08, 0x0000000000b504, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 231,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b506, 0x00000000000002, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 232,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a58, 0x00000055555554, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 233,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x00000000000000, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 234,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b508, 0x00000000000004, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 235,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e836, 0x00000033333332, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 236,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b69, 0x00000066666665, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 237,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016a07, 0x0000000000b503, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 238,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a5a, 0x00000055555556, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 239,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaab5faf, 0xffffffffaaaaaaab, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 240,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b50a, 0x00000000000006, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 241,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e838, 0x00000033333334, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 242,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b6b, 0x00000066666667, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 243,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xffffffffffff4afd, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 244,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016a09, 0x0000000000b505, 0x0000000000b504 );
  TEST_W_VV_OP_WITH_INIT( 245,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000003, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 246,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555557, 0x00000055555555, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 247,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaaac, 0xffffffffaaaaaaaa, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 248,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000005, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 249,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333335, 0x00000033333333, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 250,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666668, 0x00000066666666, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 251,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4afe, 0xffffffffffff4afc, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 252,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b506, 0x0000000000b504, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 253,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000002, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 254,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000055555554, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 255,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000000, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 256,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000004, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 257,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000033333332, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 258,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0x00000066666665, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 259,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b503, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 260,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555558, 0x00000055555556, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 261,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaaad, 0xffffffffaaaaaaab, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 262,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000006, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 263,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333336, 0x00000033333334, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 264,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666669, 0x00000066666667, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 265,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4aff, 0xffffffffffff4afd, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 266,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b507, 0x0000000000b505, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT( 267,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555557, 0x00000000000003, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 268,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaa9, 0x00000055555555, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 269,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffe, 0xffffffffaaaaaaaa, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 270,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555559, 0x00000000000005, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 271,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888887, 0x00000033333333, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 272,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbba, 0x00000066666666, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 273,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005554a050, 0xffffffffffff4afc, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 274,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a58, 0x0000000000b504, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 275,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000000000002, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 276,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaa8, 0x00000055555554, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 277,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000000000000, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 278,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555558, 0x00000000000004, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 279,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888886, 0x00000033333332, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 280,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbb9, 0x00000066666665, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 281,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a57, 0x0000000000b503, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 282,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0x00000055555556, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 283,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0xffffffffaaaaaaab, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 284,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555a, 0x00000000000006, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 285,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888888, 0x00000033333334, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 286,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbb, 0x00000066666667, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 287,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005554a051, 0xffffffffffff4afd, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 288,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a59, 0x0000000000b505, 0x00000055555554 );
  TEST_W_VV_OP_WITH_INIT( 289,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 290,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000055555555, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 291,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaaaa, 0xffffffffaaaaaaaa, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 292,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 293,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 294,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0x00000066666666, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 295,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4afc, 0xffffffffffff4afc, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 296,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 297,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 298,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555554, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 299,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 300,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 301,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 302,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0x00000066666665, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 303,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 304,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000055555556, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 305,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaaab, 0xffffffffaaaaaaab, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 306,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 307,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000033333334, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 308,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0x00000066666667, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 309,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4afd, 0xffffffffffff4afd, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 310,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT( 311,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000003, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 312,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555559, 0x00000055555555, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 313,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaaae, 0xffffffffaaaaaaaa, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 314,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009, 0x00000000000005, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 315,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333337, 0x00000033333333, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 316,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666a, 0x00000066666666, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 317,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4b00, 0xffffffffffff4afc, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 318,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b508, 0x0000000000b504, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 319,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000002, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 320,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555558, 0x00000055555554, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 321,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000000, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 322,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000004, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 323,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333336, 0x00000033333332, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 324,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666669, 0x00000066666665, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 325,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b507, 0x0000000000b503, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 326,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555a, 0x00000055555556, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 327,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaaaf, 0xffffffffaaaaaaab, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 328,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a, 0x00000000000006, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 329,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333338, 0x00000033333334, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 330,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666b, 0x00000066666667, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 331,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4b01, 0xffffffffffff4afd, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 332,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b509, 0x0000000000b505, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT( 333,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333335, 0x00000000000003, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 334,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888887, 0x00000055555555, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 335,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffdddddddc, 0xffffffffaaaaaaaa, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 336,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333337, 0x00000000000005, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 337,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0x00000033333333, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 338,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099999998, 0x00000066666666, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 339,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033327e2e, 0xffffffffffff4afc, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 340,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e836, 0x0000000000b504, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 341,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000000000002, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 342,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888886, 0x00000055555554, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 343,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000000000000, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 344,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333336, 0x00000000000004, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 345,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666664, 0x00000033333332, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 346,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099999997, 0x00000066666665, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 347,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e835, 0x0000000000b503, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 348,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888888, 0x00000055555556, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 349,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffdddddddd, 0xffffffffaaaaaaab, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 350,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333338, 0x00000000000006, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 351,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0x00000033333334, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 352,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099999999, 0x00000066666667, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 353,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033327e2f, 0xffffffffffff4afd, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 354,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e837, 0x0000000000b505, 0x00000033333332 );
  TEST_W_VV_OP_WITH_INIT( 355,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666668, 0x00000000000003, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 356,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbba, 0x00000055555555, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 357,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110f, 0xffffffffaaaaaaaa, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 358,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666a, 0x00000000000005, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 359,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099999998, 0x00000033333333, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 360,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cccccccb, 0x00000066666666, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 361,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006665b161, 0xffffffffffff4afc, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 362,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b69, 0x0000000000b504, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 363,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0x00000000000002, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 364,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbb9, 0x00000055555554, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 365,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0x00000000000000, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 366,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666669, 0x00000000000004, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 367,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099999997, 0x00000033333332, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 368,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccccccca, 0x00000066666665, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 369,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b68, 0x0000000000b503, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 370,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbb, 0x00000055555556, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 371,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111110, 0xffffffffaaaaaaab, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 372,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666b, 0x00000000000006, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 373,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099999999, 0x00000033333334, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 374,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cccccccc, 0x00000066666667, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 375,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006665b162, 0xffffffffffff4afd, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 376,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b6a, 0x0000000000b505, 0x00000066666665 );
  TEST_W_VV_OP_WITH_INIT( 377,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b506, 0x00000000000003, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 378,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a58, 0x00000055555555, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 379,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaab5fad, 0xffffffffaaaaaaaa, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 380,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b508, 0x00000000000005, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 381,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e836, 0x00000033333333, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 382,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b69, 0x00000066666666, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 383,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0xffffffffffff4afc, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 384,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016a07, 0x0000000000b504, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 385,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x00000000000002, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 386,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a57, 0x00000055555554, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 387,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x00000000000000, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 388,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b507, 0x00000000000004, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 389,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e835, 0x00000033333332, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 390,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b68, 0x00000066666665, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 391,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016a06, 0x0000000000b503, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 392,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a59, 0x00000055555556, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 393,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaab5fae, 0xffffffffaaaaaaab, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 394,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b509, 0x00000000000006, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 395,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e837, 0x00000033333334, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 396,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b6a, 0x00000066666667, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 397,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xffffffffffff4afd, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 398,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016a08, 0x0000000000b505, 0x0000000000b503 );
  TEST_W_VV_OP_WITH_INIT( 399,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555559, 0x00000000000003, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 400,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaab, 0x00000055555555, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 401,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xffffffffaaaaaaaa, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 402,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555b, 0x00000000000005, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 403,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888889, 0x00000033333333, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 404,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbc, 0x00000066666666, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 405,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005554a052, 0xffffffffffff4afc, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 406,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a5a, 0x0000000000b504, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 407,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555558, 0x00000000000002, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 408,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0x00000055555554, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 409,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000000000000, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 410,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555a, 0x00000000000004, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 411,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888888, 0x00000033333332, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 412,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbb, 0x00000066666665, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 413,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a59, 0x0000000000b503, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 414,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaac, 0x00000055555556, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 415,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xffffffffaaaaaaab, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 416,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555c, 0x00000000000006, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 417,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008888888a, 0x00000033333334, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 418,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbd, 0x00000066666667, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 419,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005554a053, 0xffffffffffff4afd, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 420,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a5b, 0x0000000000b505, 0x00000055555556 );
  TEST_W_VV_OP_WITH_INIT( 421,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaae, 0x00000000000003, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 422,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000, 0x00000055555555, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 423,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0xffffffffaaaaaaaa, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 424,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaab0, 0x00000000000005, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 425,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ddddddde, 0x00000033333333, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 426,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111, 0x00000066666666, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 427,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaa9f5a7, 0xffffffffffff4afc, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 428,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaab5faf, 0x0000000000b504, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 429,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaad, 0x00000000000002, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 430,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff, 0x00000055555554, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 431,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaab, 0x00000000000000, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 432,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaf, 0x00000000000004, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 433,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dddddddd, 0x00000033333332, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 434,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111110, 0x00000066666665, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 435,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaab5fae, 0x0000000000b503, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 436,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000001, 0x00000055555556, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 437,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0xffffffffaaaaaaab, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 438,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaab1, 0x00000000000006, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 439,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dddddddf, 0x00000033333334, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 440,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111112, 0x00000066666667, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 441,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaa9f5a8, 0xffffffffffff4afd, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 442,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaab5fb0, 0x0000000000b505, 0xffffffffaaaaaaab );
  TEST_W_VV_OP_WITH_INIT( 443,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009, 0x00000000000003, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 444,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555b, 0x00000055555555, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 445,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaab0, 0xffffffffaaaaaaaa, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 446,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b, 0x00000000000005, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 447,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333339, 0x00000033333333, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 448,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666c, 0x00000066666666, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 449,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4b02, 0xffffffffffff4afc, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 450,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b50a, 0x0000000000b504, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 451,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000002, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 452,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555a, 0x00000055555554, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 453,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000000, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 454,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a, 0x00000000000004, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 455,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333338, 0x00000033333332, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 456,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666b, 0x00000066666665, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 457,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b509, 0x0000000000b503, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 458,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555c, 0x00000055555556, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 459,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaab1, 0xffffffffaaaaaaab, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 460,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c, 0x00000000000006, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 461,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333a, 0x00000033333334, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 462,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666d, 0x00000066666667, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 463,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4b03, 0xffffffffffff4afd, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 464,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b50b, 0x0000000000b505, 0x00000000000006 );
  TEST_W_VV_OP_WITH_INIT( 465,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333337, 0x00000000000003, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 466,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888889, 0x00000055555555, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 467,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffddddddde, 0xffffffffaaaaaaaa, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 468,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333339, 0x00000000000005, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 469,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0x00000033333333, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 470,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009999999a, 0x00000066666666, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 471,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033327e30, 0xffffffffffff4afc, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 472,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e838, 0x0000000000b504, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 473,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333336, 0x00000000000002, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 474,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888888, 0x00000055555554, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 475,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000000000000, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 476,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333338, 0x00000000000004, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 477,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0x00000033333332, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 478,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099999999, 0x00000066666665, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 479,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e837, 0x0000000000b503, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 480,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008888888a, 0x00000055555556, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 481,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffdddddddf, 0xffffffffaaaaaaab, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 482,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333a, 0x00000000000006, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 483,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666668, 0x00000033333334, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 484,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009999999b, 0x00000066666667, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 485,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033327e31, 0xffffffffffff4afd, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 486,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e839, 0x0000000000b505, 0x00000033333334 );
  TEST_W_VV_OP_WITH_INIT( 487,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666a, 0x00000000000003, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 488,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbc, 0x00000055555555, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 489,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111, 0xffffffffaaaaaaaa, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 490,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666c, 0x00000000000005, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 491,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009999999a, 0x00000033333333, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 492,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cccccccd, 0x00000066666666, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 493,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006665b163, 0xffffffffffff4afc, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 494,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b6b, 0x0000000000b504, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 495,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666669, 0x00000000000002, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 496,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbb, 0x00000055555554, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 497,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0x00000000000000, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 498,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666b, 0x00000000000004, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 499,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000099999999, 0x00000033333332, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 500,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cccccccc, 0x00000066666665, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 501,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b6a, 0x0000000000b503, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 502,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbd, 0x00000055555556, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 503,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111112, 0xffffffffaaaaaaab, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 504,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666d, 0x00000000000006, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 505,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009999999b, 0x00000033333334, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 506,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccccccce, 0x00000066666667, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 507,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006665b164, 0xffffffffffff4afd, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 508,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b6c, 0x0000000000b505, 0x00000066666667 );
  TEST_W_VV_OP_WITH_INIT( 509,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4b00, 0x00000000000003, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 510,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015554a052, 0x00000055555555, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 511,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaa9f5a7, 0xffffffffaaaaaaaa, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 512,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4b02, 0x00000000000005, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 513,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000133327e30, 0x00000033333333, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 514,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016665b163, 0x00000066666666, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 515,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffe95f9, 0xffffffffffff4afc, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 516,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000001, 0x0000000000b504, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 517,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4aff, 0x00000000000002, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 518,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015554a051, 0x00000055555554, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 519,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4afd, 0x00000000000000, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 520,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4b01, 0x00000000000004, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 521,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000133327e2f, 0x00000033333332, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 522,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016665b162, 0x00000066666665, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 523,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000, 0x0000000000b503, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 524,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015554a053, 0x00000055555556, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 525,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaa9f5a8, 0xffffffffaaaaaaab, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 526,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4b03, 0x00000000000006, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 527,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000133327e31, 0x00000033333334, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 528,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016665b164, 0x00000066666667, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 529,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffe95fa, 0xffffffffffff4afd, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 530,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000002, 0x0000000000b505, 0xffffffffffff4afd );
  TEST_W_VV_OP_WITH_INIT( 531,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b508, 0x00000000000003, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 532,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a5a, 0x00000055555555, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 533,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaab5faf, 0xffffffffaaaaaaaa, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 534,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b50a, 0x00000000000005, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 535,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e838, 0x00000033333333, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 536,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b6b, 0x00000066666666, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 537,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0xffffffffffff4afc, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 538,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016a09, 0x0000000000b504, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 539,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b507, 0x00000000000002, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 540,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a59, 0x00000055555554, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 541,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x00000000000000, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 542,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b509, 0x00000000000004, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 543,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e837, 0x00000033333332, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 544,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b6a, 0x00000066666665, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 545,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016a08, 0x0000000000b503, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 546,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a5b, 0x00000055555556, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 547,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaab5fb0, 0xffffffffaaaaaaab, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 548,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b50b, 0x00000000000006, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 549,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333e839, 0x00000033333334, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 550,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066671b6c, 0x00000066666667, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 551,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xffffffffffff4afd, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT( 552,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016a0a, 0x0000000000b505, 0x0000000000b505 );
  TEST_W_VV_OP_WITH_INIT_12( 553,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffc, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_W_VV_OP_WITH_INIT_rd2( 554,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffa, 0xfffffffffffffffd, 0xfffffffffffffffd);
  TEST_W_VV_OP_WITH_INIT_13( 555,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffa, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_W_VV_OP_WITH_INIT_14( 556,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffff6, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_W_VV_OP_WITH_INIT_rd4( 557,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffee, 0xfffffffffffffff7, 0xfffffffffffffff7);
  TEST_W_VV_OP_WITH_INIT_15( 558,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffee, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_W_VV_OP_WITH_INIT_16( 559,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffde, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_W_VV_OP_WITH_INIT_rd6( 560,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffbe, 0xffffffffffffffdf, 0xffffffffffffffdf);
  TEST_W_VV_OP_WITH_INIT_17( 561,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffbe, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_W_VV_OP_WITH_INIT_19( 562,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffefe, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_W_VV_OP_WITH_INIT_110( 563,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffdfe, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_W_VV_OP_WITH_INIT_rd10( 564,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffbfe, 0xfffffffffffffdff, 0xfffffffffffffdff);
  TEST_W_VV_OP_WITH_INIT_111( 565,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffbfe, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_W_VV_OP_WITH_INIT_112( 566,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffff7fe, 0xfffffffffffffbff, 0xfffffffffffffbff );
  TEST_W_VV_OP_WITH_INIT_rd12( 567,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffeffe, 0xfffffffffffff7ff, 0xfffffffffffff7ff);
  TEST_W_VV_OP_WITH_INIT_113( 568,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffeffe, 0xfffffffffffff7ff, 0xfffffffffffff7ff );
  TEST_W_VV_OP_WITH_INIT_114( 569,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffdffe, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_W_VV_OP_WITH_INIT_rd14( 570,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffbffe, 0xffffffffffffdfff, 0xffffffffffffdfff);
  TEST_W_VV_OP_WITH_INIT_115( 571,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffbffe, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_W_VV_OP_WITH_INIT_117( 572,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffefffe, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_W_VV_OP_WITH_INIT_118( 573,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffdfffe, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_W_VV_OP_WITH_INIT_rd18( 574,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffbfffe, 0xfffffffffffdffff, 0xfffffffffffdffff);
  TEST_W_VV_OP_WITH_INIT_119( 575,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffbfffe, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_W_VV_OP_WITH_INIT_120( 576,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fff7fffe, 0xfffffffffffbffff, 0xfffffffffffbffff );
  TEST_W_VV_OP_WITH_INIT_rd20( 577,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffeffffe, 0xfffffffffff7ffff, 0xfffffffffff7ffff);
  TEST_W_VV_OP_WITH_INIT_121( 578,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffeffffe, 0xfffffffffff7ffff, 0xfffffffffff7ffff );
  TEST_W_VV_OP_WITH_INIT_122( 579,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffdffffe, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_W_VV_OP_WITH_INIT_rd22( 580,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffbffffe, 0xffffffffffdfffff, 0xffffffffffdfffff);
  TEST_W_VV_OP_WITH_INIT_123( 581,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffbffffe, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_W_VV_OP_WITH_INIT_125( 582,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fefffffe, 0xffffffffff7fffff, 0xffffffffff7fffff );
  TEST_W_VV_OP_WITH_INIT_126( 583,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fdfffffe, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_W_VV_OP_WITH_INIT_rd26( 584,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fbfffffe, 0xfffffffffdffffff, 0xfffffffffdffffff);
  TEST_W_VV_OP_WITH_INIT_127( 585,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fbfffffe, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_W_VV_OP_WITH_INIT_128( 586,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7fffffe, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_W_VV_OP_WITH_INIT_rd28( 587,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000effffffe, 0xfffffffff7ffffff, 0xfffffffff7ffffff);
  TEST_W_VV_OP_WITH_INIT_129( 588,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000effffffe, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_W_VV_OP_WITH_INIT_130( 589,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dffffffe, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_W_VV_OP_WITH_INIT_rd30( 590,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bffffffe, 0xffffffffdfffffff, 0xffffffffdfffffff);
  TEST_W_VV_OP_WITH_INIT_131( 591,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bffffffe, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_W_VV_OP_WITH_INIT_12( 592,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ffffffe, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_W_VV_OP_WITH_INIT_13( 593,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffe, 0x0000007fffffff, 0x0000007fffffff );
  TEST_W_VV_OP_WITH_INIT_rd2( 594,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000001, 0x00000000000001);
  TEST_W_VV_OP_WITH_INIT_14( 595,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000001, 0x00000000000001 );
  TEST_W_VV_OP_WITH_INIT_15( 596,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000002, 0x00000000000002 );
  TEST_W_VV_OP_WITH_INIT_rd4( 597,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000004, 0x00000000000004);
  TEST_W_VV_OP_WITH_INIT_16( 598,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000004, 0x00000000000004 );
  TEST_W_VV_OP_WITH_INIT_17( 599,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010, 0x00000000000008, 0x00000000000008 );
  TEST_W_VV_OP_WITH_INIT_rd6( 600,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020, 0x00000000000010, 0x00000000000010);
  TEST_W_VV_OP_WITH_INIT_19( 601,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040, 0x00000000000020, 0x00000000000020 );
  TEST_W_VV_OP_WITH_INIT_110( 602,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080, 0x00000000000040, 0x00000000000040 );
  TEST_W_VV_OP_WITH_INIT_111( 603,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100, 0x00000000000080, 0x00000000000080 );
  TEST_W_VV_OP_WITH_INIT_rd10( 604,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200, 0x00000000000100, 0x00000000000100);
  TEST_W_VV_OP_WITH_INIT_112( 605,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200, 0x00000000000100, 0x00000000000100 );
  TEST_W_VV_OP_WITH_INIT_113( 606,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400, 0x00000000000200, 0x00000000000200 );
  TEST_W_VV_OP_WITH_INIT_rd12( 607,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800, 0x00000000000400, 0x00000000000400);
  TEST_W_VV_OP_WITH_INIT_114( 608,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800, 0x00000000000400, 0x00000000000400 );
  TEST_W_VV_OP_WITH_INIT_115( 609,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000, 0x00000000000800, 0x00000000000800 );
  TEST_W_VV_OP_WITH_INIT_rd14( 610,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000, 0x00000000001000, 0x00000000001000);
  TEST_W_VV_OP_WITH_INIT_117( 611,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000, 0x00000000002000, 0x00000000002000 );
  TEST_W_VV_OP_WITH_INIT_118( 612,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000, 0x00000000004000, 0x00000000004000 );
  TEST_W_VV_OP_WITH_INIT_119( 613,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000, 0x00000000008000, 0x00000000008000 );
  TEST_W_VV_OP_WITH_INIT_rd18( 614,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000, 0x00000000010000, 0x00000000010000);
  TEST_W_VV_OP_WITH_INIT_120( 615,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000, 0x00000000010000, 0x00000000010000 );
  TEST_W_VV_OP_WITH_INIT_121( 616,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000, 0x00000000020000, 0x00000000020000 );
  TEST_W_VV_OP_WITH_INIT_rd20( 617,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000, 0x00000000040000, 0x00000000040000);
  TEST_W_VV_OP_WITH_INIT_122( 618,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000, 0x00000000040000, 0x00000000040000 );
  TEST_W_VV_OP_WITH_INIT_123( 619,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000, 0x00000000080000, 0x00000000080000 );
  TEST_W_VV_OP_WITH_INIT_rd22( 620,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000, 0x00000000100000, 0x00000000100000);
  TEST_W_VV_OP_WITH_INIT_125( 621,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000, 0x00000000200000, 0x00000000200000 );
  TEST_W_VV_OP_WITH_INIT_126( 622,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x00000000400000, 0x00000000400000 );
  TEST_W_VV_OP_WITH_INIT_127( 623,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000, 0x00000000800000, 0x00000000800000 );
  TEST_W_VV_OP_WITH_INIT_rd26( 624,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000, 0x00000001000000, 0x00000001000000);
  TEST_W_VV_OP_WITH_INIT_128( 625,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000, 0x00000001000000, 0x00000001000000 );
  TEST_W_VV_OP_WITH_INIT_129( 626,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000, 0x00000002000000, 0x00000002000000 );
  TEST_W_VV_OP_WITH_INIT_rd28( 627,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000, 0x00000004000000, 0x00000004000000);
  TEST_W_VV_OP_WITH_INIT_130( 628,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000, 0x00000004000000, 0x00000004000000 );
  TEST_W_VV_OP_WITH_INIT_131( 629,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000, 0x00000008000000, 0x00000008000000 );
  TEST_W_VV_OP_WITH_INIT_rd30( 630,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000, 0x00000010000000, 0x00000010000000);
  TEST_W_VV_OP_WITH_INIT_12( 631,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000, 0x00000010000000, 0x00000010000000 );
  TEST_W_VV_OP_WITH_INIT_13( 632,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000, 0x00000020000000, 0x00000020000000 );
  TEST_W_VV_OP_WITH_INIT_14( 633,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x00000040000000, 0x00000040000000 );
  TEST_W_VV_OP_WITH_INIT_rd2( 634,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xffffffff80000000, 0xffffffff80000000);
  TEST_W_VV_OP_WITH_INIT_15( 635,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xffffffff80000000, 0xffffffff80000000 );
  TEST_W_VV_OP_WITH_INIT_16( 636,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000003, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_rd4( 637,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555558, 0x00000055555555, 0x00000000000003);
  TEST_W_VV_OP_WITH_INIT_17( 638,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555558, 0x00000055555555, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_rd6( 639,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000005, 0x00000000000003);
  TEST_W_VV_OP_WITH_INIT_19( 640,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000005, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_110( 641,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333336, 0x00000033333333, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_111( 642,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666669, 0x00000066666666, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_112( 643,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4aff, 0xffffffffffff4afc, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_rd10( 644,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555558, 0x00000055555555, 0x00000000000003);
  TEST_W_VV_OP_WITH_INIT_113( 645,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555558, 0x00000055555555, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_114( 646,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b507, 0x0000000000b504, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_rd12( 647,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000002, 0x00000000000003);
  TEST_W_VV_OP_WITH_INIT_115( 648,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000002, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_rd14( 649,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000000, 0x00000000000003);
  TEST_W_VV_OP_WITH_INIT_117( 650,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000000, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_118( 651,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000004, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_119( 652,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333335, 0x00000033333332, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_120( 653,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbba, 0x00000066666665, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT_rd18( 654,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaaad, 0xffffffffaaaaaaaa, 0x00000000000003);
  TEST_W_VV_OP_WITH_INIT_121( 655,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffaaaaaaad, 0xffffffffaaaaaaaa, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_122( 656,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaab5fad, 0x0000000000b503, 0xffffffffaaaaaaaa );
  TEST_W_VV_OP_WITH_INIT_rd20( 657,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555559, 0x00000055555556, 0x00000000000003);
  TEST_W_VV_OP_WITH_INIT_123( 658,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555559, 0x00000055555556, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_rd22( 659,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009, 0x00000000000006, 0x00000000000003);
  TEST_W_VV_OP_WITH_INIT_125( 660,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009, 0x00000000000006, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_126( 661,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333337, 0x00000033333334, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_127( 662,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666a, 0x00000066666667, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_128( 663,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff4b00, 0xffffffffffff4afd, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_rd26( 664,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x00000000000000);
  TEST_W_VV_OP_WITH_INIT_129( 665,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x00000000000000 );
  TEST_W_VV_OP_WITH_INIT_130( 666,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000003, 0x00000000000003 );
  TEST_W_VV_OP_WITH_INIT_rd28( 667,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0x00000055555555, 0x00000055555555);
  TEST_W_VV_OP_WITH_INIT_131( 668,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0x00000055555555, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT_12( 669,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0xffffffffaaaaaaaa, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT_rd30( 670,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555a, 0x00000000000005, 0x00000055555555);
  TEST_W_VV_OP_WITH_INIT_13( 671,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555a, 0x00000000000005, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT_14( 672,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000088888888, 0x00000033333333, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT_15( 673,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbb, 0x00000066666666, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT_rd2( 674,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005554a051, 0xffffffffffff4afc, 0x00000055555555);
  TEST_W_VV_OP_WITH_INIT_16( 675,  vwredsum.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005554a051, 0xffffffffffff4afc, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT_17( 676,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055560a59, 0x0000000000b504, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT_rd4( 677,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555557, 0x00000000000002, 0x00000055555555);
  TEST_W_VV_OP_WITH_INIT_19( 678,  vwredsum.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaa9, 0x00000055555554, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT_rd6( 679,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000000000000, 0x00000055555555);
  TEST_W_VV_OP_WITH_INIT_110( 680,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000000000000, 0x00000055555555 );
  TEST_W_VV_OP_WITH_INIT_111( 681,  vwredsum.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555559, 0x00000000000004, 0x00000055555555 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    


.align 4
mask_data:
	.word 0x11111111
	.word 0x86569d27
	.word 0x429ede3d
	.word 0x20219a51
	.word 0x91a8d5fd
	.word 0xbd8f6c65
	.word 0x466250f
	.word 0xe31ffa64
	.word 0xc737ad3a
	.word 0xe54c8c1e
	.word 0x7ca660db
	.word 0x692dadf
	.word 0x2c63c847
	.word 0xfbba7ae7
	.word 0x195b62bf
	.word 0xf600a3d1
	.word 0x34b80fd4
	.word 0x3aef5ff4
	.word 0x34267ad9
	.word 0x681454c0
	.word 0x67dd3492
	.word 0xb02d663e
	.word 0xb2d3f1c5
	.word 0x824d39ae
 

.align 4
rd_origin_data:
    .word 0x66da64aa
	.word 0xf682191a
	.word 0xfd2ce83f
	.word 0x67f9ab29
	.word 0x112e3ffd
	.word 0xc4d9b1e2
	.word 0x9ed4e137
	.word 0xb49ae54e
	.word 0xd075dd45
	.word 0x74daa72e
	.word 0x48324db4
	.word 0x167d97b5
	.word 0x8b536536
	.word 0xe85755eb
	.word 0x1cd86c0a
	.word 0x4c811ecf
	.word 0x8085dbf1
	.word 0x547cdce3
	.word 0x65d27882
	.word 0xb72d2ec4
	.word 0x954ee841
	.word 0xb36fd636
	.word 0xbc4988da
	.word 0xaea05c04
	.word 0xce7483a6
	.word 0xea0309d7
	.word 0x62498466
	.word 0x1cd29ac4
	.word 0x97f38b62
	.word 0x690bcf85
	.word 0x97f38b62
	.word 0x9bd83b8b
    
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
    

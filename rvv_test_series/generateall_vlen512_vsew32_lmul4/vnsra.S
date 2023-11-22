#----------------------------------------------------------------------------- 
    # vnsra.S
    #-----------------------------------------------------------------------------
    #
    # Test vnsra instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vnsra)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_N_VV_OP 
#define TEST_N_VV_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v24, v16, v8, v0.t; \
        )
#undef TEST_N_VX_OP 
#define TEST_N_VX_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            li x1, MASK_VSEW(val1); \
            inst v24, v16, x1, v0.t; \
        )
#undef TEST_N_VI_OP 
#define TEST_N_VI_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v16, SEXT_IMM(val1), v0.t; \
        )
#define TEST_N_VV_OP_11( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v1, (x7); \
                inst v24, v16, v1, v0.t;  \
            )
#define TEST_N_VV_OP_12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v2, (x7); \
                inst v24, v16, v2, v0.t;  \
            )
#define TEST_N_VV_OP_13( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v3, (x7); \
                inst v24, v16, v3, v0.t;  \
            )
#define TEST_N_VV_OP_14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v4, (x7); \
                inst v24, v16, v4, v0.t;  \
            )
#define TEST_N_VV_OP_15( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v5, (x7); \
                inst v24, v16, v5, v0.t;  \
            )
#define TEST_N_VV_OP_16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v6, (x7); \
                inst v24, v16, v6, v0.t;  \
            )
#define TEST_N_VV_OP_17( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v7, (x7); \
                inst v24, v16, v7, v0.t;  \
            )
#define TEST_N_VV_OP_18( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v24, v16, v8, v0.t;  \
            )
#define TEST_N_VV_OP_19( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v9, (x7); \
                inst v24, v16, v9, v0.t;  \
            )
#define TEST_N_VV_OP_110( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v10, (x7); \
                inst v24, v16, v10, v0.t;  \
            )
#define TEST_N_VV_OP_111( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v11, (x7); \
                inst v24, v16, v11, v0.t;  \
            )
#define TEST_N_VV_OP_112( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v12, (x7); \
                inst v24, v16, v12, v0.t;  \
            )
#define TEST_N_VV_OP_113( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v13, (x7); \
                inst v24, v16, v13, v0.t;  \
            )
#define TEST_N_VV_OP_114( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v14, (x7); \
                inst v24, v16, v14, v0.t;  \
            )
#define TEST_N_VV_OP_115( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v15, (x7); \
                inst v24, v16, v15, v0.t;  \
            )
#define TEST_N_VV_OP_116( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v16, (x7); \
                inst v24, v16, v16, v0.t;  \
            )
#define TEST_N_VV_OP_117( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v17, (x7); \
                inst v24, v16, v17, v0.t;  \
            )
#define TEST_N_VV_OP_118( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v18, (x7); \
                inst v24, v16, v18, v0.t;  \
            )
#define TEST_N_VV_OP_119( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v19, (x7); \
                inst v24, v16, v19, v0.t;  \
            )
#define TEST_N_VV_OP_120( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v20, (x7); \
                inst v24, v16, v20, v0.t;  \
            )
#define TEST_N_VV_OP_121( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v21, (x7); \
                inst v24, v16, v21, v0.t;  \
            )
#define TEST_N_VV_OP_122( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v22, (x7); \
                inst v24, v16, v22, v0.t;  \
            )
#define TEST_N_VV_OP_123( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v23, (x7); \
                inst v24, v16, v23, v0.t;  \
            )
#define TEST_N_VV_OP_124( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v24, (x7); \
                inst v24, v16, v24, v0.t;  \
            )
#define TEST_N_VV_OP_125( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v25, (x7); \
                inst v24, v16, v25, v0.t;  \
            )
#define TEST_N_VV_OP_126( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v26, (x7); \
                inst v24, v16, v26, v0.t;  \
            )
#define TEST_N_VV_OP_127( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v27, (x7); \
                inst v24, v16, v27, v0.t;  \
            )
#define TEST_N_VV_OP_128( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v28, (x7); \
                inst v24, v16, v28, v0.t;  \
            )
#define TEST_N_VV_OP_129( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v29, (x7); \
                inst v24, v16, v29, v0.t;  \
            )
#define TEST_N_VV_OP_130( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v30, (x7); \
                inst v24, v16, v30, v0.t;  \
            )
#define TEST_N_VV_OP_131( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v31, (x7); \
                inst v24, v16, v31, v0.t;  \
            )
#define TEST_N_VV_OP_rd4( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v4, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v4, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v4, v16, v8, v0.t;  \
            ) 
#define TEST_N_VV_OP_rd8( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v8, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v8, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v8, v16, v8, v0.t;  \
            ) 
#define TEST_N_VV_OP_rd12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v12, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v12, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v12, v16, v8, v0.t;  \
            ) 
#define TEST_N_VV_OP_rd16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v16, v16, v8, v0.t;  \
            ) 
#define TEST_N_VV_OP_rd20( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v20, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v20, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v20, v16, v8, v0.t;  \
            ) 
#define TEST_N_VV_OP_rd24( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v24, v16, v8, v0.t;  \
            ) 
#define TEST_N_VV_OP_rd28( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v28, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v28, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val2; \
                vle64.v v16, (x7); \
                la x7, val1; \
                vle32.v v8, (x7); \
                inst v28, v16, v8, v0.t;  \
            ) 
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_N_VV_OP( 1,  vnsra.wv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_N_VV_OP( 2,  vnsra.wv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_N_VV_OP( 3,  vnsra.wv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_N_VV_OP( 4,  vnsra.wv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_N_VV_OP( 5,  vnsra.wv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_N_VV_OP( 6,  vnsra.wv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_N_VV_OP( 7,  vnsra.wv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_N_VV_OP( 8,  vnsra.wv, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_N_VV_OP_14( 9,  vnsra.wv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_N_VV_OP_rd4( 10,  vnsra.wv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_N_VX_OP( 11,  vnsra.wx, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_N_VX_OP( 12,  vnsra.wx, rd_data_vx+256, rs2_data+256, 0xfffffffffffffffd)
  TEST_N_VX_OP( 13,  vnsra.wx, rd_data_vx+512, rs2_data+512, 0xfffffffffffffffb)
  TEST_N_VX_OP( 14,  vnsra.wx, rd_data_vx+768, rs2_data+768, 0xfffffffffffffff7)
  TEST_N_VX_OP( 15,  vnsra.wx, rd_data_vx+1024, rs2_data+1024, 0xffffffffffffffef)
  TEST_N_VX_OP( 16,  vnsra.wx, rd_data_vx+1280, rs2_data+1280, 0xffffffffffffffdf)
  TEST_N_VX_OP( 17,  vnsra.wx, rd_data_vx+1536, rs2_data+1536, 0xffffffffffffffbf)
  TEST_N_VX_OP( 18,  vnsra.wx, rd_data_vx+1792, rs2_data+1792, 0xffffffffffffff7f)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_N_VI_OP( 19,  vnsra.wi, rd_data_vi+0, rs2_data+0, 4)
  TEST_N_VI_OP( 20,  vnsra.wi, rd_data_vi+256, rs2_data+256, 4)
  TEST_N_VI_OP( 21,  vnsra.wi, rd_data_vi+512, rs2_data+512, 4)
  TEST_N_VI_OP( 22,  vnsra.wi, rd_data_vi+768, rs2_data+768, 4)
  TEST_N_VI_OP( 23,  vnsra.wi, rd_data_vi+1024, rs2_data+1024, 4)
  TEST_N_VI_OP( 24,  vnsra.wi, rd_data_vi+1280, rs2_data+1280, 4)
  TEST_N_VI_OP( 25,  vnsra.wi, rd_data_vi+1536, rs2_data+1536, 4)
  TEST_N_VI_OP( 26,  vnsra.wi, rd_data_vi+1792, rs2_data+1792, 4)
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
rs1_data:
.word	0xfffffffffffffffe
.word	0xfffffffffffffffd
.word	0xfffffffffffffffb
.word	0xfffffffffffffff7
.word	0xffffffffffffffef
.word	0xffffffffffffffdf
.word	0xffffffffffffffbf
.word	0xffffffffffffff7f
.word	0xfffffffffffffeff
.word	0xfffffffffffffdff
.word	0xfffffffffffffbff
.word	0xfffffffffffff7ff
.word	0xffffffffffffefff
.word	0xffffffffffffdfff
.word	0xffffffffffffbfff
.word	0xffffffffffff7fff
.word	0xfffffffffffeffff
.word	0xfffffffffffdffff
.word	0xfffffffffffbffff
.word	0xfffffffffff7ffff
.word	0xffffffffffefffff
.word	0xffffffffffdfffff
.word	0xffffffffffbfffff
.word	0xffffffffff7fffff
.word	0xfffffffffeffffff
.word	0xfffffffffdffffff
.word	0xfffffffffbffffff
.word	0xfffffffff7ffffff
.word	0xffffffffefffffff
.word	0xffffffffdfffffff
.word	0xffffffffbfffffff
.word	0x0000007fffffff
.word	0x00000000000001
.word	0x00000000000002
.word	0x00000000000004
.word	0x00000000000008
.word	0x00000000000010
.word	0x00000000000020
.word	0x00000000000040
.word	0x00000000000080
.word	0x00000000000100
.word	0x00000000000200
.word	0x00000000000400
.word	0x00000000000800
.word	0x00000000001000
.word	0x00000000002000
.word	0x00000000004000
.word	0x00000000008000
.word	0x00000000010000
.word	0x00000000020000
.word	0x00000000040000
.word	0x00000000080000
.word	0x00000000100000
.word	0x00000000200000
.word	0x00000000400000
.word	0x00000000800000
.word	0x00000001000000
.word	0x00000002000000
.word	0x00000004000000
.word	0x00000008000000
.word	0x00000010000000
.word	0x00000020000000
.word	0x00000040000000
.word	0xffffffff80000000
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000055555555
.word	0x00000000000003
.word	0xffffffffaaaaaaaa
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000003
.word	0x00000000000000
.word	0x00000000000003
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000033333333
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000033333332
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x00000066666665
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x0000000000b503
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000033333334
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505
.word	0x0000000000b505

.align 8
rs2_data:
.dword	0xfffffffffffffffe
.dword	0xfffffffffffffffd
.dword	0xfffffffffffffffb
.dword	0xfffffffffffffff7
.dword	0xffffffffffffffef
.dword	0xffffffffffffffdf
.dword	0xffffffffffffffbf
.dword	0xffffffffffffff7f
.dword	0xfffffffffffffeff
.dword	0xfffffffffffffdff
.dword	0xfffffffffffffbff
.dword	0xfffffffffffff7ff
.dword	0xffffffffffffefff
.dword	0xffffffffffffdfff
.dword	0xffffffffffffbfff
.dword	0xffffffffffff7fff
.dword	0xfffffffffffeffff
.dword	0xfffffffffffdffff
.dword	0xfffffffffffbffff
.dword	0xfffffffffff7ffff
.dword	0xffffffffffefffff
.dword	0xffffffffffdfffff
.dword	0xffffffffffbfffff
.dword	0xffffffffff7fffff
.dword	0xfffffffffeffffff
.dword	0xfffffffffdffffff
.dword	0xfffffffffbffffff
.dword	0xfffffffff7ffffff
.dword	0xffffffffefffffff
.dword	0xffffffffdfffffff
.dword	0xffffffffbfffffff
.dword	0x0000007fffffff
.dword	0x00000000000001
.dword	0x00000000000002
.dword	0x00000000000004
.dword	0x00000000000008
.dword	0x00000000000010
.dword	0x00000000000020
.dword	0x00000000000040
.dword	0x00000000000080
.dword	0x00000000000100
.dword	0x00000000000200
.dword	0x00000000000400
.dword	0x00000000000800
.dword	0x00000000001000
.dword	0x00000000002000
.dword	0x00000000004000
.dword	0x00000000008000
.dword	0x00000000010000
.dword	0x00000000020000
.dword	0x00000000040000
.dword	0x00000000080000
.dword	0x00000000100000
.dword	0x00000000200000
.dword	0x00000000400000
.dword	0x00000000800000
.dword	0x00000001000000
.dword	0x00000002000000
.dword	0x00000004000000
.dword	0x00000008000000
.dword	0x00000010000000
.dword	0x00000020000000
.dword	0x00000040000000
.dword	0xffffffff80000000
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x00000055555555
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0xffffffffaaaaaaaa
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x00000000000000
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505
.dword	0x00000000000003
.dword	0x00000055555555
.dword	0xffffffffaaaaaaaa
.dword	0x00000000000005
.dword	0x00000033333333
.dword	0x00000066666666
.dword	0xffffffffffff4afc
.dword	0x0000000000b504
.dword	0x00000000000002
.dword	0x00000055555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000033333332
.dword	0x00000066666665
.dword	0x0000000000b503
.dword	0x00000055555556
.dword	0xffffffffaaaaaaab
.dword	0x00000000000006
.dword	0x00000033333334
.dword	0x00000066666667
.dword	0xffffffffffff4afd
.dword	0x0000000000b505

.align 4
rd_data_vv:
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xffffffff
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xffffffff
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xffffffff
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000100
.word	0xdeadbeef
.word	0x00000400
.word	0x00000800
.word	0x00001000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00008000
.word	0xdeadbeef
.word	0x00020000
.word	0x00040000
.word	0xdeadbeef
.word	0x00100000
.word	0xdeadbeef
.word	0x00400000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x02000000
.word	0x04000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x80000000
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000020
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000200
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00020000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00200000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000080
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x000002aa
.word	0xfffffd55
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000333
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x000002aa
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0x00000000
.word	0xffffffff
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xffffffff
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a8
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x01999999
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xffffffff
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x03333333
.word	0x06666666
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x06666666
.word	0xfffff4af
.word	0x00000b50
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x03333333
.word	0x06666666
.word	0xdeadbeef
.word	0x15555555
.word	0xdeadbeef
.word	0x00000001
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffd2bf
.word	0x00002d41
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x0ccccccc
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00002d41
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000001
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000555
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000666
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000555
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66666666
.word	0xffff4afc
.word	0x0000b504
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x66666665
.word	0xdeadbeef
.word	0x55555556
.word	0xaaaaaaab
.word	0x00000006
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffff4afd
.word	0xdeadbeef
.word	0x00000003
.word	0x55555555
.word	0xdeadbeef
.word	0x00000005
.word	0xdeadbeef
.word	0x06666666
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x05555555
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000b50
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x06666666
.word	0x0ccccccc
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xf5555555
.word	0x0aaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0ccccccc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0aaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0ccccccc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000155
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000199
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x000000cc
.word	0x00000199
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xffffffff
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xfffffd2b
.word	0x000002d4
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00cccccc
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000002d4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x01555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000005a8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000005a8
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x01999999
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xffffffff
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x03333333
.word	0x06666666
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x06666666
.word	0xfffff4af
.word	0x00000b50
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x03333333
.word	0x06666666
.word	0xdeadbeef
.word	0x15555555
.word	0xdeadbeef
.word	0x00000001
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffd2bf
.word	0x00002d41
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x0ccccccc

rd_data_vx:
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffff
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xffffffff
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xffffffff
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xffffffff
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0x00000000
.word	0xffffffff
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xffffffff
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xffffffff
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffff
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffffff
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xffffffff
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xffffffff
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xffffffff
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xffffffff
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000

rd_data_vi:
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffffef
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffeff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffffefff
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfffeffff
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xffefffff
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfeffffff
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000002
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000010
.word	0xdeadbeef
.word	0x00000040
.word	0x00000080
.word	0x00000100
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000800
.word	0xdeadbeef
.word	0x00002000
.word	0x00004000
.word	0xdeadbeef
.word	0x00010000
.word	0xdeadbeef
.word	0x00040000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00200000
.word	0x00400000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xf8000000
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000100
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00001000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00010000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00100000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x01000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x05555555
.word	0xfaaaaaaa
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x06666666
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000b50
.word	0xdeadbeef
.word	0x05555555
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xfaaaaaaa
.word	0xdeadbeef
.word	0x05555555
.word	0xfaaaaaaa
.word	0xdeadbeef
.word	0x03333333
.word	0xdeadbeef
.word	0xfffff4af
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x05555555
.word	0xfaaaaaaa
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000b50
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x03333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000b50
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000b50
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x03333333
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x03333333
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x05555555
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x06666666
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xfaaaaaaa
.word	0xdeadbeef
.word	0x03333333
.word	0x06666666
.word	0xfffff4af
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x05555555
.word	0xdeadbeef
.word	0x00000000
.word	0x03333333
.word	0xdeadbeef
.word	0xfffff4af
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x03333333
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xfaaaaaaa
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x03333333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffff4af
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfaaaaaaa
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfffff4af
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x03333333
.word	0x06666666
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x06666666
.word	0xfffff4af
.word	0x00000b50
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x03333333
.word	0x06666666
.word	0xdeadbeef
.word	0x05555555
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xfffff4af
.word	0x00000b50
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x03333333
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000b50
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x05555555
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x06666666
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x05555555
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x06666666
.word	0xfffff4af
.word	0x00000b50
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x06666666
.word	0xdeadbeef
.word	0x05555555
.word	0xfaaaaaaa
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xfffff4af
.word	0xdeadbeef
.word	0x00000000
.word	0x05555555
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x06666666
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x05555555
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000b50
.word	0x06666666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x05555555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x06666666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000b50
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000b50
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x05555555
.word	0xfaaaaaaa
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xfffff4af
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x05555555
.word	0xdeadbeef
.word	0x00000000
.word	0x03333333
.word	0x06666666
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x00000000
.word	0x00000000
.word	0xdeadbeef
.word	0x06666666
.word	0xdeadbeef
.word	0x05555555
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x03333333
.word	0x06666666
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xfaaaaaaa
.word	0x05555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x06666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x05555555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x06666666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x05555555
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x06666666
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000b50
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0x03333333
.word	0x06666666
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x06666666
.word	0x00000b50
.word	0x05555555
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x03333333
.word	0xdeadbeef
.word	0xfffff4af
.word	0x00000b50
.word	0xdeadbeef
.word	0x05555555
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xfffff4af
.word	0x00000b50
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x03333333
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000b50
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x05555555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x06666666
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x05555555
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x06666666
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x05555555
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x06666666
.word	0x00000b50
.word	0x05555555
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x03333333
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000b50
.word	0xdeadbeef
.word	0x05555555
.word	0xfaaaaaaa
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xfffff4af
.word	0xdeadbeef
.word	0x00000000
.word	0x05555555
.word	0xdeadbeef
.word	0x00000000
.word	0xdeadbeef
.word	0x06666666
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xfaaaaaaa
.word	0x00000000
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0xdeadbeef
.word	0x00000000
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314

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
    

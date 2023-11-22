#----------------------------------------------------------------------------- 
    # vadd.S
    #-----------------------------------------------------------------------------
    #
    # Test vadd instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vadd)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_VV_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v24, v16, v8, v0.t; \
        )
#define TEST_VX_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            li x1, MASK_XLEN(val1); \
            inst v16, v8, x1, v0.t; ; \
        )
#define TEST_VI_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            inst v16, v8, SEXT_IMM(val1), v0.t; ; \
        )
#define TEST_VV_OP_12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v2, (x7); \
            inst v24, v16, v2, v0.t;  \
        )
#define TEST_VV_OP_14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v4, (x7); \
            inst v24, v16, v4, v0.t;  \
        )
#define TEST_VV_OP_16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v6, (x7); \
            inst v24, v16, v6, v0.t;  \
        )
#define TEST_VV_OP_110( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v10, (x7); \
            inst v24, v16, v10, v0.t;  \
        )
#define TEST_VV_OP_112( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v12, (x7); \
            inst v24, v16, v12, v0.t;  \
        )
#define TEST_VV_OP_114( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v14, (x7); \
            inst v24, v16, v14, v0.t;  \
        )
#define TEST_VV_OP_118( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v18, (x7); \
            inst v24, v16, v18, v0.t;  \
        )
#define TEST_VV_OP_120( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v20, (x7); \
            inst v24, v16, v20, v0.t;  \
        )
#define TEST_VV_OP_122( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v22, (x7); \
            inst v24, v16, v22, v0.t;  \
        )
#define TEST_VV_OP_126( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v26, (x7); \
            inst v24, v16, v26, v0.t;  \
        )
#define TEST_VV_OP_128( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v28, (x7); \
            inst v24, v16, v28, v0.t;  \
        )
#define TEST_VV_OP_130( testnum, inst, result, val2, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v30, (x7); \
            inst v24, v16, v30, v0.t;  \
        )
#define TEST_VV_OP_rd2( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v2, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v2, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v2, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd4( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v4, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v4, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v4, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd6( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v6, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v6, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v6, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd10( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v10, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v10, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v10, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd12( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v12, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v12, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v12, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd14( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v14, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v14, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd18( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v18, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v18, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v18, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd20( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v20, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v20, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v20, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd22( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v22, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v22, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v22, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd26( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v26, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v26, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v26, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd28( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v28, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v28, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v28, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd30( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v30, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v30, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v16, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v30, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd8( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v8, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v24, (x7); \
            la x7, val1; \
            vle32.v v16, (x7); \
            inst v8, v24, v16, v0.t; ; \
        )
#define TEST_VV_OP_rd16( testnum, inst, result, val2, val1 ) \
        TEST_CASE_LOOP( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v24, (x7); \
            la x7, val1; \
            vle32.v v8, (x7); \
            inst v16, v24, v8, v0.t; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VV_OP( 1,  vadd.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP( 2,  vadd.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP( 3,  vadd.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP( 4,  vadd.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP( 5,  vadd.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP( 6,  vadd.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP( 7,  vadd.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP( 8,  vadd.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP( 9,  vadd.vv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_VV_OP( 10,  vadd.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP( 11,  vadd.vv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_VV_OP( 12,  vadd.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP( 13,  vadd.vv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_VV_OP( 14,  vadd.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP( 15,  vadd.vv, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_VV_OP( 16,  vadd.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_VV_OP( 17,  vadd.vv, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_VV_OP_rd2( 18,  vadd.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_rd4( 19,  vadd.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_rd6( 20,  vadd.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_rd8( 21,  vadd.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_rd10( 22,  vadd.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_rd12( 23,  vadd.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_rd14( 24,  vadd.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_rd16( 25,  vadd.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VX_OP( 26,  vadd.vx, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_VX_OP( 27,  vadd.vx, rd_data_vx+128, rs2_data+128, 0xfffffffffffffffe)
  TEST_VX_OP( 28,  vadd.vx, rd_data_vx+256, rs2_data+256, 0xfffffffffffffffe)
  TEST_VX_OP( 29,  vadd.vx, rd_data_vx+384, rs2_data+384, 0xfffffffffffffffe)
  TEST_VX_OP( 30,  vadd.vx, rd_data_vx+512, rs2_data+512, 0xfffffffffffffffe)
  TEST_VX_OP( 31,  vadd.vx, rd_data_vx+640, rs2_data+640, 0xfffffffffffffffe)
  TEST_VX_OP( 32,  vadd.vx, rd_data_vx+768, rs2_data+768, 0xfffffffffffffffe)
  TEST_VX_OP( 33,  vadd.vx, rd_data_vx+896, rs2_data+896, 0xfffffffffffffffe)
  TEST_VX_OP( 34,  vadd.vx, rd_data_vx+1024, rs2_data+1024, 0xfffffffffffffffe)
  TEST_VX_OP( 35,  vadd.vx, rd_data_vx+1152, rs2_data+1152, 0xfffffffffffffffe)
  TEST_VX_OP( 36,  vadd.vx, rd_data_vx+1280, rs2_data+1280, 0xfffffffffffffffe)
  TEST_VX_OP( 37,  vadd.vx, rd_data_vx+1408, rs2_data+1408, 0xfffffffffffffffe)
  TEST_VX_OP( 38,  vadd.vx, rd_data_vx+1536, rs2_data+1536, 0xfffffffffffffffe)
  TEST_VX_OP( 39,  vadd.vx, rd_data_vx+1664, rs2_data+1664, 0xfffffffffffffffe)
  TEST_VX_OP( 40,  vadd.vx, rd_data_vx+1792, rs2_data+1792, 0xfffffffffffffffe)
  TEST_VX_OP( 41,  vadd.vx, rd_data_vx+1920, rs2_data+1920, 0xfffffffffffffffe)
  TEST_VX_OP( 42,  vadd.vx, rd_data_vx+2048, rs2_data+2048, 0xfffffffffffffffe)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VI_OP( 43,  vadd.vi, rd_data_vi+0, rs2_data+0, 15)
  TEST_VI_OP( 44,  vadd.vi, rd_data_vi+128, rs2_data+128, 15)
  TEST_VI_OP( 45,  vadd.vi, rd_data_vi+256, rs2_data+256, 15)
  TEST_VI_OP( 46,  vadd.vi, rd_data_vi+384, rs2_data+384, 15)
  TEST_VI_OP( 47,  vadd.vi, rd_data_vi+512, rs2_data+512, 15)
  TEST_VI_OP( 48,  vadd.vi, rd_data_vi+640, rs2_data+640, 15)
  TEST_VI_OP( 49,  vadd.vi, rd_data_vi+768, rs2_data+768, 15)
  TEST_VI_OP( 50,  vadd.vi, rd_data_vi+896, rs2_data+896, 15)
  TEST_VI_OP( 51,  vadd.vi, rd_data_vi+1024, rs2_data+1024, 15)
  TEST_VI_OP( 52,  vadd.vi, rd_data_vi+1152, rs2_data+1152, 15)
  TEST_VI_OP( 53,  vadd.vi, rd_data_vi+1280, rs2_data+1280, 15)
  TEST_VI_OP( 54,  vadd.vi, rd_data_vi+1408, rs2_data+1408, 15)
  TEST_VI_OP( 55,  vadd.vi, rd_data_vi+1536, rs2_data+1536, 15)
  TEST_VI_OP( 56,  vadd.vi, rd_data_vi+1664, rs2_data+1664, 15)
  TEST_VI_OP( 57,  vadd.vi, rd_data_vi+1792, rs2_data+1792, 15)
  TEST_VI_OP( 58,  vadd.vi, rd_data_vi+1920, rs2_data+1920, 15)
  TEST_VI_OP( 59,  vadd.vi, rd_data_vi+2048, rs2_data+2048, 15)
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

.align 4
rs2_data:
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
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x00000055555555
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0xffffffffaaaaaaaa
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x00000000000000
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505
.word	0x00000000000003
.word	0x00000055555555
.word	0xffffffffaaaaaaaa
.word	0x00000000000005
.word	0x00000033333333
.word	0x00000066666666
.word	0xffffffffffff4afc
.word	0x0000000000b504
.word	0x00000000000002
.word	0x00000055555554
.word	0x00000000000000
.word	0x00000000000004
.word	0x00000033333332
.word	0x00000066666665
.word	0x0000000000b503
.word	0x00000055555556
.word	0xffffffffaaaaaaab
.word	0x00000000000006
.word	0x00000033333334
.word	0x00000066666667
.word	0xffffffffffff4afd
.word	0x0000000000b505

.align 4
rd_data_vv:
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffde
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffdfe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffdffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffdfffe
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xffdffffe
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xfdfffffe
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xdffffffe
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00002000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00020000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00200000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x02000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x20000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b507
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000007
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaab5fad
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x33333337
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000006
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x88888888
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x88888887
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5554a052
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555554
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaa9f5a6
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xaaaaaaaa
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xaaaaaaaa
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xaaaaaab0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab5faf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000000a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b509
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000009
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x5555555b
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x6666666c
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x88888888
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x99999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x88888887
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99999998
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333339
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3333e838
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x6666666b
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x66671b6a
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x6666666a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xbbbbbbbc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcccccccd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5554a051
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x6665b162
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5554a050
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x6665b161
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xffff4b02
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000001
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0000b509
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00016a08
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b508
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55560a5a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66671b6b
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555557
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x66666668
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555556
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66666667
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b507
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555559
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55560a58
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555558
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xaaaaaaaa
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xbbbbbbbb
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555554
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x66666665
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000006
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000b505
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000009
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000b508
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000008
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5555555a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x6666666b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x88888887
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x99999998
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x88888886
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x99999997
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x33333338
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x3333e837
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x6666666a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66671b69
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x66666669
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbb
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xcccccccc
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55560a58
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x66671b69
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55560a57
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66671b68
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b509
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00016a08
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5555555b
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55560a5a
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x5555555a
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xaaaaaaac
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11111111
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x11111110
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaaaaab1
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xaaab5fb0
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000000b
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0000b50a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5555555c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x6666666d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x88888889
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x9999999a
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x88888888
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x99999999
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x3333333a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3333e839
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x6666666c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x66671b6b
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x6666666b
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xbbbbbbbd
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xccccccce
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x5554a052
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x6665b163
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5554a051
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x6665b162
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff4b03
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000b50a
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00016a09
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000b509
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000020
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000200
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00002000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00020000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00200000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x02000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x20000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555557
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x88888887
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5554a052
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555554
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaa9f5a6
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xaaaaaaaa
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xaaaaaaaa
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x99999999
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x88888887
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x99999998
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333339
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3333e838
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x6666666b
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x66671b6a
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x6666666a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0000b509
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00016a08
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b508
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55560a5a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66671b6b
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555557
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x66666668
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555556
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555554
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x66666665
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000006
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000b505
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000009
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000b508
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x3333e837
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x6666666a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66671b69
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x66666669
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbbbbbbbb
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xcccccccc
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55560a58
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x66671b69
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xbbbbbbbd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x11111111
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffffff
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x11111110
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaaaaab1
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xaaab5fb0
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000000b
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x3333333a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3333e839
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x6666666c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x66671b6b
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x6666666b
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xbbbbbbbd
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xccccccce
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x5554a052
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b

rd_data_vx:
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffed
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffefd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffeffd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffefffd
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xffeffffd
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xfefffffd
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xeffffffd
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xffffffff
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000000fe
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000ffe
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000fffe
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x000ffffe
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00fffffe
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0ffffffe
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b502
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000b501
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x33333332
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000001
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x33333331
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333330
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaa9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff4afb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaa8
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xffff4afa
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xfffffffe
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfffffffe
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b503
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b502
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555554
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x66666665
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555553
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66666664
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555552
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666663
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000004
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000b503
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000003
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000b502
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000002
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555553
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x66666664
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555552
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x66666663
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000004
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000b503
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b502
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555554
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666665
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555553
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x66666664
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555552
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66666663
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b503
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000b502
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000002
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55555554
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x66666665
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555553
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666664
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555552
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x66666663
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000b503
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000003
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000b502
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555554
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666665
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555553
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666664
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555552
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x66666663
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000004
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0000b503
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b502
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555554
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x66666665
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55555553
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x66666664
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555552
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666663
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b503
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000b502
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000002
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555554
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66666665
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555553
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666664
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555552
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666663
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000004
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000b503
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000003
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0000b502
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555554
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x66666665
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555553
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x66666664
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55555552
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x66666663
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b503
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b502
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555554
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x66666665
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555553
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66666664
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555552
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666663
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000004
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000b503
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000003
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000b502
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000002
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b

rd_data_vi:
.word	0x0000000d
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffffff0e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffff00e
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffff000e
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfff0000e
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xff00000e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xf000000e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000001f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000010f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000100f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0001000f
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0010000f
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0100000f
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x1000000f
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000012
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333342
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b513
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000013
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000b512
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x33333343
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000012
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x33333342
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000011
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333341
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaba
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffff4b0c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaab9
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xffff4b0b
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000000f
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000000f
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000015
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b514
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000014
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b513
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000013
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555565
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x66666676
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555564
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66666675
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555563
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666674
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000015
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000b514
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000014
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000b513
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000013
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555565
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666676
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555564
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x66666675
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555563
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x66666674
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000015
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000b514
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000014
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b513
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000013
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555565
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666676
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555564
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x66666675
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555563
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66666674
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000015
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b514
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000014
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000b513
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000013
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55555565
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x66666676
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555564
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666675
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555563
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x66666674
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000015
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000b514
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000014
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000b513
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000013
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555565
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666676
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555564
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666675
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555563
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x66666674
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000015
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0000b514
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000014
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b513
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000013
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555565
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x66666676
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55555564
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x66666675
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555563
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66666674
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000015
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b514
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000014
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000b513
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000013
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555565
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66666676
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555564
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666675
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555563
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666674
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000015
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000b514
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000014
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0000b513
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000013
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555565
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x66666676
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555564
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x66666675
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55555563
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x66666674
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000015
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b514
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000014
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b513
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000013
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555565
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x66666676
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555564
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66666675
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555563
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666674
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000015
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000b514
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000014
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000b513
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000013
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
.word	0x5201314
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
    

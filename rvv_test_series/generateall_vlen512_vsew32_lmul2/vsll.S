#----------------------------------------------------------------------------- 
    # vsll.S
    #-----------------------------------------------------------------------------
    #
    # Test vsll instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vsll)
    
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
  TEST_VV_OP( 1,  vsll.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP( 2,  vsll.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP( 3,  vsll.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP( 4,  vsll.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP( 5,  vsll.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP( 6,  vsll.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP( 7,  vsll.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP( 8,  vsll.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP( 9,  vsll.vv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_VV_OP( 10,  vsll.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP( 11,  vsll.vv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_VV_OP( 12,  vsll.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP( 13,  vsll.vv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_VV_OP( 14,  vsll.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP( 15,  vsll.vv, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_VV_OP( 16,  vsll.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_VV_OP( 17,  vsll.vv, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_VV_OP_rd2( 18,  vsll.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_rd4( 19,  vsll.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_rd6( 20,  vsll.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_rd8( 21,  vsll.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_rd10( 22,  vsll.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_rd12( 23,  vsll.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_rd14( 24,  vsll.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_rd16( 25,  vsll.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VX_OP( 26,  vsll.vx, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_VX_OP( 27,  vsll.vx, rd_data_vx+128, rs2_data+128, 0xfffffffffffffffe)
  TEST_VX_OP( 28,  vsll.vx, rd_data_vx+256, rs2_data+256, 0xfffffffffffffffe)
  TEST_VX_OP( 29,  vsll.vx, rd_data_vx+384, rs2_data+384, 0xfffffffffffffffe)
  TEST_VX_OP( 30,  vsll.vx, rd_data_vx+512, rs2_data+512, 0xfffffffffffffffe)
  TEST_VX_OP( 31,  vsll.vx, rd_data_vx+640, rs2_data+640, 0xfffffffffffffffe)
  TEST_VX_OP( 32,  vsll.vx, rd_data_vx+768, rs2_data+768, 0xfffffffffffffffe)
  TEST_VX_OP( 33,  vsll.vx, rd_data_vx+896, rs2_data+896, 0xfffffffffffffffe)
  TEST_VX_OP( 34,  vsll.vx, rd_data_vx+1024, rs2_data+1024, 0xfffffffffffffffe)
  TEST_VX_OP( 35,  vsll.vx, rd_data_vx+1152, rs2_data+1152, 0xfffffffffffffffe)
  TEST_VX_OP( 36,  vsll.vx, rd_data_vx+1280, rs2_data+1280, 0xfffffffffffffffe)
  TEST_VX_OP( 37,  vsll.vx, rd_data_vx+1408, rs2_data+1408, 0xfffffffffffffffe)
  TEST_VX_OP( 38,  vsll.vx, rd_data_vx+1536, rs2_data+1536, 0xfffffffffffffffe)
  TEST_VX_OP( 39,  vsll.vx, rd_data_vx+1664, rs2_data+1664, 0xfffffffffffffffe)
  TEST_VX_OP( 40,  vsll.vx, rd_data_vx+1792, rs2_data+1792, 0xfffffffffffffffe)
  TEST_VX_OP( 41,  vsll.vx, rd_data_vx+1920, rs2_data+1920, 0xfffffffffffffffe)
  TEST_VX_OP( 42,  vsll.vx, rd_data_vx+2048, rs2_data+2048, 0xfffffffffffffffe)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VI_OP( 43,  vsll.vi, rd_data_vi+0, rs2_data+0, 15)
  TEST_VI_OP( 44,  vsll.vi, rd_data_vi+128, rs2_data+128, 15)
  TEST_VI_OP( 45,  vsll.vi, rd_data_vi+256, rs2_data+256, 15)
  TEST_VI_OP( 46,  vsll.vi, rd_data_vi+384, rs2_data+384, 15)
  TEST_VI_OP( 47,  vsll.vi, rd_data_vi+512, rs2_data+512, 15)
  TEST_VI_OP( 48,  vsll.vi, rd_data_vi+640, rs2_data+640, 15)
  TEST_VI_OP( 49,  vsll.vi, rd_data_vi+768, rs2_data+768, 15)
  TEST_VI_OP( 50,  vsll.vi, rd_data_vi+896, rs2_data+896, 15)
  TEST_VI_OP( 51,  vsll.vi, rd_data_vi+1024, rs2_data+1024, 15)
  TEST_VI_OP( 52,  vsll.vi, rd_data_vi+1152, rs2_data+1152, 15)
  TEST_VI_OP( 53,  vsll.vi, rd_data_vi+1280, rs2_data+1280, 15)
  TEST_VI_OP( 54,  vsll.vi, rd_data_vi+1408, rs2_data+1408, 15)
  TEST_VI_OP( 55,  vsll.vi, rd_data_vi+1536, rs2_data+1536, 15)
  TEST_VI_OP( 56,  vsll.vi, rd_data_vi+1664, rs2_data+1664, 15)
  TEST_VI_OP( 57,  vsll.vi, rd_data_vi+1792, rs2_data+1792, 15)
  TEST_VI_OP( 58,  vsll.vi, rd_data_vi+1920, rs2_data+1920, 15)
  TEST_VI_OP( 59,  vsll.vi, rd_data_vi+2048, rs2_data+2048, 15)
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
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff78000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x80000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x80000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x80000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00001000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00100000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x01000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x10000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000018
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999998
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0005a820
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000020
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x02d40c00
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x999999a0
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000018
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x66600000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00400000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66400000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55600000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5fa00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaa800
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfd2bf000
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
.word	0x00001800
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x02d41400
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000000a0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0016a080
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000080
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaaaaac0
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xcccccce0
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xaaa80000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33300000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaa00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33280000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00300000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xa8280000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000140
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x002d4100
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000100
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555580
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x999999c0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x50000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x60000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x40000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x50000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x60000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x50000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000050
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000b5040
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000040
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555560
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666670
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555554
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x99999998
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555550
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x99999994
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000018
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0002d414
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00500000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x50400000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00400000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55600000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x66700000
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
.word	0x00000050
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x000b5040
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000040
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555560
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x66666670
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55540000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x99980000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55500000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x99940000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00180000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xd4140000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000000a0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0016a080
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000080
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaac0
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xcccccce0
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xaaaaaaa8
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x33333330
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xaaaaaaa0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333328
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000030
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0005a828
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x01400000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x41000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x01000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55800000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x99c00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaa800
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaa000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33332800
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00003000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x05a82800
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000140
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x002d4100
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000100
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555580
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x999999c0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55500000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x66600000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55400000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x66500000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00600000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x50500000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000280
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x005a8200
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000200
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaaaab00
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x33333380
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xa0000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc0000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xa0000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x000000a0
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0016a080
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000080
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00100000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000100
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00001000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00010000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00100000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x01000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x10000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00400000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66400000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55600000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5fa00000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaa800
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfd2bf000
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
.word	0x33300000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaa00000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33280000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00300000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xa8280000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000140
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x002d4100
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000100
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000050
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000b5040
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000040
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555560
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x66666670
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555554
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x99999998
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555550
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
.word	0x00000050
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x000b5040
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xd4140000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000000a0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0016a080
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000080
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaac0
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xcccccce0
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xaaaaaaa8
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x33333330
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x99c00000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaaa800
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaa000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33332800
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00003000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x05a82800
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000140
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00600000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x50500000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000280
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x005a8200
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000200
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaaaab00
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x33333380
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xa0000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b

rd_data_vx:
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc0000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xc0000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xc0000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xc0000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xc0000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x40000000
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
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
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
.word	0xc0000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xc0000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xc0000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x40000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
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
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
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
.word	0x80000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xc0000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x40000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x40000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x40000000
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
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc0000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x40000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x80000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x40000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x40000000
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
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xc0000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x40000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x80000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x40000000
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
.word	0x80000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xc0000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x40000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x40000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x40000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x80000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc0000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x40000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x40000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x80000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x40000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
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
.word	0x80000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xc0000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x40000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x80000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x40000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x40000000
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
.word	0x80000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xc0000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x40000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x80000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x40000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x40000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x80000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc0000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x40000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x80000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x40000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x40000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
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
.word	0x80000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xc0000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x40000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x80000000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x40000000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x80000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x40000000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x40000000
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

rd_data_vi:
.word	0xffff0000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfff78000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xff7f8000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf7ff8000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x7fff8000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xffff8000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xffff8000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xffff8000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00008000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00080000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00800000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x08000000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80000000
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
.word	0x00018000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99998000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a820000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00020000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5a818000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x999a0000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00018000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x99998000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00010000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99990000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55558000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xa57e8000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55550000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xa57e0000
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
.word	0x00030000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5a828000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00028000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5a820000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00020000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaab0000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x33338000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xaaaa8000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33330000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33328000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00030000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5a828000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00028000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x5a820000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00020000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xaaab0000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33338000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa8000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33330000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa0000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x33328000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00030000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x5a828000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00028000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5a820000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00020000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaab0000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33338000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaaa8000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x33330000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xaaaa0000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33328000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00030000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a828000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00028000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5a820000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00020000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xaaab0000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x33338000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xaaaa8000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33330000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaa0000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33328000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00030000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x5a828000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00028000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x5a820000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00020000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33338000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa8000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33330000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaaa0000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x33328000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00030000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x5a828000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00028000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5a820000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00020000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaab0000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x33338000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xaaaa8000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x33330000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xaaaa0000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33328000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00030000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5a828000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00028000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x5a820000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00020000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xaaab0000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33338000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa8000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33330000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaa0000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33328000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00030000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x5a828000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00028000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x5a820000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00020000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaab0000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33338000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa8000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x33330000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xaaaa0000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x33328000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00030000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5a828000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00028000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x5a820000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00020000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaab0000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x33338000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xaaaa8000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33330000
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaaa0000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33328000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00030000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5a828000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00028000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x5a820000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00020000
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
    

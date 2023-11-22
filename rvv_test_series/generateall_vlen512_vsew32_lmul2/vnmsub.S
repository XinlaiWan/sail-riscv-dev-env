#----------------------------------------------------------------------------- 
    # vnmsub.S
    #-----------------------------------------------------------------------------
    #
    # Test vnmsub instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vnmsub)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_VV_OP_WITH_INIT 
#define TEST_VV_OP_WITH_INIT( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v8, (x7); \
            inst v24, v16, v8, v0.t; \
        )
#define TEST_VV_OP_WITH_INIT_12( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v2, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v2, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_14( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v4, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v4, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_16( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v6, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v6, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_110( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v10, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v10, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_112( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v12, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v12, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_114( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v14, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v14, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_118( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v18, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v18, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_120( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v20, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v20, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_122( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v22, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v22, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_126( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v26, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v26, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_128( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v28, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v28, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_130( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v30, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v24, v30, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_rd2( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v2, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v2, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v2, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd4( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v4, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v4, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v4, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd6( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v6, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v6, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v6, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd10( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v10, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v10, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v10, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd12( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v12, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v12, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v12, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd14( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v14, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v14, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd18( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v18, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v18, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v18, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd20( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v20, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v20, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v20, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd22( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v22, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v22, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v22, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd26( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v26, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v26, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v26, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd28( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v28, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v28, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v28, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd30( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v30, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v30, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v16, (x7); \
            inst v30, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd8( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v8, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v8, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v16, (x7); \
            la x7, val2; \
            vle32.v v24, (x7); \
            inst v8, v16, v24, v0.t; ; \
        )
#define TEST_VV_OP_WITH_INIT_rd16( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v16, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val1; \
            vle32.v v8, (x7); \
            la x7, val2; \
            vle32.v v24, (x7); \
            inst v16, v8, v24, v0.t; ; \
        )
#udnef TEST_VX_OP_RV 
#define TEST_VX_OP_RV( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle32.v v24, (x7); \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                la x7, val2; \
            vle32.v v8, (x7); \
            li x1, MASK_XLEN(val1); \
            inst v24, x1, v8, v0.t;  \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VV_OP_WITH_INIT( 1,  vnmsub.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_WITH_INIT( 2,  vnmsub.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT( 3,  vnmsub.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_WITH_INIT( 4,  vnmsub.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT( 5,  vnmsub.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_WITH_INIT( 6,  vnmsub.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT( 7,  vnmsub.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_WITH_INIT( 8,  vnmsub.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT( 9,  vnmsub.vv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_VV_OP_WITH_INIT( 10,  vnmsub.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_WITH_INIT( 11,  vnmsub.vv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_VV_OP_WITH_INIT( 12,  vnmsub.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_WITH_INIT( 13,  vnmsub.vv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_VV_OP_WITH_INIT( 14,  vnmsub.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_WITH_INIT( 15,  vnmsub.vv, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_VV_OP_WITH_INIT( 16,  vnmsub.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_VV_OP_WITH_INIT( 17,  vnmsub.vv, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_VV_OP_WITH_INIT_rd2( 18,  vnmsub.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT_rd4( 19,  vnmsub.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT_rd6( 20,  vnmsub.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT_rd8( 21,  vnmsub.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT_rd10( 22,  vnmsub.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_WITH_INIT_rd12( 23,  vnmsub.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_WITH_INIT_rd14( 24,  vnmsub.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_WITH_INIT_rd16( 25,  vnmsub.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VX_OP_RV( 26,  vnmsub.vx, rd_data_vx+0, 0xfffffffffffffffe, rs1_data+0)
  TEST_VX_OP_RV( 27,  vnmsub.vx, rd_data_vx+128, 0xfffffffffffffffe, rs1_data+128)
  TEST_VX_OP_RV( 28,  vnmsub.vx, rd_data_vx+256, 0xfffffffffffffffe, rs1_data+256)
  TEST_VX_OP_RV( 29,  vnmsub.vx, rd_data_vx+384, 0xfffffffffffffffe, rs1_data+384)
  TEST_VX_OP_RV( 30,  vnmsub.vx, rd_data_vx+512, 0xfffffffffffffffe, rs1_data+512)
  TEST_VX_OP_RV( 31,  vnmsub.vx, rd_data_vx+640, 0xfffffffffffffffe, rs1_data+640)
  TEST_VX_OP_RV( 32,  vnmsub.vx, rd_data_vx+768, 0xfffffffffffffffe, rs1_data+768)
  TEST_VX_OP_RV( 33,  vnmsub.vx, rd_data_vx+896, 0xfffffffffffffffe, rs1_data+896)
  TEST_VX_OP_RV( 34,  vnmsub.vx, rd_data_vx+1024, 0xfffffffffffffffe, rs1_data+1024)
  TEST_VX_OP_RV( 35,  vnmsub.vx, rd_data_vx+1152, 0xfffffffffffffffe, rs1_data+1152)
  TEST_VX_OP_RV( 36,  vnmsub.vx, rd_data_vx+1280, 0xfffffffffffffffe, rs1_data+1280)
  TEST_VX_OP_RV( 37,  vnmsub.vx, rd_data_vx+1408, 0xfffffffffffffffe, rs1_data+1408)
  TEST_VX_OP_RV( 38,  vnmsub.vx, rd_data_vx+1536, 0xfffffffffffffffe, rs1_data+1536)
  TEST_VX_OP_RV( 39,  vnmsub.vx, rd_data_vx+1664, 0xfffffffffffffffe, rs1_data+1664)
  TEST_VX_OP_RV( 40,  vnmsub.vx, rd_data_vx+1792, 0xfffffffffffffffe, rs1_data+1792)
  TEST_VX_OP_RV( 41,  vnmsub.vx, rd_data_vx+1920, 0xfffffffffffffffe, rs1_data+1920)
  TEST_VX_OP_RV( 42,  vnmsub.vx, rd_data_vx+2048, 0xfffffffffffffffe, rs1_data+2048)
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
.word	0xcdb4c952
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x24123fbc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x46532144
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc1a6b535
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5c75dbf0
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x194ee840
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x737483a5
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xa7f38b61
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x99259b57
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xed1c0040
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8a22bc00
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc9acb000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x24100000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x7c000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x5b000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xf0000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcb70d205
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x36a2d99c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x68b6c1ef
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xd2b26b2b
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8497b1d7
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xbbc0dfcf
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x94a27511
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x40860acf
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x87a08c01
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9d266eeb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0fd8b63e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xeddeb2f7
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55ae92a0
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xca1c40ae
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
.word	0x418c4eae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa18589b9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xedb2adac
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xdc233d2d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfde89041
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xf1cb652f
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xea86e43b
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x108461a9
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x5c575b77
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf4c6332f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x570b68fa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xef3ed3ef
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0c14827e
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x7bdbdd21
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xcb7ff9ce
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x069838de
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x772a234a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc27dd99b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x457bea13
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x6aed7378
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x56071ae8
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x376dc357
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x29443518
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xd6b14812
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xfdbcbdb2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0809d410
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbe293ff0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf873c6e0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4c7d310d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x871a4d6d
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xb8fb67de
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x7544b9da
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x8ffe8cf0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x98ea8014
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9840e4a9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x9cb45b46
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaebc8090
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0019b450
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x765cfd90
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x93c334e6
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x779e218e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x6d45b332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x15f27c5c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf6418db2
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfcdcd85a
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x4b3f81bb
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xf7b96dc6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x6ea5887c
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x64966d5c
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9f368006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x82ec7b41
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb6f9aa44
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00358b2c
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x4f9c68de
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xbaa31eb4
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xa37deee6
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xc7c309e0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x107f2674
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcf1d2851
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x3918d18d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbb627e6f
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x73370e3e
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xef7ce0e5
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xd6621ff7
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xde793b3b
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7e74a832
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x1d3d8565
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x50d08cf5
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd2b809a1
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x35e3bf52
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x1b8346be
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x9ab2f86a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x179f18f0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5b0f6aaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfe0d032d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb9c486f3
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xf832de96
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2ad13925
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x414fba6d
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x083e471c
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xfb6a3b5e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbb470012
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7506c1d8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xdf9ac34c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x08b5272f
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xd552c34e
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xf123e2bc
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xa188298a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xca14d738
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2a0e1243
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5419140e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4289a38f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x644ef6a3
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x5831cb91
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x50ed4a9d
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xdd507973
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x29237341
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc1924af9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x23d780c4
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xbc0aebb9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd8e09a48
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x15762bc0
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x651a486d
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xa032877d
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x99259b57
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xed1c0040
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8a22bc00
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc9acb000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x24100000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x7c000000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x5b000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xf0000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x87a08c01
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9d266eeb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0fd8b63e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xeddeb2f7
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55ae92a0
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xca1c40ae
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
.word	0x5c575b77
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf4c6332f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x570b68fa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xef3ed3ef
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0c14827e
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x7bdbdd21
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xcb7ff9ce
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x069838de
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xfdbcbdb2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0809d410
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xbe293ff0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf873c6e0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4c7d310d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x871a4d6d
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xb8fb67de
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x7544b9da
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x779e218e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x6d45b332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x15f27c5c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf6418db2
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfcdcd85a
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x4b3f81bb
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xf7b96dc6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x6ea5887c
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xc7c309e0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x107f2674
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xcf1d2851
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x3918d18d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xbb627e6f
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x73370e3e
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xef7ce0e5
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xd6621ff7
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x179f18f0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x5b0f6aaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfe0d032d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xb9c486f3
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xf832de96
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2ad13925
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x414fba6d
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x083e471c
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xca14d738
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x2a0e1243
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5419140e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4289a38f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x644ef6a3
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x5831cb91
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x50ed4a9d
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xdd507973
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b

rd_data_vx:
.word	0xcdb4c952
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x225c7fe9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0ebb989
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x16a6ba6b
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x010ab7e1
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2a8dd081
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9be9074b
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x1fe716c3
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcdb4c955
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x225c800a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0ebbb8a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x16a6da6c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x010cb7e2
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2aadd082
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9de9074c
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x3fe716c4
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcdb4c957
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x225c7ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0ebba8d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x16a6ca6f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xabb6628c
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2a9dd085
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9ce9074f
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x853c6c19
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x230a1ea9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x77b1d54f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf6410fdf
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x6bfc1fc1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xabb6628c
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xd5487b2c
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x4793b1f6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xda91c16e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x785f73fe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcd072aa4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0ebba8f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x16a6ca71
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x010bb7e7
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2a9dd087
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9ce90751
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x631a49f7
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00e7fc87
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x558fb32d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd41eedbd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x49d9fd9f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x343eeb15
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x910436e8
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x034f6db2
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x964d7d2a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x341b2fba
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x88c2e660
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0eb0586
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x16a61568
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x010b02de
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2a9d1b7e
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9ce85248
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x2fe661c0
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcdb57e58
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x225d34fe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0ec6f8e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x16a77f70
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x010c6ce6
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2a9dd084
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9ce9074e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x2fe716c6
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcdb4c956
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x225c7ffc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0ebba8c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x6bfc1fc0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x56610d36
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x7ff325d6
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xf23e5ca0
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x853c6c18
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcdb4c954
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x225c7ffa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0ebba8a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x16a6ca6c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x010bb7e2
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2a9dd082
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9ce90750
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x2fe716c8
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcdb4c958
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x225c7ffe
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0ebba8e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x49d9fd9e
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x343eeb14
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x5dd103b4
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xd01c3a7e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x631a49f6
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00e7fc86
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x88c2e65f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x075220ef
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7d0d30d1
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x67721e47
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x910436e7
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9ce9bc4f
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x2fe7cbc7
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcdb57e57
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x225d34fd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0ec6f8d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x16a77f6f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x56610d38
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x7ff325d8
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xf23e5ca2
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x853c6c1a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x230a1eaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcd072aa5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x4b966535
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xc1517517
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xabb6628d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xd5487b2d
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x4793b1f7
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x2fe716ca
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcdb4c95a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x225c8000
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0ebba90
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x16a6ca72
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x343eeb16
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x5dd103b6
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xd01c3a80
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x631a49f8
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00e7fc88
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x558fb32e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x075220f1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7d0d30d3
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x67721e49
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x910436e9
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x034f6db3
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x2fe661c1
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcdb41451
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x225bcaf7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xa0eb0587
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x16a61569
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x010b02df
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2a9e8587
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9ce9bc51
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x2fe7cbc9
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b

rd_data_vi:

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
    

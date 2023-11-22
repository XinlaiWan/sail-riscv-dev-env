#----------------------------------------------------------------------------- 
    # vmacc.S
    #-----------------------------------------------------------------------------
    #
    # Test vmacc instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmacc)
    
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
  TEST_VV_OP_WITH_INIT( 1,  vmacc.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_WITH_INIT( 2,  vmacc.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT( 3,  vmacc.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_WITH_INIT( 4,  vmacc.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT( 5,  vmacc.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_WITH_INIT( 6,  vmacc.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT( 7,  vmacc.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_WITH_INIT( 8,  vmacc.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT( 9,  vmacc.vv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_VV_OP_WITH_INIT( 10,  vmacc.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_WITH_INIT( 11,  vmacc.vv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_VV_OP_WITH_INIT( 12,  vmacc.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_WITH_INIT( 13,  vmacc.vv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_VV_OP_WITH_INIT( 14,  vmacc.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_WITH_INIT( 15,  vmacc.vv, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_VV_OP_WITH_INIT( 16,  vmacc.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_VV_OP_WITH_INIT( 17,  vmacc.vv, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_VV_OP_WITH_INIT_rd2( 18,  vmacc.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT_rd4( 19,  vmacc.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT_rd6( 20,  vmacc.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT_rd8( 21,  vmacc.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT_rd10( 22,  vmacc.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_WITH_INIT_rd12( 23,  vmacc.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_WITH_INIT_rd14( 24,  vmacc.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_WITH_INIT_rd16( 25,  vmacc.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VX_OP_RV( 26,  vmacc.vx, rd_data_vx+0, 0xfffffffffffffffe, rs1_data+0)
  TEST_VX_OP_RV( 27,  vmacc.vx, rd_data_vx+128, 0xfffffffffffffffe, rs1_data+128)
  TEST_VX_OP_RV( 28,  vmacc.vx, rd_data_vx+256, 0xfffffffffffffffe, rs1_data+256)
  TEST_VX_OP_RV( 29,  vmacc.vx, rd_data_vx+384, 0xfffffffffffffffe, rs1_data+384)
  TEST_VX_OP_RV( 30,  vmacc.vx, rd_data_vx+512, 0xfffffffffffffffe, rs1_data+512)
  TEST_VX_OP_RV( 31,  vmacc.vx, rd_data_vx+640, 0xfffffffffffffffe, rs1_data+640)
  TEST_VX_OP_RV( 32,  vmacc.vx, rd_data_vx+768, 0xfffffffffffffffe, rs1_data+768)
  TEST_VX_OP_RV( 33,  vmacc.vx, rd_data_vx+896, 0xfffffffffffffffe, rs1_data+896)
  TEST_VX_OP_RV( 34,  vmacc.vx, rd_data_vx+1024, 0xfffffffffffffffe, rs1_data+1024)
  TEST_VX_OP_RV( 35,  vmacc.vx, rd_data_vx+1152, 0xfffffffffffffffe, rs1_data+1152)
  TEST_VX_OP_RV( 36,  vmacc.vx, rd_data_vx+1280, 0xfffffffffffffffe, rs1_data+1280)
  TEST_VX_OP_RV( 37,  vmacc.vx, rd_data_vx+1408, 0xfffffffffffffffe, rs1_data+1408)
  TEST_VX_OP_RV( 38,  vmacc.vx, rd_data_vx+1536, 0xfffffffffffffffe, rs1_data+1536)
  TEST_VX_OP_RV( 39,  vmacc.vx, rd_data_vx+1664, 0xfffffffffffffffe, rs1_data+1664)
  TEST_VX_OP_RV( 40,  vmacc.vx, rd_data_vx+1792, 0xfffffffffffffffe, rs1_data+1792)
  TEST_VX_OP_RV( 41,  vmacc.vx, rd_data_vx+1920, 0xfffffffffffffffe, rs1_data+1920)
  TEST_VX_OP_RV( 42,  vmacc.vx, rd_data_vx+2048, 0xfffffffffffffffe, rs1_data+2048)
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
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e411e
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd076df46
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8c538537
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8087dbf2
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x956ee842
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xd07483a7
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xb7f38b63
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e40fd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd076dd45
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8c536536
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8085dbf1
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee841
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483a6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b62
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64b3
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d996
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd077fc51
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b536542
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2b300def
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2ee881dd
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483af
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x86e27a51
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x11850f54
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d997
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x97924f0c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x35fe4c37
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x641414d5
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x3ffa0b99
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483a6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b62
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112dc74f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd5e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b56ee4a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8085dc05
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x3ff992ef
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483a9
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x86e27a51
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xebf91cfc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcce9fbb9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22616264
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xbe869868
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3b8eaf0
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee83f
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce743b3e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x318d24fa
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xab1ea8ee
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x81d21707
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x25cb6ef1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b53ad9e
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd5dc22a1
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954fe5ad
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce70458e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x17f42e4e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66ddedbe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912ce80d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd078b155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x35fe888e
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8086488d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x3ff992eb
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9b415072
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x429e360a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33a73174
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd077474f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x35fe0fda
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2b2f9541
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xeaa43d91
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x075811de
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x64c0582e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd45
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b536536
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8085dbf1
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee841
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483ba
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f65f72
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64ba
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x6a0f76e1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x24ecfed0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9f3e2ddd
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfbb54ea9
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xb9f9a260
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xcb26be8e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x9a0cbea4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd074dfd9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x24ecfeca
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x6f74cadf
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x9f8c58e4
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x23c99ca5
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x318cdc94
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xbc2ec8a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac6dc2c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd07a1b57
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0b520d45
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2b30869f
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x3ffa0b99
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x23c9d8fe
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x7b81c446
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0073fe44
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd84ab1c4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf297ff67
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xa7c52c52
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xf7fd5368
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee843
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce74bffd
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b80
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66dea2c2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4015
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd49
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf1b9cba0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xc4ca2035
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x80d406f9
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xdf8594b6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x504576e6
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x9a0d97e2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44620401
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd48
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b53d1d2
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1a1f758d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2ee881db
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xa57ec117
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x429e7263
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcd411378
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd9dc01
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x36dd4116
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b4f2724
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x008733e2
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x9552715a
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x4e73e0ba
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f65f76
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e40fd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd076dd45
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8c536536
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8085dbf1
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee841
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483a6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b62
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x11850f54
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d997
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x97924f0c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x35fe4c37
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x641414d5
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x3ffa0b99
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483a6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b62
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xebf91cfc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xcce9fbb9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22616264
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xbe869868
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3b8eaf0
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee83f
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce743b3e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x318d24fa
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66ddedbe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912ce80d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd078b155
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x35fe888e
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8086488d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x3ff992eb
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9b415072
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x429e360a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd45
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b536536
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8085dbf1
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee841
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483ba
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f65f72
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x9a0cbea4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd074dfd9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x24ecfeca
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x6f74cadf
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x9f8c58e4
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x23c99ca5
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x318cdc94
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0073fe44
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xd84ab1c4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xf297ff67
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xa7c52c52
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xf7fd5368
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee843
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce74bffd
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b80
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x9a0d97e2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44620401
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd48
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b53d1d2
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1a1f758d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2ee881db
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xa57ec117
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x429e7263
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b

rd_data_vx:
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e401f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075df47
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b538538
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8087dbf3
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x956ee843
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xd07483a8
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xb7f38b64
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64a8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3fdd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075db45
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b534536
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8083dbf1
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x952ee841
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xcc7483a6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x77f38b62
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64a4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd3f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b536530
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2b30869d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee83b
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483a0
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xed48e0b8
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xbc2fba00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x66839553
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x25cb329b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe0a8ba8c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2b30869d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x3ff992ed
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x791f2e52
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x429e360e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x11850f56
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd3b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b53652c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8085dbe7
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee837
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce74839c
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x318d24fc
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0073fe44
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d997
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x6a0f76df
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x24ecfed0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1a1f758b
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xc8821b75
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x01a7b6da
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xcb26be96
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x9a0d97de
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44617331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd077474d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b54cf3e
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x808745f9
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x95505249
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce75edae
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f4f56a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66d8faa2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112cd5f5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd074733d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b51fb2e
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x808471e9
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee83d
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483a2
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b5e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd41
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe0a8ba8e
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd5db3149
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xeaa43d99
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x23c9d8fe
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xed48e0ba
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ffd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd45
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b536536
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8085dbf1
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee841
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce74839e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b5a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64a2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd3d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x24ecfed2
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1a1f758d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2ee881dd
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x680e1d42
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x318d24fe
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0073fe46
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44617333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03a9107b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xbe86986c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3b90f27
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xc8821b77
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7319a0
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f2215c
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66d8faa4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112cd5f7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd074733f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b51fb30
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd5db3145
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xeaa43d95
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x23c9d8fa
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xed48e0b6
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xbc2fb9fe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7b2087ef
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x35fe0fe0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2b30869b
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x3ff992eb
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x791f2e50
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b56
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da649e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd39
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b53652a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1a1f7589
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2ee881d9
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x680e1d3e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x318d24fa
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0073fe42
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaac7d995
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x03a91077
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xbe869868
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb3b90f23
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xc8821b73
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x01a7b6d8
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f4f568
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66dbceb0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112faa03
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd077474b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b54cf3c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x808745f7
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954d7e37
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce73199c
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f22158
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
    

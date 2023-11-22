#----------------------------------------------------------------------------- 
    # vmadd.S
    #-----------------------------------------------------------------------------
    #
    # Test vmadd instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmadd)
    
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
  TEST_VV_OP_WITH_INIT( 1,  vmadd.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_WITH_INIT( 2,  vmadd.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT( 3,  vmadd.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_WITH_INIT( 4,  vmadd.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT( 5,  vmadd.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_WITH_INIT( 6,  vmadd.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT( 7,  vmadd.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_WITH_INIT( 8,  vmadd.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT( 9,  vmadd.vv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_VV_OP_WITH_INIT( 10,  vmadd.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_WITH_INIT( 11,  vmadd.vv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_VV_OP_WITH_INIT( 12,  vmadd.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_WITH_INIT( 13,  vmadd.vv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_VV_OP_WITH_INIT( 14,  vmadd.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_WITH_INIT( 15,  vmadd.vv, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_VV_OP_WITH_INIT( 16,  vmadd.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_VV_OP_WITH_INIT( 17,  vmadd.vv, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_VV_OP_WITH_INIT_rd2( 18,  vmadd.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT_rd4( 19,  vmadd.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT_rd6( 20,  vmadd.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT_rd8( 21,  vmadd.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT_rd10( 22,  vmadd.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_WITH_INIT_rd12( 23,  vmadd.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_WITH_INIT_rd14( 24,  vmadd.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_WITH_INIT_rd16( 25,  vmadd.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VX_OP_RV( 26,  vmadd.vx, rd_data_vx+0, 0xfffffffffffffffe, rs1_data+0)
  TEST_VX_OP_RV( 27,  vmadd.vx, rd_data_vx+128, 0xfffffffffffffffe, rs1_data+128)
  TEST_VX_OP_RV( 28,  vmadd.vx, rd_data_vx+256, 0xfffffffffffffffe, rs1_data+256)
  TEST_VX_OP_RV( 29,  vmadd.vx, rd_data_vx+384, 0xfffffffffffffffe, rs1_data+384)
  TEST_VX_OP_RV( 30,  vmadd.vx, rd_data_vx+512, 0xfffffffffffffffe, rs1_data+512)
  TEST_VX_OP_RV( 31,  vmadd.vx, rd_data_vx+640, 0xfffffffffffffffe, rs1_data+640)
  TEST_VX_OP_RV( 32,  vmadd.vx, rd_data_vx+768, 0xfffffffffffffffe, rs1_data+768)
  TEST_VX_OP_RV( 33,  vmadd.vx, rd_data_vx+896, 0xfffffffffffffffe, rs1_data+896)
  TEST_VX_OP_RV( 34,  vmadd.vx, rd_data_vx+1024, 0xfffffffffffffffe, rs1_data+1024)
  TEST_VX_OP_RV( 35,  vmadd.vx, rd_data_vx+1152, 0xfffffffffffffffe, rs1_data+1152)
  TEST_VX_OP_RV( 36,  vmadd.vx, rd_data_vx+1280, 0xfffffffffffffffe, rs1_data+1280)
  TEST_VX_OP_RV( 37,  vmadd.vx, rd_data_vx+1408, 0xfffffffffffffffe, rs1_data+1408)
  TEST_VX_OP_RV( 38,  vmadd.vx, rd_data_vx+1536, 0xfffffffffffffffe, rs1_data+1536)
  TEST_VX_OP_RV( 39,  vmadd.vx, rd_data_vx+1664, 0xfffffffffffffffe, rs1_data+1664)
  TEST_VX_OP_RV( 40,  vmadd.vx, rd_data_vx+1792, 0xfffffffffffffffe, rs1_data+1792)
  TEST_VX_OP_RV( 41,  vmadd.vx, rd_data_vx+1920, 0xfffffffffffffffe, rs1_data+1920)
  TEST_VX_OP_RV( 42,  vmadd.vx, rd_data_vx+2048, 0xfffffffffffffffe, rs1_data+2048)
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
.word	0x324b36aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdbedc022
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb9acdcba
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x3e592ac9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xa388240e
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xe69117be
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x8a8b7c59
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x380c749d
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x12e3ffe0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x75dd4600
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x36537000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xdbf20000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x84200000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xa7000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x30000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x348f2e01
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc95d266a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x97493e17
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x2d4d94db
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd0bda37d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x443f2037
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x6b5d8af5
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x6a249fdb
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x230a1ea9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0d843bbf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9ad1f46c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xbccbf7b3
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffa6c2b4
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x8b3914a6
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
.word	0x13c906a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xb3cfcb9b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x124d525e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x23dcc2dd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x02176fc9
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0e349adb
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x15791bcf
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55e204bd
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0a0f0aef
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x71a03337
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0f5afd6c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x77279277
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5a51e3e8
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x50f0efab
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x014cd2fe
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xc63493ee
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55a2a982
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0a4ef331
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xba82abe5
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x95112280
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xa9f77b10
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xc890d2a1
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xd6ba60e0
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x294d4de6
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0244ac56
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7f795f8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x41d82a18
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x078da328
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb38438fb
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x78e5b297
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x47049826
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x8abb462a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x70017314
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x67157ff0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x67bf1b5b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0df64f62
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfbee2a18
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaa90f658
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x344dad18
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x16e775c2
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x8861de72
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x92ba4cce
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xea0d83a4
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x09be724e
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x032327a6
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xb4c07e45
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x08469242
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x915a778c
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x9b6992ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x60c98002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7d1384c7
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaf6cbc20
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x6630db38
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x16c9fd86
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xabc347b0
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xc2e8777e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x9ea35c84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbc4da656
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfdafa479
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x93b3fb3d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x116a4e5b
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x5995be8c
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x10848921
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x299f4a0f
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x21882ecb
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x818cc1d4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xe2c3e4a1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaf30dd11
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd7f2a10b
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x74c6eb5a
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x8f2763ee
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0ff7b242
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x930b91bc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfa45eaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x57485229
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x9b90ce63
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5d2276c0
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2a841c31
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x14059ae9
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xf7c1b8f0
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0495c4ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x44b8fffa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x8af93e34
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x20653cc0
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5db13f39
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x9113a31a
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x754283ac
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xc4de3cde
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x9c518f30
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3c585425
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x78b3b8c0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8a43293f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x687dd62b
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x749b013d
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x7bdf8231
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x22ae1c87
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xd6db22b9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3e6c4b01
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xdc271536
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x43f3aa41
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x271dfbb2
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xea8b3e4a
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9ae7219d
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x5fcee28d
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64ab
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x12e3ffe0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x75dd4600
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x36537000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xdbf20000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x84200000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xa7000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x30000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x230a1ea9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0d843bbf
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9ad1f46c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xbccbf7b3
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xffa6c2b4
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x8b3914a6
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
.word	0x0a0f0aef
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x71a03337
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0f5afd6c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x77279277
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5a51e3e8
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x50f0efab
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x014cd2fe
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xc63493ee
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0244ac56
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xf7f795f8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x41d82a18
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x078da328
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xb38438fb
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x78e5b297
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x47049826
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x8abb462a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x8861de72
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x92ba4cce
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xea0d83a4
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x09be724e
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x032327a6
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xb4c07e45
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x08469242
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x915a778c
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x9ea35c84
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbc4da656
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfdafa479
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x93b3fb3d
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x116a4e5b
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x5995be8c
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x10848921
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x299f4a0f
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x930b91bc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfa45eaac
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x57485229
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x9b90ce63
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x5d2276c0
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2a841c31
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x14059ae9
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xf7c1b8f0
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x9c518f30
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3c585425
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x78b3b8c0
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8a43293f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x687dd62b
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x749b013d
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x7bdf8231
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x22ae1c87
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b

rd_data_vx:
.word	0x324b36aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdda37ff5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f144475
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe9592593
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfef3481d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xd5522f7d
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x6216f8b3
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xc018e93b
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x324b36ad
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdda38016
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f144676
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe9594594
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfef5481e
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xd5722f7e
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x6416f8b4
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xe018e93c
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x324b36af
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdda38009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f144579
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe9593597
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xa99ef2c8
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xd5622f81
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x6316f8b7
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x256e3e91
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x87a08c01
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x32f8d55b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xb4699acb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x3eae8ae9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xa99ef2c8
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x800cda28
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0dc1a35e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x7ac393e6
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xdcf5e156
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x884e2ab0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f14457b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe9593599
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfef44823
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xd5622f83
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x6316f8b9
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x034c1c6f
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x657e69df
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x10d6b339
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x924778a9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1c8c68c7
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x32277b51
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x3bc895e4
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xc97d5f1a
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x367f4fa2
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x98b19d12
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4409e66c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f139072
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe9588090
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfef3931a
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xd5617a7a
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x631643b0
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xd0183438
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x324bebb0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdda4350a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f14fa7a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe959ea98
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfef4fd22
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xd5622f80
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x6316f8b6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xd018e93e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x324b36ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdda38008
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f144578
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x3eae8ae8
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x54499d72
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2ab784d2
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xb86c4e08
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x256e3e90
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x324b36ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdda38006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f144576
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe9593594
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfef4481e
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xd5622f7e
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x6316f8b8
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xd018e940
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x324b36b0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdda3800a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f14457a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1c8c68c6
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x32277b50
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x089562b0
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x964a2be6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x034c1c6e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x657e69de
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4409e66b
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc57aabdb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4fbf9bf9
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x655aae83
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x3bc895e3
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x6317adb7
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xd0199e3f
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x324bebaf
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdda43509
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f14fa79
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe959ea97
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x54499d74
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2ab784d4
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xb86c4e0a
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x256e3e92
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x87a08c02
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x884e2ab1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x09bef021
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x9403e03f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xa99ef2c9
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x800cda29
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0dc1a35f
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xd018e942
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x324b36b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdda3800c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f14457c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe959359a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x32277b52
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x089562b2
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x964a2be8
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x034c1c70
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x657e69e0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x10d6b33a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc57aabdd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x4fbf9bfb
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x655aae85
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x3bc895e5
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xc97d5f1b
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xd0183439
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x324a81a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xdda2cb03
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x5f139073
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe9588091
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfef3931b
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xd562e483
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x6317adb9
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xd0199e41
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
    

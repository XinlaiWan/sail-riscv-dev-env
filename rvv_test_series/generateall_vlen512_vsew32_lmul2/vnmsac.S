#----------------------------------------------------------------------------- 
    # vnmsac.S
    #-----------------------------------------------------------------------------
    #
    # Test vnmsac instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vnmsac)
    
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
  TEST_VV_OP_WITH_INIT( 1,  vnmsac.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP_WITH_INIT( 2,  vnmsac.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT( 3,  vnmsac.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP_WITH_INIT( 4,  vnmsac.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT( 5,  vnmsac.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP_WITH_INIT( 6,  vnmsac.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT( 7,  vnmsac.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP_WITH_INIT( 8,  vnmsac.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT( 9,  vnmsac.vv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_VV_OP_WITH_INIT( 10,  vnmsac.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_WITH_INIT( 11,  vnmsac.vv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_VV_OP_WITH_INIT( 12,  vnmsac.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_WITH_INIT( 13,  vnmsac.vv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_VV_OP_WITH_INIT( 14,  vnmsac.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_WITH_INIT( 15,  vnmsac.vv, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_VV_OP_WITH_INIT( 16,  vnmsac.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_VV_OP_WITH_INIT( 17,  vnmsac.vv, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_VV_OP_WITH_INIT_rd2( 18,  vnmsac.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT_rd4( 19,  vnmsac.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT_rd6( 20,  vnmsac.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT_rd8( 21,  vnmsac.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT_rd10( 22,  vnmsac.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_WITH_INIT_rd12( 23,  vnmsac.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_WITH_INIT_rd14( 24,  vnmsac.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_WITH_INIT_rd16( 25,  vnmsac.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VX_OP_RV( 26,  vnmsac.vx, rd_data_vx+0, 0xfffffffffffffffe, rs1_data+0)
  TEST_VX_OP_RV( 27,  vnmsac.vx, rd_data_vx+128, 0xfffffffffffffffe, rs1_data+128)
  TEST_VX_OP_RV( 28,  vnmsac.vx, rd_data_vx+256, 0xfffffffffffffffe, rs1_data+256)
  TEST_VX_OP_RV( 29,  vnmsac.vx, rd_data_vx+384, 0xfffffffffffffffe, rs1_data+384)
  TEST_VX_OP_RV( 30,  vnmsac.vx, rd_data_vx+512, 0xfffffffffffffffe, rs1_data+512)
  TEST_VX_OP_RV( 31,  vnmsac.vx, rd_data_vx+640, 0xfffffffffffffffe, rs1_data+640)
  TEST_VX_OP_RV( 32,  vnmsac.vx, rd_data_vx+768, 0xfffffffffffffffe, rs1_data+768)
  TEST_VX_OP_RV( 33,  vnmsac.vx, rd_data_vx+896, 0xfffffffffffffffe, rs1_data+896)
  TEST_VX_OP_RV( 34,  vnmsac.vx, rd_data_vx+1024, 0xfffffffffffffffe, rs1_data+1024)
  TEST_VX_OP_RV( 35,  vnmsac.vx, rd_data_vx+1152, 0xfffffffffffffffe, rs1_data+1152)
  TEST_VX_OP_RV( 36,  vnmsac.vx, rd_data_vx+1280, 0xfffffffffffffffe, rs1_data+1280)
  TEST_VX_OP_RV( 37,  vnmsac.vx, rd_data_vx+1408, 0xfffffffffffffffe, rs1_data+1408)
  TEST_VX_OP_RV( 38,  vnmsac.vx, rd_data_vx+1536, 0xfffffffffffffffe, rs1_data+1536)
  TEST_VX_OP_RV( 39,  vnmsac.vx, rd_data_vx+1664, 0xfffffffffffffffe, rs1_data+1664)
  TEST_VX_OP_RV( 40,  vnmsac.vx, rd_data_vx+1792, 0xfffffffffffffffe, rs1_data+1792)
  TEST_VX_OP_RV( 41,  vnmsac.vx, rd_data_vx+1920, 0xfffffffffffffffe, rs1_data+1920)
  TEST_VX_OP_RV( 42,  vnmsac.vx, rd_data_vx+2048, 0xfffffffffffffffe, rs1_data+2048)
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
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3edc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd074db44
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8a534535
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8083dbf0
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x952ee840
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xcc7483a5
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x77f38b61
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3efd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd074dd45
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8a536536
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
.word	0x66da64a1
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a664
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd073be39
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b53652a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd5dba9f3
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfbb54ea5
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce74839d
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xa9049c73
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xbc2fba00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a663
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x09596b7e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe0a87e35
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9cf7a30d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xeaa3c4e9
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
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112eb8ab
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd2c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b4fdc22
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8085dbdd
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xeaa43d93
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483a3
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xa9049c73
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xe1bbac58
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55728441
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7e8a5826
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x58203204
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4d52ccf2
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee843
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce74cc0e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfe59f1ca
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x22962066
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xa08a68f3
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7b204b99
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b531cce
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2b2f9541
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954dead5
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce78c1be
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x17f2e876
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66d6db96
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912f97ed
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd0730935
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe0a841de
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80856f55
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xeaa43d97
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x01a7b6da
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xed48e0ba
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x9a0d97e0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3ff1
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd074733b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe0a8ba92
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd5dc22a1
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x3ff992f1
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9590f56e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xcb26be96
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
.word	0xce748392
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f0b752
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da649a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbd8eaa5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x36dc43a9
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf1b9cb9c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x61cd8a05
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x2ee881d9
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xe2ef64ec
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x64c05836
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33a80ab0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd076dab1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf1b9cba2
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9196ed03
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x8b11779e
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x791f6aa7
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfe5a3a30
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x118600ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7795a3ce
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd0719f33
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0b54bd27
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd5db3143
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xeaa3c4e9
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x791f2e4e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xb465527e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcd40cb10
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4a11ce36
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xae53bb23
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x6ee19e1a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x090e647a
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee83f
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce74474f
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b44
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66d62692
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3fe5
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd41
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x24ecfecc
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x3c4197ad
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xa9c9c989
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xbd637296
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xdfa19fde
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33a73172
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfa7bf9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd42
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b52f89a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xe6ec4255
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfbb54ea7
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xf76a4635
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xed48a461
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0073b5dc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x6682a3f9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x6a0e7974
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b57a348
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00848400
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954b5f28
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x4e752692
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f0b74e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64a9
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3efd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd074dd45
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8a536536
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
.word	0xbc2fba00
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a663
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x09596b7e
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe0a87e35
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9cf7a30d
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xeaa3c4e9
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
.word	0xe1bbac58
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55728441
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x7e8a5826
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x58203204
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4d52ccf2
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee843
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce74cc0e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfe59f1ca
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66d6db96
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x912f97ed
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd0730935
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xe0a841de
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x80856f55
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xeaa43d97
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x01a7b6da
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
.word	0xce748392
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f0b752
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33a80ab0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd076dab1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf1b9cba2
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9196ed03
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x8b11779e
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x791f6aa7
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfe5a3a30
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcd40cb10
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x4a11ce36
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xae53bb23
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x6ee19e1a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x090e647a
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee83f
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce74474f
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b44
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33a73172
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfa7bf9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd42
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b52f89a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xe6ec4255
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfbb54ea7
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xf76a4635
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xed48a461
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b

rd_data_vx:
.word	0x66da64a6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e3fdb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075db43
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b534534
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8083dbef
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x952ee83f
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xcc7483a4
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x77f38b60
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64ac
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e401d
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075df45
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b538536
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8087dbf1
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x956ee841
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xd07483a6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xb7f38b62
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64b0
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd4b
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b53653c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xd5db3145
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee847
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483ac
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x429e360c
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x11850f54
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
.word	0x66839551
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd4f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b536540
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x8085dbfb
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x954ee84b
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483b0
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfe59f1c8
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcd40cb10
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a663
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x36dc43ab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf1b9cb9c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xe6ec4257
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x621bb50d
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9b415072
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x64c0582e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33a73176
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0cc9
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
.word	0x954d7e39
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce73199e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f2215a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66dbceb2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112faa05
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
.word	0x954ee845
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce7483aa
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b66
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64ae
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4001
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd49
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x35fe0fde
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x2b308699
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x3ff992e9
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x791f2e4e
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
.word	0xce7483ae
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b6a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64b2
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4005
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd4d
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xf1b9cb9a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xe6ec4255
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfbb54ea5
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x34daea0a
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfe59f1c6
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcd40cb0e
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xddfb0cc7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9d42aa0f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x58203200
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4d52a8bb
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x621bb50b
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce75edac
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
.word	0xd5db3147
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xeaa43d97
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x23c9d8fc
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f38b6e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x66da64b6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x112e4009
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xd075dd51
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x8b536542
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xe6ec4259
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfbb54ea9
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x34daea0e
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfe59f1ca
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xcd40cb12
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7794a665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9d42aa13
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x58203204
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x4d52a8bf
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x621bb50f
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x9b415074
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
.word	0x808471eb
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x9550524b
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xce75edb0
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x97f4f56c
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
    

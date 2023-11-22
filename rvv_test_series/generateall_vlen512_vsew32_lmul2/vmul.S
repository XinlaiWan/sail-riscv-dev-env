#----------------------------------------------------------------------------- 
    # vmul.S
    #-----------------------------------------------------------------------------
    #
    # Test vmul instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmul)
    
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
  TEST_VV_OP( 1,  vmul.vv, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_VV_OP( 2,  vmul.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP( 3,  vmul.vv, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_VV_OP( 4,  vmul.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP( 5,  vmul.vv, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_VV_OP( 6,  vmul.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP( 7,  vmul.vv, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_VV_OP( 8,  vmul.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP( 9,  vmul.vv, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_VV_OP( 10,  vmul.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP( 11,  vmul.vv, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_VV_OP( 12,  vmul.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP( 13,  vmul.vv, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_VV_OP( 14,  vmul.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP( 15,  vmul.vv, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_VV_OP( 16,  vmul.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_VV_OP( 17,  vmul.vv, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_VV_OP_rd2( 18,  vmul.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_rd4( 19,  vmul.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_rd6( 20,  vmul.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_rd8( 21,  vmul.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_rd10( 22,  vmul.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_rd12( 23,  vmul.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_rd14( 24,  vmul.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_rd16( 25,  vmul.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VX_OP( 26,  vmul.vx, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_VX_OP( 27,  vmul.vx, rd_data_vx+128, rs2_data+128, 0xfffffffffffffffe)
  TEST_VX_OP( 28,  vmul.vx, rd_data_vx+256, rs2_data+256, 0xfffffffffffffffe)
  TEST_VX_OP( 29,  vmul.vx, rd_data_vx+384, rs2_data+384, 0xfffffffffffffffe)
  TEST_VX_OP( 30,  vmul.vx, rd_data_vx+512, rs2_data+512, 0xfffffffffffffffe)
  TEST_VX_OP( 31,  vmul.vx, rd_data_vx+640, rs2_data+640, 0xfffffffffffffffe)
  TEST_VX_OP( 32,  vmul.vx, rd_data_vx+768, rs2_data+768, 0xfffffffffffffffe)
  TEST_VX_OP( 33,  vmul.vx, rd_data_vx+896, rs2_data+896, 0xfffffffffffffffe)
  TEST_VX_OP( 34,  vmul.vx, rd_data_vx+1024, rs2_data+1024, 0xfffffffffffffffe)
  TEST_VX_OP( 35,  vmul.vx, rd_data_vx+1152, rs2_data+1152, 0xfffffffffffffffe)
  TEST_VX_OP( 36,  vmul.vx, rd_data_vx+1280, rs2_data+1280, 0xfffffffffffffffe)
  TEST_VX_OP( 37,  vmul.vx, rd_data_vx+1408, rs2_data+1408, 0xfffffffffffffffe)
  TEST_VX_OP( 38,  vmul.vx, rd_data_vx+1536, rs2_data+1536, 0xfffffffffffffffe)
  TEST_VX_OP( 39,  vmul.vx, rd_data_vx+1664, rs2_data+1664, 0xfffffffffffffffe)
  TEST_VX_OP( 40,  vmul.vx, rd_data_vx+1792, rs2_data+1792, 0xfffffffffffffffe)
  TEST_VX_OP( 41,  vmul.vx, rd_data_vx+1920, rs2_data+1920, 0xfffffffffffffffe)
  TEST_VX_OP( 42,  vmul.vx, rd_data_vx+2048, rs2_data+2048, 0xfffffffffffffffe)
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
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000121
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010201
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x01002001
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00020001
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00200001
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x02000001
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x20000001
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000100
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x01000000
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
.word	0x00000009
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99999999
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00021f0c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000000c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaa31fe
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x9999999c
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000009
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xeeeeeeef
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c7
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaae701
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xe38e38e4
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaab2358
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
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffff8752
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000019
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00038914
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000014
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaaaaaae
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000003
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xeeeeeeef
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x851eb852
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbbbbbbc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb851f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33330eff
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfffffffe
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xffffb798
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x99999998
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x44444444
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x70a3d70a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x555591ac
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00004868
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x555646b0
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000fd6c
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xfffbc1e8
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x8000a2ec
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00038914
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7ffea810
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0002d410
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaab2358
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006c9c
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaaaaaaa
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xcccccccc
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xaaaaaaa8
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xccccccca
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000000c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00016a0a
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaaaaa4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaa9b950
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555550
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x38e38e38
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xcccccccc
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
.word	0x00000014
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0002d410
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000010
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x9999999c
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x9999999a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x1eb851ec
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x66666668
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xeb851eba
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x3333332c
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x333259fa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff0294
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99999994
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xeeeeeeee
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0a3d70a3
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x555518ff
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x99995132
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x555463fc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x99989c2f
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00043e12
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x7ffea80f
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaae
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaab2358
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55555558
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xe38e38e4
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x9999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1c71c71c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x77777777
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000002
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00003c57
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000001e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00043e18
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000018
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x6666666a
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x44444444
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xeb851eb8
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x11111110
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xb851eb84
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33333338
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3333c404
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006c9c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9999999c
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x9999999a
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xd70a3d71
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xaaaae701
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x6666aece
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xaaab9c04
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x666763d1
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffbc1ee
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x800157f1
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00038919
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x7fff5d14
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0002d414
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000100
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00010000
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x01000000
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
.word	0xaaaaaaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xc71c71c7
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaaae701
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xe38e38e4
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaab2358
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
.word	0x851eb852
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xbbbbbbbc
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x51eb851f
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33330eff
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfffffffe
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xffffb798
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x99999998
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00038914
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x7ffea810
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0002d410
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xaaab2358
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006c9c
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xaaaaaaaa
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xcccccccc
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xaaaaaaa8
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
.word	0x00000014
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0002d410
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x333259fa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff9
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xffff0294
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x99999994
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xeeeeeeee
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0a3d70a3
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x555518ff
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x99995132
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x9999999a
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xc71c71c7
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x22222222
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x1c71c71c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x77777777
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000002
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00003c57
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000001e
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33333338
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x3333c404
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006c9c
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x9999999c
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x9999999a
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xd70a3d71
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xaaaae701
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b

rd_data_vx:
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000022
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000202
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00002002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00020002
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00200002
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x02000002
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x20000002
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xfffffffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xffffffe0
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffe00
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xffffe000
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffe0000
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xffe00000
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xfe000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xe0000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xfffffffa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999a
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffe95f8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffff8
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffe95fa
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x99999998
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xfffffffa
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x9999999a
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xfffffffc
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x9999999c
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xaaaaaaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00016a06
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xaaaaaaac
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00016a08
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
.word	0xfffffff4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffe95f6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffff6
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffe95f8
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffff8
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555554
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x33333332
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555556
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffff4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffe95f6
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfffffff6
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xfffe95f8
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfffffff8
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555554
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333332
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555556
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333334
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555558
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x33333336
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xfffffff4
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfffe95f6
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xfffffff6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffe95f8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffff8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555554
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333332
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555556
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x33333334
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555558
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33333336
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff4
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffe95f6
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffff6
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffe95f8
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfffffff8
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55555554
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x33333332
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555558
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333336
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffff4
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfffe95f6
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xfffffff6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfffe95f8
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xfffffff8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555554
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333332
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555556
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333334
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555558
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x33333336
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfffffff4
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xfffe95f6
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffe95f8
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffff8
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555554
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x33333332
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55555556
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x33333334
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x55555558
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x33333336
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffff4
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffe95f6
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffff6
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfffe95f8
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xfffffff8
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555554
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33333332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x55555558
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x33333336
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfffffff4
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xfffe95f6
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfffffff6
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xfffe95f8
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffffff8
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x55555554
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x33333332
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x55555556
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x33333334
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x55555558
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x33333336
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0xfffffff4
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0xfffe95f6
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0xfffffff6
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffe95f8
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffffff8
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x55555554
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x33333332
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x55555556
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x33333334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x55555558
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x33333336
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0xfffffff4
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0xfffe95f6
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0xfffffff6
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0xfffe95f8
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0xfffffff8
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b

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
    

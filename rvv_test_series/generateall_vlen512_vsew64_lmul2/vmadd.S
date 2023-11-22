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
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v16, (x7); \
            la x7, val2; \
            vle64.v v8, (x7); \
            inst v24, v16, v8, v0.t; \
        )
#define TEST_VV_OP_WITH_INIT_12( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v2, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v2, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_14( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v4, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v4, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_16( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v6, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v6, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_110( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v10, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v10, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_112( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v12, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v12, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_114( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v14, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v14, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_118( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v18, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v18, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_120( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v20, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v20, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_122( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v22, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v22, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_126( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v26, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v26, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_128( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v28, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v28, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_130( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v24, result,  \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v30, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v30, v16, v0.t;  \
        )
#define TEST_VV_OP_WITH_INIT_rd2( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v2, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v2, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v2, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd4( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v4, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v4, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v4, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd6( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v6, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v6, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v6, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd10( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v10, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v10, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v10, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd12( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v12, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v12, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v12, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd14( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v14, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v14, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd18( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v18, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v18, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v18, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd20( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v20, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v20, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v20, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd22( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v22, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v22, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v22, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd26( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v26, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v26, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v26, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd28( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v28, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v28, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v28, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd30( testnum, inst, result, val1, val2 )  \
        TEST_CASE_LOOP( testnum, v30, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v30, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v30, v8, v16, v0.t;  \
        ) 
#define TEST_VV_OP_WITH_INIT_rd8( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v8, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v16, (x7); \
            la x7, val2; \
            vle64.v v24, (x7); \
            inst v8, v16, v24, v0.t; ; \
        )
#define TEST_VV_OP_WITH_INIT_rd16( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v24, (x7); \
            inst v16, v8, v24, v0.t; ; \
        )
#udnef TEST_VX_OP_RV 
#define TEST_VX_OP_RV( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
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
  TEST_VV_OP_WITH_INIT( 18,  vmadd.vv, rd_data_vv+2176, rs2_data+2176, rs1_data+2176)
  TEST_VV_OP_WITH_INIT( 19,  vmadd.vv, rd_data_vv+2304, rs2_data+2304, rs1_data+2304)
  TEST_VV_OP_WITH_INIT( 20,  vmadd.vv, rd_data_vv+2432, rs2_data+2432, rs1_data+2432)
  TEST_VV_OP_WITH_INIT( 21,  vmadd.vv, rd_data_vv+2560, rs2_data+2560, rs1_data+2560)
  TEST_VV_OP_WITH_INIT( 22,  vmadd.vv, rd_data_vv+2688, rs2_data+2688, rs1_data+2688)
  TEST_VV_OP_WITH_INIT( 23,  vmadd.vv, rd_data_vv+2816, rs2_data+2816, rs1_data+2816)
  TEST_VV_OP_WITH_INIT( 24,  vmadd.vv, rd_data_vv+2944, rs2_data+2944, rs1_data+2944)
  TEST_VV_OP_WITH_INIT( 25,  vmadd.vv, rd_data_vv+3072, rs2_data+3072, rs1_data+3072)
  TEST_VV_OP_WITH_INIT( 26,  vmadd.vv, rd_data_vv+3200, rs2_data+3200, rs1_data+3200)
  TEST_VV_OP_WITH_INIT( 27,  vmadd.vv, rd_data_vv+3328, rs2_data+3328, rs1_data+3328)
  TEST_VV_OP_WITH_INIT( 28,  vmadd.vv, rd_data_vv+3456, rs2_data+3456, rs1_data+3456)
  TEST_VV_OP_WITH_INIT( 29,  vmadd.vv, rd_data_vv+3584, rs2_data+3584, rs1_data+3584)
  TEST_VV_OP_WITH_INIT( 30,  vmadd.vv, rd_data_vv+3712, rs2_data+3712, rs1_data+3712)
  TEST_VV_OP_WITH_INIT( 31,  vmadd.vv, rd_data_vv+3840, rs2_data+3840, rs1_data+3840)
  TEST_VV_OP_WITH_INIT( 32,  vmadd.vv, rd_data_vv+3968, rs2_data+3968, rs1_data+3968)
  TEST_VV_OP_WITH_INIT( 33,  vmadd.vv, rd_data_vv+4096, rs2_data+4096, rs1_data+4096)
  TEST_VV_OP_WITH_INIT( 34,  vmadd.vv, rd_data_vv+4224, rs2_data+4224, rs1_data+4224)
  TEST_VV_OP_WITH_INIT( 35,  vmadd.vv, rd_data_vv+4352, rs2_data+4352, rs1_data+4352)
  TEST_VV_OP_WITH_INIT( 36,  vmadd.vv, rd_data_vv+4480, rs2_data+4480, rs1_data+4480)
  TEST_VV_OP_WITH_INIT( 37,  vmadd.vv, rd_data_vv+4608, rs2_data+4608, rs1_data+4608)
  TEST_VV_OP_WITH_INIT( 38,  vmadd.vv, rd_data_vv+4736, rs2_data+4736, rs1_data+4736)
  TEST_VV_OP_WITH_INIT_rd2( 39,  vmadd.vv, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_VV_OP_WITH_INIT_rd4( 40,  vmadd.vv, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_VV_OP_WITH_INIT_rd6( 41,  vmadd.vv, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_VV_OP_WITH_INIT_rd8( 42,  vmadd.vv, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_VV_OP_WITH_INIT_rd10( 43,  vmadd.vv, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_VV_OP_WITH_INIT_rd12( 44,  vmadd.vv, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_VV_OP_WITH_INIT_rd14( 45,  vmadd.vv, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_VV_OP_WITH_INIT_rd16( 46,  vmadd.vv, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_VV_OP_WITH_INIT_rd18( 47,  vmadd.vv, rd_data_vv+2176, rs2_data+2176, rs1_data+2176)
  TEST_VV_OP_WITH_INIT_rd20( 48,  vmadd.vv, rd_data_vv+2432, rs2_data+2432, rs1_data+2432)
  TEST_VV_OP_WITH_INIT_rd22( 49,  vmadd.vv, rd_data_vv+2688, rs2_data+2688, rs1_data+2688)
  TEST_VV_OP_WITH_INIT_rd26( 50,  vmadd.vv, rd_data_vv+3200, rs2_data+3200, rs1_data+3200)
  TEST_VV_OP_WITH_INIT_rd28( 51,  vmadd.vv, rd_data_vv+3456, rs2_data+3456, rs1_data+3456)
  TEST_VV_OP_WITH_INIT_rd30( 52,  vmadd.vv, rd_data_vv+3712, rs2_data+3712, rs1_data+3712)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VX_OP_RV( 53,  vmadd.vx, rd_data_vx+0, 0xfffffffffffffffe, rs1_data+0)
  TEST_VX_OP_RV( 54,  vmadd.vx, rd_data_vx+128, 0xfffffffffffffffe, rs1_data+128)
  TEST_VX_OP_RV( 55,  vmadd.vx, rd_data_vx+256, 0xfffffffffffffffe, rs1_data+256)
  TEST_VX_OP_RV( 56,  vmadd.vx, rd_data_vx+384, 0xfffffffffffffffe, rs1_data+384)
  TEST_VX_OP_RV( 57,  vmadd.vx, rd_data_vx+512, 0xfffffffffffffffe, rs1_data+512)
  TEST_VX_OP_RV( 58,  vmadd.vx, rd_data_vx+640, 0xfffffffffffffffe, rs1_data+640)
  TEST_VX_OP_RV( 59,  vmadd.vx, rd_data_vx+768, 0xfffffffffffffffe, rs1_data+768)
  TEST_VX_OP_RV( 60,  vmadd.vx, rd_data_vx+896, 0xfffffffffffffffe, rs1_data+896)
  TEST_VX_OP_RV( 61,  vmadd.vx, rd_data_vx+1024, 0xfffffffffffffffe, rs1_data+1024)
  TEST_VX_OP_RV( 62,  vmadd.vx, rd_data_vx+1152, 0xfffffffffffffffe, rs1_data+1152)
  TEST_VX_OP_RV( 63,  vmadd.vx, rd_data_vx+1280, 0xfffffffffffffffe, rs1_data+1280)
  TEST_VX_OP_RV( 64,  vmadd.vx, rd_data_vx+1408, 0xfffffffffffffffe, rs1_data+1408)
  TEST_VX_OP_RV( 65,  vmadd.vx, rd_data_vx+1536, 0xfffffffffffffffe, rs1_data+1536)
  TEST_VX_OP_RV( 66,  vmadd.vx, rd_data_vx+1664, 0xfffffffffffffffe, rs1_data+1664)
  TEST_VX_OP_RV( 67,  vmadd.vx, rd_data_vx+1792, 0xfffffffffffffffe, rs1_data+1792)
  TEST_VX_OP_RV( 68,  vmadd.vx, rd_data_vx+1920, 0xfffffffffffffffe, rs1_data+1920)
  TEST_VX_OP_RV( 69,  vmadd.vx, rd_data_vx+2048, 0xfffffffffffffffe, rs1_data+2048)
  TEST_VX_OP_RV( 70,  vmadd.vx, rd_data_vx+2176, 0xfffffffffffffffe, rs1_data+2176)
  TEST_VX_OP_RV( 71,  vmadd.vx, rd_data_vx+2304, 0xfffffffffffffffe, rs1_data+2304)
  TEST_VX_OP_RV( 72,  vmadd.vx, rd_data_vx+2432, 0xfffffffffffffffe, rs1_data+2432)
  TEST_VX_OP_RV( 73,  vmadd.vx, rd_data_vx+2560, 0xfffffffffffffffe, rs1_data+2560)
  TEST_VX_OP_RV( 74,  vmadd.vx, rd_data_vx+2688, 0xfffffffffffffffe, rs1_data+2688)
  TEST_VX_OP_RV( 75,  vmadd.vx, rd_data_vx+2816, 0xfffffffffffffffe, rs1_data+2816)
  TEST_VX_OP_RV( 76,  vmadd.vx, rd_data_vx+2944, 0xfffffffffffffffe, rs1_data+2944)
  TEST_VX_OP_RV( 77,  vmadd.vx, rd_data_vx+3072, 0xfffffffffffffffe, rs1_data+3072)
  TEST_VX_OP_RV( 78,  vmadd.vx, rd_data_vx+3200, 0xfffffffffffffffe, rs1_data+3200)
  TEST_VX_OP_RV( 79,  vmadd.vx, rd_data_vx+3328, 0xfffffffffffffffe, rs1_data+3328)
  TEST_VX_OP_RV( 80,  vmadd.vx, rd_data_vx+3456, 0xfffffffffffffffe, rs1_data+3456)
  TEST_VX_OP_RV( 81,  vmadd.vx, rd_data_vx+3584, 0xfffffffffffffffe, rs1_data+3584)
  TEST_VX_OP_RV( 82,  vmadd.vx, rd_data_vx+3712, 0xfffffffffffffffe, rs1_data+3712)
  TEST_VX_OP_RV( 83,  vmadd.vx, rd_data_vx+3840, 0xfffffffffffffffe, rs1_data+3840)
  TEST_VX_OP_RV( 84,  vmadd.vx, rd_data_vx+3968, 0xfffffffffffffffe, rs1_data+3968)
  TEST_VX_OP_RV( 85,  vmadd.vx, rd_data_vx+4096, 0xfffffffffffffffe, rs1_data+4096)
  TEST_VX_OP_RV( 86,  vmadd.vx, rd_data_vx+4224, 0xfffffffffffffffe, rs1_data+4224)
  TEST_VX_OP_RV( 87,  vmadd.vx, rd_data_vx+4352, 0xfffffffffffffffe, rs1_data+4352)
  TEST_VX_OP_RV( 88,  vmadd.vx, rd_data_vx+4480, 0xfffffffffffffffe, rs1_data+4480)
  TEST_VX_OP_RV( 89,  vmadd.vx, rd_data_vx+4608, 0xfffffffffffffffe, rs1_data+4608)
  TEST_VX_OP_RV( 90,  vmadd.vx, rd_data_vx+4736, 0xfffffffffffffffe, rs1_data+4736)
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    
.align 8
rs1_data:
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
.dword	0xffffffff7fffffff
.dword	0xfffffffeffffffff
.dword	0xfffffffdffffffff
.dword	0xfffffffbffffffff
.dword	0xfffffff7ffffffff
.dword	0xffffffefffffffff
.dword	0xffffffdfffffffff
.dword	0xffffffbfffffffff
.dword	0xffffff7fffffffff
.dword	0xfffffeffffffffff
.dword	0xfffffdffffffffff
.dword	0xfffffbffffffffff
.dword	0xfffff7ffffffffff
.dword	0xffffefffffffffff
.dword	0xffffdfffffffffff
.dword	0xffffbfffffffffff
.dword	0xffff7fffffffffff
.dword	0xfffeffffffffffff
.dword	0xfffdffffffffffff
.dword	0xfffbffffffffffff
.dword	0xfff7ffffffffffff
.dword	0xffefffffffffffff
.dword	0xffdfffffffffffff
.dword	0xffbfffffffffffff
.dword	0xff7fffffffffffff
.dword	0xfeffffffffffffff
.dword	0xfdffffffffffffff
.dword	0xfbffffffffffffff
.dword	0xf7ffffffffffffff
.dword	0xefffffffffffffff
.dword	0xdfffffffffffffff
.dword	0xbfffffffffffffff
.dword	0x7fffffffffffffff
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
.dword	0x00000080000000
.dword	0x00000100000000
.dword	0x00000200000000
.dword	0x00000400000000
.dword	0x00000800000000
.dword	0x00001000000000
.dword	0x00002000000000
.dword	0x00004000000000
.dword	0x00008000000000
.dword	0x00010000000000
.dword	0x00020000000000
.dword	0x00040000000000
.dword	0x00080000000000
.dword	0x00100000000000
.dword	0x00200000000000
.dword	0x00400000000000
.dword	0x00800000000000
.dword	0x01000000000000
.dword	0x02000000000000
.dword	0x04000000000000
.dword	0x08000000000000
.dword	0x10000000000000
.dword	0x20000000000000
.dword	0x40000000000000
.dword	0x80000000000000
.dword	0x100000000000000
.dword	0x200000000000000
.dword	0x400000000000000
.dword	0x800000000000000
.dword	0x1000000000000000
.dword	0x2000000000000000
.dword	0x4000000000000000
.dword	0x8000000000000000
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0x00000000000003
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000000
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334

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
.dword	0xffffffff7fffffff
.dword	0xfffffffeffffffff
.dword	0xfffffffdffffffff
.dword	0xfffffffbffffffff
.dword	0xfffffff7ffffffff
.dword	0xffffffefffffffff
.dword	0xffffffdfffffffff
.dword	0xffffffbfffffffff
.dword	0xffffff7fffffffff
.dword	0xfffffeffffffffff
.dword	0xfffffdffffffffff
.dword	0xfffffbffffffffff
.dword	0xfffff7ffffffffff
.dword	0xffffefffffffffff
.dword	0xffffdfffffffffff
.dword	0xffffbfffffffffff
.dword	0xffff7fffffffffff
.dword	0xfffeffffffffffff
.dword	0xfffdffffffffffff
.dword	0xfffbffffffffffff
.dword	0xfff7ffffffffffff
.dword	0xffefffffffffffff
.dword	0xffdfffffffffffff
.dword	0xffbfffffffffffff
.dword	0xff7fffffffffffff
.dword	0xfeffffffffffffff
.dword	0xfdffffffffffffff
.dword	0xfbffffffffffffff
.dword	0xf7ffffffffffffff
.dword	0xefffffffffffffff
.dword	0xdfffffffffffffff
.dword	0xbfffffffffffffff
.dword	0x7fffffffffffffff
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
.dword	0x00000080000000
.dword	0x00000100000000
.dword	0x00000200000000
.dword	0x00000400000000
.dword	0x00000800000000
.dword	0x00001000000000
.dword	0x00002000000000
.dword	0x00004000000000
.dword	0x00008000000000
.dword	0x00010000000000
.dword	0x00020000000000
.dword	0x00040000000000
.dword	0x00080000000000
.dword	0x00100000000000
.dword	0x00200000000000
.dword	0x00400000000000
.dword	0x00800000000000
.dword	0x01000000000000
.dword	0x02000000000000
.dword	0x04000000000000
.dword	0x08000000000000
.dword	0x10000000000000
.dword	0x20000000000000
.dword	0x40000000000000
.dword	0x80000000000000
.dword	0x100000000000000
.dword	0x200000000000000
.dword	0x400000000000000
.dword	0x800000000000000
.dword	0x1000000000000000
.dword	0x2000000000000000
.dword	0x4000000000000000
.dword	0x8000000000000000
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x5555555555555555
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x00000000000000
.dword	0x00000000000004
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334

.align 8
rd_data_vv:
.dword	0x12fbcdcb324b36aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x3d7ae5e4282c4e5a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x2ea63f9bf99e320e
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xe55f7940e9510c59
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf063800b347a9b55
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x183851735b2a22ba
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc8029d408d7a240e
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x9915adedc18b7c59
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xa2a3823a99259b55
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x83c784712f8a22ba
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x25a7311c7f7a240e
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xcdc28628318b7c59
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xa4d2e6e599259b55
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb6c558d12f8a22ba
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb983231c7f7a240e
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xa5fcf628318b7c59
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf682191a66da64ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x4daa72ed075dd460
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x7cdce38085dbf200
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x309d7ce7483a7000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x191a66da64ab0000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x72ed075dd4600000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xe38085dbf2000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x7ce7483a70000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x66da64ab00000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x075dd46000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x85dbf20000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x483a700000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x64ab000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xd460000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf200000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x7000000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xe3864b4f348f2e01
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x4f077829d64ed3c2
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xa7f89aea7f349406
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xa80c275f39d20e9b
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x5d09a609d387b1de
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc3e21f58a6c4b107
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfd7696aa819193d6
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2687ecf6f8d7a167
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x4259878a230a1ea9
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x2f8226505b2e4bcf
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc6d449a12ad74950
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x020df54ffd050ce9
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x0653ef43bb6e678e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x204b552e041316eb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x71b7414913c906a6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xa9e4a75621b81bae
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xa6705071829d4bba
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3d4a69dd26c4cc17
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xda0864699b6992ad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xa33c6f748af93e33
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x9917b7bbb38383fc
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xe5322feb43b70751
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x9d658f8f0a0f0aef
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xecba544a1d40b6d7
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x23513127e5aaff48
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaf456e4209ee4917
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xd29660c729c503bb
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaeabaa5078b3b8bf
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0e5f0150e59afa69
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x0e728dc5a03874fe
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x0abd21cd55a2a982
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x794ffde8e379eb29
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x8e810bb3757918d2
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xa2652f4291ffa4f1
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb75289316c828695
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x293449242722d706
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfaed2d544e1e3473
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x274d73b440345c85
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xd08a7d84b748ea85
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x8a5f557d5b9c86f2
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x51f3738eb71c62f7
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x9c02069093fd4af7
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x60b47576f2bb2f99
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x2e61c845ba8360eb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x449adad832fda808
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc7fbf2e0420f507a
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x73b0434170017314
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xbd1feb18e2c32fa0
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfc7577cdffba6ff6
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xe764868c5d9be792
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfe3669cee50cc132
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x28bff210972cca68
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x38533ded00593d4a
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xe1bd8e706ace711e
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xadd4a24c8861de72
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x9e0ef053ac9da77e
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x3a042ed0a9f83014
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb862256b7890147e
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xc70c969e691e5bfc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xff39fcab770d7104
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xa6705071829d4bb9
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3d4a69dd26c4cc16
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xda0864699b6992ac
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xa33c6f748af93e32
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x9917b7bbb38383fb
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xe5322feb43b70750
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x9d658f8f0a0f0aee
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xecba544a1d40b6d6
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x23513127e5aaff47
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaf456e4209ee4916
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xd29660c729c503ba
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaeabaa5078b3b8be
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0e5f0150e59afa68
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x0e728dc5a03874fd
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x0abd21cd55a2a981
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x794ffde8e379eb28
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x8e810bb4df82ff37
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xa2652f43fc098b56
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb7528932d68c6cfa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x29344925912cbd6b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfaed2d55b8281ad8
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x274d73b5aa3e42ea
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x25dfd2d957994ca8
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xdfb4aad1fbece915
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xa748c8e3576cc51a
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xf1575be5344dad1a
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb609cacb930b91bc
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xd90c72f0652e0b94
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xef458582dda852b1
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x72a69d8aecb9fb23
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x1e5aedec1aac1dbd
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x67ca95c38d6dda49
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xa7202278aa651a9f
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x920f313708469244
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xa8e114798fb76be4
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xd36a9cbb41d7751a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xe2fde897ab03e7fc
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x8c68391b15791bd0
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xe107d57fbb9511a6
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xd1422386dfd0dab2
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x6d376203dd2b6348
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xeb95589eabc347b2
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfa3fc9d19c518f30
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x326d2fdeaa40a438
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0cd6b6d7e903b21c
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xa3b0d0438d2b3279
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x406ecad001cff90f
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x09a2d5daf15fa495
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xff7e1e2219e9ea5e
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xb1fefcb75b7ee0ec
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x6a325c5b21d6e48a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb987211635089072
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf01dfdf3fd72d8e3
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x7c123b0e21b622b2
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x9f632d93418cdd56
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x484543eac752458d
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xa7f89aeb34398737
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xa80c275feed701cc
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xf063800b347a9b55
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x183851735b2a22ba
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xc8029d408d7a240e
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x9915adedc18b7c59
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xa4d2e6e599259b55
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xb6c558d12f8a22ba
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xb983231c7f7a240e
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xa5fcf628318b7c59
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x191a66da64ab0000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x72ed075dd4600000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xe38085dbf2000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x7ce7483a70000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x64ab000000000000
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xd460000000000000
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xf200000000000000
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x7000000000000000
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x5d09a609d387b1de
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc3e21f58a6c4b107
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfd7696aa819193d6
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2687ecf6f8d7a167
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x0653ef43bb6e678e
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x204b552e041316eb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xda0864699b6992ad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xa33c6f748af93e33
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x9917b7bbb38383fc
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xe5322feb43b70751
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xd29660c729c503bb
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xaeabaa5078b3b8bf
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x0e5f0150e59afa69
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x0e728dc5a03874fe
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xb75289316c828695
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x293449242722d706
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xfaed2d544e1e3473
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x274d73b440345c85
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x60b47576f2bb2f99
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x2e61c845ba8360eb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x449adad832fda808
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xc7fbf2e0420f507a
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xfe3669cee50cc132
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x28bff210972cca68
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x38533ded00593d4a
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xe1bd8e706ace711e
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x9d658f8f0a0f0aee
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xecba544a1d40b6d6
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x23513127e5aaff47
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xaf456e4209ee4916
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x0abd21cd55a2a981
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x794ffde8e379eb28
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x8e810bb4df82ff37
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xa2652f43fc098b56
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x25dfd2d957994ca8
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xdfb4aad1fbece915
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xa748c8e3576cc51a
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xf1575be5344dad1a
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62

rd_data_vx:
.dword	0x12fbcdcb324b36aa
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a25f144565
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fef4471d
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec506316e8b3
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcb324a36ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a25f044575
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fdf4481d
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec505316f8b3
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdca324b36ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1925f144575
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064538fef4481d
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9dc506316f8b3
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12facdcb324b36ab
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x163ab1a25f144575
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x56064638fef4481d
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x1bf9ec506316f8b3
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcb324b36ad
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a25f144586
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fef4491e
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec50631708b4
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcb324c36ac
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a25f244576
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fff4481e
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec507316f8b4
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcc324b36ac
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1b25f144576
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064738fef4481e
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9fc506316f8b4
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fccdcb324b36ac
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x165ab1a25f144576
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x58064638fef4481e
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x3bf9ec506316f8b4
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcb324b36af
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a25f144579
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fef44821
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec506316f8b7
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbda67875dcf5e156
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a25f144579
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fef44821
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x814f41a5b86c4e09
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x6851232087a08c01
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x6ba006f7b4699acb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xac5b9b8e54499d73
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x814f41a5b86c4e09
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbda67875dcf5e156
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc0f55c4d09bef020
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x01b0f0e3a99ef2c8
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xd6a496fb0dc1a35e
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbda67875dcf5e156
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc0f55c4d09bef020
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fef44823
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec506316f8b9
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcb324b36b1
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a25f14457b
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fef44823
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x5f2d1f83964a2be7
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x462f00fe657e69df
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x497de4d5924778a9
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x8a39796c32277b51
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x5f2d1f83964a2be7
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x462f00fe657e69df
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x7cb11808c57aabdc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbd6cac9f655aae84
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x926052b6c97d5f1a
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x7962343198b19d12
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x7cb11808c57aabdc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x5706463849ef54eb
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec4fae120581
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdca7d464379
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a1aa0f5243
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x5706463849ef54eb
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec4fae120581
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcbe75029df
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a3141938a9
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064639b3f93b51
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec51181bebe7
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcbe75029df
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a25f144578
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fef44820
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec506316f8b6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcb324b36ae
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a25f144578
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fef44820
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x814f41a5b86c4e08
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x6851232087a08c00
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x6ba006f7b4699aca
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xac5b9b8e54499d72
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x814f41a5b86c4e08
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcb324b36ac
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a25f144576
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fef4481e
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec506316f8b4
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcb324b36ac
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a25f144576
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fef44822
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec506316f8b8
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcb324b36b0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a25f14457a
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fef44822
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x5f2d1f83964a2be6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x462f00fe657e69de
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x497de4d5924778a8
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x8a39796c32277b50
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x5f2d1f83964a2be6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x462f00fe657e69de
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x7cb11808c57aabdb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbd6cac9f655aae83
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x926052b6c97d5f19
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x7962343198b19d11
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x7cb11808c57aabdb
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064639b3f93b50
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec51181bebe6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcbe75029de
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a3141938a8
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064639b3f93b50
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec51181bebe6
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x6851232087a08c02
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x6ba006f7b4699acc
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xac5b9b8e54499d74
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x814f41a5b86c4e0a
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x6851232087a08c02
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc0f55c4d09bef021
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x01b0f0e3a99ef2c9
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0xd6a496fb0dc1a35f
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0xbda67875dcf5e157
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0xc0f55c4d09bef021
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x01b0f0e3a99ef2c9
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec506316f8ba
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdcb324b36b2
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a25f14457c
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064638fef44824
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec506316f8ba
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x462f00fe657e69e0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x497de4d5924778aa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x8a39796c32277b52
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x5f2d1f83964a2be8
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x462f00fe657e69e0
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x497de4d5924778aa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbd6cac9f655aae85
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x926052b6c97d5f1b
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x7962343198b19d13
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x7cb11808c57aabdd
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0xbd6cac9f655aae85
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec4fae120582
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdca7d46437a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a1aa0f5244
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x5706463849ef54ec
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec4fae120582
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62
.dword	0x12fbcdca7d46437a
.dword	0x67f9ab29fd2ce83f
.dword	0xc4d9b1e2112e3ffd
.dword	0xb49ae54e9ed4e137
.dword	0x164ab1a3141938aa
.dword	0x167d97b548324db4
.dword	0xe85755eb8b536536
.dword	0x4c811ecf1cd86c0a
.dword	0x57064639b3f93b52
.dword	0xb72d2ec465d27882
.dword	0xb36fd636954ee841
.dword	0xaea05c04bc4988da
.dword	0x2bf9ec51181bebe8
.dword	0x1cd29ac462498466
.dword	0x690bcf8597f38b62
.dword	0x9bd83b8b97f38b62

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
    

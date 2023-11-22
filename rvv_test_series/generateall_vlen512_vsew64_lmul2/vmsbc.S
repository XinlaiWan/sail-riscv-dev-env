#----------------------------------------------------------------------------- 
    # vmsbc.S
    #-----------------------------------------------------------------------------
    #
    # Test vmsbc instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmsbc)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_MADC_VV_OP 
#define TEST_MADC_VV_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v8, v16; \
        )
#undef TEST_MADC_VX_OP 
#define TEST_MADC_VX_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            li x1, MASK_XLEN(val2); \
            inst v24, v8, x1; \
        )
#undef TEST_MADC_VI_OP 
#define TEST_MADC_VI_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            inst v24, v8, SEXT_IMM(val2); \
        )
#define TEST_MADC_VVM_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v8, v16, v0; \
        )
#define TEST_MADC_VXM_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            li x1, MASK_VSEW(val2); \
            inst v24, v8, x1, v0; \
        )
#define TEST_MADC_VIM_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            inst v24, v8, SEXT_IMM(val2), v0; \
        )
#define TEST_MADC_VV_OP_12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v2, (x7); \
                inst v24, v8, v2;  \
            )
#define TEST_MADC_VV_OP_14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v4, (x7); \
                inst v24, v8, v4;  \
            )
#define TEST_MADC_VV_OP_16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v6, (x7); \
                inst v24, v8, v6;  \
            )
#define TEST_MADC_VV_OP_110( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v10, (x7); \
                inst v24, v8, v10;  \
            )
#define TEST_MADC_VV_OP_112( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v12, (x7); \
                inst v24, v8, v12;  \
            )
#define TEST_MADC_VV_OP_114( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v14, (x7); \
                inst v24, v8, v14;  \
            )
#define TEST_MADC_VV_OP_118( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v18, (x7); \
                inst v24, v8, v18;  \
            )
#define TEST_MADC_VV_OP_120( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v20, (x7); \
                inst v24, v8, v20;  \
            )
#define TEST_MADC_VV_OP_122( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v22, (x7); \
                inst v24, v8, v22;  \
            )
#define TEST_MADC_VV_OP_126( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v26, (x7); \
                inst v24, v8, v26;  \
            )
#define TEST_MADC_VV_OP_128( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v28, (x7); \
                inst v24, v8, v28;  \
            )
#define TEST_MADC_VV_OP_130( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v30, (x7); \
                inst v24, v8, v30;  \
            )
#define TEST_MADC_VV_OP_rd4( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v4, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v4, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v4, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd12( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v12, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v12, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v12, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd20( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v20, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v20, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v20, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd28( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v28, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v28, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v28, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd8( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v8, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v24, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v8, v24, v16; \
        )
#define TEST_MADC_VV_OP_rd16( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v24, (x7); \
            la x7, val1; \
            vle64.v v8, (x7); \
            inst v16, v24, v8; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_MADC_VV_OP( 1,  vmsbc.vv, 0x0000000000000000, rs2_data+0, rs1_data+0)
  TEST_MADC_VV_OP( 2,  vmsbc.vv, 0x0000000000000000, rs2_data+128, rs1_data+128)
  TEST_MADC_VV_OP( 3,  vmsbc.vv, 0x0000000000000000, rs2_data+256, rs1_data+256)
  TEST_MADC_VV_OP( 4,  vmsbc.vv, 0x0000000000000000, rs2_data+384, rs1_data+384)
  TEST_MADC_VV_OP( 5,  vmsbc.vv, 0x0000000000000000, rs2_data+512, rs1_data+512)
  TEST_MADC_VV_OP( 6,  vmsbc.vv, 0x0000000000000000, rs2_data+640, rs1_data+640)
  TEST_MADC_VV_OP( 7,  vmsbc.vv, 0x0000000000000000, rs2_data+768, rs1_data+768)
  TEST_MADC_VV_OP( 8,  vmsbc.vv, 0x0000000000000000, rs2_data+896, rs1_data+896)
  TEST_MADC_VV_OP( 9,  vmsbc.vv, 0x0000000000000002, rs2_data+1024, rs1_data+1024)
  TEST_MADC_VV_OP( 10,  vmsbc.vv, 0x0000000000000004, rs2_data+1152, rs1_data+1152)
  TEST_MADC_VV_OP( 11,  vmsbc.vv, 0x000000000000000b, rs2_data+1280, rs1_data+1280)
  TEST_MADC_VV_OP( 12,  vmsbc.vv, 0x000000000000000d, rs2_data+1408, rs1_data+1408)
  TEST_MADC_VV_OP( 13,  vmsbc.vv, 0x0000000000000007, rs2_data+1536, rs1_data+1536)
  TEST_MADC_VV_OP( 14,  vmsbc.vv, 0x0000000000000003, rs2_data+1664, rs1_data+1664)
  TEST_MADC_VV_OP( 15,  vmsbc.vv, 0x0000000000000007, rs2_data+1792, rs1_data+1792)
  TEST_MADC_VV_OP( 16,  vmsbc.vv, 0x000000000000000d, rs2_data+1920, rs1_data+1920)
  TEST_MADC_VV_OP( 17,  vmsbc.vv, 0x000000000000000c, rs2_data+2048, rs1_data+2048)
  TEST_MADC_VV_OP( 18,  vmsbc.vv, 0x000000000000000d, rs2_data+2176, rs1_data+2176)
  TEST_MADC_VV_OP( 19,  vmsbc.vv, 0x0000000000000006, rs2_data+2304, rs1_data+2304)
  TEST_MADC_VV_OP( 20,  vmsbc.vv, 0x0000000000000001, rs2_data+2432, rs1_data+2432)
  TEST_MADC_VV_OP( 21,  vmsbc.vv, 0x0000000000000003, rs2_data+2560, rs1_data+2560)
  TEST_MADC_VV_OP( 22,  vmsbc.vv, 0x0000000000000009, rs2_data+2688, rs1_data+2688)
  TEST_MADC_VV_OP( 23,  vmsbc.vv, 0x0000000000000000, rs2_data+2816, rs1_data+2816)
  TEST_MADC_VV_OP( 24,  vmsbc.vv, 0x0000000000000003, rs2_data+2944, rs1_data+2944)
  TEST_MADC_VV_OP( 25,  vmsbc.vv, 0x0000000000000002, rs2_data+3072, rs1_data+3072)
  TEST_MADC_VV_OP( 26,  vmsbc.vv, 0x0000000000000006, rs2_data+3200, rs1_data+3200)
  TEST_MADC_VV_OP( 27,  vmsbc.vv, 0x000000000000000c, rs2_data+3328, rs1_data+3328)
  TEST_MADC_VV_OP( 28,  vmsbc.vv, 0x0000000000000007, rs2_data+3456, rs1_data+3456)
  TEST_MADC_VV_OP( 29,  vmsbc.vv, 0x0000000000000005, rs2_data+3584, rs1_data+3584)
  TEST_MADC_VV_OP( 30,  vmsbc.vv, 0x000000000000000b, rs2_data+3712, rs1_data+3712)
  TEST_MADC_VV_OP( 31,  vmsbc.vv, 0x000000000000000d, rs2_data+3840, rs1_data+3840)
  TEST_MADC_VV_OP( 32,  vmsbc.vv, 0x0000000000000009, rs2_data+3968, rs1_data+3968)
  TEST_MADC_VV_OP( 33,  vmsbc.vv, 0x0000000000000004, rs2_data+4096, rs1_data+4096)
  TEST_MADC_VV_OP( 34,  vmsbc.vv, 0x0000000000000008, rs2_data+4224, rs1_data+4224)
  TEST_MADC_VV_OP( 35,  vmsbc.vv, 0x000000000000000b, rs2_data+4352, rs1_data+4352)
  TEST_MADC_VV_OP( 36,  vmsbc.vv, 0x000000000000000d, rs2_data+4480, rs1_data+4480)
  TEST_MADC_VV_OP( 37,  vmsbc.vv, 0x000000000000000f, rs2_data+4608, rs1_data+4608)
  TEST_MADC_VV_OP( 38,  vmsbc.vv, 0x0000000000000008, rs2_data+4736, rs1_data+4736)
  TEST_MADC_VV_OP_rd4( 39,  vmsbc.vv, 0x0000000000000000, rs2_data+384, rs1_data+384)
  TEST_MADC_VV_OP_rd12( 40,  vmsbc.vv, 0x000000000000000d, rs2_data+1408, rs1_data+1408)
  TEST_MADC_VV_OP_rd20( 41,  vmsbc.vv, 0x0000000000000001, rs2_data+2432, rs1_data+2432)
  TEST_MADC_VV_OP_rd28( 42,  vmsbc.vv, 0x0000000000000007, rs2_data+3456, rs1_data+3456)
  #-------------------------------------------------------------
  # VVM Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_MADC_VVM_OP( 43,  vmsbc.vvm, 0x0000000000000004, rs2_data+0, rs1_data+0)
  TEST_MADC_VVM_OP( 44,  vmsbc.vvm, 0x0000000000000004, rs2_data+128, rs1_data+128)
  TEST_MADC_VVM_OP( 45,  vmsbc.vvm, 0x0000000000000004, rs2_data+256, rs1_data+256)
  TEST_MADC_VVM_OP( 46,  vmsbc.vvm, 0x0000000000000004, rs2_data+384, rs1_data+384)
  TEST_MADC_VVM_OP( 47,  vmsbc.vvm, 0x0000000000000004, rs2_data+512, rs1_data+512)
  TEST_MADC_VVM_OP( 48,  vmsbc.vvm, 0x0000000000000004, rs2_data+640, rs1_data+640)
  TEST_MADC_VVM_OP( 49,  vmsbc.vvm, 0x0000000000000004, rs2_data+768, rs1_data+768)
  TEST_MADC_VVM_OP( 50,  vmsbc.vvm, 0x0000000000000004, rs2_data+896, rs1_data+896)
  TEST_MADC_VVM_OP( 51,  vmsbc.vvm, 0x0000000000000003, rs2_data+1024, rs1_data+1024)
  TEST_MADC_VVM_OP( 52,  vmsbc.vvm, 0x0000000000000005, rs2_data+1152, rs1_data+1152)
  TEST_MADC_VVM_OP( 53,  vmsbc.vvm, 0x000000000000000b, rs2_data+1280, rs1_data+1280)
  TEST_MADC_VVM_OP( 54,  vmsbc.vvm, 0x000000000000000e, rs2_data+1408, rs1_data+1408)
  TEST_MADC_VVM_OP( 55,  vmsbc.vvm, 0x0000000000000008, rs2_data+1536, rs1_data+1536)
  TEST_MADC_VVM_OP( 56,  vmsbc.vvm, 0x0000000000000003, rs2_data+1664, rs1_data+1664)
  TEST_MADC_VVM_OP( 57,  vmsbc.vvm, 0x0000000000000007, rs2_data+1792, rs1_data+1792)
  TEST_MADC_VVM_OP( 58,  vmsbc.vvm, 0x000000000000000d, rs2_data+1920, rs1_data+1920)
  TEST_MADC_VVM_OP( 59,  vmsbc.vvm, 0x000000000000000c, rs2_data+2048, rs1_data+2048)
  TEST_MADC_VVM_OP( 60,  vmsbc.vvm, 0x000000000000000d, rs2_data+2176, rs1_data+2176)
  TEST_MADC_VVM_OP( 61,  vmsbc.vvm, 0x0000000000000007, rs2_data+2304, rs1_data+2304)
  TEST_MADC_VVM_OP( 62,  vmsbc.vvm, 0x0000000000000001, rs2_data+2432, rs1_data+2432)
  TEST_MADC_VVM_OP( 63,  vmsbc.vvm, 0x0000000000000003, rs2_data+2560, rs1_data+2560)
  TEST_MADC_VVM_OP( 64,  vmsbc.vvm, 0x0000000000000009, rs2_data+2688, rs1_data+2688)
  TEST_MADC_VVM_OP( 65,  vmsbc.vvm, 0x0000000000000000, rs2_data+2816, rs1_data+2816)
  TEST_MADC_VVM_OP( 66,  vmsbc.vvm, 0x0000000000000003, rs2_data+2944, rs1_data+2944)
  TEST_MADC_VVM_OP( 67,  vmsbc.vvm, 0x0000000000000003, rs2_data+3072, rs1_data+3072)
  TEST_MADC_VVM_OP( 68,  vmsbc.vvm, 0x0000000000000006, rs2_data+3200, rs1_data+3200)
  TEST_MADC_VVM_OP( 69,  vmsbc.vvm, 0x000000000000000c, rs2_data+3328, rs1_data+3328)
  TEST_MADC_VVM_OP( 70,  vmsbc.vvm, 0x0000000000000007, rs2_data+3456, rs1_data+3456)
  TEST_MADC_VVM_OP( 71,  vmsbc.vvm, 0x0000000000000005, rs2_data+3584, rs1_data+3584)
  TEST_MADC_VVM_OP( 72,  vmsbc.vvm, 0x000000000000000c, rs2_data+3712, rs1_data+3712)
  TEST_MADC_VVM_OP( 73,  vmsbc.vvm, 0x000000000000000d, rs2_data+3840, rs1_data+3840)
  TEST_MADC_VVM_OP( 74,  vmsbc.vvm, 0x0000000000000009, rs2_data+3968, rs1_data+3968)
  TEST_MADC_VVM_OP( 75,  vmsbc.vvm, 0x0000000000000004, rs2_data+4096, rs1_data+4096)
  TEST_MADC_VVM_OP( 76,  vmsbc.vvm, 0x0000000000000008, rs2_data+4224, rs1_data+4224)
  TEST_MADC_VVM_OP( 77,  vmsbc.vvm, 0x000000000000000b, rs2_data+4352, rs1_data+4352)
  TEST_MADC_VVM_OP( 78,  vmsbc.vvm, 0x000000000000000e, rs2_data+4480, rs1_data+4480)
  TEST_MADC_VVM_OP( 79,  vmsbc.vvm, 0x000000000000000f, rs2_data+4608, rs1_data+4608)
  TEST_MADC_VVM_OP( 80,  vmsbc.vvm, 0x0000000000000008, rs2_data+4736, rs1_data+4736)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_MADC_VX_OP( 81,  vmsbc.vx, 0x000000000000000f, rs2_data+0, 0xfffffffffffffffe)
  TEST_MADC_VX_OP( 82,  vmsbc.vx, 0x0000000000000010, rs2_data+128, 0xfffffffffffffffd)
  TEST_MADC_VX_OP( 83,  vmsbc.vx, 0x0000000000000010, rs2_data+256, 0xfffffffffffffffb)
  TEST_MADC_VX_OP( 84,  vmsbc.vx, 0x0000000000000010, rs2_data+384, 0xfffffffffffffff7)
  TEST_MADC_VX_OP( 85,  vmsbc.vx, 0x0000000000000010, rs2_data+512, 0xffffffffffffffef)
  TEST_MADC_VX_OP( 86,  vmsbc.vx, 0x0000000000000010, rs2_data+640, 0xffffffffffffffdf)
  TEST_MADC_VX_OP( 87,  vmsbc.vx, 0x0000000000000010, rs2_data+768, 0xffffffffffffffbf)
  TEST_MADC_VX_OP( 88,  vmsbc.vx, 0x0000000000000010, rs2_data+896, 0xffffffffffffff7f)
  TEST_MADC_VX_OP( 89,  vmsbc.vx, 0x0000000000000010, rs2_data+1024, 0xfffffffffffffeff)
  TEST_MADC_VX_OP( 90,  vmsbc.vx, 0x0000000000000010, rs2_data+1152, 0xfffffffffffffdff)
  TEST_MADC_VX_OP( 91,  vmsbc.vx, 0x0000000000000010, rs2_data+1280, 0xfffffffffffffbff)
  TEST_MADC_VX_OP( 92,  vmsbc.vx, 0x0000000000000010, rs2_data+1408, 0xfffffffffffff7ff)
  TEST_MADC_VX_OP( 93,  vmsbc.vx, 0x0000000000000010, rs2_data+1536, 0xffffffffffffefff)
  TEST_MADC_VX_OP( 94,  vmsbc.vx, 0x0000000000000010, rs2_data+1664, 0xffffffffffffdfff)
  TEST_MADC_VX_OP( 95,  vmsbc.vx, 0x0000000000000010, rs2_data+1792, 0xffffffffffffbfff)
  TEST_MADC_VX_OP( 96,  vmsbc.vx, 0x0000000000000010, rs2_data+1920, 0xffffffffffff7fff)
  TEST_MADC_VX_OP( 97,  vmsbc.vx, 0x0000000000000010, rs2_data+2048, 0xfffffffffffeffff)
  TEST_MADC_VX_OP( 98,  vmsbc.vx, 0x0000000000000010, rs2_data+2176, 0xfffffffffffdffff)
  TEST_MADC_VX_OP( 99,  vmsbc.vx, 0x0000000000000010, rs2_data+2304, 0xfffffffffffbffff)
  TEST_MADC_VX_OP( 100,  vmsbc.vx, 0x0000000000000010, rs2_data+2432, 0xfffffffffff7ffff)
  TEST_MADC_VX_OP( 101,  vmsbc.vx, 0x0000000000000010, rs2_data+2560, 0xffffffffffefffff)
  TEST_MADC_VX_OP( 102,  vmsbc.vx, 0x0000000000000010, rs2_data+2688, 0xffffffffffdfffff)
  TEST_MADC_VX_OP( 103,  vmsbc.vx, 0x0000000000000010, rs2_data+2816, 0xffffffffffbfffff)
  TEST_MADC_VX_OP( 104,  vmsbc.vx, 0x0000000000000010, rs2_data+2944, 0xffffffffff7fffff)
  TEST_MADC_VX_OP( 105,  vmsbc.vx, 0x0000000000000010, rs2_data+3072, 0xfffffffffeffffff)
  TEST_MADC_VX_OP( 106,  vmsbc.vx, 0x0000000000000010, rs2_data+3200, 0xfffffffffdffffff)
  TEST_MADC_VX_OP( 107,  vmsbc.vx, 0x0000000000000010, rs2_data+3328, 0xfffffffffbffffff)
  TEST_MADC_VX_OP( 108,  vmsbc.vx, 0x0000000000000010, rs2_data+3456, 0xfffffffff7ffffff)
  TEST_MADC_VX_OP( 109,  vmsbc.vx, 0x0000000000000010, rs2_data+3584, 0xffffffffefffffff)
  TEST_MADC_VX_OP( 110,  vmsbc.vx, 0x0000000000000010, rs2_data+3712, 0xffffffffdfffffff)
  TEST_MADC_VX_OP( 111,  vmsbc.vx, 0x0000000000000010, rs2_data+3840, 0xffffffffbfffffff)
  TEST_MADC_VX_OP( 112,  vmsbc.vx, 0x0000000000000010, rs2_data+3968, 0xffffffff7fffffff)
  TEST_MADC_VX_OP( 113,  vmsbc.vx, 0x000000000000000f, rs2_data+4096, 0xfffffffeffffffff)
  TEST_MADC_VX_OP( 114,  vmsbc.vx, 0x000000000000000f, rs2_data+4224, 0xfffffffdffffffff)
  TEST_MADC_VX_OP( 115,  vmsbc.vx, 0x000000000000000e, rs2_data+4352, 0xfffffffbffffffff)
  TEST_MADC_VX_OP( 116,  vmsbc.vx, 0x000000000000000f, rs2_data+4480, 0xfffffff7ffffffff)
  TEST_MADC_VX_OP( 117,  vmsbc.vx, 0x000000000000000e, rs2_data+4608, 0xffffffefffffffff)
  TEST_MADC_VX_OP( 118,  vmsbc.vx, 0x000000000000000f, rs2_data+4736, 0xffffffdfffffffff)
  #-------------------------------------------------------------
  # VXM Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_MADC_VXM_OP( 119,  vmsbc.vxm, 0x0000000000000010, rs2_data+0, 0xfffffffffffffffe)
  TEST_MADC_VXM_OP( 120,  vmsbc.vxm, 0x0000000000000010, rs2_data+128, 0xfffffffffffffffd)
  TEST_MADC_VXM_OP( 121,  vmsbc.vxm, 0x0000000000000010, rs2_data+256, 0xfffffffffffffffb)
  TEST_MADC_VXM_OP( 122,  vmsbc.vxm, 0x0000000000000010, rs2_data+384, 0xfffffffffffffff7)
  TEST_MADC_VXM_OP( 123,  vmsbc.vxm, 0x0000000000000010, rs2_data+512, 0xffffffffffffffef)
  TEST_MADC_VXM_OP( 124,  vmsbc.vxm, 0x0000000000000010, rs2_data+640, 0xffffffffffffffdf)
  TEST_MADC_VXM_OP( 125,  vmsbc.vxm, 0x0000000000000010, rs2_data+768, 0xffffffffffffffbf)
  TEST_MADC_VXM_OP( 126,  vmsbc.vxm, 0x0000000000000010, rs2_data+896, 0xffffffffffffff7f)
  TEST_MADC_VXM_OP( 127,  vmsbc.vxm, 0x0000000000000010, rs2_data+1024, 0xfffffffffffffeff)
  TEST_MADC_VXM_OP( 128,  vmsbc.vxm, 0x0000000000000010, rs2_data+1152, 0xfffffffffffffdff)
  TEST_MADC_VXM_OP( 129,  vmsbc.vxm, 0x0000000000000010, rs2_data+1280, 0xfffffffffffffbff)
  TEST_MADC_VXM_OP( 130,  vmsbc.vxm, 0x0000000000000010, rs2_data+1408, 0xfffffffffffff7ff)
  TEST_MADC_VXM_OP( 131,  vmsbc.vxm, 0x0000000000000010, rs2_data+1536, 0xffffffffffffefff)
  TEST_MADC_VXM_OP( 132,  vmsbc.vxm, 0x0000000000000010, rs2_data+1664, 0xffffffffffffdfff)
  TEST_MADC_VXM_OP( 133,  vmsbc.vxm, 0x0000000000000010, rs2_data+1792, 0xffffffffffffbfff)
  TEST_MADC_VXM_OP( 134,  vmsbc.vxm, 0x0000000000000010, rs2_data+1920, 0xffffffffffff7fff)
  TEST_MADC_VXM_OP( 135,  vmsbc.vxm, 0x0000000000000010, rs2_data+2048, 0xfffffffffffeffff)
  TEST_MADC_VXM_OP( 136,  vmsbc.vxm, 0x0000000000000010, rs2_data+2176, 0xfffffffffffdffff)
  TEST_MADC_VXM_OP( 137,  vmsbc.vxm, 0x0000000000000010, rs2_data+2304, 0xfffffffffffbffff)
  TEST_MADC_VXM_OP( 138,  vmsbc.vxm, 0x0000000000000010, rs2_data+2432, 0xfffffffffff7ffff)
  TEST_MADC_VXM_OP( 139,  vmsbc.vxm, 0x0000000000000010, rs2_data+2560, 0xffffffffffefffff)
  TEST_MADC_VXM_OP( 140,  vmsbc.vxm, 0x0000000000000010, rs2_data+2688, 0xffffffffffdfffff)
  TEST_MADC_VXM_OP( 141,  vmsbc.vxm, 0x0000000000000010, rs2_data+2816, 0xffffffffffbfffff)
  TEST_MADC_VXM_OP( 142,  vmsbc.vxm, 0x0000000000000010, rs2_data+2944, 0xffffffffff7fffff)
  TEST_MADC_VXM_OP( 143,  vmsbc.vxm, 0x0000000000000010, rs2_data+3072, 0xfffffffffeffffff)
  TEST_MADC_VXM_OP( 144,  vmsbc.vxm, 0x0000000000000010, rs2_data+3200, 0xfffffffffdffffff)
  TEST_MADC_VXM_OP( 145,  vmsbc.vxm, 0x0000000000000010, rs2_data+3328, 0xfffffffffbffffff)
  TEST_MADC_VXM_OP( 146,  vmsbc.vxm, 0x0000000000000010, rs2_data+3456, 0xfffffffff7ffffff)
  TEST_MADC_VXM_OP( 147,  vmsbc.vxm, 0x0000000000000010, rs2_data+3584, 0xffffffffefffffff)
  TEST_MADC_VXM_OP( 148,  vmsbc.vxm, 0x0000000000000010, rs2_data+3712, 0xffffffffdfffffff)
  TEST_MADC_VXM_OP( 149,  vmsbc.vxm, 0x0000000000000010, rs2_data+3840, 0xffffffffbfffffff)
  TEST_MADC_VXM_OP( 150,  vmsbc.vxm, 0x0000000000000010, rs2_data+3968, 0xffffffff7fffffff)
  TEST_MADC_VXM_OP( 151,  vmsbc.vxm, 0x000000000000000f, rs2_data+4096, 0xfffffffeffffffff)
  TEST_MADC_VXM_OP( 152,  vmsbc.vxm, 0x000000000000000f, rs2_data+4224, 0xfffffffdffffffff)
  TEST_MADC_VXM_OP( 153,  vmsbc.vxm, 0x000000000000000e, rs2_data+4352, 0xfffffffbffffffff)
  TEST_MADC_VXM_OP( 154,  vmsbc.vxm, 0x000000000000000f, rs2_data+4480, 0xfffffff7ffffffff)
  TEST_MADC_VXM_OP( 155,  vmsbc.vxm, 0x000000000000000e, rs2_data+4608, 0xffffffefffffffff)
  TEST_MADC_VXM_OP( 156,  vmsbc.vxm, 0x000000000000000f, rs2_data+4736, 0xffffffdfffffffff)
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

rd_data_vx:

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
    

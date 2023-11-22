#----------------------------------------------------------------------------- 
    # vsbc.S
    #-----------------------------------------------------------------------------
    #
    # Test vsbc instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vsbc)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_ADC_VV_OP 
#define TEST_ADC_VV_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
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
#undef TEST_ADC_VX_OP 
#define TEST_ADC_VX_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
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
#undef TEST_ADC_VI_OP 
#define TEST_ADC_VI_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            inst v24, v8, SEXT_IMM(val2), v0; \
        )
#define TEST_ADC_VV_OP_12( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v2, (x7); \
            inst v24, v8, v2, v0;  \
        )
#define TEST_ADC_VV_OP_14( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v4, (x7); \
            inst v24, v8, v4, v0;  \
        )
#define TEST_ADC_VV_OP_16( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v6, (x7); \
            inst v24, v8, v6, v0;  \
        )
#define TEST_ADC_VV_OP_110( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v10, (x7); \
            inst v24, v8, v10, v0;  \
        )
#define TEST_ADC_VV_OP_112( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v12, (x7); \
            inst v24, v8, v12, v0;  \
        )
#define TEST_ADC_VV_OP_114( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v14, (x7); \
            inst v24, v8, v14, v0;  \
        )
#define TEST_ADC_VV_OP_118( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v18, (x7); \
            inst v24, v8, v18, v0;  \
        )
#define TEST_ADC_VV_OP_120( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v20, (x7); \
            inst v24, v8, v20, v0;  \
        )
#define TEST_ADC_VV_OP_122( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v22, (x7); \
            inst v24, v8, v22, v0;  \
        )
#define TEST_ADC_VV_OP_126( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v26, (x7); \
            inst v24, v8, v26, v0;  \
        )
#define TEST_ADC_VV_OP_128( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v28, (x7); \
            inst v24, v8, v28, v0;  \
        )
#define TEST_ADC_VV_OP_130( testnum, inst, result, val1, val2 ) \
        TEST_CASE_LOOP( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v30, (x7); \
            inst v24, v8, v30, v0;  \
        )
#define TEST_ADC_VV_OP_rd2( testnum, inst, result, val1, val2 ) \
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
            inst v2, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd4( testnum, inst, result, val1, val2 ) \
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
            inst v4, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd6( testnum, inst, result, val1, val2 ) \
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
            inst v6, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd10( testnum, inst, result, val1, val2 ) \
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
            inst v10, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd12( testnum, inst, result, val1, val2 ) \
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
            inst v12, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd14( testnum, inst, result, val1, val2 ) \
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
            inst v14, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd18( testnum, inst, result, val1, val2 ) \
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
            inst v18, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd20( testnum, inst, result, val1, val2 ) \
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
            inst v20, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd22( testnum, inst, result, val1, val2 ) \
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
            inst v22, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd26( testnum, inst, result, val1, val2 ) \
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
            inst v26, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd28( testnum, inst, result, val1, val2 ) \
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
            inst v28, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd30( testnum, inst, result, val1, val2 ) \
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
            inst v30, v8, v16, v0; \
        ) 
#define TEST_ADC_VV_OP_rd8( testnum, inst, result, val1, val2 ) \
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
        inst v8, v16, v24, v0; \
        )
#define TEST_ADC_VV_OP_rd16( testnum, inst, result, val1, val2 ) \
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
        inst v16, v8, v24, v0; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_ADC_VV_OP( 1,  vsbc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP( 2,  vsbc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP( 3,  vsbc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP( 4,  vsbc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP( 5,  vsbc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP( 6,  vsbc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP( 7,  vsbc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP( 8,  vsbc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP( 9,  vsbc.vvm, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_ADC_VV_OP( 10,  vsbc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP( 11,  vsbc.vvm, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_ADC_VV_OP( 12,  vsbc.vvm, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_ADC_VV_OP( 13,  vsbc.vvm, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_ADC_VV_OP( 14,  vsbc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP( 15,  vsbc.vvm, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_ADC_VV_OP( 16,  vsbc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP( 17,  vsbc.vvm, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_ADC_VV_OP( 18,  vsbc.vvm, rd_data_vv+2176, rs2_data+2176, rs1_data+2176)
  TEST_ADC_VV_OP( 19,  vsbc.vvm, rd_data_vv+2304, rs2_data+2304, rs1_data+2304)
  TEST_ADC_VV_OP( 20,  vsbc.vvm, rd_data_vv+2432, rs2_data+2432, rs1_data+2432)
  TEST_ADC_VV_OP( 21,  vsbc.vvm, rd_data_vv+2560, rs2_data+2560, rs1_data+2560)
  TEST_ADC_VV_OP( 22,  vsbc.vvm, rd_data_vv+2688, rs2_data+2688, rs1_data+2688)
  TEST_ADC_VV_OP( 23,  vsbc.vvm, rd_data_vv+2816, rs2_data+2816, rs1_data+2816)
  TEST_ADC_VV_OP( 24,  vsbc.vvm, rd_data_vv+2944, rs2_data+2944, rs1_data+2944)
  TEST_ADC_VV_OP( 25,  vsbc.vvm, rd_data_vv+3072, rs2_data+3072, rs1_data+3072)
  TEST_ADC_VV_OP( 26,  vsbc.vvm, rd_data_vv+3200, rs2_data+3200, rs1_data+3200)
  TEST_ADC_VV_OP( 27,  vsbc.vvm, rd_data_vv+3328, rs2_data+3328, rs1_data+3328)
  TEST_ADC_VV_OP( 28,  vsbc.vvm, rd_data_vv+3456, rs2_data+3456, rs1_data+3456)
  TEST_ADC_VV_OP( 29,  vsbc.vvm, rd_data_vv+3584, rs2_data+3584, rs1_data+3584)
  TEST_ADC_VV_OP( 30,  vsbc.vvm, rd_data_vv+3712, rs2_data+3712, rs1_data+3712)
  TEST_ADC_VV_OP( 31,  vsbc.vvm, rd_data_vv+3840, rs2_data+3840, rs1_data+3840)
  TEST_ADC_VV_OP( 32,  vsbc.vvm, rd_data_vv+3968, rs2_data+3968, rs1_data+3968)
  TEST_ADC_VV_OP( 33,  vsbc.vvm, rd_data_vv+4096, rs2_data+4096, rs1_data+4096)
  TEST_ADC_VV_OP( 34,  vsbc.vvm, rd_data_vv+4224, rs2_data+4224, rs1_data+4224)
  TEST_ADC_VV_OP( 35,  vsbc.vvm, rd_data_vv+4352, rs2_data+4352, rs1_data+4352)
  TEST_ADC_VV_OP( 36,  vsbc.vvm, rd_data_vv+4480, rs2_data+4480, rs1_data+4480)
  TEST_ADC_VV_OP( 37,  vsbc.vvm, rd_data_vv+4608, rs2_data+4608, rs1_data+4608)
  TEST_ADC_VV_OP( 38,  vsbc.vvm, rd_data_vv+4736, rs2_data+4736, rs1_data+4736)
  TEST_ADC_VV_OP_rd2( 39,  vsbc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP_rd4( 40,  vsbc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP_rd6( 41,  vsbc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP_rd8( 42,  vsbc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP_rd10( 43,  vsbc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP_rd12( 44,  vsbc.vvm, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_ADC_VV_OP_rd14( 45,  vsbc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP_rd16( 46,  vsbc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP_rd18( 47,  vsbc.vvm, rd_data_vv+2176, rs2_data+2176, rs1_data+2176)
  TEST_ADC_VV_OP_rd20( 48,  vsbc.vvm, rd_data_vv+2432, rs2_data+2432, rs1_data+2432)
  TEST_ADC_VV_OP_rd22( 49,  vsbc.vvm, rd_data_vv+2688, rs2_data+2688, rs1_data+2688)
  TEST_ADC_VV_OP_rd26( 50,  vsbc.vvm, rd_data_vv+3200, rs2_data+3200, rs1_data+3200)
  TEST_ADC_VV_OP_rd28( 51,  vsbc.vvm, rd_data_vv+3456, rs2_data+3456, rs1_data+3456)
  TEST_ADC_VV_OP_rd30( 52,  vsbc.vvm, rd_data_vv+3712, rs2_data+3712, rs1_data+3712)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_ADC_VX_OP( 53,  vsbc.vxm, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_ADC_VX_OP( 54,  vsbc.vxm, rd_data_vx+128, rs2_data+128, 0xfffffffffffffffd)
  TEST_ADC_VX_OP( 55,  vsbc.vxm, rd_data_vx+256, rs2_data+256, 0xfffffffffffffffb)
  TEST_ADC_VX_OP( 56,  vsbc.vxm, rd_data_vx+384, rs2_data+384, 0xfffffffffffffff7)
  TEST_ADC_VX_OP( 57,  vsbc.vxm, rd_data_vx+512, rs2_data+512, 0xffffffffffffffef)
  TEST_ADC_VX_OP( 58,  vsbc.vxm, rd_data_vx+640, rs2_data+640, 0xffffffffffffffdf)
  TEST_ADC_VX_OP( 59,  vsbc.vxm, rd_data_vx+768, rs2_data+768, 0xffffffffffffffbf)
  TEST_ADC_VX_OP( 60,  vsbc.vxm, rd_data_vx+896, rs2_data+896, 0xffffffffffffff7f)
  TEST_ADC_VX_OP( 61,  vsbc.vxm, rd_data_vx+1024, rs2_data+1024, 0xfffffffffffffeff)
  TEST_ADC_VX_OP( 62,  vsbc.vxm, rd_data_vx+1152, rs2_data+1152, 0xfffffffffffffdff)
  TEST_ADC_VX_OP( 63,  vsbc.vxm, rd_data_vx+1280, rs2_data+1280, 0xfffffffffffffbff)
  TEST_ADC_VX_OP( 64,  vsbc.vxm, rd_data_vx+1408, rs2_data+1408, 0xfffffffffffff7ff)
  TEST_ADC_VX_OP( 65,  vsbc.vxm, rd_data_vx+1536, rs2_data+1536, 0xffffffffffffefff)
  TEST_ADC_VX_OP( 66,  vsbc.vxm, rd_data_vx+1664, rs2_data+1664, 0xffffffffffffdfff)
  TEST_ADC_VX_OP( 67,  vsbc.vxm, rd_data_vx+1792, rs2_data+1792, 0xffffffffffffbfff)
  TEST_ADC_VX_OP( 68,  vsbc.vxm, rd_data_vx+1920, rs2_data+1920, 0xffffffffffff7fff)
  TEST_ADC_VX_OP( 69,  vsbc.vxm, rd_data_vx+2048, rs2_data+2048, 0xfffffffffffeffff)
  TEST_ADC_VX_OP( 70,  vsbc.vxm, rd_data_vx+2176, rs2_data+2176, 0xfffffffffffdffff)
  TEST_ADC_VX_OP( 71,  vsbc.vxm, rd_data_vx+2304, rs2_data+2304, 0xfffffffffffbffff)
  TEST_ADC_VX_OP( 72,  vsbc.vxm, rd_data_vx+2432, rs2_data+2432, 0xfffffffffff7ffff)
  TEST_ADC_VX_OP( 73,  vsbc.vxm, rd_data_vx+2560, rs2_data+2560, 0xffffffffffefffff)
  TEST_ADC_VX_OP( 74,  vsbc.vxm, rd_data_vx+2688, rs2_data+2688, 0xffffffffffdfffff)
  TEST_ADC_VX_OP( 75,  vsbc.vxm, rd_data_vx+2816, rs2_data+2816, 0xffffffffffbfffff)
  TEST_ADC_VX_OP( 76,  vsbc.vxm, rd_data_vx+2944, rs2_data+2944, 0xffffffffff7fffff)
  TEST_ADC_VX_OP( 77,  vsbc.vxm, rd_data_vx+3072, rs2_data+3072, 0xfffffffffeffffff)
  TEST_ADC_VX_OP( 78,  vsbc.vxm, rd_data_vx+3200, rs2_data+3200, 0xfffffffffdffffff)
  TEST_ADC_VX_OP( 79,  vsbc.vxm, rd_data_vx+3328, rs2_data+3328, 0xfffffffffbffffff)
  TEST_ADC_VX_OP( 80,  vsbc.vxm, rd_data_vx+3456, rs2_data+3456, 0xfffffffff7ffffff)
  TEST_ADC_VX_OP( 81,  vsbc.vxm, rd_data_vx+3584, rs2_data+3584, 0xffffffffefffffff)
  TEST_ADC_VX_OP( 82,  vsbc.vxm, rd_data_vx+3712, rs2_data+3712, 0xffffffffdfffffff)
  TEST_ADC_VX_OP( 83,  vsbc.vxm, rd_data_vx+3840, rs2_data+3840, 0xffffffffbfffffff)
  TEST_ADC_VX_OP( 84,  vsbc.vxm, rd_data_vx+3968, rs2_data+3968, 0xffffffff7fffffff)
  TEST_ADC_VX_OP( 85,  vsbc.vxm, rd_data_vx+4096, rs2_data+4096, 0xfffffffeffffffff)
  TEST_ADC_VX_OP( 86,  vsbc.vxm, rd_data_vx+4224, rs2_data+4224, 0xfffffffdffffffff)
  TEST_ADC_VX_OP( 87,  vsbc.vxm, rd_data_vx+4352, rs2_data+4352, 0xfffffffbffffffff)
  TEST_ADC_VX_OP( 88,  vsbc.vxm, rd_data_vx+4480, rs2_data+4480, 0xfffffff7ffffffff)
  TEST_ADC_VX_OP( 89,  vsbc.vxm, rd_data_vx+4608, rs2_data+4608, 0xffffffefffffffff)
  TEST_ADC_VX_OP( 90,  vsbc.vxm, rd_data_vx+4736, rs2_data+4736, 0xffffffdfffffffff)
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
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x5555555555555552
.dword	0xaaaaaaaaaaaaaaa7
.dword	0x0000000000000002
.dword	0x333333333333332f
.dword	0x6666666666666663
.dword	0xffffffff4afb0cca
.dword	0x5555555555555552
.dword	0x00000000b504f32f
.dword	0xffffffffffffffff
.dword	0x5555555555555551
.dword	0xfffffffffffffffd
.dword	0x0000000000000000
.dword	0x333333333333332f
.dword	0x1111111111111110
.dword	0xaaaaaaaaaaaaaaa7
.dword	0x555555560a5a4887
.dword	0x5555555555555553
.dword	0xaaaaaaaaaaaaaaa8
.dword	0x0000000000000003
.dword	0x3333333333333330
.dword	0x6666666666666664
.dword	0xffffffff4afb0ccb
.dword	0x00000000b504f334
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab0
.dword	0xdddddddddddddddd
.dword	0x1111111111111111
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9dde
.dword	0xaaaaaaaaaaaaaaac
.dword	0xffffffffffffffff
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xdddddddddddddddc
.dword	0x1111111111111110
.dword	0xaaaaaaab5faf9ddd
.dword	0x0000000000000001
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab1
.dword	0xdddddddddddddddf
.dword	0x1111111111111112
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9ddf
.dword	0xaaaaaaaaaaaaaaae
.dword	0xaaaaaaaaaaaaaaab
.dword	0xffffffffffffffff
.dword	0x555555555555555b
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506222
.dword	0x555555560a5a4889
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x5555555555555555
.dword	0x555555555555555a
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x5555555555555555
.dword	0x555555560a5a4888
.dword	0xaaaaaaaaaaaaaaac
.dword	0x0000000000000001
.dword	0x555555555555555b
.dword	0x888888888888888a
.dword	0xbbbbbbbbbbbbbbbd
.dword	0x55555554a0506224
.dword	0x555555560a5a4889
.dword	0xfffffffffffffffe
.dword	0x5555555555555550
.dword	0xaaaaaaaaaaaaaaa5
.dword	0xffffffffffffffff
.dword	0x333333333333332e
.dword	0x6666666666666661
.dword	0xffffffff4afb0cc8
.dword	0x00000000b504f32d
.dword	0xfffffffffffffffd
.dword	0x555555555555554f
.dword	0xfffffffffffffffb
.dword	0xfffffffffffffffe
.dword	0x333333333333332d
.dword	0x6666666666666660
.dword	0x00000000b504f32d
.dword	0x5555555555555550
.dword	0xaaaaaaaaaaaaaaa6
.dword	0x0000000000000001
.dword	0x333333333333332f
.dword	0x6666666666666661
.dword	0xffffffff4afb0cc9
.dword	0x00000000b504f32f
.dword	0xccccccccccccccd0
.dword	0x2222222222222221
.dword	0x7777777777777777
.dword	0xccccccccccccccd2
.dword	0x0000000000000000
.dword	0x3333333333333332
.dword	0xcccccccc17c7d99a
.dword	0xcccccccd81d1c000
.dword	0xcccccccccccccccf
.dword	0x2222222222222220
.dword	0xcccccccccccccccd
.dword	0xccccccccccccccd1
.dword	0xffffffffffffffff
.dword	0x3333333333333331
.dword	0xcccccccd81d1bfff
.dword	0x2222222222222223
.dword	0x7777777777777778
.dword	0xccccccccccccccd2
.dword	0x0000000000000001
.dword	0x3333333333333334
.dword	0xcccccccc17c7d99b
.dword	0xcccccccd81d1c000
.dword	0x999999999999999d
.dword	0xeeeeeeeeeeeeeeef
.dword	0x4444444444444444
.dword	0x999999999999999e
.dword	0xcccccccccccccccd
.dword	0x0000000000000000
.dword	0x99999998e494a667
.dword	0x9999999a4e9e8ccc
.dword	0x999999999999999c
.dword	0xeeeeeeeeeeeeeeee
.dword	0x999999999999999a
.dword	0x999999999999999d
.dword	0xcccccccccccccccc
.dword	0xffffffffffffffff
.dword	0x9999999a4e9e8ccc
.dword	0xeeeeeeeeeeeeeeef
.dword	0x4444444444444445
.dword	0x99999999999999a0
.dword	0xccccccccccccccce
.dword	0x0000000000000000
.dword	0x99999998e494a668
.dword	0x9999999a4e9e8cce
.dword	0x00000000b504f336
.dword	0x555555560a5a4887
.dword	0xaaaaaaab5faf9ddd
.dword	0x00000000b504f338
.dword	0x33333333e8382666
.dword	0x666666671b6b5998
.dword	0x0000000000000000
.dword	0x000000016a09e666
.dword	0x00000000b504f335
.dword	0x555555560a5a4886
.dword	0x00000000b504f333
.dword	0x00000000b504f337
.dword	0x33333333e8382665
.dword	0x666666671b6b5997
.dword	0x000000016a09e665
.dword	0x555555560a5a4889
.dword	0xaaaaaaab5faf9dde
.dword	0x00000000b504f338
.dword	0x33333333e8382667
.dword	0x666666671b6b599a
.dword	0x0000000000000001
.dword	0x000000016a09e666
.dword	0xffffffff4afb0cd0
.dword	0x55555554a0506222
.dword	0xaaaaaaa9f5a5b777
.dword	0xffffffff4afb0cd1
.dword	0x333333327e2e4000
.dword	0x66666665b1617333
.dword	0xfffffffe95f6199a
.dword	0xffffffffffffffff
.dword	0xffffffff4afb0ccf
.dword	0x55555554a0506221
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0cd0
.dword	0x333333327e2e3fff
.dword	0x66666665b1617332
.dword	0xffffffffffffffff
.dword	0x55555554a0506222
.dword	0xaaaaaaa9f5a5b778
.dword	0xffffffff4afb0cd3
.dword	0x333333327e2e4001
.dword	0x66666665b1617333
.dword	0xfffffffe95f6199b
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x5555555555555552
.dword	0xaaaaaaaaaaaaaaa8
.dword	0x0000000000000003
.dword	0x3333333333333331
.dword	0x6666666666666663
.dword	0xffffffff4afb0ccb
.dword	0x00000000b504f331
.dword	0x0000000000000000
.dword	0x5555555555555551
.dword	0xfffffffffffffffe
.dword	0x0000000000000002
.dword	0x3333333333333330
.dword	0x6666666666666662
.dword	0x00000000b504f330
.dword	0x5555555555555554
.dword	0xaaaaaaaaaaaaaaa9
.dword	0x0000000000000003
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0xffffffff4afb0ccc
.dword	0x00000000b504f331
.dword	0xaaaaaaaaaaaaaaaf
.dword	0x0000000000000001
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaab0
.dword	0xdddddddddddddddf
.dword	0x1111111111111112
.dword	0xaaaaaaa9f5a5b779
.dword	0xaaaaaaab5faf9dde
.dword	0xaaaaaaaaaaaaaaae
.dword	0x0000000000000000
.dword	0xaaaaaaaaaaaaaaac
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xddddddddddddddde
.dword	0x1111111111111111
.dword	0xaaaaaaab5faf9dde
.dword	0x0000000000000001
.dword	0x5555555555555557
.dword	0xaaaaaaaaaaaaaab2
.dword	0xdddddddddddddde0
.dword	0x1111111111111112
.dword	0xaaaaaaa9f5a5b77a
.dword	0xaaaaaaab5faf9de0
.dword	0x0000000000000003
.dword	0x5555555555555554
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x0000000000000005
.dword	0x3333333333333333
.dword	0x6666666666666665
.dword	0xffffffff4afb0ccd
.dword	0x00000000b504f333
.dword	0x0000000000000002
.dword	0x5555555555555553
.dword	0x0000000000000000
.dword	0x0000000000000004
.dword	0x3333333333333332
.dword	0x6666666666666664
.dword	0x00000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x0000000000000005
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x00000000b504f333
.dword	0xffffffffffffffff
.dword	0x5555555555555551
.dword	0xaaaaaaaaaaaaaaa6
.dword	0x0000000000000000
.dword	0x333333333333332f
.dword	0x6666666666666662
.dword	0xffffffff4afb0cc9
.dword	0x00000000b504f32e
.dword	0xfffffffffffffffe
.dword	0x5555555555555550
.dword	0xfffffffffffffffc
.dword	0xffffffffffffffff
.dword	0x333333333333332e
.dword	0x6666666666666661
.dword	0x00000000b504f32e
.dword	0x5555555555555551
.dword	0xaaaaaaaaaaaaaaa7
.dword	0x0000000000000002
.dword	0x3333333333333330
.dword	0x6666666666666662
.dword	0xffffffff4afb0cca
.dword	0x00000000b504f330
.dword	0xccccccccccccccd1
.dword	0x2222222222222222
.dword	0x7777777777777778
.dword	0xccccccccccccccd3
.dword	0x0000000000000001
.dword	0x3333333333333333
.dword	0xcccccccc17c7d99b
.dword	0xcccccccd81d1c001
.dword	0xccccccccccccccd0
.dword	0x2222222222222221
.dword	0xccccccccccccccce
.dword	0xccccccccccccccd2
.dword	0x0000000000000000
.dword	0x3333333333333332
.dword	0xcccccccd81d1c000
.dword	0x2222222222222224
.dword	0x7777777777777779
.dword	0xccccccccccccccd3
.dword	0x0000000000000002
.dword	0x3333333333333335
.dword	0xcccccccc17c7d99c
.dword	0xcccccccd81d1c001
.dword	0x999999999999999e
.dword	0xeeeeeeeeeeeeeef0
.dword	0x4444444444444445
.dword	0x999999999999999f
.dword	0xccccccccccccccce
.dword	0x0000000000000001
.dword	0x99999998e494a668
.dword	0x9999999a4e9e8ccd
.dword	0x999999999999999d
.dword	0xeeeeeeeeeeeeeeef
.dword	0x999999999999999b
.dword	0x999999999999999e
.dword	0xcccccccccccccccd
.dword	0x0000000000000000
.dword	0x9999999a4e9e8ccd
.dword	0xeeeeeeeeeeeeeef0
.dword	0x4444444444444446
.dword	0x99999999999999a1
.dword	0xcccccccccccccccf
.dword	0x0000000000000001
.dword	0x99999998e494a669
.dword	0x9999999a4e9e8ccf
.dword	0xffffffff4afb0cd1
.dword	0x55555554a0506222
.dword	0xaaaaaaa9f5a5b778
.dword	0xffffffff4afb0cd3
.dword	0x333333327e2e4001
.dword	0x66666665b1617333
.dword	0xfffffffe95f6199b
.dword	0x0000000000000001
.dword	0xffffffff4afb0cd0
.dword	0x55555554a0506221
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cd2
.dword	0x333333327e2e4000
.dword	0x66666665b1617332
.dword	0x0000000000000000
.dword	0x55555554a0506224
.dword	0xaaaaaaa9f5a5b779
.dword	0xffffffff4afb0cd3
.dword	0x333333327e2e4002
.dword	0x66666665b1617335
.dword	0xfffffffe95f6199c
.dword	0x0000000000000001
.dword	0xaaaaaaaaaaaaaaad
.dword	0xffffffffffffffff
.dword	0x5555555555555554
.dword	0xaaaaaaaaaaaaaaae
.dword	0xdddddddddddddddd
.dword	0x1111111111111110
.dword	0xaaaaaaa9f5a5b777
.dword	0xaaaaaaab5faf9ddc
.dword	0xaaaaaaaaaaaaaaac
.dword	0xfffffffffffffffe
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaad
.dword	0xdddddddddddddddc
.dword	0x111111111111110f
.dword	0xaaaaaaab5faf9ddc
.dword	0xffffffffffffffff
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab0
.dword	0xddddddddddddddde
.dword	0x1111111111111110
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9dde
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaa9
.dword	0xffffffffffffffff
.dword	0x555555555555555a
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbba
.dword	0x55555554a0506222
.dword	0x555555560a5a4888
.dword	0x5555555555555557
.dword	0xaaaaaaaaaaaaaaa8
.dword	0x5555555555555555
.dword	0x5555555555555559
.dword	0x8888888888888887
.dword	0xbbbbbbbbbbbbbbb9
.dword	0x555555560a5a4887
.dword	0xaaaaaaaaaaaaaaab
.dword	0x0000000000000000
.dword	0x555555555555555a
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506223
.dword	0x555555560a5a4888
.dword	0xfffffffffffffffd
.dword	0x555555555555554f
.dword	0xaaaaaaaaaaaaaaa4
.dword	0xfffffffffffffffe
.dword	0x333333333333332d
.dword	0x6666666666666660
.dword	0xffffffff4afb0cc7
.dword	0x00000000b504f32c
.dword	0xfffffffffffffffc
.dword	0x555555555555554e
.dword	0xfffffffffffffffa
.dword	0xfffffffffffffffd
.dword	0x333333333333332c
.dword	0x666666666666665f
.dword	0x00000000b504f32c
.dword	0x555555555555554f
.dword	0xaaaaaaaaaaaaaaa5
.dword	0x0000000000000000
.dword	0x333333333333332e
.dword	0x6666666666666660
.dword	0xffffffff4afb0cc8
.dword	0x00000000b504f32e
.dword	0xcccccccccccccccf
.dword	0x2222222222222220
.dword	0x7777777777777776
.dword	0xccccccccccccccd1
.dword	0xffffffffffffffff
.dword	0x3333333333333331
.dword	0xcccccccc17c7d999
.dword	0xcccccccd81d1bfff
.dword	0xccccccccccccccce
.dword	0x222222222222221f
.dword	0xcccccccccccccccc
.dword	0xccccccccccccccd0
.dword	0xfffffffffffffffe
.dword	0x3333333333333330
.dword	0xcccccccd81d1bffe
.dword	0x2222222222222222
.dword	0x7777777777777777
.dword	0xccccccccccccccd1
.dword	0x0000000000000000
.dword	0x3333333333333333
.dword	0xcccccccc17c7d99a
.dword	0xcccccccd81d1bfff
.dword	0x999999999999999c
.dword	0xeeeeeeeeeeeeeeee
.dword	0x4444444444444443
.dword	0x999999999999999d
.dword	0xcccccccccccccccc
.dword	0xffffffffffffffff
.dword	0x99999998e494a666
.dword	0x9999999a4e9e8ccb
.dword	0x999999999999999b
.dword	0xeeeeeeeeeeeeeeed
.dword	0x9999999999999999
.dword	0x999999999999999c
.dword	0xcccccccccccccccb
.dword	0xfffffffffffffffe
.dword	0x9999999a4e9e8ccb
.dword	0xeeeeeeeeeeeeeeee
.dword	0x4444444444444444
.dword	0x999999999999999f
.dword	0xcccccccccccccccd
.dword	0xffffffffffffffff
.dword	0x99999998e494a667
.dword	0x9999999a4e9e8ccd
.dword	0x00000000b504f335
.dword	0x555555560a5a4886
.dword	0xaaaaaaab5faf9ddc
.dword	0x00000000b504f337
.dword	0x33333333e8382665
.dword	0x666666671b6b5997
.dword	0xffffffffffffffff
.dword	0x000000016a09e665
.dword	0x00000000b504f334
.dword	0x555555560a5a4885
.dword	0x00000000b504f332
.dword	0x00000000b504f336
.dword	0x33333333e8382664
.dword	0x666666671b6b5996
.dword	0x000000016a09e664
.dword	0x555555560a5a4888
.dword	0xaaaaaaab5faf9ddd
.dword	0x00000000b504f337
.dword	0x33333333e8382666
.dword	0x666666671b6b5999
.dword	0x0000000000000000
.dword	0x000000016a09e665
.dword	0xffffffff4afb0ccf
.dword	0x55555554a0506221
.dword	0xaaaaaaa9f5a5b776
.dword	0xffffffff4afb0cd0
.dword	0x333333327e2e3fff
.dword	0x66666665b1617332
.dword	0xfffffffe95f61999
.dword	0xfffffffffffffffe
.dword	0xffffffff4afb0cce
.dword	0x55555554a0506220
.dword	0xffffffff4afb0ccc
.dword	0xffffffff4afb0ccf
.dword	0x333333327e2e3ffe
.dword	0x66666665b1617331
.dword	0xfffffffffffffffe
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x555555560a5a4887
.dword	0x5555555555555553
.dword	0xaaaaaaaaaaaaaaa8
.dword	0x0000000000000003
.dword	0x3333333333333330
.dword	0x6666666666666664
.dword	0xffffffff4afb0ccb
.dword	0x00000000b504f334
.dword	0xffffffffffffffff
.dword	0x0000000000000000
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab0
.dword	0xdddddddddddddddd
.dword	0x1111111111111111
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9dde
.dword	0xffffffffffffffff
.dword	0x555555555555555b
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506222
.dword	0x555555560a5a4889
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x5555555555555555
.dword	0x555555555555555a
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x5555555555555555
.dword	0x555555560a5a4888
.dword	0xaaaaaaaaaaaaaaac
.dword	0x0000000000000001
.dword	0xfffffffffffffffe
.dword	0x333333333333332d
.dword	0x6666666666666660
.dword	0x00000000b504f32d
.dword	0x5555555555555550
.dword	0xaaaaaaaaaaaaaaa6
.dword	0x0000000000000001
.dword	0x333333333333332f
.dword	0x6666666666666661
.dword	0xffffffff4afb0cc9
.dword	0x00000000b504f32f
.dword	0xccccccccccccccd0
.dword	0x2222222222222221
.dword	0x7777777777777777
.dword	0xccccccccccccccd2
.dword	0x0000000000000000
.dword	0xcccccccd81d1c000
.dword	0x999999999999999d
.dword	0xeeeeeeeeeeeeeeef
.dword	0x4444444444444444
.dword	0x999999999999999e
.dword	0xcccccccccccccccd
.dword	0x0000000000000000
.dword	0x99999998e494a667
.dword	0x9999999a4e9e8ccc
.dword	0x999999999999999c
.dword	0xeeeeeeeeeeeeeeee
.dword	0x999999999999999a
.dword	0x999999999999999d
.dword	0xcccccccccccccccc
.dword	0xffffffffffffffff
.dword	0x9999999a4e9e8ccc
.dword	0x555555560a5a4886
.dword	0x00000000b504f333
.dword	0x00000000b504f337
.dword	0x33333333e8382665
.dword	0x666666671b6b5997
.dword	0x000000016a09e665
.dword	0x555555560a5a4889
.dword	0xaaaaaaab5faf9dde
.dword	0x00000000b504f338
.dword	0x33333333e8382667
.dword	0x666666671b6b599a
.dword	0x0000000000000001
.dword	0x000000016a09e666
.dword	0xffffffff4afb0cd0
.dword	0x55555554a0506222
.dword	0xaaaaaaa9f5a5b777
.dword	0x66666665b1617333
.dword	0xfffffffe95f6199b
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x5555555555555552
.dword	0xaaaaaaaaaaaaaaa8
.dword	0x0000000000000003
.dword	0x3333333333333331
.dword	0x6666666666666663
.dword	0xffffffff4afb0ccb
.dword	0x00000000b504f331
.dword	0x0000000000000000
.dword	0x5555555555555551
.dword	0xfffffffffffffffe
.dword	0x0000000000000002
.dword	0x3333333333333330
.dword	0xaaaaaaab5faf9dde
.dword	0xaaaaaaaaaaaaaaae
.dword	0x0000000000000000
.dword	0xaaaaaaaaaaaaaaac
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xddddddddddddddde
.dword	0x1111111111111111
.dword	0xaaaaaaab5faf9dde
.dword	0x0000000000000001
.dword	0x5555555555555557
.dword	0xaaaaaaaaaaaaaab2
.dword	0xdddddddddddddde0
.dword	0x1111111111111112
.dword	0xaaaaaaa9f5a5b77a
.dword	0xaaaaaaab5faf9de0
.dword	0x0000000000000003
.dword	0x3333333333333333
.dword	0xcccccccc17c7d99b
.dword	0xcccccccd81d1c001
.dword	0xccccccccccccccd0
.dword	0x2222222222222221
.dword	0xccccccccccccccce
.dword	0xccccccccccccccd2
.dword	0x0000000000000000
.dword	0x3333333333333332
.dword	0xcccccccd81d1c000
.dword	0x2222222222222224
.dword	0x7777777777777779
.dword	0xccccccccccccccd3
.dword	0x0000000000000002
.dword	0x3333333333333335
.dword	0xcccccccc17c7d99c
.dword	0xeeeeeeeeeeeeeef0
.dword	0x4444444444444446
.dword	0x99999999999999a1
.dword	0xcccccccccccccccf
.dword	0x0000000000000001
.dword	0x99999998e494a669
.dword	0x9999999a4e9e8ccf
.dword	0xffffffff4afb0cd1
.dword	0x55555554a0506222
.dword	0xaaaaaaa9f5a5b778
.dword	0xffffffff4afb0cd3
.dword	0x333333327e2e4001
.dword	0x66666665b1617333
.dword	0xfffffffe95f6199b
.dword	0x0000000000000001
.dword	0xffffffff4afb0cd0
.dword	0xaaaaaaaaaaaaaaae
.dword	0xdddddddddddddddd
.dword	0x1111111111111110
.dword	0xaaaaaaa9f5a5b777
.dword	0xaaaaaaab5faf9ddc
.dword	0xaaaaaaaaaaaaaaac
.dword	0xfffffffffffffffe
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaad
.dword	0xdddddddddddddddc
.dword	0x111111111111110f
.dword	0xaaaaaaab5faf9ddc
.dword	0xffffffffffffffff
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab0
.dword	0xddddddddddddddde

rd_data_vx:
.dword	0xffffffffffffffff
.dword	0xffffffffffffffff
.dword	0xfffffffffffffffd
.dword	0xfffffffffffffff9
.dword	0xfffffffffffffff0
.dword	0xffffffffffffffe1
.dword	0xffffffffffffffc1
.dword	0xffffffffffffff81
.dword	0xffffffffffffff00
.dword	0xfffffffffffffe01
.dword	0xfffffffffffffc01
.dword	0xfffffffffffff801
.dword	0xfffffffffffff000
.dword	0xffffffffffffe001
.dword	0xffffffffffffc001
.dword	0xffffffffffff8001
.dword	0xffffffffffff0001
.dword	0xfffffffffffe0002
.dword	0xfffffffffffc0002
.dword	0xfffffffffff80002
.dword	0xfffffffffff00001
.dword	0xffffffffffe00002
.dword	0xffffffffffc00002
.dword	0xffffffffff800002
.dword	0xffffffffff000001
.dword	0xfffffffffe000002
.dword	0xfffffffffc000002
.dword	0xfffffffff8000002
.dword	0xfffffffff0000001
.dword	0xffffffffe0000002
.dword	0xffffffffc0000002
.dword	0xffffffff80000002
.dword	0xffffffff00000003
.dword	0xfffffffe00000004
.dword	0xfffffffc00000004
.dword	0xfffffff800000004
.dword	0xfffffff000000003
.dword	0xffffffe000000004
.dword	0xffffffc000000004
.dword	0xffffff8000000004
.dword	0xffffff0000000003
.dword	0xfffffe0000000004
.dword	0xfffffc0000000004
.dword	0xfffff80000000004
.dword	0xfffff00000000003
.dword	0xffffe00000000004
.dword	0xffffc00000000004
.dword	0xffff800000000004
.dword	0xffff000000000007
.dword	0xfffe000000000008
.dword	0xfffc000000000008
.dword	0xfff8000000000008
.dword	0xfff0000000000007
.dword	0xffe0000000000008
.dword	0xffc0000000000008
.dword	0xff80000000000008
.dword	0xff00000000000007
.dword	0xfe00000000000008
.dword	0xfc00000000000008
.dword	0xf800000000000008
.dword	0xf000000000000007
.dword	0xe000000000000008
.dword	0xc000000000000008
.dword	0x8000000000000008
.dword	0x0000000000000011
.dword	0x0000000000000013
.dword	0x0000000000000015
.dword	0x0000000000000019
.dword	0x0000000000000020
.dword	0x0000000000000031
.dword	0x0000000000000051
.dword	0x0000000000000091
.dword	0x0000000000000110
.dword	0x0000000000000211
.dword	0x0000000000000411
.dword	0x0000000000000811
.dword	0x0000000000001010
.dword	0x0000000000002011
.dword	0x0000000000004011
.dword	0x0000000000008011
.dword	0x0000000000010020
.dword	0x0000000000020021
.dword	0x0000000000040021
.dword	0x0000000000080021
.dword	0x0000000000100020
.dword	0x0000000000200021
.dword	0x0000000000400021
.dword	0x0000000000800021
.dword	0x0000000001000020
.dword	0x0000000002000021
.dword	0x0000000004000021
.dword	0x0000000008000021
.dword	0x0000000010000020
.dword	0x0000000020000021
.dword	0x0000000040000021
.dword	0x0000000080000021
.dword	0x0000000100000040
.dword	0x0000000200000041
.dword	0x0000000400000041
.dword	0x0000000800000041
.dword	0x0000001000000040
.dword	0x0000002000000041
.dword	0x0000004000000041
.dword	0x0000008000000041
.dword	0x0000010000000040
.dword	0x0000020000000041
.dword	0x0000040000000041
.dword	0x0000080000000041
.dword	0x0000100000000040
.dword	0x0000200000000041
.dword	0x0000400000000041
.dword	0x0000800000000041
.dword	0x0001000000000080
.dword	0x0002000000000081
.dword	0x0004000000000081
.dword	0x0008000000000081
.dword	0x0010000000000080
.dword	0x0020000000000081
.dword	0x0040000000000081
.dword	0x0080000000000081
.dword	0x0100000000000080
.dword	0x0200000000000081
.dword	0x0400000000000081
.dword	0x0800000000000081
.dword	0x1000000000000080
.dword	0x2000000000000081
.dword	0x4000000000000081
.dword	0x8000000000000081
.dword	0x0000000000000103
.dword	0x5555555555555656
.dword	0xaaaaaaaaaaaaabab
.dword	0x0000000000000106
.dword	0x3333333333333433
.dword	0x6666666666666767
.dword	0xffffffff4afb0dce
.dword	0x5555555555555656
.dword	0x00000000b504f433
.dword	0x0000000000000103
.dword	0x5555555555555655
.dword	0x0000000000000101
.dword	0x0000000000000104
.dword	0x3333333333333433
.dword	0x6666666666666766
.dword	0xaaaaaaaaaaaaabab
.dword	0x00000000b504f532
.dword	0x5555555555555757
.dword	0xaaaaaaaaaaaaacac
.dword	0x0000000000000207
.dword	0x3333333333333534
.dword	0x6666666666666868
.dword	0xffffffff4afb0ecf
.dword	0x00000000b504f535
.dword	0x0000000000000203
.dword	0x5555555555555756
.dword	0xaaaaaaaaaaaaacab
.dword	0x0000000000000206
.dword	0x3333333333333533
.dword	0x6666666666666867
.dword	0xffffffff4afb0ece
.dword	0x00000000b504f534
.dword	0x0000000000000402
.dword	0x5555555555555955
.dword	0x0000000000000401
.dword	0x0000000000000405
.dword	0x3333333333333732
.dword	0x6666666666666a66
.dword	0x00000000b504f733
.dword	0x5555555555555957
.dword	0xaaaaaaaaaaaaaeab
.dword	0x0000000000000407
.dword	0x3333333333333735
.dword	0x6666666666666a68
.dword	0xffffffff4afb10ce
.dword	0x00000000b504f735
.dword	0x0000000000000404
.dword	0x5555555555555956
.dword	0xaaaaaaaaaaaab2aa
.dword	0x0000000000000806
.dword	0x3333333333333b34
.dword	0x6666666666666e67
.dword	0xffffffff4afb14cd
.dword	0x00000000b504fb34
.dword	0x0000000000000803
.dword	0x5555555555555d55
.dword	0x0000000000000800
.dword	0x0000000000000805
.dword	0x3333333333333b33
.dword	0x6666666666666e66
.dword	0x0000000000000800
.dword	0x00000000b504fb33
.dword	0x5555555555555d57
.dword	0xaaaaaaaaaaaab2ac
.dword	0x0000000000001006
.dword	0x3333333333334335
.dword	0x6666666666667668
.dword	0xffffffff4afb1ccf
.dword	0x00000000b5050334
.dword	0x0000000000001004
.dword	0x5555555555556556
.dword	0xaaaaaaaaaaaabaab
.dword	0x0000000000001005
.dword	0x3333333333334334
.dword	0x6666666666667667
.dword	0xffffffff4afb1cce
.dword	0x00000000b5050333
.dword	0x0000000000001003
.dword	0x5555555555556555
.dword	0x0000000000001001
.dword	0x0000000000002004
.dword	0x3333333333335333
.dword	0x6666666666668666
.dword	0x00000000b5051333
.dword	0x5555555555557556
.dword	0xaaaaaaaaaaaacaac
.dword	0x0000000000002007
.dword	0x3333333333335335
.dword	0x6666666666668667
.dword	0xffffffff4afb2ccf
.dword	0x00000000b5051335
.dword	0x0000000000002004
.dword	0x5555555555557555
.dword	0xaaaaaaaaaaaacaab
.dword	0x0000000000002006
.dword	0x3333333333335334
.dword	0x666666666666a666
.dword	0xffffffff4afb4cce
.dword	0x00000000b5053334
.dword	0x0000000000004003
.dword	0x5555555555559554
.dword	0x0000000000004001
.dword	0x0000000000004005
.dword	0x3333333333337333
.dword	0x666666666666a665
.dword	0x00000000b5053333
.dword	0x5555555555559557
.dword	0xaaaaaaaaaaaaeaac
.dword	0x0000000000004006
.dword	0x3333333333337335
.dword	0x666666666666a668
.dword	0xffffffff4afb4ccf
.dword	0x00000000b5057334
.dword	0x0000000000008004
.dword	0x555555555555d556
.dword	0xaaaaaaaaaaab2aab
.dword	0x0000000000008005
.dword	0x333333333333b334
.dword	0x666666666666e667
.dword	0xffffffff4afb8cce
.dword	0x00000000b5057333
.dword	0x0000000000008003
.dword	0x555555555555d555
.dword	0x0000000000008001
.dword	0x0000000000008004
.dword	0x333333333333b333
.dword	0x666666666666e666
.dword	0x00000000b5057333
.dword	0x5555555555565556
.dword	0xaaaaaaaaaaabaaac
.dword	0x0000000000010007
.dword	0x3333333333343335
.dword	0x6666666666676667
.dword	0xffffffff4afc0ccf
.dword	0x00000000b505f335
.dword	0x0000000000010004
.dword	0x5555555555565555
.dword	0xaaaaaaaaaaabaaab
.dword	0x0000000000010006
.dword	0x3333333333343334
.dword	0x6666666666676666
.dword	0xffffffff4afc0cce
.dword	0x00000000b505f334
.dword	0x0000000000010003
.dword	0x5555555555575554
.dword	0x0000000000020001
.dword	0x0000000000020005
.dword	0x3333333333353333
.dword	0x6666666666686665
.dword	0x00000000b506f333
.dword	0x5555555555575557
.dword	0xaaaaaaaaaaacaaac
.dword	0x0000000000020006
.dword	0x3333333333353335
.dword	0x6666666666686668
.dword	0xffffffff4afd0ccf
.dword	0x00000000b506f334
.dword	0x0000000000020004
.dword	0x5555555555575556
.dword	0xaaaaaaaaaaacaaab
.dword	0x0000000000040005
.dword	0x3333333333373334
.dword	0x66666666666a6667
.dword	0xffffffff4aff0cce
.dword	0x00000000b508f333
.dword	0x0000000000040003
.dword	0x5555555555595555
.dword	0x0000000000040001
.dword	0x0000000000040004
.dword	0x3333333333373333
.dword	0x66666666666a6666
.dword	0x00000000b508f333
.dword	0x5555555555595556
.dword	0xaaaaaaaaaaaeaaac
.dword	0x0000000000040007
.dword	0x3333333333373335
.dword	0x66666666666e6667
.dword	0xffffffff4b030ccf
.dword	0x00000000b50cf335
.dword	0x0000000000080004
.dword	0x55555555555d5555
.dword	0xaaaaaaaaaab2aaab
.dword	0x0000000000080006
.dword	0x33333333333b3334
.dword	0x66666666666e6666
.dword	0xffffffff4b030cce
.dword	0x00000000b50cf334
.dword	0x0000000000080003
.dword	0x55555555555d5554
.dword	0x0000000000080001
.dword	0x0000000000080005
.dword	0x33333333333b3333
.dword	0x6666666666766665
.dword	0x00000000b514f333
.dword	0x5555555555655557
.dword	0xaaaaaaaaaabaaaac
.dword	0x0000000000100006
.dword	0x3333333333433335
.dword	0x6666666666766668
.dword	0xffffffff4b0b0ccf
.dword	0x00000000b514f334
.dword	0x0000000000100004
.dword	0x5555555555655556
.dword	0xaaaaaaaaaabaaaab
.dword	0x0000000000100005
.dword	0x3333333333433334
.dword	0x6666666666766667
.dword	0xffffffff4b0b0cce
.dword	0x00000000b524f333
.dword	0x0000000000200003
.dword	0x5555555555755555
.dword	0x0000000000200001
.dword	0x0000000000200004
.dword	0x3333333333533333
.dword	0x6666666666866666
.dword	0x00000000b524f333
.dword	0x5555555555755556
.dword	0xaaaaaaaaaacaaaac
.dword	0x0000000000200007
.dword	0x3333333333533335
.dword	0x6666666666866667
.dword	0xffffffff4b1b0ccf
.dword	0x00000000b524f335
.dword	0x0000000000200004
.dword	0x5555555555955555
.dword	0xaaaaaaaaaaeaaaab
.dword	0x0000000000400006
.dword	0x3333333333733334
.dword	0x6666666666a66666
.dword	0xffffffff4b3b0cce
.dword	0x00000000b544f334
.dword	0x0000000000400003
.dword	0x5555555555955554
.dword	0x0000000000400001
.dword	0x0000000000400005
.dword	0x3333333333733333
.dword	0x6666666666a66665
.dword	0x00000000b544f333
.dword	0x5555555555955557
.dword	0xaaaaaaaaaaeaaaac
.dword	0x0000000000800006
.dword	0x3333333333b33335
.dword	0x6666666666e66668
.dword	0xffffffff4b7b0ccf
.dword	0x00000000b584f334
.dword	0x0000000000800004
.dword	0x5555555555d55556
.dword	0xaaaaaaaaab2aaaab
.dword	0x0000000000800005
.dword	0x3333333333b33334
.dword	0x6666666666e66667
.dword	0xffffffff4b7b0cce
.dword	0x00000000b584f333
.dword	0x0000000000800003
.dword	0x5555555555d55555
.dword	0x0000000000800001
.dword	0x0000000001000004
.dword	0x3333333334333333
.dword	0x6666666667666666
.dword	0x00000000b604f333
.dword	0x5555555556555556
.dword	0xaaaaaaaaabaaaaac
.dword	0x0000000001000007
.dword	0x3333333334333335
.dword	0x6666666667666667
.dword	0xffffffff4bfb0ccf
.dword	0x00000000b604f335
.dword	0x0000000001000004
.dword	0x5555555556555555
.dword	0xaaaaaaaaabaaaaab
.dword	0x0000000001000006
.dword	0x3333333334333334
.dword	0x6666666668666666
.dword	0xffffffff4cfb0cce
.dword	0x00000000b704f334
.dword	0x0000000002000003
.dword	0x5555555557555554
.dword	0x0000000002000001
.dword	0x0000000002000005
.dword	0x3333333335333333
.dword	0x6666666668666665
.dword	0x00000000b704f333
.dword	0x5555555557555557
.dword	0xaaaaaaaaacaaaaac
.dword	0x0000000002000006
.dword	0x3333333335333335
.dword	0x6666666668666668
.dword	0xffffffff4cfb0ccf
.dword	0x00000000b904f334
.dword	0x0000000004000004
.dword	0x5555555559555556
.dword	0xaaaaaaaaaeaaaaab
.dword	0x0000000004000005
.dword	0x3333333337333334
.dword	0x666666666a666667
.dword	0xffffffff4efb0cce
.dword	0x00000000b904f333
.dword	0x0000000004000003
.dword	0x5555555559555555
.dword	0x0000000004000001
.dword	0x0000000004000004
.dword	0x3333333337333333
.dword	0x666666666a666666
.dword	0x00000000b904f333
.dword	0x555555555d555556
.dword	0xaaaaaaaab2aaaaac
.dword	0x0000000008000007
.dword	0x333333333b333335
.dword	0x666666666e666667
.dword	0xffffffff52fb0ccf
.dword	0x00000000bd04f335
.dword	0x0000000008000004
.dword	0x555555555d555555
.dword	0xaaaaaaaab2aaaaab
.dword	0x0000000008000006
.dword	0x333333333b333334
.dword	0x666666666e666666
.dword	0xffffffff52fb0cce
.dword	0x00000000bd04f334
.dword	0x0000000008000003
.dword	0x5555555565555554
.dword	0x0000000010000001
.dword	0x0000000010000005
.dword	0x3333333343333333
.dword	0x6666666676666665
.dword	0x00000000c504f333
.dword	0x5555555565555557
.dword	0xaaaaaaaabaaaaaac
.dword	0x0000000010000006
.dword	0x3333333343333335
.dword	0x6666666676666668
.dword	0xffffffff5afb0ccf
.dword	0x00000000c504f334
.dword	0x0000000010000004
.dword	0x5555555565555556
.dword	0xaaaaaaaabaaaaaab
.dword	0x0000000020000005
.dword	0x3333333353333334
.dword	0x6666666686666667
.dword	0xffffffff6afb0cce
.dword	0x00000000d504f333
.dword	0x0000000020000003
.dword	0x5555555575555555
.dword	0x0000000020000001
.dword	0x0000000020000004
.dword	0x3333333353333333
.dword	0x6666666686666666
.dword	0x00000000d504f333
.dword	0x5555555575555556
.dword	0xaaaaaaaacaaaaaac
.dword	0x0000000020000007
.dword	0x3333333353333335
.dword	0x66666666a6666667
.dword	0xffffffff8afb0ccf
.dword	0x00000000f504f335
.dword	0x0000000040000004
.dword	0x5555555595555555
.dword	0xaaaaaaaaeaaaaaab
.dword	0x0000000040000006
.dword	0x3333333373333334
.dword	0x66666666a6666666
.dword	0xffffffff8afb0cce
.dword	0x00000000f504f334
.dword	0x0000000040000003
.dword	0x5555555595555554
.dword	0x0000000040000001
.dword	0x0000000040000005
.dword	0x3333333373333333
.dword	0x66666666e6666665
.dword	0x000000013504f333
.dword	0x55555555d5555557
.dword	0xaaaaaaab2aaaaaac
.dword	0x0000000080000006
.dword	0x33333333b3333335
.dword	0x66666666e6666668
.dword	0xffffffffcafb0ccf
.dword	0x000000013504f334
.dword	0x0000000080000004
.dword	0x55555555d5555556
.dword	0xaaaaaaab2aaaaaab
.dword	0x0000000080000005
.dword	0x33333333b3333334
.dword	0x66666666e6666667
.dword	0xffffffffcafb0cce
.dword	0x00000001b504f333
.dword	0x0000000100000003
.dword	0x5555555655555555
.dword	0x0000000100000001
.dword	0x0000000100000004
.dword	0x3333333433333333
.dword	0x6666666766666666
.dword	0x00000001b504f333
.dword	0x5555555655555556
.dword	0xaaaaaaabaaaaaaac
.dword	0x0000000100000007
.dword	0x3333333433333335
.dword	0x6666666766666667
.dword	0x000000004afb0ccf
.dword	0x00000001b504f335
.dword	0x0000000100000004
.dword	0x5555555755555555
.dword	0xaaaaaaacaaaaaaab
.dword	0x0000000200000006
.dword	0x3333333533333334
.dword	0x6666666866666666
.dword	0x000000014afb0cce
.dword	0x00000002b504f334
.dword	0x0000000200000003
.dword	0x5555555755555554
.dword	0x0000000200000001
.dword	0x0000000200000005
.dword	0x3333333533333333
.dword	0x6666666866666665
.dword	0x00000002b504f333
.dword	0x5555555755555557
.dword	0xaaaaaaacaaaaaaac
.dword	0x0000000400000006
.dword	0x3333333733333335
.dword	0x6666666a66666668
.dword	0x000000034afb0ccf
.dword	0x00000004b504f334
.dword	0x0000000400000004
.dword	0x5555555955555556
.dword	0xaaaaaaaeaaaaaaab
.dword	0x0000000400000005
.dword	0x3333333733333334
.dword	0x6666666a66666667
.dword	0x000000034afb0cce
.dword	0x00000004b504f333
.dword	0x0000000400000003
.dword	0x5555555955555555
.dword	0x0000000400000001
.dword	0x0000000800000004
.dword	0x3333333b33333333
.dword	0x6666666e66666666
.dword	0x00000008b504f333
.dword	0x5555555d55555556
.dword	0xaaaaaab2aaaaaaac
.dword	0x0000000800000007
.dword	0x3333333b33333335
.dword	0x6666666e66666667
.dword	0x000000074afb0ccf
.dword	0x00000008b504f335
.dword	0x0000000800000004
.dword	0x5555555d55555555
.dword	0xaaaaaab2aaaaaaab
.dword	0x0000000800000006
.dword	0x3333333b33333334
.dword	0x6666667666666666
.dword	0x0000000f4afb0cce
.dword	0x00000010b504f334
.dword	0x0000001000000003
.dword	0x5555556555555554
.dword	0x0000001000000001
.dword	0x0000001000000005
.dword	0x3333334333333333
.dword	0x6666667666666665
.dword	0x00000010b504f333
.dword	0x5555556555555557
.dword	0xaaaaaabaaaaaaaac
.dword	0x0000001000000006
.dword	0x3333334333333335
.dword	0x6666667666666668
.dword	0x0000000f4afb0ccf
.dword	0x00000020b504f334
.dword	0x0000002000000004
.dword	0x5555557555555556
.dword	0xaaaaaacaaaaaaaab
.dword	0x0000002000000005
.dword	0x3333335333333334
.dword	0x6666668666666667
.dword	0x0000001f4afb0cce
.dword	0x00000020b504f333
.dword	0x0000002000000003
.dword	0x5555557555555555
.dword	0x0000002000000001
.dword	0x0000002000000004
.dword	0x3333335333333333
.dword	0x6666668666666666
.dword	0x00000020b504f333

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
    
